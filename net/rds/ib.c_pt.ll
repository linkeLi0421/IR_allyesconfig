; ModuleID = '/llk/IR_all_yes/net/rds/ib.c_pt.bc'
source_filename = "../net/rds/ib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
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
%struct.rds_ib_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i8, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.refcount_struct, %struct.work_struct, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.rds_ib_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.ib_wc], [32 x %struct.ib_wc], %struct.atomic_t, %struct.atomic_t, %struct.tasklet_struct, %struct.tasklet_struct, %struct.rds_ib_work_ring, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.rds_ib_work_ring, ptr, i32, ptr, ptr, ptr, i64, %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache, %struct.atomic_t, i32, %struct.atomic64_t, ptr, %struct.ib_send_wr, %struct.ib_sge, i32, i32, %struct.atomic_t, i8, i32, i8, %struct.atomic_t, i32, i32, i8 }
%struct.ib_wc = type { %union.anon.155, i32, i32, i32, i32, ptr, %union.anon.156, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.155 = type { i64 }
%union.anon.156 = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.181, i32 }
%union.anon.181 = type { ptr }
%struct.rds_ib_work_ring = type { i32, i32, i32, i32, %struct.atomic_t }
%struct.rds_ib_refill_cache = type { ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.rds_info_rdma_connection = type { i32, i32, [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.rds6_info_rdma_connection = type { %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i8, i8, i32 }

@rds_ib_retry_count = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_rds_ib_mr_1m_pool_size = internal constant [32 x i8] c"rds_rdma.rds_ib_mr_1m_pool_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rds_ib_mr_1m_pool_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_rds_ib_mr_1m_pool_size = internal constant %struct.kernel_param { ptr @__param_str_rds_ib_mr_1m_pool_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @rds_ib_mr_1m_pool_size } }, section "__param", align 4
@__UNIQUE_ID_rds_ib_mr_1m_pool_sizetype552 = internal constant [45 x i8] c"rds_rdma.parmtype=rds_ib_mr_1m_pool_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rds_ib_mr_1m_pool_size553 = internal constant [66 x i8] c"rds_rdma.parm=rds_ib_mr_1m_pool_size: Max number of 1M mr per HCA\00", section ".modinfo", align 1
@__param_str_rds_ib_mr_8k_pool_size = internal constant [32 x i8] c"rds_rdma.rds_ib_mr_8k_pool_size\00", align 1
@rds_ib_mr_8k_pool_size = internal global { i32, [28 x i8] } { i32 348160, [28 x i8] zeroinitializer }, align 32
@__param_rds_ib_mr_8k_pool_size = internal constant %struct.kernel_param { ptr @__param_str_rds_ib_mr_8k_pool_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @rds_ib_mr_8k_pool_size } }, section "__param", align 4
@__UNIQUE_ID_rds_ib_mr_8k_pool_sizetype554 = internal constant [45 x i8] c"rds_rdma.parmtype=rds_ib_mr_8k_pool_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rds_ib_mr_8k_pool_size555 = internal constant [66 x i8] c"rds_rdma.parm=rds_ib_mr_8k_pool_size: Max number of 8K mr per HCA\00", section ".modinfo", align 1
@__param_str_rds_ib_retry_count = internal constant [28 x i8] c"rds_rdma.rds_ib_retry_count\00", align 1
@__param_rds_ib_retry_count = internal constant %struct.kernel_param { ptr @__param_str_rds_ib_retry_count, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @rds_ib_retry_count } }, section "__param", align 4
@__UNIQUE_ID_rds_ib_retry_counttype556 = internal constant [41 x i8] c"rds_rdma.parmtype=rds_ib_retry_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rds_ib_retry_count557 = internal constant [81 x i8] c"rds_rdma.parm=rds_ib_retry_count: Number of hw retries before reporting an error\00", section ".modinfo", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rds_ib_devices_lock.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_devices_lock = dso_local global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @rds_ib_devices_lock, i64 56), ptr getelementptr (i8, ptr @rds_ib_devices_lock, i64 56) }, ptr @rds_ib_devices_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rds_ib_devices_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ib_nodev_conns_lock\00", [44 x i8] zeroinitializer }, align 32
@ib_nodev_conns_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ib_nodev_conns = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ib_nodev_conns, ptr @ib_nodev_conns }, [24 x i8] zeroinitializer }, align 32
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@rds_ib_client = dso_local global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.3, ptr @rds_ib_add_one, ptr @rds_ib_remove_one, ptr null, ptr null, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rds_ib\00", [25 x i8] zeroinitializer }, align 32
@rds_ib_transport = dso_local global { %struct.rds_transport, [60 x i8] } { %struct.rds_transport { [16 x i8] c"infiniband\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null, i8 0, i32 0, ptr @rds_ib_laddr_check, ptr @rds_ib_conn_alloc, ptr @rds_ib_conn_free, ptr @rds_ib_conn_path_connect, ptr @rds_ib_conn_path_shutdown, ptr null, ptr @rds_ib_xmit_path_complete, ptr @rds_ib_xmit, ptr @rds_ib_xmit_rdma, ptr @rds_ib_xmit_atomic, ptr @rds_ib_recv_path, ptr @rds_ib_inc_copy_to_user, ptr @rds_ib_inc_free, ptr @rds_ib_cm_handle_connect, ptr @rds_ib_cm_initiate_connect, ptr @rds_ib_cm_connect_complete, ptr @rds_ib_stats_info_copy, ptr @rds_ib_exit, ptr @rds_ib_get_mr, ptr @rds_ib_sync_mr, ptr @rds_ib_free_mr, ptr @rds_ib_flush_mrs, ptr @rds_ib_is_unloading, ptr @rds_ib_get_tos_map }, [60 x i8] zeroinitializer }, align 32
@rds_ib_devices = dso_local global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_file566 = internal constant [31 x i8] c"rds_rdma.file=net/rds/rds_rdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license567 = internal constant [21 x i8] c"rds_rdma.license=GPL\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rds_ib_add_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rds_ibdev->spinlock\00", [43 x i8] zeroinitializer }, align 32
@rds_ib_add_one.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&rds_ibdev->free_work)\00", [55 x i8] zeroinitializer }, align 32
@rds_ib_add_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013RDS/IB: %s failed to allocate vector memory\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rds_ib_add_one\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net/rds/ib.c\00", [19 x i8] zeroinitializer }, align 32
@rds_ib_add_one._entry_ptr = internal global ptr @rds_ib_add_one._entry, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rds_rdma\00", [23 x i8] zeroinitializer }, align 32
@rds_ib_add_one.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.11, ptr @.str.12, ptr @.str.14, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s(): RDS/IB: max_mr = %d, max_wrs = %d, max_sge = %d, max_1m_mrs = %d, max_8k_mrs = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rds_ib_add_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.12, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016RDS/IB: %s: added\0A\00", [43 x i8] zeroinitializer }, align 32
@rds_ib_add_one._entry_ptr.17 = internal global ptr @rds_ib_add_one._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@rds_ib_unloading = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/rds/rds.h\00", [18 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@rds_ib_laddr_check.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.12, ptr @.str.22, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_ib_laddr_check\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): addr %pI6c%%%u ret %d node type %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"rds_ib_retry_count\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 51, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"rds_ib_mr_1m_pool_size\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 49, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"rds_ib_mr_8k_pool_size\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 50, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"rds_ib_devices_lock\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 66, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"ib_nodev_conns_lock\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 70, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"ib_nodev_conns\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 71, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"rds_ib_client\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 288, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 289, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"rds_ib_transport\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 537, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"rds_ib_devices\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 67, i32 18 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 723, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 146, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 148, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 179, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 186, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 209, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 213, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 3498, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"rds_ib_unloading\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 52, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"../net/rds/rds.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 816, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [16 x i8] c"../net/rds/ib.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 482, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_file566, ptr @__UNIQUE_ID_license567, ptr @__UNIQUE_ID_rds_ib_mr_1m_pool_size553, ptr @__UNIQUE_ID_rds_ib_mr_1m_pool_sizetype552, ptr @__UNIQUE_ID_rds_ib_mr_8k_pool_size555, ptr @__UNIQUE_ID_rds_ib_mr_8k_pool_sizetype554, ptr @__UNIQUE_ID_rds_ib_retry_count557, ptr @__UNIQUE_ID_rds_ib_retry_counttype556, ptr @__param_rds_ib_mr_1m_pool_size, ptr @__param_rds_ib_mr_8k_pool_size, ptr @__param_rds_ib_retry_count, ptr @rds_ib_add_one._entry, ptr @rds_ib_add_one._entry.15, ptr @rds_ib_add_one._entry_ptr, ptr @rds_ib_add_one._entry_ptr.17, ptr @rds_ib_retry_count, ptr @rds_ib_mr_1m_pool_size, ptr @rds_ib_mr_8k_pool_size, ptr @.str, ptr @rds_ib_devices_lock, ptr @.str.1, ptr @.str.2, ptr @ib_nodev_conns_lock, ptr @ib_nodev_conns, ptr @rds_ib_client, ptr @.str.3, ptr @rds_ib_transport, ptr @rds_ib_devices, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rds_ib_add_one.__key, ptr @.str.7, ptr @rds_ib_add_one.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @rds_ib_unloading, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_retry_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_mr_1m_pool_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_mr_8k_pool_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_devices_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_nodev_conns_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_nodev_conns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_transport to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_add_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_add_one.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_add_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_add_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_unloading to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_dev_put(ptr noundef %rds_ibdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body2, label %do.end5, !prof !94

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #11, !srcloc !95
  unreachable

do.end5:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !97
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then8, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end10_crit_edge, label %if.then10.i.i.i, !prof !98

if.end5.i.i.i.if.end10_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %if.end10

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %3 = load ptr, ptr @rds_wq, align 4
  %free_work = getelementptr inbounds %struct.rds_ib_device, ptr %rds_ibdev, i32 0, i32 17
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %free_work) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then10.i.i.i, %if.end5.i.i.i.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_ib_get_client_data(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %client_data.i = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 8
  %4 = load i32, ptr getelementptr inbounds (%struct.ib_client, ptr @rds_ib_client, i32 0, i32 9), align 4
  %call.i3 = tail call ptr @xa_load(ptr noundef %client_data.i, i32 noundef %4) #11
  %tobool.not = icmp eq ptr %call.i3, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %refcount = getelementptr inbounds %struct.rds_ib_device, ptr %call.i3, i32 0, i32 16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !101
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !94

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i4 = add i32 %asmresult.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i4, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !98

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i5, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.end
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  %7 = tail call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i.i.i12 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %call.i3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #11, !srcloc !101
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !94

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !98

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #11
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_ib_add_one(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %node_type = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 20
  %0 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %node_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_cap_flags = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 9
  %2 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %device_cap_flags, align 8
  %and = and i64 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 168) #14
  %tobool5.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %do.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end3
  %spinlock = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.7, ptr noundef nonnull @rds_ib_add_one.__key, i16 noundef signext 3) #11
  %refcount = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 16
  %call.i.i.i198 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refcount, align 4
  %free_work = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %free_work, i32 noundef 0) #11
  %6 = ptrtoint ptr %free_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %free_work, align 8
  %lockdep_map = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @rds_ib_add_one.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry13 = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 17, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry13, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 17, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rds_ib_dev_free, ptr %func, align 4
  %ipaddr_list = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ipaddr_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ipaddr_list, ptr %ipaddr_list, align 8
  %prev.i199 = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i199 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ipaddr_list, ptr %prev.i199, align 4
  %conn_list = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %conn_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %conn_list, ptr %conn_list, align 8
  %prev.i200 = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i200 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %conn_list, ptr %prev.i200, align 4
  %max_qp_wr = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 8
  %14 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_qp_wr, align 8
  %max_wrs = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %max_wrs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_wrs, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 10
  %17 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_send_sge, align 8
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 8)
  %max_sge = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %max_sge to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_sge, align 8
  %21 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %device_cap_flags, align 8
  %and23 = and i64 %22, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %do.body.land.end_crit_edge, label %land.lhs.true

do.body.land.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %do.body
  %per_transport_caps = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 42, i32 1
  %23 = ptrtoint ptr %per_transport_caps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %per_transport_caps, align 8
  %and26 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %25 = trunc i32 %24 to i8
  %26 = shl i8 %25, 4
  %27 = and i8 %26, -128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %do.body.land.end_crit_edge
  %28 = phi i8 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %do.body.land.end_crit_edge ], [ %27, %land.rhs ]
  %odp_capable = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %odp_capable to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %odp_capable, align 8
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %28
  store i8 %bf.set, ptr %odp_capable, align 8
  %max_mr = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 15
  %30 = ptrtoint ptr %max_mr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_mr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool37.not = icmp eq i32 %31, 0
  br i1 %tobool37.not, label %cond.false65, label %cond.true54

cond.true54:                                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  %div = sdiv i32 %31, 2
  %32 = load i32, ptr @rds_ib_mr_1m_pool_size, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %div, i32 %32)
  %max_1m_mrs = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %max_1m_mrs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_1m_mrs, align 4
  %mul = mul i32 %div, 85
  %35 = load i32, ptr @rds_ib_mr_8k_pool_size, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %35)
  br label %cond.end66

cond.false65:                                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  %37 = load i32, ptr @rds_ib_mr_1m_pool_size, align 4
  %max_1m_mrs204 = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 10
  %38 = ptrtoint ptr %max_1m_mrs204 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_1m_mrs204, align 4
  %39 = load i32, ptr @rds_ib_mr_8k_pool_size, align 4
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.true54
  %max_1m_mrs205 = phi ptr [ %max_1m_mrs, %cond.true54 ], [ %max_1m_mrs204, %cond.false65 ]
  %cond67 = phi i32 [ %36, %cond.true54 ], [ %39, %cond.false65 ]
  %max_8k_mrs = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %max_8k_mrs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond67, ptr %max_8k_mrs, align 8
  %max_qp_init_rd_atom = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 20
  %41 = ptrtoint ptr %max_qp_init_rd_atom to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_qp_init_rd_atom, align 8
  %max_initiator_depth = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 13
  %43 = ptrtoint ptr %max_initiator_depth to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_initiator_depth, align 8
  %max_qp_rd_atom = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 22, i32 17
  %44 = ptrtoint ptr %max_qp_rd_atom to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_qp_rd_atom, align 4
  %max_responder_resources = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 14
  %46 = ptrtoint ptr %max_responder_resources to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %max_responder_resources, align 4
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 12
  %47 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_comp_vectors, align 4
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 4) #11
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !94

kcalloc.exit.thread:                              ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #13
  %vector_load208 = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 18
  %51 = ptrtoint ptr %vector_load208 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %vector_load208, align 4
  br label %do.end76

if.end7.i.i:                                      ; preds = %cond.end66
  %52 = extractvalue { i32, i1 } %49, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #15
  %vector_load = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 18
  %53 = ptrtoint ptr %vector_load to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i.i, ptr %vector_load, align 4
  %tobool72.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool72.not, label %if.end7.i.i.do.end76_crit_edge, label %if.end79

if.end7.i.i.do.end76_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end76

do.end76:                                         ; preds = %if.end7.i.i.do.end76_crit_edge, %kcalloc.exit.thread
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #16
  br label %put_dev

if.end79:                                         ; preds = %if.end7.i.i
  %dev = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %device, ptr %dev, align 8
  %call80 = tail call ptr @__ib_alloc_pd(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str.13) #11
  %pd = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call80, ptr %pd, align 4
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then83, label %if.end87

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %call80 to i32
  %57 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %pd, align 4
  br label %put_dev

if.end87:                                         ; preds = %if.end79
  %call88 = tail call ptr @rds_ib_create_mr_pool(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  %mr_1m_pool = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %mr_1m_pool to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call88, ptr %mr_1m_pool, align 8
  %cmp.i201 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then91, label %if.end95

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %call88 to i32
  %60 = ptrtoint ptr %mr_1m_pool to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %mr_1m_pool, align 8
  br label %put_dev

if.end95:                                         ; preds = %if.end87
  %call96 = tail call ptr @rds_ib_create_mr_pool(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  %mr_8k_pool = getelementptr inbounds %struct.rds_ib_device, ptr %call.i.i.i, i32 0, i32 8
  %61 = ptrtoint ptr %mr_8k_pool to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call96, ptr %mr_8k_pool, align 4
  %cmp.i202 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then99, label %do.body104

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %call96 to i32
  %63 = ptrtoint ptr %mr_8k_pool to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %mr_8k_pool, align 4
  br label %put_dev

do.body104:                                       ; preds = %if.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_add_one.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_add_one, %if.then111)) #11
          to label %do.end123 [label %if.then111], !srcloc !103

if.then111:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %max_mr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_mr, align 4
  %66 = ptrtoint ptr %max_wrs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_wrs, align 4
  %68 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_sge, align 8
  %70 = ptrtoint ptr %max_1m_mrs205 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_1m_mrs205, align 4
  %72 = ptrtoint ptr %max_8k_mrs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_8k_mrs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_add_one.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #11
  br label %do.end123

do.end123:                                        ; preds = %if.then111, %do.body104
  %name = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 2
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name) #16
  tail call void @down_write(ptr noundef nonnull @rds_ib_devices_lock) #11
  tail call fastcc void @list_add_tail_rcu(ptr noundef nonnull %call.i.i.i)
  tail call void @up_write(ptr noundef nonnull @rds_ib_devices_lock) #11
  tail call fastcc void @refcount_inc(ptr noundef %refcount)
  tail call void @ib_set_client_data(ptr noundef %device, ptr noundef nonnull @rds_ib_client, ptr noundef nonnull %call.i.i.i) #11
  tail call fastcc void @rds_ib_nodev_connect()
  br label %cleanup

put_dev:                                          ; preds = %if.then99, %if.then91, %if.then83, %do.end76
  %ret.0 = phi i32 [ %56, %if.then83 ], [ %59, %if.then91 ], [ %62, %if.then99 ], [ -12, %do.end76 ]
  tail call void @rds_ib_dev_put(ptr noundef nonnull %call.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %put_dev, %do.end123, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %put_dev ], [ 0, %do.end123 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_remove_one(ptr noundef %device, ptr noundef %client_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.rds_ib_device, ptr %client_data, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #11
  %conn_list.i = getelementptr inbounds %struct.rds_ib_device, ptr %client_data, i32 0, i32 2
  %0 = ptrtoint ptr %conn_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ic.020.i = load ptr, ptr %conn_list.i, align 4
  %cmp7.not21.i = icmp eq ptr %ic.020.i, %conn_list.i
  br i1 %cmp7.not21.i, label %entry.rds_ib_dev_shutdown.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rds_ib_dev_shutdown.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rds_ib_dev_shutdown.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ic.022.i = phi ptr [ %ic.0.i, %for.body.i.for.body.i_crit_edge ], [ %ic.020.i, %entry.for.body.i_crit_edge ]
  %conn.i = getelementptr inbounds %struct.rds_ib_connection, ptr %ic.022.i, i32 0, i32 2
  %1 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn.i, align 4
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c_path.i, align 4
  tail call void @rds_conn_path_drop(ptr noundef %4, i1 noundef zeroext true) #11
  %5 = ptrtoint ptr %ic.022.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ic.0.i = load ptr, ptr %ic.022.i, align 4
  %cmp7.not.i = icmp eq ptr %ic.0.i, %conn_list.i
  br i1 %cmp7.not.i, label %for.body.i.rds_ib_dev_shutdown.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.rds_ib_dev_shutdown.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rds_ib_dev_shutdown.exit

rds_ib_dev_shutdown.exit:                         ; preds = %for.body.i.rds_ib_dev_shutdown.exit_crit_edge, %entry.rds_ib_dev_shutdown.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #11
  tail call void @ib_set_client_data(ptr noundef %device, ptr noundef nonnull @rds_ib_client, ptr noundef null) #11
  tail call void @down_write(ptr noundef nonnull @rds_ib_devices_lock) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %client_data) #11
  br i1 %call.i.i, label %if.end.i.i, label %rds_ib_dev_shutdown.exit.list_del_rcu.exit_crit_edge

rds_ib_dev_shutdown.exit.list_del_rcu.exit_crit_edge: ; preds = %rds_ib_dev_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %rds_ib_dev_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %client_data, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client_data, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %rds_ib_dev_shutdown.exit.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %client_data, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @up_write(ptr noundef nonnull @rds_ib_devices_lock) #11
  tail call void @synchronize_rcu() #11
  tail call void @rds_ib_dev_put(ptr noundef %client_data)
  tail call void @rds_ib_dev_put(ptr noundef %client_data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rds_ib_unloading, i32 noundef 4) #11
  store volatile i32 1, ptr @rds_ib_unloading, align 4
  tail call void @synchronize_rcu() #11
  tail call void @rds_info_deregister_func(i32 noundef 10008, ptr noundef nonnull @rds_ib_ic_info) #11
  tail call void @rds_info_deregister_func(i32 noundef 10017, ptr noundef nonnull @rds6_ib_ic_info) #11
  tail call void @ib_unregister_client(ptr noundef nonnull @rds_ib_client) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %0 = load ptr, ptr @rds_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #11
  tail call void @rds_ib_destroy_nodev_conns() #11
  tail call void @rds_ib_sysctl_exit() #11
  tail call void @rds_ib_recv_exit() #11
  tail call void @rds_trans_unregister(ptr noundef nonnull @rds_ib_transport) #11
  tail call void @rds_ib_mr_exit() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_deregister_func(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_ic_info(ptr noundef %sock, i32 noundef %len, ptr noundef %iter, ptr noundef %lens) #0 align 64 {
entry:
  %buffer = alloca [9 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %buffer) #11
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 72)
  call void @rds_for_each_conn_info(ptr noundef %sock, i32 noundef %len, ptr noundef %iter, ptr noundef %lens, ptr noundef nonnull @rds_ib_conn_info_visitor, ptr noundef nonnull %buffer, i32 noundef 68) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %buffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds6_ib_ic_info(ptr noundef %sock, i32 noundef %len, ptr noundef %iter, ptr noundef %lens) #0 align 64 {
entry:
  %buffer = alloca [12 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %buffer) #11
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 96)
  call void @rds_for_each_conn_info(ptr noundef %sock, i32 noundef %len, ptr noundef %iter, ptr noundef %lens, ptr noundef nonnull @rds6_ib_conn_info_visitor, ptr noundef nonnull %buffer, i32 noundef 92) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buffer) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_destroy_nodev_conns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_sysctl_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_recv_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_trans_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_mr_exit() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_ib_laddr_check(ptr nocapture noundef readnone %net, ptr noundef %addr, i32 noundef %scope_id) #0 align 64 {
entry:
  %sin6 = alloca %struct.sockaddr_in6, align 8
  %sin = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6) #11
  %0 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 3
  %1 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6, i32 0, i32 4
  %2 = call ptr @memset(ptr %sin6, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin) #11
  %3 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  %4 = call ptr @memset(ptr %sin, i32 255, i32 16)
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i, align 4
  %call1 = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @rds_rdma_cm_event_handler, ptr noundef null, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.13) #11
  %cmp.i69 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call1 to i32
  br label %cleanup41

if.end:                                           ; preds = %entry
  %or.i = or i32 %8, %6
  %xor.i = xor i32 %10, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = call ptr @memset(ptr %sin, i32 0, i32 16)
  %13 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %sin, align 4
  %arrayidx = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %3, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end
  %17 = ptrtoint ptr %sin6 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %sin6, align 8
  store i16 10, ptr %sin6, align 8
  %18 = call ptr @memcpy(ptr %0, ptr %addr, i32 16)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %scope_id, ptr %1, align 8
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %addr) #11
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else.if.end19_crit_edge, label %if.then7

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scope_id)
  %cmp = icmp eq i32 %scope_id, 0
  br i1 %cmp, label %if.then7.out_crit_edge, label %if.end9

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.then7
  %call10 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %scope_id) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @ipv6_chk_addr(ptr noundef nonnull @init_net, ptr noundef %addr, ptr noundef nonnull %call10, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !84) #11
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
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool15.not, label %do.body1.i, label %do.body1.i79

do.body1.i:                                       ; preds = %if.end13
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !94

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #11, !srcloc !104
  br label %out

do.body1.i79:                                     ; preds = %if.end13
  br i1 %tobool24.not.i, label %if.then28.i80, label %do.body1.i79.cleanup_crit_edge, !prof !94

do.body1.i79.cleanup_crit_edge:                   ; preds = %do.body1.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28.i80:                                    ; preds = %do.body1.i79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i80, %do.body1.i79.cleanup_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #11, !srcloc !104
  br label %if.end19

if.end19:                                         ; preds = %cleanup, %if.else.if.end19_crit_edge, %if.then4
  %sa.0 = phi ptr [ %sin, %if.then4 ], [ %sin6, %cleanup ], [ %sin6, %if.else.if.end19_crit_edge ]
  %call20 = call i32 @rdma_bind_addr(ptr noundef %call1, ptr noundef nonnull %sa.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end19.if.then27_crit_edge

if.end19.if.then27_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end19
  %34 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call1, align 4
  %tobool22.not = icmp eq ptr %35, null
  br i1 %tobool22.not, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false23

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %node_type = getelementptr inbounds %struct.ib_device, ptr %35, i32 0, i32 20
  %36 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %node_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp25.not = icmp eq i8 %37, 1
  br i1 %cmp25.not, label %lor.lhs.false23.do.body_crit_edge, label %lor.lhs.false23.if.then27_crit_edge

lor.lhs.false23.if.then27_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false23.do.body_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then27:                                        ; preds = %lor.lhs.false23.if.then27_crit_edge, %lor.lhs.false.if.then27_crit_edge, %if.end19.if.then27_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.then27, %lor.lhs.false23.do.body_crit_edge
  %ret.1 = phi i32 [ -99, %if.then27 ], [ 0, %lor.lhs.false23.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_laddr_check.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_laddr_check, %if.then34)) #11
          to label %out [label %if.then34], !srcloc !103

if.then34:                                        ; preds = %do.body
  %38 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call1, align 4
  %tobool36.not = icmp eq ptr %39, null
  br i1 %tobool36.not, label %if.then34.cond.end_crit_edge, label %cond.true

if.then34.cond.end_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %node_type38 = getelementptr inbounds %struct.ib_device, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %node_type38 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %node_type38, align 1
  %conv39 = zext i8 %41 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then34.cond.end_crit_edge
  %cond = phi i32 [ %conv39, %cond.true ], [ -1, %if.then34.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_laddr_check.__UNIQUE_ID_ddebug565, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, ptr noundef %addr, i32 noundef %scope_id, i32 noundef %ret.1, i32 noundef %cond) #11
  br label %out

out:                                              ; preds = %cond.end, %do.body, %dev_put.exit, %if.end9.out_crit_edge, %if.then7.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %cond.end ], [ %ret.1, %do.body ], [ -99, %dev_put.exit ], [ -99, %if.then7.out_crit_edge ], [ -99, %if.end9.out_crit_edge ]
  call void @rdma_destroy_id(ptr noundef %call1) #11
  br label %cleanup41

cleanup41:                                        ; preds = %out, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %ret.2, %out ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_conn_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_conn_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_conn_path_connect(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_conn_path_shutdown(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_xmit_path_complete(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_xmit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_xmit_rdma(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_xmit_atomic(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_recv_path(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_inc_copy_to_user(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_inc_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_cm_handle_connect(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_cm_initiate_connect(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_cm_connect_complete(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_stats_info_copy(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_ib_get_mr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_sync_mr(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_free_mr(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_flush_mrs() #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rds_ib_is_unloading(ptr nocapture noundef readonly %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_flags = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cp_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cp_flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rds_ib_unloading, i32 noundef 4) #11
  %5 = load volatile i32, ptr @rds_ib_unloading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %6 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp, %lor.rhs ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @rds_ib_get_tos_map(i8 noundef returned zeroext %tos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 %tos
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @rds_ib_devices, ptr @rds_ib_devices, align 4
  store ptr @rds_ib_devices, ptr getelementptr inbounds (%struct.list_head, ptr @rds_ib_devices, i32 0, i32 1), align 4
  %call = tail call i32 @rds_ib_mr_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ib_register_client(ptr noundef nonnull @rds_ib_client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_mr_exit_crit_edge

if.end.out_mr_exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mr_exit

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rds_ib_sysctl_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_ibreg_crit_edge

if.end4.out_ibreg_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_ibreg

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @rds_ib_recv_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %out_sysctl

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rds_trans_register(ptr noundef nonnull @rds_ib_transport) #11
  tail call void @rds_info_register_func(i32 noundef 10008, ptr noundef nonnull @rds_ib_ic_info) #11
  tail call void @rds_info_register_func(i32 noundef 10017, ptr noundef nonnull @rds6_ib_ic_info) #11
  br label %out

out_sysctl:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rds_ib_sysctl_exit() #11
  br label %out_ibreg

out_ibreg:                                        ; preds = %out_sysctl, %if.end4.out_ibreg_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.out_ibreg_crit_edge ], [ %call9, %out_sysctl ]
  tail call void @ib_unregister_client(ptr noundef nonnull @rds_ib_client) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %0 = load ptr, ptr @rds_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #11
  br label %out_mr_exit

out_mr_exit:                                      ; preds = %out_ibreg, %if.end.out_mr_exit_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.out_mr_exit_crit_edge ], [ %ret.0, %out_ibreg ]
  tail call void @rds_ib_mr_exit() #11
  br label %out

out:                                              ; preds = %out_mr_exit, %if.end12, %entry.out_crit_edge
  %ret.2 = phi i32 [ %call, %entry.out_crit_edge ], [ %ret.1, %out_mr_exit ], [ 0, %if.end12 ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_mr_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_sysctl_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_recv_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_trans_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_register_func(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_dev_free(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_8k_pool = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %mr_8k_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_8k_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rds_ib_destroy_mr_pool(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mr_1m_pool = getelementptr i8, ptr %work, i32 -80
  %2 = ptrtoint ptr %mr_1m_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr_1m_pool, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rds_ib_destroy_mr_pool(ptr noundef nonnull %3) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %pd = getelementptr i8, ptr %work, i32 -92
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  %call.i = tail call i32 @ib_dealloc_pd_user(ptr noundef nonnull %5, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then7.if.end9_crit_edge, label %land.rhs.i

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.rhs.i:                                       ; preds = %if.then7
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.if.end9_crit_edge, label %if.then.i, !prof !98

land.rhs.i.if.end9_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.19) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %land.rhs.i.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %ipaddr_list = getelementptr i8, ptr %work, i32 -112
  %6 = ptrtoint ptr %ipaddr_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipaddr_list, align 4
  %cmp.not40 = icmp eq ptr %7, %ipaddr_list
  br i1 %cmp.not40, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i_ipaddr.041 = phi ptr [ %i_next.0, %list_del.exit.for.body_crit_edge ], [ %7, %if.end9.for.body_crit_edge ]
  %8 = ptrtoint ptr %i_ipaddr.041 to i32
  call void @__asan_load4_noabort(i32 %8)
  %i_next.0 = load ptr, ptr %i_ipaddr.041, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_ipaddr.041) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i_ipaddr.041, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %i_ipaddr.041 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_ipaddr.041, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %i_ipaddr.041 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %i_ipaddr.041, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %i_ipaddr.041, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %i_ipaddr.041) #11
  %cmp.not = icmp eq ptr %i_next.0, %ipaddr_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end9.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -120
  %vector_load = getelementptr i8, ptr %work, i32 44
  %17 = ptrtoint ptr %vector_load to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vector_load, align 4
  tail call void @kfree(ptr noundef %18) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_ib_create_mr_pool(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_ib_devices, i32 0, i32 1), align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %0, ptr noundef nonnull @rds_ib_devices) #11
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rds_ib_devices, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %2 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !105
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %new, ptr %0, align 4
  store ptr %new, ptr getelementptr inbounds (%struct.list_head, ptr @rds_ib_devices, i32 0, i32 1), align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_client_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_nodev_connect() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ib_nodev_conns_lock) #11
  %ic.07 = load ptr, ptr @ib_nodev_conns, align 4
  %cmp.not8 = icmp eq ptr %ic.07, @ib_nodev_conns
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ic.09 = phi ptr [ %ic.0, %for.body.for.body_crit_edge ], [ %ic.07, %entry.for.body_crit_edge ]
  %conn = getelementptr inbounds %struct.rds_ib_connection, ptr %ic.09, i32 0, i32 2
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  tail call void @rds_conn_connect_if_down(ptr noundef %1) #11
  %2 = ptrtoint ptr %ic.09 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ic.0 = load ptr, ptr %ic.09, align 4
  %cmp.not = icmp eq ptr %ic.0, @ib_nodev_conns
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ib_nodev_conns_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_destroy_mr_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_connect_if_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_path_drop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_for_each_conn_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_ib_conn_info_visitor(ptr nocapture noundef readonly %conn, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 8
  %4 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_trans, align 4
  %cmp.not = icmp eq ptr %5, @rds_ib_transport
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_isv6 = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 5
  %6 = ptrtoint ptr %c_isv6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %c_isv6, align 4
  %7 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx3 = getelementptr %struct.rds_connection, ptr %conn, i32 0, i32 1, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buffer, align 4
  %arrayidx5 = getelementptr %struct.rds_connection, ptr %conn, i32 0, i32 2, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  %dst_addr = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 1
  %13 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dst_addr, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end2.if.end8_crit_edge, label %if.then7

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 14
  %14 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %c_tos, align 4
  %tos = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 9
  %16 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tos, align 4
  %i_sl = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 44
  %17 = ptrtoint ptr %i_sl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i_sl, align 4
  %sl = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 10
  %19 = ptrtoint ptr %sl to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %sl, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end2.if.end8_crit_edge
  %src_gid = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 2
  %dst_gid = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 3
  %20 = call ptr @memset(ptr %src_gid, i32 0, i32 32)
  %21 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c_trans, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %24 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end8.rds_conn_state.exit_crit_edge, label %do.end.i, !prof !98

if.end8.rds_conn_state.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rds_conn_state.exit

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 816, i32 noundef 9, ptr noundef null) #11
  br label %rds_conn_state.exit

rds_conn_state.exit:                              ; preds = %do.end.i, %if.end8.rds_conn_state.exit_crit_edge
  %25 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %c_path, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %26, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #11
  %27 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp9 = icmp eq i32 %28, 3
  br i1 %cmp9, label %if.then10, label %rds_conn_state.exit.cleanup_crit_edge

rds_conn_state.exit.cleanup_crit_edge:            ; preds = %rds_conn_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %rds_conn_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_cm_id, align 8
  tail call void @rdma_read_gids(ptr noundef %30, ptr noundef %src_gid, ptr noundef %dst_gid) #11
  %rds_ibdev13 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %rds_ibdev13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rds_ibdev13, align 8
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 13
  %33 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_send_ring, align 8
  %max_send_wr = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 4
  %35 = ptrtoint ptr %max_send_wr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_send_wr, align 4
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 20
  %36 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_recv_ring, align 4
  %max_recv_wr = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 5
  %38 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_recv_wr, align 4
  %max_sge = getelementptr inbounds %struct.rds_ib_device, ptr %32, i32 0, i32 11
  %39 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_sge, align 4
  %max_send_sge = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 6
  %41 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_send_sge, align 4
  tail call void @rds_ib_get_mr_info(ptr noundef %32, ptr noundef %buffer) #11
  %i_cache_allocs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_cache_allocs, i32 noundef 4) #11
  %42 = ptrtoint ptr %i_cache_allocs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %i_cache_allocs, align 4
  %cache_allocs = getelementptr inbounds %struct.rds_info_rdma_connection, ptr %buffer, i32 0, i32 11
  %44 = ptrtoint ptr %cache_allocs to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %cache_allocs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %rds_conn_state.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then10 ], [ 1, %rds_conn_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_read_gids(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_get_mr_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds6_ib_conn_info_visitor(ptr nocapture noundef readonly %conn, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 8
  %4 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_trans, align 4
  %cmp.not = icmp eq ptr %5, @rds_ib_transport
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %buffer, ptr %c_laddr, i32 16)
  %dst_addr = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %dst_addr, ptr %c_faddr, i32 16)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 14
  %8 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %c_tos, align 4
  %tos = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 9
  %10 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %tos, align 4
  %i_sl = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 44
  %11 = ptrtoint ptr %i_sl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_sl, align 4
  %sl = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 10
  %13 = ptrtoint ptr %sl to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %sl, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %src_gid = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 2
  %dst_gid = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 3
  %14 = call ptr @memset(ptr %src_gid, i32 0, i32 32)
  %15 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c_trans, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %18 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end2.rds_conn_state.exit_crit_edge, label %do.end.i, !prof !98

if.end2.rds_conn_state.exit_crit_edge:            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %rds_conn_state.exit

do.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 816, i32 noundef 9, ptr noundef null) #11
  br label %rds_conn_state.exit

rds_conn_state.exit:                              ; preds = %do.end.i, %if.end2.rds_conn_state.exit_crit_edge
  %19 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %c_path, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %20, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #11
  %21 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp3 = icmp eq i32 %22, 3
  br i1 %cmp3, label %if.then4, label %rds_conn_state.exit.cleanup_crit_edge

rds_conn_state.exit.cleanup_crit_edge:            ; preds = %rds_conn_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %rds_conn_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_cm_id, align 8
  tail call void @rdma_read_gids(ptr noundef %24, ptr noundef %src_gid, ptr noundef %dst_gid) #11
  %rds_ibdev7 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %rds_ibdev7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rds_ibdev7, align 8
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 13
  %27 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_send_ring, align 8
  %max_send_wr = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 4
  %29 = ptrtoint ptr %max_send_wr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_send_wr, align 4
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 20
  %30 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_recv_ring, align 4
  %max_recv_wr = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 5
  %32 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_recv_wr, align 4
  %max_sge = getelementptr inbounds %struct.rds_ib_device, ptr %26, i32 0, i32 11
  %33 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_sge, align 4
  %max_send_sge = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 6
  %35 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_send_sge, align 4
  tail call void @rds6_ib_get_mr_info(ptr noundef %26, ptr noundef %buffer) #11
  %i_cache_allocs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_cache_allocs, i32 noundef 4) #11
  %36 = ptrtoint ptr %i_cache_allocs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %i_cache_allocs, align 4
  %cache_allocs = getelementptr inbounds %struct.rds6_info_rdma_connection, ptr %buffer, i32 0, i32 11
  %38 = ptrtoint ptr %cache_allocs to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cache_allocs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %rds_conn_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then4 ], [ 1, %rds_conn_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds6_ib_get_mr_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_rdma_cm_event_handler(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !62, !63, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !83}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @rds_ib_retry_count, !1, !"rds_ib_retry_count", i1 false, i1 false}
!1 = !{!"../net/rds/ib.c", i32 51, i32 14}
!2 = !{ptr @__param_rds_ib_mr_1m_pool_size, !3, !"__param_rds_ib_mr_1m_pool_size", i1 false, i1 false}
!3 = !{!"../net/rds/ib.c", i32 54, i32 1}
!4 = !{ptr @__UNIQUE_ID_rds_ib_mr_1m_pool_sizetype552, !3, !"__UNIQUE_ID_rds_ib_mr_1m_pool_sizetype552", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_rds_ib_mr_1m_pool_size553, !6, !"__UNIQUE_ID_rds_ib_mr_1m_pool_size553", i1 false, i1 false}
!6 = !{!"../net/rds/ib.c", i32 55, i32 1}
!7 = !{ptr @__param_rds_ib_mr_8k_pool_size, !8, !"__param_rds_ib_mr_8k_pool_size", i1 false, i1 false}
!8 = !{!"../net/rds/ib.c", i32 56, i32 1}
!9 = !{ptr @__UNIQUE_ID_rds_ib_mr_8k_pool_sizetype554, !8, !"__UNIQUE_ID_rds_ib_mr_8k_pool_sizetype554", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_rds_ib_mr_8k_pool_size555, !11, !"__UNIQUE_ID_rds_ib_mr_8k_pool_size555", i1 false, i1 false}
!11 = !{!"../net/rds/ib.c", i32 57, i32 1}
!12 = !{ptr @__param_rds_ib_retry_count, !13, !"__param_rds_ib_retry_count", i1 false, i1 false}
!13 = !{!"../net/rds/ib.c", i32 58, i32 1}
!14 = !{ptr @__UNIQUE_ID_rds_ib_retry_counttype556, !13, !"__UNIQUE_ID_rds_ib_retry_counttype556", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_rds_ib_retry_count557, !16, !"__UNIQUE_ID_rds_ib_retry_count557", i1 false, i1 false}
!16 = !{!"../net/rds/ib.c", i32 59, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/rds/ib.c", i32 66, i32 1}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rds_ib_devices_lock, !18, !"rds_ib_devices_lock", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/rds/ib.c", i32 70, i32 1}
!23 = !{ptr @ib_nodev_conns_lock, !22, !"ib_nodev_conns_lock", i1 false, i1 false}
!24 = !{ptr @ib_nodev_conns, !25, !"ib_nodev_conns", i1 false, i1 false}
!25 = !{!"../net/rds/ib.c", i32 71, i32 1}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/rds/ib.c", i32 289, i32 12}
!28 = !{ptr @rds_ib_client, !29, !"rds_ib_client", i1 false, i1 false}
!29 = !{!"../net/rds/ib.c", i32 288, i32 18}
!30 = !{ptr @rds_ib_transport, !31, !"rds_ib_transport", i1 false, i1 false}
!31 = !{!"../net/rds/ib.c", i32 537, i32 22}
!32 = !{ptr @__UNIQUE_ID_file566, !33, !"__UNIQUE_ID_file566", i1 false, i1 false}
!33 = !{!"../net/rds/ib.c", i32 607, i32 1}
!34 = !{ptr @__UNIQUE_ID_license567, !33, !"__UNIQUE_ID_license567", i1 false, i1 false}
!35 = !{ptr @rds_ib_devices, !36, !"rds_ib_devices", i1 false, i1 false}
!36 = !{!"../net/rds/ib.c", i32 67, i32 18}
!37 = !{ptr @__param_str_rds_ib_mr_1m_pool_size, !3, !"__param_str_rds_ib_mr_1m_pool_size", i1 false, i1 false}
!38 = !{ptr @rds_ib_mr_1m_pool_size, !39, !"rds_ib_mr_1m_pool_size", i1 false, i1 false}
!39 = !{!"../net/rds/ib.c", i32 49, i32 21}
!40 = !{ptr @__param_str_rds_ib_mr_8k_pool_size, !8, !"__param_str_rds_ib_mr_8k_pool_size", i1 false, i1 false}
!41 = !{ptr @rds_ib_mr_8k_pool_size, !42, !"rds_ib_mr_8k_pool_size", i1 false, i1 false}
!42 = !{!"../net/rds/ib.c", i32 50, i32 21}
!43 = !{ptr @__param_str_rds_ib_retry_count, !13, !"__param_str_rds_ib_retry_count", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rds_ib_add_one.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../net/rds/ib.c", i32 146, i32 2}
!53 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rds_ib_add_one.__key.8, !55, !"__key", i1 false, i1 false}
!55 = !{!"../net/rds/ib.c", i32 148, i32 2}
!56 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/rds/ib.c", i32 179, i32 3}
!59 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rds_ib_add_one._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @rds_ib_add_one._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/rds/ib.c", i32 186, i32 18}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/rds/ib.c", i32 209, i32 2}
!67 = !{ptr @rds_ib_add_one.__UNIQUE_ID_ddebug564, !66, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/rds/ib.c", i32 213, i32 2}
!70 = !{ptr @rds_ib_add_one._entry.15, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rds_ib_add_one._entry_ptr.17, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!74 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rds_ib_unloading, !77, !"rds_ib_unloading", i1 false, i1 false}
!77 = !{!"../net/rds/ib.c", i32 52, i32 17}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/rds/rds.h", i32 816, i32 2}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/rds/ib.c", i32 482, i32 2}
!82 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rds_ib_laddr_check.__UNIQUE_ID_ddebug565, !81, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{i64 2158620876, i64 2158621353, i64 2158620913, i64 2158620969, i64 2158621003, i64 2158621027, i64 2158621068, i64 2158621089, i64 2158621117, i64 2158621151}
!96 = !{i64 2148314826}
!97 = !{i64 2148229290, i64 2148229322, i64 2148229351, i64 2148229385, i64 2148229416, i64 2148229439}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2149309789}
!100 = !{i64 2149360279}
!101 = !{i64 2148226825, i64 2148226857, i64 2148226886, i64 2148226920, i64 2148226951, i64 2148226974}
!102 = !{i64 2149360545}
!103 = !{i64 2148707110, i64 2148707115, i64 2148707128, i64 2148707172, i64 2148707206, i64 2148707227}
!104 = !{i64 620793}
!105 = !{i64 2150344518}
