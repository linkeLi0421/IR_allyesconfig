; ModuleID = '/llk/IR_all_yes/net/rds/ib_cm.c_pt.bc'
source_filename = "../net/rds/ib_cm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rds_ib_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.possible_net_t = type { ptr }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rdma_cm_event = type { i32, i32, %union.anon.176, %struct.rdma_ucm_ece }
%union.anon.176 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.167 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%union.anon.167 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.rds6_ib_connect_private = type { %struct.in6_addr, %struct.in6_addr, %struct.rds_ib_conn_priv_cmn }
%struct.rds_ib_conn_priv_cmn = type { i8, i8, i16, i8, i8, i16, i64, i32 }
%struct.rds_ib_connect_private = type { i32, i32, %struct.rds_ib_conn_priv_cmn }
%struct.rds_ib_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.ib_wc], [32 x %struct.ib_wc], %struct.atomic_t, %struct.atomic_t, %struct.tasklet_struct, %struct.tasklet_struct, %struct.rds_ib_work_ring, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.rds_ib_work_ring, ptr, i32, ptr, ptr, ptr, i64, %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache, %struct.atomic_t, i32, %struct.atomic64_t, ptr, %struct.ib_send_wr, %struct.ib_sge, i32, i32, %struct.atomic_t, i8, i32, i8, %struct.atomic_t, i32, i32, i8 }
%struct.ib_wc = type { %union.anon.141, i32, i32, i32, i32, ptr, %union.anon.142, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.141 = type { i64 }
%union.anon.142 = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.180, i32 }
%union.anon.180 = type { ptr }
%struct.rds_ib_work_ring = type { i32, i32, i32, i32, %struct.atomic_t }
%struct.rds_ib_refill_cache = type { ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ib_send_wr = type { ptr, %union.anon.163, ptr, i32, i32, i32, %union.anon.164 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.177 }
%union.anon.177 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.sa_path_rec = type { %union.ib_gid, %union.ib_gid, i64, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.179, i32 }
%union.anon.179 = type { %struct.sa_path_rec_opa }
%struct.sa_path_rec_opa = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.rds_ib_conn_priv = type { %struct.rds6_ib_connect_private }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.rds_ib_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i8, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.refcount_struct, %struct.work_struct, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.175 = type { %struct.ib_core_device }
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
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.__va_list = type { ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rds_ib_incoming = type { %struct.list_head, %struct.list_head, %struct.rds_incoming }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.rds_ib_ack_state = type { i64, i64, i8 }
%struct.ib_event = type { ptr, %union.anon.133, i32 }
%union.anon.133 = type { ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }

@rds_ib_cm_connect_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015RDS/IB: Connection <%pI6c,%pI6c> version %u.%u no longer supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rds_ib_cm_connect_complete\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/rds/ib_cm.c\00", [16 x i8] zeroinitializer }, align 32
@rds_ib_cm_connect_complete._entry_ptr = internal global ptr @rds_ib_cm_connect_complete._entry, section ".printk_index", align 4
@rds_ib_cm_connect_complete._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015RDS/IB: %s conn connected <%pI6c,%pI6c,%d> version %u.%u%s\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_cm_connect_complete._entry_ptr.5 = internal global ptr @rds_ib_cm_connect_complete._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Active\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Passive\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c", flow control\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@rds_ib_cm_connect_complete._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013rds_ib_update_ipaddr failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_ib_cm_connect_complete._entry_ptr.12 = internal global ptr @rds_ib_cm_connect_complete._entry.10, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug578 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rds_rdma\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rds_ib_cm_handle_connect\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s(): saddr %pI6c daddr %pI6c RDSv%u.%u lguid 0x%llx fguid 0x%llx, tos:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_ib_transport = external dso_local global %struct.rds_transport, align 4
@rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug579 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): rds_conn_create failed (%ld)\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug580 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): incoming connect while connecting\0A\00", [55 x i8] zeroinitializer }, align 32
@rds_ib_stats = external dso_local global %struct.rds_ib_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014RDS/IB: rds_ib_setup_qp failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014RDS/IB: rdma_accept failed\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_sysctl_flow_control = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014RDS/IB: rdma_connect_locked failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_ib_conn_path_connect.__UNIQUE_ID_ddebug581 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rds_ib_conn_path_connect\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): rdma_create_id() failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rds_ib_conn_path_connect.__UNIQUE_ID_ddebug582 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): created cm id %p for conn %p\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_ib_conn_path_connect.__UNIQUE_ID_ddebug583 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): addr resolve failed for cm id %p: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug584 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rds_ib_conn_path_shutdown\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): cm %p pd %p cq %p %p qp %p\0A\00", [62 x i8] zeroinitializer }, align 32
@rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug585 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 1, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): disconnecting cm %p\0A\00", [37 x i8] zeroinitializer }, align 32
@rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): failed to disconnect, cm: %p err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_ib_ring_empty_wait = external dso_local global %struct.wait_queue_head, align 4
@rds_ib_conn_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ic->i_recv_mutex\00", [46 x i8] zeroinitializer }, align 32
@ib_nodev_conns_lock = external dso_local global %struct.spinlock, align 4
@ib_nodev_conns = external dso_local global %struct.list_head, align 4
@rds_ib_conn_alloc.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_ib_conn_alloc\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): conn %p conn ic %p\0A\00", [38 x i8] zeroinitializer }, align 32
@rds_ib_conn_free.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_ib_conn_free\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(): ic %p\0A\00", [19 x i8] zeroinitializer }, align 32
@rds_ib_protocol_compatible._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015RDS incoming connection has no private data, rejecting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rds_ib_protocol_compatible\00", [37 x i8] zeroinitializer }, align 32
@rds_ib_protocol_compatible._entry_ptr = internal global ptr @rds_ib_protocol_compatible._entry, section ".printk_index", align 4
@rds_ib_protocol_compatible._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@rds_ib_protocol_compatible._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\015RDS: Connection from %pI6c using incompatible protocol version %u.%u\0A\00", [56 x i8] zeroinitializer }, align 32
@rds_ib_protocol_compatible._entry_ptr.39 = internal global ptr @rds_ib_protocol_compatible._entry.37, section ".printk_index", align 4
@rds_ib_protocol_compatible._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rds_ib_protocol_compatible._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015RDS: Connection from %pI4 using incompatible protocol version %u.%u\0A\00", [57 x i8] zeroinitializer }, align 32
@rds_ib_protocol_compatible._entry_ptr.43 = internal global ptr @rds_ib_protocol_compatible._entry.41, section ".printk_index", align 4
@__rds_find_ifindex.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/rds/rds.h\00", [18 x i8] zeroinitializer }, align 32
@rds_ib_sysctl_max_send_wr = external dso_local local_unnamed_addr global i32, align 4
@rds_ib_sysctl_max_recv_wr = external dso_local local_unnamed_addr global i32, align 4
@rds_ib_setup_qp.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_ib_setup_qp\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): ib_create_cq send failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): ib_create_cq recv failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.52, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): ib_req_notify_cq send failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.53, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): ib_req_notify_cq recv failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.54, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): rdma_create_qp failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.55, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): DMA send hdrs alloc failed\0A\00", [62 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.56, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): DMA recv hdrs alloc failed\0A\00", [62 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.57, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): DMA ack header alloc failed\0A\00", [61 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.58, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): send allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug574 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.59, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): recv allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_setup_qp.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.49, ptr @.str.2, ptr @.str.60, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): conn %p pd %p cq %p %p\0A\00", [34 x i8] zeroinitializer }, align 32
@rds_ib_cq_comp_handler_send.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rds_ib_cq_comp_handler_send\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): conn %p cq %p\0A\00", [43 x i8] zeroinitializer }, align 32
@rds_ib_cq_event_handler.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rds_ib_cq_event_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): event %u (%s) data %p\0A\00", [35 x i8] zeroinitializer }, align 32
@rds_ib_cq_comp_handler_recv.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.65, ptr @.str.2, ptr @.str.62, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rds_ib_cq_comp_handler_recv\00", [36 x i8] zeroinitializer }, align 32
@rds_ib_qp_event_handler.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rds_ib_qp_event_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): conn %p ic %p event %u (%s)\0A\00", [61 x i8] zeroinitializer }, align 32
@rds_ib_qp_event_handler.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.66, ptr @.str.2, ptr @.str.68, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s(): Fatal QP Event %u (%s) - connection %pI6c->%pI6c, reconnecting\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rds_ib_retry_count = external dso_local local_unnamed_addr global i32, align 4
@ib_destroy_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel CQ shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@poll_scq.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poll_scq\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s(): wc wr_id 0x%llx status %u byte_len %u imm_data %u\0A\00", [39 x i8] zeroinitializer }, align 32
@poll_rcq.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.75, ptr @.str.2, ptr @.str.74, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poll_rcq\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 114, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 123, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 148, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 848, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 859, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 874, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 908, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 919, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 955, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 993, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 997, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1031, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1052, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1057, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1063, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1221, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1243, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1255, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 713, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 744, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 747, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 770, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 695, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 723, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"../net/rds/rds.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 803, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 552, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 566, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 572, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 578, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 602, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 611, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 620, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 628, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 637, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 646, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 652, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 380, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 235, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 252, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 359, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 367, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 326, i32 6 }
@___asan_gen_.293 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 3936, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 268, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.302 = private constant [19 x i8] c"../net/rds/ib_cm.c\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 313, i32 4 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @rds_ib_cm_connect_complete._entry, ptr @rds_ib_cm_connect_complete._entry.10, ptr @rds_ib_cm_connect_complete._entry.3, ptr @rds_ib_cm_connect_complete._entry_ptr, ptr @rds_ib_cm_connect_complete._entry_ptr.12, ptr @rds_ib_cm_connect_complete._entry_ptr.5, ptr @rds_ib_protocol_compatible._entry, ptr @rds_ib_protocol_compatible._entry.37, ptr @rds_ib_protocol_compatible._entry.41, ptr @rds_ib_protocol_compatible._entry_ptr, ptr @rds_ib_protocol_compatible._entry_ptr.39, ptr @rds_ib_protocol_compatible._entry_ptr.43, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @rds_ib_conn_alloc.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @rds_ib_protocol_compatible._rs, ptr @.str.36, ptr @.str.38, ptr @rds_ib_protocol_compatible._rs.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_cm_connect_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_cm_connect_complete._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_cm_connect_complete._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_conn_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_protocol_compatible._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_protocol_compatible._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_protocol_compatible._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_protocol_compatible._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_ib_protocol_compatible._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_cm_connect_complete(ptr noundef %conn, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 8
  %c_isv6 = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 5
  %6 = ptrtoint ptr %c_isv6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %c_isv6, align 4
  %7 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %private_data_len8 = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %private_data_len8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %private_data_len8, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %9)
  %cmp = icmp ugt i8 %9, 55
  br i1 %cmp, label %if.then3, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dp_cmn = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %5, i32 0, i32 2
  %ricpc_protocol_minor = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %5, i32 0, i32 2, i32 1
  %ricpc_credit = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %5, i32 0, i32 2, i32 7
  %ricpc_ack_seq = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %5, i32 0, i32 2, i32 6
  br label %if.end25

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %9)
  %cmp10 = icmp ugt i8 %9, 31
  br i1 %cmp10, label %if.then12, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dp_cmn13 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %5, i32 0, i32 2
  %ricpc_protocol_minor16 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %5, i32 0, i32 2, i32 1
  %ricpc_credit18 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %5, i32 0, i32 2, i32 7
  %ricpc_ack_seq21 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %5, i32 0, i32 2, i32 6
  br label %if.end25

if.end25:                                         ; preds = %if.then12, %if.then3
  %minor.0.in = phi ptr [ %ricpc_protocol_minor, %if.then3 ], [ %ricpc_protocol_minor16, %if.then12 ]
  %major.0.in = phi ptr [ %dp_cmn, %if.then3 ], [ %dp_cmn13, %if.then12 ]
  %credit.0.in = phi ptr [ %ricpc_credit, %if.then3 ], [ %ricpc_credit18, %if.then12 ]
  %ack_seq.0.in = phi ptr [ %ricpc_ack_seq, %if.then3 ], [ %ricpc_ack_seq21, %if.then12 ]
  %10 = ptrtoint ptr %ack_seq.0.in to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %ack_seq.0 = load i64, ptr %ack_seq.0.in, align 1
  %11 = ptrtoint ptr %credit.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %credit.0 = load i32, ptr %credit.0.in, align 8
  %12 = ptrtoint ptr %major.0.in to i32
  call void @__asan_load1_noabort(i32 %12)
  %major.0 = load i8, ptr %major.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %major.0)
  %tobool26.not = icmp eq i8 %major.0, 0
  br i1 %tobool26.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  %13 = ptrtoint ptr %minor.0.in to i32
  call void @__asan_load1_noabort(i32 %13)
  %minor.0 = load i8, ptr %minor.0.in, align 1
  %conv28 = zext i8 %major.0 to i32
  %shl = shl nuw nsw i32 %conv28, 8
  %conv29 = zext i8 %minor.0 to i32
  %or = or i32 %shl, %conv29
  %c_version.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 12
  %14 = ptrtoint ptr %c_version.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %c_version.i, align 4
  %15 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cp_transport_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_flow_control to i32))
  %17 = load i32, ptr @rds_ib_sysctl_flow_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credit.0)
  %cmp.not.i = icmp eq i32 %credit.0, 0
  %or.cond.i = or i1 %cmp.not.i, %tobool.not.i
  %i_flowctl1.i = getelementptr inbounds %struct.rds_ib_connection, ptr %16, i32 0, i32 38
  %18 = ptrtoint ptr %i_flowctl1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load2.i = load i8, ptr %i_flowctl1.i, align 4
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i = or i8 %bf.load2.i, -128
  %19 = ptrtoint ptr %i_flowctl1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.set.i, ptr %i_flowctl1.i, align 4
  tail call void @rds_ib_send_add_credits(ptr noundef %conn, i32 noundef %credit.0) #12
  br label %if.end30

if.else.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear3.i = and i8 %bf.load2.i, 127
  %20 = ptrtoint ptr %i_flowctl1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bf.clear3.i, ptr %i_flowctl1.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else.i, %if.then.i, %if.end25.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.then.if.end30_crit_edge
  %ack_seq.0130 = phi i64 [ %ack_seq.0, %if.end25.if.end30_crit_edge ], [ %ack_seq.0, %if.then.i ], [ %ack_seq.0, %if.else.i ], [ 0, %if.then.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge ]
  %c_version = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 12
  %21 = ptrtoint ptr %c_version to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %22)
  %cmp31 = icmp ult i32 %22, 769
  br i1 %cmp31, label %do.end, label %do.end45

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %shr = lshr i32 %22, 8
  %and = and i32 %22, 255
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %c_laddr, ptr noundef %c_faddr, i32 noundef %shr, i32 noundef %and) #15
  tail call void @rds_conn_destroy(ptr noundef %conn) #12
  br label %cleanup

do.end45:                                         ; preds = %if.end30
  %i_active_side = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 40
  %23 = ptrtoint ptr %i_active_side to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i_active_side, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool47.not = icmp eq i8 %24, 0
  %cond = select i1 %tobool47.not, ptr @.str.7, ptr @.str.6
  %c_laddr49 = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 1
  %c_faddr50 = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 14
  %25 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %c_tos, align 4
  %conv51 = zext i8 %26 to i32
  %shr53 = lshr i32 %22, 8
  %and55 = and i32 %22, 255
  %i_flowctl = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 38
  %27 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load56 = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load56)
  %tobool58.not = icmp sgt i8 %bf.load56, -1
  %cond59 = select i1 %tobool58.not, ptr @.str.9, ptr @.str.8
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %cond, ptr noundef %c_laddr49, ptr noundef %c_faddr50, i32 noundef %conv51, i32 noundef %shr53, i32 noundef %and55, ptr noundef nonnull %cond59) #15
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_cm_id, align 8
  %path_rec = getelementptr inbounds %struct.rdma_cm_id, ptr %29, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %path_rec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %path_rec, align 4
  %sl = getelementptr inbounds %struct.sa_path_rec, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sl, align 4
  %i_sl = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 44
  %34 = ptrtoint ptr %i_sl to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %i_sl, align 4
  %i_cq_quiesce = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_cq_quiesce, i32 noundef 4) #12
  %35 = ptrtoint ptr %i_cq_quiesce to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %i_cq_quiesce, align 4
  tail call void @rds_ib_send_init_ring(ptr noundef %3) #12
  tail call void @rds_ib_recv_init_ring(ptr noundef %3) #12
  tail call void @rds_ib_recv_refill(ptr noundef %conn, i32 noundef 1, i32 noundef 3264) #12
  %rds_ibdev = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rds_ibdev, align 8
  %call62 = tail call i32 @rds_ib_update_ipaddr(ptr noundef %37, ptr noundef %c_laddr49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.end45.if.end70_crit_edge, label %do.end67

do.end45.if.end70_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.end67:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call62) #15
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %do.end45.if.end70_crit_edge
  %tobool71.not = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ack_seq.0130)
  %tobool73.not = icmp eq i64 %ack_seq.0130, 0
  %or.cond = select i1 %tobool71.not, i1 true, i1 %tobool73.not
  br i1 %or.cond, label %if.end70.if.end76_crit_edge, label %if.then74

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rds_send_drop_acked(ptr noundef %conn, i64 noundef %ack_seq.0130, ptr noundef null) #12
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end70.if.end76_crit_edge
  %38 = ptrtoint ptr %c_version to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %c_version, align 4
  %c_proposed_version = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 11
  %40 = ptrtoint ptr %c_proposed_version to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %c_proposed_version, align 4
  tail call void @rds_connect_complete(ptr noundef %conn) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_send_init_ring(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_recv_init_ring(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_recv_refill(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_update_ipaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_send_drop_acked(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_connect_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_cm_handle_connect(ptr noundef %cm_id, ptr nocapture noundef readonly %event, i1 noundef zeroext %isv6) local_unnamed_addr #0 align 64 {
entry:
  %conn_param = alloca %struct.rdma_conn_param, align 4
  %dp_rep = alloca %union.rds_ib_conn_priv, align 8
  %s_mapped_addr = alloca %struct.in6_addr, align 4
  %d_mapped_addr = alloca %struct.in6_addr, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %path_rec = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %path_rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path_rec, align 4
  %interface_id = getelementptr inbounds %struct.sa_path_rec, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %interface_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %interface_id, align 8
  %interface_id3 = getelementptr inbounds %struct.anon.162, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %interface_id3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %interface_id3, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param) #12
  %6 = call ptr @memset(ptr %conn_param, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dp_rep) #12
  %7 = call ptr @memset(ptr %dp_rep, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s_mapped_addr) #12
  %8 = getelementptr inbounds [4 x i32], ptr %s_mapped_addr, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i32], ptr %s_mapped_addr, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i32], ptr %s_mapped_addr, i32 0, i32 3
  %11 = call ptr @memset(ptr %s_mapped_addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %d_mapped_addr) #12
  %12 = getelementptr inbounds [4 x i32], ptr %d_mapped_addr, i32 0, i32 1
  %13 = getelementptr inbounds [4 x i32], ptr %d_mapped_addr, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i32], ptr %d_mapped_addr, i32 0, i32 3
  %15 = call ptr @memset(ptr %d_mapped_addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %err, align 4
  %param.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %17 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %param.i, align 8
  %private_data_len.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %private_data_len.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %private_data_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  br i1 %isv6, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp_cmn.i = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %18, i32 0, i32 2
  %ricpc_protocol_minor.i = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %18, i32 0, i32 2, i32 1
  %ricpc_protocol_minor_mask.i = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %18, i32 0, i32 2, i32 2
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dp_cmn6.i = getelementptr inbounds %struct.rds_ib_connect_private, ptr %18, i32 0, i32 2
  %ricpc_protocol_minor9.i = getelementptr inbounds %struct.rds_ib_connect_private, ptr %18, i32 0, i32 2, i32 1
  %ricpc_protocol_minor_mask11.i = getelementptr inbounds %struct.rds_ib_connect_private, ptr %18, i32 0, i32 2, i32 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then3.i
  %major.0.in.i = phi ptr [ %dp_cmn.i, %if.then3.i ], [ %dp_cmn6.i, %if.else.i ]
  %minor.0.in.i = phi ptr [ %ricpc_protocol_minor.i, %if.then3.i ], [ %ricpc_protocol_minor9.i, %if.else.i ]
  %mask.0.in.i = phi ptr [ %ricpc_protocol_minor_mask.i, %if.then3.i ], [ %ricpc_protocol_minor_mask11.i, %if.else.i ]
  %data_len.0.i = phi i32 [ 56, %if.then3.i ], [ 32, %if.else.i ]
  %21 = ptrtoint ptr %mask.0.in.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %mask.0.i = load i16, ptr %mask.0.in.i, align 2
  %22 = ptrtoint ptr %minor.0.in.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %minor.0.i = load i8, ptr %minor.0.in.i, align 1
  %conv.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.0.i, i32 %conv.i)
  %cmp.i = icmp ugt i32 %data_len.0.i, %conv.i
  br i1 %cmp.i, label %if.end12.i.if.end_crit_edge, label %lor.lhs.false.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %23 = ptrtoint ptr %major.0.in.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %major.0.i = load i8, ptr %major.0.in.i, align 8
  %conv17.i = zext i8 %major.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %major.0.i)
  %cmp18.i = icmp eq i8 %major.0.i, 0
  br i1 %cmp18.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end21.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end21.i:                                       ; preds = %lor.lhs.false.i
  %24 = and i16 %mask.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %major.0.i)
  %cmp25.i = icmp ne i8 %major.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool28.not.i = icmp eq i16 %24, 0
  %or.cond.i = select i1 %cmp25.i, i1 true, i1 %tobool28.not.i
  br i1 %or.cond.i, label %if.else35.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %cmp33.not95.i = icmp ult i16 %24, 2
  %spec.select.i = select i1 %cmp33.not95.i, i32 1024, i32 1025
  br label %if.end

if.else35.i:                                      ; preds = %if.end21.i
  %shl.i = shl nuw nsw i32 %conv17.i, 8
  %conv37.i = zext i8 %minor.0.i to i32
  %or.i = or i32 %shl.i, %conv37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %or.i)
  %cmp38.i = icmp eq i32 %or.i, 769
  br i1 %cmp38.i, label %if.else35.i.if.end_crit_edge, label %if.else41.i

if.else35.i.if.end_crit_edge:                     ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else41.i:                                      ; preds = %if.else35.i
  br i1 %isv6, label %if.then43.i, label %if.else55.i

if.then43.i:                                      ; preds = %if.else41.i
  %call44.i = tail call i32 @___ratelimit(ptr noundef nonnull @rds_ib_protocol_compatible._rs, ptr noundef nonnull @.str.35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then43.i.if.then_crit_edge, label %do.end49.i

if.then43.i.if.then_crit_edge:                    ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end49.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #14
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %18, i32 noundef %conv17.i, i32 noundef %conv37.i) #15
  br label %if.then

if.else55.i:                                      ; preds = %if.else41.i
  %call56.i = tail call i32 @___ratelimit(ptr noundef nonnull @rds_ib_protocol_compatible._rs.40, ptr noundef nonnull @.str.35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.else55.i.if.then_crit_edge, label %do.end61.i

if.else55.i.if.then_crit_edge:                    ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end61.i:                                       ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #14
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %18, i32 noundef %conv17.i, i32 noundef %conv37.i) #15
  br label %if.then

if.then:                                          ; preds = %do.end61.i, %if.else55.i.if.then_crit_edge, %do.end49.i, %if.then43.i.if.then_crit_edge, %do.end.i
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %err, align 4
  br label %if.then194

if.end:                                           ; preds = %if.else35.i.if.end_crit_edge, %while.cond.preheader.i, %lor.lhs.false.i.if.end_crit_edge, %if.end12.i.if.end_crit_edge
  %retval.0.i262 = phi i32 [ 1024, %lor.lhs.false.i.if.end_crit_edge ], [ 1024, %if.end12.i.if.end_crit_edge ], [ 769, %if.else35.i.if.end_crit_edge ], [ %spec.select.i, %while.cond.preheader.i ]
  %26 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %param.i, align 8
  br i1 %isv6, label %if.then6, label %if.else24

if.then6:                                         ; preds = %if.end
  %dp_cmn7 = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %27, i32 0, i32 2
  %dp_daddr = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %27, i32 0, i32 1
  %call.i263 = tail call i32 @__ipv6_addr_type(ptr noundef %dp_daddr) #12
  %and = and i32 %call.i263, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then6
  %call11 = tail call fastcc i32 @__rds_find_ifindex(ptr noundef %dp_daddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.then10.do.body_crit_edge

if.then10.do.body_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -95, ptr %err, align 4
  br label %if.then194

if.else:                                          ; preds = %if.then6
  %call.i264 = tail call i32 @__ipv6_addr_type(ptr noundef %27) #12
  %and15 = and i32 %call.i264, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.do.body_crit_edge, label %if.then17

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then17:                                        ; preds = %if.else
  %call18 = tail call fastcc i32 @__rds_find_ifindex(ptr noundef %dp_daddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.then17.do.body_crit_edge

if.then17.do.body_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -95, ptr %err, align 4
  br label %if.then194

if.else24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dp_cmn25 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 8
  %32 = ptrtoint ptr %s_mapped_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %s_mapped_addr, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %8, align 4
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65535, ptr %9, align 4
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %31, ptr %10, align 4
  %dp_daddr27 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %27, i32 0, i32 1
  %36 = ptrtoint ptr %dp_daddr27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dp_daddr27, align 4
  %38 = ptrtoint ptr %d_mapped_addr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %d_mapped_addr, align 4
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %12, align 4
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 65535, ptr %13, align 4
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %14, align 4
  br label %do.body

do.body:                                          ; preds = %if.else24, %if.then17.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then10.do.body_crit_edge
  %ifindex.0 = phi i32 [ %call11, %if.then10.do.body_crit_edge ], [ %call18, %if.then17.do.body_crit_edge ], [ 0, %if.else.do.body_crit_edge ], [ 0, %if.else24 ]
  %daddr6.0 = phi ptr [ %dp_daddr, %if.then10.do.body_crit_edge ], [ %dp_daddr, %if.then17.do.body_crit_edge ], [ %dp_daddr, %if.else.do.body_crit_edge ], [ %d_mapped_addr, %if.else24 ]
  %saddr6.0 = phi ptr [ %27, %if.then10.do.body_crit_edge ], [ %27, %if.then17.do.body_crit_edge ], [ %27, %if.else.do.body_crit_edge ], [ %s_mapped_addr, %if.else24 ]
  %dp_cmn.0 = phi ptr [ %dp_cmn7, %if.then10.do.body_crit_edge ], [ %dp_cmn7, %if.then17.do.body_crit_edge ], [ %dp_cmn7, %if.else.do.body_crit_edge ], [ %dp_cmn25, %if.else24 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug578, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_cm_handle_connect, %if.then34)) #12
          to label %do.end [label %if.then34], !srcloc !172

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %shr = lshr i32 %retval.0.i262, 8
  %and35 = and i32 %retval.0.i262, 1
  %ricpc_dp_toss = getelementptr inbounds %struct.rds_ib_conn_priv_cmn, ptr %dp_cmn.0, i32 0, i32 3
  %42 = ptrtoint ptr %ricpc_dp_toss to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ricpc_dp_toss, align 4
  %conv = zext i8 %43 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug578, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %saddr6.0, ptr noundef %daddr6.0, i32 noundef %shr, i32 noundef %and35, i64 noundef %3, i64 noundef %5, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %ricpc_dp_toss37 = getelementptr inbounds %struct.rds_ib_conn_priv_cmn, ptr %dp_cmn.0, i32 0, i32 3
  %44 = ptrtoint ptr %ricpc_dp_toss37 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ricpc_dp_toss37, align 4
  %call38 = call ptr @rds_conn_create(ptr noundef nonnull @init_net, ptr noundef %daddr6.0, ptr noundef %saddr6.0, ptr noundef nonnull @rds_ib_transport, i8 noundef zeroext %45, i32 noundef 3264, i32 noundef %ifindex.0) #12
  %cmp.i269 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %do.body41, label %if.end58

do.body41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug579, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_cm_handle_connect, %if.then53)) #12
          to label %out [label %if.then53], !srcloc !172

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %call38 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug579, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %46) #12
  br label %if.end192

if.end58:                                         ; preds = %do.end
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %call38, i32 0, i32 17
  %47 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %c_path, align 4
  %cp_cm_lock = getelementptr inbounds %struct.rds_conn_path, ptr %48, i32 0, i32 22
  call void @mutex_lock_nested(ptr noundef %cp_cm_lock, i32 noundef 0) #12
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %call38, i32 0, i32 8
  %49 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %52 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i270 = icmp eq i8 %52, 0
  br i1 %tobool.not.i270, label %if.end58.if.end.i272_crit_edge, label %do.end.i271, !prof !173

if.end58.if.end.i272_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i272

do.end.i271:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 803, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i272

if.end.i272:                                      ; preds = %do.end.i271, %if.end58.if.end.i272_crit_edge
  %53 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %c_path, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %54, i32 0, i32 14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cp_state.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  call void @llvm.prefetch.p0(ptr %cp_state.i.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end.i272
  %55 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cp_state.i.i, ptr %cp_state.i.i, i32 0, i32 1, ptr elementtype(i32) %cp_state.i.i) #12, !srcloc !175
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %rds_conn_transition.exit, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

rds_conn_transition.exit:                         ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %55, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i.i)
  %cmp.i.i.not = icmp eq i32 %asmresult3.i.i.i.i.i, 0
  br i1 %cmp.i.i.not, label %if.end128, label %if.then61

if.then61:                                        ; preds = %rds_conn_transition.exit
  %56 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i274 = getelementptr inbounds %struct.rds_transport, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %t_mp_capable.i274 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i275 = load i8, ptr %t_mp_capable.i274, align 4
  %59 = and i8 %bf.load.i275, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i276 = icmp eq i8 %59, 0
  br i1 %tobool.not.i276, label %if.then61.rds_conn_state.exit_crit_edge, label %do.end.i277, !prof !173

if.then61.rds_conn_state.exit_crit_edge:          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_state.exit

do.end.i277:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 816, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_state.exit

rds_conn_state.exit:                              ; preds = %do.end.i277, %if.then61.rds_conn_state.exit_crit_edge
  %60 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %c_path, align 4
  %cp_state.i.i279 = getelementptr inbounds %struct.rds_conn_path, ptr %61, i32 0, i32 14
  %call.i.i.i.i280 = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i279, i32 noundef 4) #12
  %62 = ptrtoint ptr %cp_state.i.i279 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %cp_state.i.i279, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp63 = icmp eq i32 %63, 3
  br i1 %cmp63, label %do.body66, label %if.else99

do.body66:                                        ; preds = %rds_conn_state.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug580, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_cm_handle_connect, %if.then78)) #12
          to label %do.end81 [label %if.then78], !srcloc !172

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug580, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body66
  call void @rds_conn_drop(ptr noundef %call38) #12
  %64 = call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %67, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !177
  %68 = call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i282 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i282 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu, align 4
  %arrayidx93 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx93, align 4
  %add = add i32 %73, ptrtoint (ptr @rds_ib_stats to i32)
  %74 = inttoptr i32 %add to ptr
  %s_ib_listen_closed_stale = getelementptr inbounds %struct.rds_ib_statistics, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %s_ib_listen_closed_stale to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %s_ib_listen_closed_stale, align 8
  %inc = add i64 %76, 1
  store i64 %inc, ptr %s_ib_listen_closed_stale, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !178
  %77 = call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i254 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i254 to ptr
  %preempt_count.i.i255 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i255 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i255, align 4
  %sub.i = add i32 %80, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i255, align 4
  br label %out

if.else99:                                        ; preds = %rds_conn_state.exit
  %81 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i284 = getelementptr inbounds %struct.rds_transport, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %t_mp_capable.i284 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i285 = load i8, ptr %t_mp_capable.i284, align 4
  %84 = and i8 %bf.load.i285, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i286 = icmp eq i8 %84, 0
  br i1 %tobool.not.i286, label %if.else99.rds_conn_state.exit292_crit_edge, label %do.end.i287, !prof !173

if.else99.rds_conn_state.exit292_crit_edge:       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_state.exit292

do.end.i287:                                      ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 816, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_state.exit292

rds_conn_state.exit292:                           ; preds = %do.end.i287, %if.else99.rds_conn_state.exit292_crit_edge
  %85 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %c_path, align 4
  %cp_state.i.i289 = getelementptr inbounds %struct.rds_conn_path, ptr %86, i32 0, i32 14
  %call.i.i.i.i290 = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i289, i32 noundef 4) #12
  %87 = ptrtoint ptr %cp_state.i.i289 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %cp_state.i.i289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp101 = icmp eq i32 %88, 1
  br i1 %cmp101, label %do.body105, label %rds_conn_state.exit292.out_crit_edge

rds_conn_state.exit292.out_crit_edge:             ; preds = %rds_conn_state.exit292
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body105:                                       ; preds = %rds_conn_state.exit292
  call void @__sanitizer_cov_trace_pc() #14
  %89 = call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i256 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i256 to ptr
  %preempt_count.i.i257 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i257 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i257, align 4
  %add.i258 = add i32 %92, 1
  store volatile i32 %add.i258, ptr %preempt_count.i.i257, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  %93 = call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i293 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i293 to ptr
  %cpu117 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu117, align 4
  %arrayidx118 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx118, align 4
  %add119 = add i32 %98, ptrtoint (ptr @rds_ib_stats to i32)
  %99 = inttoptr i32 %add119 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %99, align 8
  %inc120 = add i64 %101, 1
  store i64 %inc120, ptr %99, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %102 = call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i259 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i259 to ptr
  %preempt_count.i.i260 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i260 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i260, align 4
  %sub.i261 = add i32 %105, -1
  store volatile i32 %sub.i261, ptr %preempt_count.i.i260, align 4
  br label %out

if.end128:                                        ; preds = %rds_conn_transition.exit
  %106 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %107, i32 0, i32 13
  %108 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cp_transport_data, align 8
  %c_version.i = getelementptr inbounds %struct.rds_connection, ptr %call38, i32 0, i32 12
  %110 = ptrtoint ptr %c_version.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %retval.0.i262, ptr %c_version.i, align 4
  %ricpc_credit = getelementptr inbounds %struct.rds_ib_conn_priv_cmn, ptr %dp_cmn.0, i32 0, i32 7
  %111 = ptrtoint ptr %ricpc_credit to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ricpc_credit, align 8
  %113 = load ptr, ptr %cp_transport_data, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_flow_control to i32))
  %114 = load i32, ptr @rds_ib_sysctl_flow_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i295 = icmp eq i32 %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.not.i = icmp eq i32 %112, 0
  %or.cond.i296 = or i1 %cmp.not.i, %tobool.not.i295
  %i_flowctl1.i = getelementptr inbounds %struct.rds_ib_connection, ptr %113, i32 0, i32 38
  %115 = ptrtoint ptr %i_flowctl1.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load2.i = load i8, ptr %i_flowctl1.i, align 4
  br i1 %or.cond.i296, label %if.else.i297, label %if.then.i

if.then.i:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i = or i8 %bf.load2.i, -128
  %116 = ptrtoint ptr %i_flowctl1.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %bf.set.i, ptr %i_flowctl1.i, align 4
  call void @rds_ib_send_add_credits(ptr noundef %call38, i32 noundef %112) #12
  br label %rds_ib_set_flow_control.exit

if.else.i297:                                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear3.i = and i8 %bf.load2.i, 127
  %117 = ptrtoint ptr %i_flowctl1.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %bf.clear3.i, ptr %i_flowctl1.i, align 4
  br label %rds_ib_set_flow_control.exit

rds_ib_set_flow_control.exit:                     ; preds = %if.else.i297, %if.then.i
  %ricpc_ack_seq = getelementptr inbounds %struct.rds_ib_conn_priv_cmn, ptr %dp_cmn.0, i32 0, i32 6
  %118 = ptrtoint ptr %ricpc_ack_seq to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ricpc_ack_seq, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %119)
  %tobool131.not = icmp eq i64 %119, 0
  br i1 %tobool131.not, label %rds_ib_set_flow_control.exit.do.body135_crit_edge, label %if.then132

rds_ib_set_flow_control.exit.do.body135_crit_edge: ; preds = %rds_ib_set_flow_control.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body135

if.then132:                                       ; preds = %rds_ib_set_flow_control.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_send_drop_acked(ptr noundef %call38, i64 noundef %119, ptr noundef null) #12
  br label %do.body135

do.body135:                                       ; preds = %if.then132, %rds_ib_set_flow_control.exit.do.body135_crit_edge
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %120 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %context, align 4
  %tobool136.not = icmp eq ptr %121, null
  br i1 %tobool136.not, label %do.body153, label %do.body144, !prof !173

do.body144:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_cm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 896, 0\0A.popsection", ""() #12, !srcloc !181
  unreachable

do.body153:                                       ; preds = %do.body135
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %109, i32 0, i32 3
  %122 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i_cm_id, align 8
  %tobool154.not = icmp eq ptr %123, null
  br i1 %tobool154.not, label %do.end170, label %do.body162, !prof !173

do.body162:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_cm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 897, 0\0A.popsection", ""() #12, !srcloc !182
  unreachable

do.end170:                                        ; preds = %do.body153
  %124 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %cm_id, ptr %i_cm_id, align 8
  %125 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call38, ptr %context, align 4
  %call173 = call fastcc i32 @rds_ib_setup_qp(ptr noundef %call38)
  %126 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call173, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.then175

if.then175:                                       ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %call38, ptr noundef nonnull @.str.18, i32 noundef %call173)
  br label %out

if.end176:                                        ; preds = %do.end170
  %responder_resources = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 2
  %127 = ptrtoint ptr %responder_resources to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %responder_resources, align 1
  %conv178 = zext i8 %128 to i32
  %initiator_depth = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 3
  %129 = ptrtoint ptr %initiator_depth to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %initiator_depth, align 2
  %conv180 = zext i8 %130 to i32
  call fastcc void @rds_ib_cm_fill_conn_param(ptr noundef %call38, ptr noundef nonnull %conn_param, ptr noundef nonnull %dp_rep, i32 noundef %retval.0.i262, i32 noundef %conv178, i32 noundef %conv180, i1 noundef zeroext %isv6)
  %call182 = call i32 @rdma_set_min_rnr_timer(ptr noundef %cm_id, i8 noundef zeroext 10) #12
  %call183 = call i32 @rdma_accept(ptr noundef %cm_id, ptr noundef nonnull %conn_param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end176.out_crit_edge, label %if.then185

if.end176.out_crit_edge:                          ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then185:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %call38, ptr noundef nonnull @.str.19)
  br label %out

out:                                              ; preds = %if.then185, %if.end176.out_crit_edge, %if.then175, %do.body105, %rds_conn_state.exit292.out_crit_edge, %do.end81, %do.body41
  %destroy.0 = phi i32 [ 0, %if.then175 ], [ 0, %if.then185 ], [ 0, %if.end176.out_crit_edge ], [ 1, %do.end81 ], [ 1, %do.body105 ], [ 1, %rds_conn_state.exit292.out_crit_edge ], [ 1, %do.body41 ]
  %conn.0 = phi ptr [ %call38, %if.then175 ], [ %call38, %if.then185 ], [ %call38, %if.end176.out_crit_edge ], [ %call38, %do.end81 ], [ %call38, %do.body105 ], [ %call38, %rds_conn_state.exit292.out_crit_edge ], [ null, %do.body41 ]
  %tobool187.not = icmp eq ptr %conn.0, null
  br i1 %tobool187.not, label %out.if.end192_crit_edge, label %if.then188

out.if.end192_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.then188:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %c_path189 = getelementptr inbounds %struct.rds_connection, ptr %conn.0, i32 0, i32 17
  %131 = ptrtoint ptr %c_path189 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %c_path189, align 4
  %cp_cm_lock191 = getelementptr inbounds %struct.rds_conn_path, ptr %132, i32 0, i32 22
  call void @mutex_unlock(ptr noundef %cp_cm_lock191) #12
  br label %if.end192

if.end192:                                        ; preds = %if.then188, %out.if.end192_crit_edge, %if.then53
  %destroy.0308.ph = phi i32 [ 1, %if.then53 ], [ %destroy.0, %out.if.end192_crit_edge ], [ %destroy.0, %if.then188 ]
  %133 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool193.not = icmp eq i32 %.pr, 0
  br i1 %tobool193.not, label %if.end192.if.end196_crit_edge, label %if.end192.if.then194_crit_edge

if.end192.if.then194_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then194

if.end192.if.end196_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end196

if.then194:                                       ; preds = %if.end192.if.then194_crit_edge, %if.then20, %if.then12, %if.then
  %destroy.0308311 = phi i32 [ %destroy.0308.ph, %if.end192.if.then194_crit_edge ], [ 1, %if.then ], [ 1, %if.then20 ], [ 1, %if.then12 ]
  %call195 = call i32 @rdma_reject(ptr noundef %cm_id, ptr noundef nonnull %err, i8 noundef zeroext 4, i8 noundef zeroext 28) #12
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %if.end192.if.end196_crit_edge
  %destroy.0308312 = phi i32 [ %destroy.0308311, %if.then194 ], [ %destroy.0308.ph, %if.end192.if.end196_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %d_mapped_addr) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s_mapped_addr) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dp_rep) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param) #12
  ret i32 %destroy.0308312
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rds_find_ifindex(ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @__rds_find_ifindex.__warned, align 1
  br i1 %.b1, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rds_find_ifindex.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 770, ptr noundef nonnull @.str.44) #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), %for.cond.preheader ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dev.0 = getelementptr i8, ptr %.pn, i32 -40
  %call10 = tail call i32 @ipv6_chk_addr(ptr noundef nonnull @init_net, ptr noundef %addr, ptr noundef %dev.0, i32 noundef 1) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.body.for.cond_crit_edge, label %if.then12

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ifindex = getelementptr i8, ptr %.pn, i32 84
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  br label %for.end

for.end:                                          ; preds = %if.then12, %for.cond.for.end_crit_edge
  %idx.0 = phi i32 [ %6, %if.then12 ], [ 0, %for.cond.for.end_crit_edge ]
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %for.end
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !184
  %7 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i.i.i9 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %idx.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_conn_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_ib_setup_qp(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.ib_qp_init_attr, align 4
  %cq_attr = alloca %struct.ib_cq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_cm_id, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #12
  %8 = call ptr @memset(ptr %attr, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cq_attr) #12
  %9 = call ptr @memset(ptr %cq_attr, i32 0, i32 12)
  %call = tail call ptr @rds_ib_get_client_data(ptr noundef %7) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rds_ib_add_conn(ptr noundef nonnull %call, ptr noundef %conn) #12
  %max_wrs1 = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 12
  %10 = ptrtoint ptr %max_wrs1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_wrs1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_send_wr to i32))
  %12 = load i32, ptr @rds_ib_sysctl_max_send_wr, align 4
  %add = add i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp = icmp ult i32 %11, %add
  %sub = add i32 %11, -1
  %cond = select i1 %cmp, i32 %sub, i32 %12
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_send_ring, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %cond)
  %cmp3.not = icmp eq i32 %14, %cond
  br i1 %cmp3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rds_ib_ring_resize(ptr noundef %i_send_ring, i32 noundef %cond) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %15 = ptrtoint ptr %max_wrs1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_wrs1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_max_recv_wr to i32))
  %17 = load i32, ptr @rds_ib_sysctl_max_recv_wr, align 4
  %add8 = add i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add8)
  %cmp9 = icmp ult i32 %16, %add8
  %sub12 = add i32 %16, -1
  %cond15 = select i1 %cmp9, i32 %sub12, i32 %17
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_recv_ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %cond15)
  %cmp17.not = icmp eq i32 %19, %cond15
  br i1 %cmp17.not, label %if.end6.if.end20_crit_edge, label %if.then18

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rds_ib_ring_resize(ptr noundef %i_recv_ring, i32 noundef %cond15) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end6.if.end20_crit_edge
  %pd = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pd, align 4
  %i_pd = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %i_pd to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %i_pd, align 4
  %vector_load.i = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 18
  %23 = ptrtoint ptr %vector_load.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vector_load.i, align 4
  %dev.i = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %num_comp_vectors.i = getelementptr inbounds %struct.ib_device, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %num_comp_vectors.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_comp_vectors.i, align 4
  %sub.i = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp26.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp26.i, label %for.body.preheader.i, label %if.end20.ibdev_get_unused_vector.exit_crit_edge

if.end20.ibdev_get_unused_vector.exit_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %ibdev_get_unused_vector.exit

for.body.preheader.i:                             ; preds = %if.end20
  %arrayidx.i = getelementptr i32, ptr %24, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.029.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %sub.i, %for.body.preheader.i ]
  %index.028.i = phi i32 [ %spec.select25.i, %for.body.i.for.body.i_crit_edge ], [ %sub.i, %for.body.preheader.i ]
  %min.027.i = phi i32 [ %33, %for.body.i.for.body.i_crit_edge ], [ %30, %for.body.preheader.i ]
  %arrayidx8.i = getelementptr i32, ptr %24, i32 %i.029.i
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %min.027.i)
  %cmp9.i = icmp slt i32 %32, %min.027.i
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 %min.027.i) #12
  %spec.select25.i = select i1 %cmp9.i, i32 %i.029.i, i32 %index.028.i
  %dec.i = add nsw i32 %i.029.i, -1
  %cmp.not.i = icmp eq i32 %i.029.i, 0
  br i1 %cmp.not.i, label %for.body.i.ibdev_get_unused_vector.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.ibdev_get_unused_vector.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ibdev_get_unused_vector.exit

ibdev_get_unused_vector.exit:                     ; preds = %for.body.i.ibdev_get_unused_vector.exit_crit_edge, %if.end20.ibdev_get_unused_vector.exit_crit_edge
  %index.0.lcssa.i = phi i32 [ %sub.i, %if.end20.ibdev_get_unused_vector.exit_crit_edge ], [ %spec.select25.i, %for.body.i.ibdev_get_unused_vector.exit_crit_edge ]
  %arrayidx13.i = getelementptr i32, ptr %24, i32 %index.0.lcssa.i
  %34 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx13.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %arrayidx13.i, align 4
  %i_scq_vector = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 42
  %36 = ptrtoint ptr %i_scq_vector to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %index.0.lcssa.i, ptr %i_scq_vector, align 4
  %37 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_send_ring, align 8
  %add25 = add i32 %38, 513
  %39 = ptrtoint ptr %cq_attr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add25, ptr %cq_attr, align 4
  %comp_vector = getelementptr inbounds %struct.ib_cq_init_attr, ptr %cq_attr, i32 0, i32 1
  %40 = ptrtoint ptr %comp_vector to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %index.0.lcssa.i, ptr %comp_vector, align 4
  %call27 = call ptr @__ib_create_cq(ptr noundef %7, ptr noundef nonnull @rds_ib_cq_comp_handler_send, ptr noundef nonnull @rds_ib_cq_event_handler, ptr noundef %conn, ptr noundef nonnull %cq_attr, ptr noundef nonnull @.str.13) #12
  %i_send_cq = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call27, ptr %i_send_cq, align 8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end41

if.then30:                                        ; preds = %ibdev_get_unused_vector.exit
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %call27 to i32
  %43 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %i_send_cq, align 8
  %44 = ptrtoint ptr %i_scq_vector to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_scq_vector, align 4
  %46 = ptrtoint ptr %vector_load.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vector_load.i, align 4
  %arrayidx.i457 = getelementptr i32, ptr %47, i32 %45
  %48 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i457, align 4
  %dec.i458 = add i32 %49, -1
  store i32 %dec.i458, ptr %arrayidx.i457, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then39)) #12
          to label %rds_ibdev_out [label %if.then39], !srcloc !172

if.then39:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug565, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %42) #12
  br label %rds_ibdev_out

if.end41:                                         ; preds = %ibdev_get_unused_vector.exit
  %50 = ptrtoint ptr %vector_load.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vector_load.i, align 4
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %num_comp_vectors.i461 = getelementptr inbounds %struct.ib_device, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %num_comp_vectors.i461 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_comp_vectors.i461, align 4
  %sub.i462 = add i32 %55, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i462)
  %cmp26.i463 = icmp sgt i32 %sub.i462, -1
  br i1 %cmp26.i463, label %for.body.preheader.i465, label %if.end41.ibdev_get_unused_vector.exit478_crit_edge

if.end41.ibdev_get_unused_vector.exit478_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %ibdev_get_unused_vector.exit478

for.body.preheader.i465:                          ; preds = %if.end41
  %arrayidx.i464 = getelementptr i32, ptr %51, i32 %sub.i462
  %56 = ptrtoint ptr %arrayidx.i464 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i464, align 4
  br label %for.body.i474

for.body.i474:                                    ; preds = %for.body.i474.for.body.i474_crit_edge, %for.body.preheader.i465
  %i.029.i466 = phi i32 [ %dec.i472, %for.body.i474.for.body.i474_crit_edge ], [ %sub.i462, %for.body.preheader.i465 ]
  %index.028.i467 = phi i32 [ %spec.select25.i471, %for.body.i474.for.body.i474_crit_edge ], [ %sub.i462, %for.body.preheader.i465 ]
  %min.027.i468 = phi i32 [ %60, %for.body.i474.for.body.i474_crit_edge ], [ %57, %for.body.preheader.i465 ]
  %arrayidx8.i469 = getelementptr i32, ptr %51, i32 %i.029.i466
  %58 = ptrtoint ptr %arrayidx8.i469 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx8.i469, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %min.027.i468)
  %cmp9.i470 = icmp slt i32 %59, %min.027.i468
  %60 = call i32 @llvm.smin.i32(i32 %59, i32 %min.027.i468) #12
  %spec.select25.i471 = select i1 %cmp9.i470, i32 %i.029.i466, i32 %index.028.i467
  %dec.i472 = add nsw i32 %i.029.i466, -1
  %cmp.not.i473 = icmp eq i32 %i.029.i466, 0
  br i1 %cmp.not.i473, label %for.body.i474.ibdev_get_unused_vector.exit478_crit_edge, label %for.body.i474.for.body.i474_crit_edge

for.body.i474.for.body.i474_crit_edge:            ; preds = %for.body.i474
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i474

for.body.i474.ibdev_get_unused_vector.exit478_crit_edge: ; preds = %for.body.i474
  call void @__sanitizer_cov_trace_pc() #14
  br label %ibdev_get_unused_vector.exit478

ibdev_get_unused_vector.exit478:                  ; preds = %for.body.i474.ibdev_get_unused_vector.exit478_crit_edge, %if.end41.ibdev_get_unused_vector.exit478_crit_edge
  %index.0.lcssa.i475 = phi i32 [ %sub.i462, %if.end41.ibdev_get_unused_vector.exit478_crit_edge ], [ %spec.select25.i471, %for.body.i474.ibdev_get_unused_vector.exit478_crit_edge ]
  %arrayidx13.i476 = getelementptr i32, ptr %51, i32 %index.0.lcssa.i475
  %61 = ptrtoint ptr %arrayidx13.i476 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx13.i476, align 4
  %inc.i477 = add i32 %62, 1
  store i32 %inc.i477, ptr %arrayidx13.i476, align 4
  %i_rcq_vector = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 43
  %63 = ptrtoint ptr %i_rcq_vector to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %index.0.lcssa.i475, ptr %i_rcq_vector, align 8
  %64 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_recv_ring, align 4
  %66 = ptrtoint ptr %cq_attr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %cq_attr, align 4
  %67 = ptrtoint ptr %comp_vector to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %index.0.lcssa.i475, ptr %comp_vector, align 4
  %call48 = call ptr @__ib_create_cq(ptr noundef %7, ptr noundef nonnull @rds_ib_cq_comp_handler_recv, ptr noundef nonnull @rds_ib_cq_event_handler, ptr noundef %conn, ptr noundef nonnull %cq_attr, ptr noundef nonnull @.str.13) #12
  %i_recv_cq = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 6
  %68 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call48, ptr %i_recv_cq, align 4
  %cmp.i479 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i479, label %if.then51, label %if.end72

if.then51:                                        ; preds = %ibdev_get_unused_vector.exit478
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %call48 to i32
  %70 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %i_recv_cq, align 4
  %71 = ptrtoint ptr %i_rcq_vector to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_rcq_vector, align 8
  %73 = ptrtoint ptr %vector_load.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vector_load.i, align 4
  %arrayidx.i481 = getelementptr i32, ptr %74, i32 %72
  %75 = ptrtoint ptr %arrayidx.i481 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i481, align 4
  %dec.i482 = add i32 %76, -1
  store i32 %dec.i482, ptr %arrayidx.i481, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then68)) #12
          to label %send_cq_out [label %if.then68], !srcloc !172

if.then68:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug566, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %69) #12
  br label %send_cq_out

if.end72:                                         ; preds = %ibdev_get_unused_vector.exit478
  %77 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_send_cq, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %80, i32 0, i32 1, i32 12
  %81 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = call i32 %82(ptr noundef %78, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool75.not = icmp eq i32 %call.i, 0
  br i1 %tobool75.not, label %if.end93, label %do.body77

do.body77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then89)) #12
          to label %recv_cq_out [label %if.then89], !srcloc !172

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.49, i32 noundef %call.i) #12
  br label %recv_cq_out

if.end93:                                         ; preds = %if.end72
  %83 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_recv_cq, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %req_notify_cq.i483 = getelementptr inbounds %struct.ib_device, ptr %86, i32 0, i32 1, i32 12
  %87 = ptrtoint ptr %req_notify_cq.i483 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %req_notify_cq.i483, align 4
  %call.i484 = call i32 %88(ptr noundef %84, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i484)
  %tobool96.not = icmp eq i32 %call.i484, 0
  br i1 %tobool96.not, label %if.end114, label %do.body98

do.body98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then110)) #12
          to label %recv_cq_out [label %if.then110], !srcloc !172

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.49, i32 noundef %call.i484) #12
  br label %recv_cq_out

if.end114:                                        ; preds = %if.end93
  %89 = getelementptr inbounds i8, ptr %attr, i32 16
  %90 = call ptr @memset(ptr %89, i32 0, i32 56)
  %91 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @rds_ib_qp_event_handler, ptr %attr, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 1
  %92 = ptrtoint ptr %qp_context to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %conn, ptr %qp_context, align 4
  %93 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %i_send_ring, align 8
  %add118 = add i32 %94, 513
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6
  %95 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add118, ptr %cap, align 4
  %96 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i_recv_ring, align 4
  %add121 = add i32 %97, 1
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 1
  %98 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add121, ptr %max_recv_wr, align 4
  %max_sge = getelementptr inbounds %struct.rds_ib_device, ptr %call, i32 0, i32 11
  %99 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_sge, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 2
  %101 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %max_send_sge, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 3
  %102 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %max_recv_sge, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 7
  %103 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %sq_sig_type, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 8
  %104 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %qp_type, align 4
  %105 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_send_cq, align 8
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 2
  %107 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %send_cq, align 4
  %108 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i_recv_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 3
  %110 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %recv_cq, align 4
  %111 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_cm_id, align 8
  %113 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_pd, align 4
  %call129 = call i32 @rdma_create_qp(ptr noundef %112, ptr noundef %114, ptr noundef nonnull %attr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end148, label %do.body132

do.body132:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then144)) #12
          to label %recv_cq_out [label %if.then144], !srcloc !172

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.49, i32 noundef %call129) #12
  br label %recv_cq_out

if.end148:                                        ; preds = %if.end114
  %i_send_hdrs_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 16
  %115 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i_send_ring, align 8
  %call151 = call fastcc ptr @rds_dma_hdrs_alloc(ptr noundef nonnull %call, ptr noundef %i_send_hdrs_dma, i32 noundef %116, i32 noundef 1)
  %i_send_hdrs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 15
  %117 = ptrtoint ptr %i_send_hdrs to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call151, ptr %i_send_hdrs, align 8
  %tobool153.not = icmp eq ptr %call151, null
  br i1 %tobool153.not, label %if.then154, label %if.end171

if.then154:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then167)) #12
          to label %qp_out [label %if.then167], !srcloc !172

if.then167:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug570, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.49) #12
  br label %qp_out

if.end171:                                        ; preds = %if.end148
  %i_recv_hdrs_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 24
  %118 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i_recv_ring, align 4
  %call174 = call fastcc ptr @rds_dma_hdrs_alloc(ptr noundef nonnull %call, ptr noundef %i_recv_hdrs_dma, i32 noundef %119, i32 noundef 2)
  %i_recv_hdrs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 23
  %120 = ptrtoint ptr %i_recv_hdrs to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call174, ptr %i_recv_hdrs, align 8
  %tobool176.not = icmp eq ptr %call174, null
  br i1 %tobool176.not, label %if.then177, label %if.end194

if.then177:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then190)) #12
          to label %send_hdrs_dma_out [label %if.then190], !srcloc !172

if.then190:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug571, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.49) #12
  br label %send_hdrs_dma_out

if.end194:                                        ; preds = %if.end171
  %121 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i, align 4
  %i_ack_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 35
  %call196 = call fastcc ptr @rds_dma_hdr_alloc(ptr noundef %122, ptr noundef %i_ack_dma)
  %i_ack = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 32
  %123 = ptrtoint ptr %i_ack to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call196, ptr %i_ack, align 8
  %tobool198.not = icmp eq ptr %call196, null
  br i1 %tobool198.not, label %if.then199, label %if.end216

if.then199:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then212)) #12
          to label %recv_hdrs_dma_out [label %if.then212], !srcloc !172

if.then212:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.49) #12
  br label %recv_hdrs_dma_out

if.end216:                                        ; preds = %if.end194
  %124 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %i_send_ring, align 8
  %126 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %125, i32 232) #12
  %127 = extractvalue { i32, i1 } %126, 1
  %128 = extractvalue { i32, i1 } %126, 0
  %retval.0.i485 = select i1 %127, i32 -1, i32 %128
  %call221 = call noalias ptr @vzalloc_node(i32 noundef %retval.0.i485, i32 noundef -1) #16
  %i_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 17
  %129 = ptrtoint ptr %i_sends to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call221, ptr %i_sends, align 8
  %tobool223.not = icmp eq ptr %call221, null
  br i1 %tobool223.not, label %if.then224, label %if.end241

if.then224:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then237)) #12
          to label %ack_dma_out [label %if.then237], !srcloc !172

if.then237:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug573, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.49) #12
  br label %ack_dma_out

if.end241:                                        ; preds = %if.end216
  %130 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %i_recv_ring, align 4
  %132 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %131, i32 64) #12
  %133 = extractvalue { i32, i1 } %132, 1
  %134 = extractvalue { i32, i1 } %132, 0
  %retval.0.i486 = select i1 %133, i32 -1, i32 %134
  %call246 = call noalias ptr @vzalloc_node(i32 noundef %retval.0.i486, i32 noundef -1) #16
  %i_recvs = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 25
  %135 = ptrtoint ptr %i_recvs to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call246, ptr %i_recvs, align 8
  %tobool248.not = icmp eq ptr %call246, null
  br i1 %tobool248.not, label %if.then249, label %if.end266

if.then249:                                       ; preds = %if.end241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug574, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then262)) #12
          to label %sends_out [label %if.then262], !srcloc !172

if.then262:                                       ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug574, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.49) #12
  br label %sends_out

if.end266:                                        ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_ib_recv_init_ack(ptr noundef %3) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_setup_qp, %if.then279)) #12
          to label %out [label %if.then279], !srcloc !172

if.then279:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i_pd, align 4
  %138 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %i_send_cq, align 8
  %140 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i_recv_cq, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_setup_qp.__UNIQUE_ID_ddebug575, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.49, ptr noundef %conn, ptr noundef %137, ptr noundef %139, ptr noundef %141) #12
  br label %out

sends_out:                                        ; preds = %if.then262, %if.then249
  %142 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i_sends, align 8
  call void @vfree(ptr noundef %143) #12
  br label %ack_dma_out

ack_dma_out:                                      ; preds = %sends_out, %if.then237, %if.then224
  %144 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i, align 4
  %146 = ptrtoint ptr %i_ack to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %i_ack, align 8
  %148 = ptrtoint ptr %i_ack_dma to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %i_ack_dma, align 8
  call fastcc void @rds_dma_hdr_free(ptr noundef %145, ptr noundef %147, i32 noundef %149, i32 noundef 1)
  %150 = ptrtoint ptr %i_ack to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %i_ack, align 8
  br label %recv_hdrs_dma_out

recv_hdrs_dma_out:                                ; preds = %ack_dma_out, %if.then212, %if.then199
  %151 = ptrtoint ptr %i_recv_hdrs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %i_recv_hdrs, align 8
  %153 = ptrtoint ptr %i_recv_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i_recv_hdrs_dma, align 4
  %155 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %i_recv_ring, align 4
  call fastcc void @rds_dma_hdrs_free(ptr noundef nonnull %call, ptr noundef %152, ptr noundef %154, i32 noundef %156, i32 noundef 2)
  %157 = ptrtoint ptr %i_recv_hdrs to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %i_recv_hdrs, align 8
  %158 = ptrtoint ptr %i_recv_hdrs_dma to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %i_recv_hdrs_dma, align 4
  br label %send_hdrs_dma_out

send_hdrs_dma_out:                                ; preds = %recv_hdrs_dma_out, %if.then190, %if.then177
  %159 = ptrtoint ptr %i_send_hdrs to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %i_send_hdrs, align 8
  %161 = ptrtoint ptr %i_send_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %i_send_hdrs_dma, align 4
  %163 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %i_send_ring, align 8
  call fastcc void @rds_dma_hdrs_free(ptr noundef nonnull %call, ptr noundef %160, ptr noundef %162, i32 noundef %164, i32 noundef 1)
  %165 = ptrtoint ptr %i_send_hdrs to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %i_send_hdrs, align 8
  %166 = ptrtoint ptr %i_send_hdrs_dma to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %i_send_hdrs_dma, align 4
  br label %qp_out

qp_out:                                           ; preds = %send_hdrs_dma_out, %if.then167, %if.then154
  %167 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %i_cm_id, align 8
  call void @rdma_destroy_qp(ptr noundef %168) #12
  br label %recv_cq_out

recv_cq_out:                                      ; preds = %qp_out, %if.then144, %do.body132, %if.then110, %do.body98, %if.then89, %do.body77
  %ret.4 = phi i32 [ %call.i, %if.then89 ], [ %call.i484, %if.then110 ], [ %call129, %if.then144 ], [ -12, %qp_out ], [ %call.i, %do.body77 ], [ %call.i484, %do.body98 ], [ %call129, %do.body132 ]
  %169 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i_recv_cq, align 4
  %call.i487 = call i32 @ib_destroy_cq_user(ptr noundef %170, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i487)
  %tobool.not.i = icmp eq i32 %call.i487, 0
  br i1 %tobool.not.i, label %recv_cq_out.ib_destroy_cq.exit_crit_edge, label %land.rhs.i

recv_cq_out.ib_destroy_cq.exit_crit_edge:         ; preds = %recv_cq_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %ib_destroy_cq.exit

land.rhs.i:                                       ; preds = %recv_cq_out
  %.b38.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_destroy_cq.exit_crit_edge, label %if.then.i, !prof !173

land.rhs.i.ib_destroy_cq.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ib_destroy_cq.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.72) #12
  br label %ib_destroy_cq.exit

ib_destroy_cq.exit:                               ; preds = %if.then.i, %land.rhs.i.ib_destroy_cq.exit_crit_edge, %recv_cq_out.ib_destroy_cq.exit_crit_edge
  %171 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %i_recv_cq, align 4
  br label %send_cq_out

send_cq_out:                                      ; preds = %ib_destroy_cq.exit, %if.then68, %if.then51
  %ret.5 = phi i32 [ %69, %if.then68 ], [ %ret.4, %ib_destroy_cq.exit ], [ %69, %if.then51 ]
  %172 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %i_send_cq, align 8
  %call.i488 = call i32 @ib_destroy_cq_user(ptr noundef %173, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i488)
  %tobool.not.i489 = icmp eq i32 %call.i488, 0
  br i1 %tobool.not.i489, label %send_cq_out.ib_destroy_cq.exit493_crit_edge, label %land.rhs.i491

send_cq_out.ib_destroy_cq.exit493_crit_edge:      ; preds = %send_cq_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %ib_destroy_cq.exit493

land.rhs.i491:                                    ; preds = %send_cq_out
  %.b38.i490 = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i490, label %land.rhs.i491.ib_destroy_cq.exit493_crit_edge, label %if.then.i492, !prof !173

land.rhs.i491.ib_destroy_cq.exit493_crit_edge:    ; preds = %land.rhs.i491
  call void @__sanitizer_cov_trace_pc() #14
  br label %ib_destroy_cq.exit493

if.then.i492:                                     ; preds = %land.rhs.i491
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.72) #12
  br label %ib_destroy_cq.exit493

ib_destroy_cq.exit493:                            ; preds = %if.then.i492, %land.rhs.i491.ib_destroy_cq.exit493_crit_edge, %send_cq_out.ib_destroy_cq.exit493_crit_edge
  %174 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %i_send_cq, align 8
  br label %rds_ibdev_out

rds_ibdev_out:                                    ; preds = %ib_destroy_cq.exit493, %if.then39, %if.then30
  %ret.6 = phi i32 [ %42, %if.then39 ], [ %ret.5, %ib_destroy_cq.exit493 ], [ %42, %if.then30 ]
  call void @rds_ib_remove_conn(ptr noundef nonnull %call, ptr noundef %conn) #12
  br label %out

out:                                              ; preds = %rds_ibdev_out, %if.then279, %if.end266
  %ret.7 = phi i32 [ %ret.6, %rds_ibdev_out ], [ 0, %if.then279 ], [ 0, %if.end266 ]
  call void @rds_ib_dev_put(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cq_attr) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rds_ib_conn_error(ptr noundef %conn, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #12
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !185
  tail call void @rds_conn_drop(ptr noundef %conn) #12
  call void @llvm.va_start(ptr nonnull %ap)
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vprintk(ptr noundef %fmt, [1 x i32] %.fca.0.insert) #12
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_ib_cm_fill_conn_param(ptr nocapture noundef readonly %conn, ptr nocapture noundef writeonly %conn_param, ptr noundef %dp, i32 noundef %protocol_version, i32 noundef %max_responder_resources, i32 noundef %max_initiator_depth, i1 noundef zeroext %isv6) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  %rds_ibdev1 = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rds_ibdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rds_ibdev1, align 8
  %6 = call ptr @memset(ptr %conn_param, i32 0, i32 20)
  %max_responder_resources2 = getelementptr inbounds %struct.rds_ib_device, ptr %5, i32 0, i32 14
  %7 = ptrtoint ptr %max_responder_resources2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_responder_resources2, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %max_responder_resources)
  %conv = trunc i32 %9 to i8
  %responder_resources = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 2
  %10 = ptrtoint ptr %responder_resources to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %responder_resources, align 1
  %max_initiator_depth3 = getelementptr inbounds %struct.rds_ib_device, ptr %5, i32 0, i32 13
  %11 = ptrtoint ptr %max_initiator_depth3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_initiator_depth3, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %max_initiator_depth)
  %conv11 = trunc i32 %13 to i8
  %initiator_depth = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 3
  %14 = ptrtoint ptr %initiator_depth to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11, ptr %initiator_depth, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_retry_count to i32))
  %15 = load i32, ptr @rds_ib_retry_count, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 7)
  %17 = trunc i32 %16 to i8
  %retry_count = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 5
  %18 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %retry_count, align 4
  %rnr_retry_count = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 6
  %19 = ptrtoint ptr %rnr_retry_count to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %rnr_retry_count, align 1
  %tobool.not = icmp eq ptr %dp, null
  br i1 %tobool.not, label %entry.if.end66_crit_edge, label %if.then

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then:                                          ; preds = %entry
  %20 = call ptr @memset(ptr %dp, i32 0, i32 56)
  br i1 %isv6, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %dp, ptr %c_laddr, i32 16)
  %dp_daddr = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %dp, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  %22 = call ptr @memcpy(ptr %dp_daddr, ptr %c_faddr, i32 16)
  %shr = lshr i32 %protocol_version, 8
  %conv22 = trunc i32 %shr to i8
  %dp_cmn = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %dp, i32 0, i32 2
  %23 = ptrtoint ptr %dp_cmn to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv22, ptr %dp_cmn, align 8
  %conv23 = trunc i32 %protocol_version to i8
  %ricpc_protocol_minor = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %dp, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %ricpc_protocol_minor to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv23, ptr %ricpc_protocol_minor, align 1
  %ricpc_protocol_minor_mask = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %dp, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %ricpc_protocol_minor_mask to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 3, ptr %ricpc_protocol_minor_mask, align 2
  %call = tail call i64 @rds_ib_piggyb_ack(ptr noundef %3) #12
  %ricpc_ack_seq = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %dp, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %ricpc_ack_seq to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call, ptr %ricpc_ack_seq, align 8
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 14
  %27 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %c_tos, align 4
  %ricpc_dp_toss = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %dp, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %ricpc_dp_toss to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %ricpc_dp_toss, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx29 = getelementptr %struct.rds_connection, ptr %conn, i32 0, i32 1, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx29, align 4
  %32 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dp, align 8
  %arrayidx33 = getelementptr %struct.rds_connection, ptr %conn, i32 0, i32 2, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx33, align 4
  %dp_daddr34 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %dp, i32 0, i32 1
  %35 = ptrtoint ptr %dp_daddr34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dp_daddr34, align 4
  %shr35 = lshr i32 %protocol_version, 8
  %conv36 = trunc i32 %shr35 to i8
  %dp_cmn37 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %dp, i32 0, i32 2
  %36 = ptrtoint ptr %dp_cmn37 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv36, ptr %dp_cmn37, align 8
  %conv40 = trunc i32 %protocol_version to i8
  %ricpc_protocol_minor42 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %dp, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %ricpc_protocol_minor42 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv40, ptr %ricpc_protocol_minor42, align 1
  %ricpc_protocol_minor_mask44 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %dp, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %ricpc_protocol_minor_mask44 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 3, ptr %ricpc_protocol_minor_mask44, align 2
  %call45 = tail call i64 @rds_ib_piggyb_ack(ptr noundef %3) #12
  %ricpc_ack_seq47 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %dp, i32 0, i32 2, i32 6
  %39 = ptrtoint ptr %ricpc_ack_seq47 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call45, ptr %ricpc_ack_seq47, align 8
  %c_tos48 = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 14
  %40 = ptrtoint ptr %c_tos48 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %c_tos48, align 4
  %ricpc_dp_toss50 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %dp, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %ricpc_dp_toss50 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %ricpc_dp_toss50, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then21
  %.sink = phi i8 [ 56, %if.then21 ], [ 32, %if.else ]
  %43 = ptrtoint ptr %conn_param to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dp, ptr %conn_param, align 4
  %44 = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink, ptr %44, align 4
  %i_flowctl = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 38
  %46 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %i_flowctl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool53.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool53.not, label %if.end.if.end66_crit_edge, label %if.then54

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_credits = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_credits, i32 noundef 4) #12
  %47 = ptrtoint ptr %i_credits to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %i_credits, align 4
  %shr56 = ashr i32 %48, 16
  %ricpc_credit62 = getelementptr inbounds %struct.rds_ib_connect_private, ptr %dp, i32 0, i32 2, i32 7
  %ricpc_credit = getelementptr inbounds %struct.rds6_ib_connect_private, ptr %dp, i32 0, i32 2, i32 7
  %ricpc_credit62.sink = select i1 %isv6, ptr %ricpc_credit, ptr %ricpc_credit62
  %49 = ptrtoint ptr %ricpc_credit62.sink to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr56, ptr %ricpc_credit62.sink, align 8
  %shl = and i32 %48, -65536
  %call.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_credits, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %i_credits, i32 1, i32 3, i32 1) #12
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_credits, ptr %i_credits, i32 %shl, ptr elementtype(i32) %i_credits) #12, !srcloc !186
  br label %if.end66

if.end66:                                         ; preds = %if.then54, %if.end.if.end66_crit_edge, %entry.if.end66_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_min_rnr_timer(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_accept(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_reject(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_cm_initiate_connect(ptr noundef %cm_id, i1 noundef zeroext %isv6) local_unnamed_addr #0 align 64 {
entry:
  %conn_param = alloca %struct.rdma_conn_param, align 4
  %dp = alloca %union.rds_ib_conn_priv, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param) #12
  %6 = call ptr @memset(ptr %conn_param, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dp) #12
  %7 = call ptr @memset(ptr %dp, i32 255, i32 56)
  %c_version.i = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %c_version.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1025, ptr %c_version.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_ib_sysctl_flow_control to i32))
  %9 = load i32, ptr @rds_ib_sysctl_flow_control, align 4
  %i_flowctl = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 38
  %10 = trunc i32 %9 to i8
  %11 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %i_flowctl, align 4
  %bf.shl = shl i8 %10, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %i_flowctl, align 4
  %call = tail call fastcc i32 @rds_ib_setup_qp(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %call)
  br label %if.then7

if.end:                                           ; preds = %entry
  %c_proposed_version = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %c_proposed_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_proposed_version, align 4
  call fastcc void @rds_ib_cm_fill_conn_param(ptr noundef %1, ptr noundef nonnull %conn_param, ptr noundef nonnull %dp, i32 noundef %13, i32 noundef -1, i32 noundef -1, i1 noundef zeroext %isv6)
  %call2 = call i32 @rdma_connect_locked(ptr noundef %cm_id, ptr noundef nonnull %conn_param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__rds_ib_conn_error(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %call2)
  br label %if.then7

if.then7:                                         ; preds = %if.then4, %if.then
  %ret.0.ph = phi i32 [ %call2, %if.then4 ], [ %call, %if.then ]
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_cm_id, align 8
  %cmp = icmp eq ptr %15, %cm_id
  %spec.select = select i1 %cmp, i32 0, i32 %ret.0.ph
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %ret.1 = phi i32 [ %spec.select, %if.then7 ], [ 0, %if.end.if.end10_crit_edge ]
  %i_active_side = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 40
  %16 = ptrtoint ptr %i_active_side to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %i_active_side, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dp) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_connect_locked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_conn_path_connect(ptr nocapture noundef readonly %cp) local_unnamed_addr #0 align 64 {
entry:
  %src = alloca %struct.__kernel_sockaddr_storage, align 4
  %dest = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %src) #12
  %2 = call ptr @memset(ptr %src, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dest) #12
  %3 = call ptr @memset(ptr %dest, i32 255, i32 128)
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cp_transport_data, align 8
  %c_isv6 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %c_isv6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %c_isv6, align 4
  %9 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %rds_rdma_cm_event_handler.rds6_rdma_cm_event_handler = select i1 %tobool.not, ptr @rds_rdma_cm_event_handler, ptr @rds6_rdma_cm_event_handler
  %call = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull %rds_rdma_cm_event_handler.rds6_rdma_cm_event_handler, ptr noundef %1, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.13) #12
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %i_cm_id, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %do.body14

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call to i32
  %12 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %i_cm_id, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug581, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_conn_path_connect, %if.then11)) #12
          to label %out [label %if.then11], !srcloc !172

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug581, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %11) #12
  br label %out

do.body14:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug582, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_conn_path_connect, %if.then26)) #12
          to label %do.end30 [label %if.then26], !srcloc !172

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_cm_id, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug582, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, ptr noundef %14, ptr noundef %1) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %c_faddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_faddr, align 4
  %arrayidx2.i = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %18, %16
  %arrayidx4.i = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %20, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i113 = icmp eq i32 %or5.i, 0
  br i1 %cmp.i113, label %if.then32, label %if.else41

if.then32:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %src, align 4
  %arrayidx33 = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx33, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %src, i32 0, i32 2
  %24 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sin_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %src, i32 0, i32 1
  %25 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %sin_port, align 2
  %26 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %dest, align 4
  %arrayidx37 = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx37, align 4
  %sin_addr38 = getelementptr inbounds %struct.sockaddr_in, ptr %dest, i32 0, i32 2
  %29 = ptrtoint ptr %sin_addr38 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sin_addr38, align 4
  %sin_port40 = getelementptr inbounds %struct.sockaddr_in, ptr %dest, i32 0, i32 1
  %30 = ptrtoint ptr %sin_port40 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 18634, ptr %sin_port40, align 2
  br label %if.end49

if.else41:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 10, ptr %src, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %src, i32 0, i32 3
  %c_laddr42 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 1
  %32 = call ptr @memcpy(ptr %sin6_addr, ptr %c_laddr42, i32 16)
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %src, i32 0, i32 1
  %33 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %sin6_port, align 2
  %c_dev_if = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %c_dev_if to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %c_dev_if, align 4
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %src, i32 0, i32 4
  %36 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sin6_scope_id, align 4
  %37 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 10, ptr %dest, align 4
  %sin6_addr44 = getelementptr inbounds %struct.sockaddr_in6, ptr %dest, i32 0, i32 3
  %38 = call ptr @memcpy(ptr %sin6_addr44, ptr %c_faddr, i32 16)
  %sin6_port46 = getelementptr inbounds %struct.sockaddr_in6, ptr %dest, i32 0, i32 1
  %39 = ptrtoint ptr %sin6_port46 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 16385, ptr %sin6_port46, align 2
  %sin6_scope_id48 = getelementptr inbounds %struct.sockaddr_in6, ptr %dest, i32 0, i32 4
  %40 = ptrtoint ptr %sin6_scope_id48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %35, ptr %sin6_scope_id48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else41, %if.then32
  %41 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_cm_id, align 8
  %call51 = call i32 @rdma_resolve_addr(ptr noundef %42, ptr noundef nonnull %src, ptr noundef nonnull %dest, i32 noundef 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end49.out_crit_edge, label %do.body54

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body54:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug583, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_conn_path_connect, %if.then66)) #12
          to label %do.end70 [label %if.then66], !srcloc !172

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_cm_id, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug583, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, ptr noundef %44, i32 noundef %call51) #12
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body54
  %45 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_cm_id, align 8
  call void @rdma_destroy_id(ptr noundef %46) #12
  %47 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %i_cm_id, align 8
  br label %out

out:                                              ; preds = %do.end70, %if.end49.out_crit_edge, %if.then11, %if.then3
  %ret.0 = phi i32 [ %11, %if.then11 ], [ %call51, %do.end70 ], [ 0, %if.end49.out_crit_edge ], [ %11, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dest) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %src) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds6_rdma_cm_event_handler(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_rdma_cm_event_handler(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_conn_path_shutdown(ptr nocapture noundef readonly %cp) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 8
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp_transport_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug584, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_conn_path_shutdown, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_cm_id, align 8
  %i_pd = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %i_pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_pd, align 4
  %i_send_cq = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_send_cq, align 8
  %i_recv_cq = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_recv_cq, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %15, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug584, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, ptr noundef %7, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %cond) #12
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry
  %i_cm_id6 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %i_cm_id6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_cm_id6, align 8
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %do.end.do.body314_crit_edge, label %do.body9

do.end.do.body314_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body314

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug585, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_conn_path_shutdown, %if.then21)) #12
          to label %do.end25 [label %if.then21], !srcloc !172

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %i_cm_id6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_cm_id6, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug585, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef %19) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %20 = ptrtoint ptr %i_cm_id6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_cm_id6, align 8
  %call27 = tail call i32 @rdma_disconnect(ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end25.if.end47_crit_edge, label %do.body30

do.end25.if.end47_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.body30:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_conn_path_shutdown, %if.then42)) #12
          to label %if.end47 [label %if.then42], !srcloc !172

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %i_cm_id6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_cm_id6, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug586, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, ptr noundef %23, i32 noundef %call27) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %do.body30, %do.end25.if.end47_crit_edge
  tail call void @rds_ib_flush_mrs() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1085) #12
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 20
  %call55 = tail call i32 @rds_ib_ring_empty(ptr noundef %i_recv_ring) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end47.if.end65_crit_edge, label %land.lhs.true

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end47
  %i_signaled_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_signaled_sends, i32 noundef 4) #12
  %24 = ptrtoint ptr %i_signaled_sends to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_signaled_sends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %land.lhs.true58, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true58:                                  ; preds = %land.lhs.true
  %i_fastreg_inuse_count = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 10
  %call.i.i465 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_fastreg_inuse_count, i32 noundef 4) #12
  %26 = ptrtoint ptr %i_fastreg_inuse_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %i_fastreg_inuse_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp60 = icmp eq i32 %27, 0
  br i1 %cmp60, label %land.lhs.true61, label %land.lhs.true58.if.end65_crit_edge

land.lhs.true58.if.end65_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %i_fastreg_wrs = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 9
  %call.i.i466 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_fastreg_wrs, i32 noundef 4) #12
  %28 = ptrtoint ptr %i_fastreg_wrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %i_fastreg_wrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %29)
  %cmp63 = icmp eq i32 %29, 512
  br i1 %cmp63, label %land.lhs.true61.do.end86_crit_edge, label %land.lhs.true61.if.end65_crit_edge

land.lhs.true61.if.end65_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true61.do.end86_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end86

if.end65:                                         ; preds = %land.lhs.true61.if.end65_crit_edge, %land.lhs.true58.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %if.end47.if.end65_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %30 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %i_fastreg_wrs79 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 9
  %i_signaled_sends71 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 18
  %i_fastreg_inuse_count75 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end65
  %call66 = call i32 @prepare_to_wait_event(ptr noundef nonnull @rds_ib_ring_empty_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %call68 = call i32 @rds_ib_ring_empty(ptr noundef %i_recv_ring) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %for.cond.cleanup_crit_edge, label %land.lhs.true70

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true70:                                  ; preds = %for.cond
  %call.i.i467 = call zeroext i1 @__kasan_check_read(ptr noundef %i_signaled_sends71, i32 noundef 4) #12
  %31 = ptrtoint ptr %i_signaled_sends71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %i_signaled_sends71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp73 = icmp eq i32 %32, 0
  br i1 %cmp73, label %land.lhs.true74, label %land.lhs.true70.cleanup_crit_edge

land.lhs.true70.cleanup_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true74:                                  ; preds = %land.lhs.true70
  %call.i.i468 = call zeroext i1 @__kasan_check_read(ptr noundef %i_fastreg_inuse_count75, i32 noundef 4) #12
  %33 = ptrtoint ptr %i_fastreg_inuse_count75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_fastreg_inuse_count75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp77 = icmp eq i32 %34, 0
  br i1 %cmp77, label %land.lhs.true78, label %land.lhs.true74.cleanup_crit_edge

land.lhs.true74.cleanup_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true78:                                  ; preds = %land.lhs.true74
  %call.i.i469 = call zeroext i1 @__kasan_check_read(ptr noundef %i_fastreg_wrs79, i32 noundef 4) #12
  %35 = ptrtoint ptr %i_fastreg_wrs79 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %i_fastreg_wrs79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %36)
  %cmp81 = icmp eq i32 %36, 512
  br i1 %cmp81, label %for.end, label %land.lhs.true78.cleanup_crit_edge

land.lhs.true78.cleanup_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true78.cleanup_crit_edge, %land.lhs.true74.cleanup_crit_edge, %land.lhs.true70.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  call void @schedule() #12
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #14
  call void @finish_wait(ptr noundef nonnull @rds_ib_ring_empty_wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %do.end86

do.end86:                                         ; preds = %for.end, %land.lhs.true61.do.end86_crit_edge
  %i_send_tasklet = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 11
  call void @tasklet_kill(ptr noundef %i_send_tasklet) #12
  %i_recv_tasklet = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 12
  call void @tasklet_kill(ptr noundef %i_recv_tasklet) #12
  %i_cq_quiesce = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 41
  %call.i.i470 = call zeroext i1 @__kasan_check_write(ptr noundef %i_cq_quiesce, i32 noundef 4) #12
  %37 = ptrtoint ptr %i_cq_quiesce to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %i_cq_quiesce, align 4
  %38 = ptrtoint ptr %i_cm_id6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_cm_id6, align 8
  %qp88 = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %qp88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qp88, align 4
  %tobool89.not = icmp eq ptr %41, null
  br i1 %tobool89.not, label %do.end86.if.end92_crit_edge, label %if.then90

do.end86.if.end92_crit_edge:                      ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then90:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #14
  call void @rdma_destroy_qp(ptr noundef %39) #12
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %do.end86.if.end92_crit_edge
  %i_send_cq93 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 5
  %42 = ptrtoint ptr %i_send_cq93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_send_cq93, align 8
  %tobool94.not = icmp eq ptr %43, null
  br i1 %tobool94.not, label %if.end92.if.end101_crit_edge, label %if.then95

if.end92.if.end101_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then95:                                        ; preds = %if.end92
  %rds_ibdev = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rds_ibdev, align 8
  %tobool96.not = icmp eq ptr %45, null
  br i1 %tobool96.not, label %if.then95.if.end99_crit_edge, label %if.then97

if.then95.if.end99_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then97:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  %i_scq_vector = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 42
  %46 = ptrtoint ptr %i_scq_vector to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_scq_vector, align 4
  %vector_load.i = getelementptr inbounds %struct.rds_ib_device, ptr %45, i32 0, i32 18
  %48 = ptrtoint ptr %vector_load.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vector_load.i, align 4
  %arrayidx.i = getelementptr i32, ptr %49, i32 %47
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %51, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.then95.if.end99_crit_edge
  %52 = ptrtoint ptr %i_send_cq93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_send_cq93, align 8
  %call.i = call i32 @ib_destroy_cq_user(ptr noundef %53, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end99.if.end101_crit_edge, label %land.rhs.i

if.end99.if.end101_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.rhs.i:                                       ; preds = %if.end99
  %.b38.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.if.end101_crit_edge, label %if.then.i, !prof !173

land.rhs.i.if.end101_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.72) #12
  br label %if.end101

if.end101:                                        ; preds = %if.then.i, %land.rhs.i.if.end101_crit_edge, %if.end99.if.end101_crit_edge, %if.end92.if.end101_crit_edge
  %i_recv_cq102 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 6
  %54 = ptrtoint ptr %i_recv_cq102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_recv_cq102, align 4
  %tobool103.not = icmp eq ptr %55, null
  br i1 %tobool103.not, label %if.end101.if.end111_crit_edge, label %if.then104

if.end101.if.end111_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then104:                                       ; preds = %if.end101
  %rds_ibdev105 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 1
  %56 = ptrtoint ptr %rds_ibdev105 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rds_ibdev105, align 8
  %tobool106.not = icmp eq ptr %57, null
  br i1 %tobool106.not, label %if.then104.if.end109_crit_edge, label %if.then107

if.then104.if.end109_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then107:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  %i_rcq_vector = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 43
  %58 = ptrtoint ptr %i_rcq_vector to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_rcq_vector, align 8
  %vector_load.i473 = getelementptr inbounds %struct.rds_ib_device, ptr %57, i32 0, i32 18
  %60 = ptrtoint ptr %vector_load.i473 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vector_load.i473, align 4
  %arrayidx.i474 = getelementptr i32, ptr %61, i32 %59
  %62 = ptrtoint ptr %arrayidx.i474 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i474, align 4
  %dec.i475 = add i32 %63, -1
  store i32 %dec.i475, ptr %arrayidx.i474, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.then104.if.end109_crit_edge
  %64 = ptrtoint ptr %i_recv_cq102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_recv_cq102, align 4
  %call.i476 = call i32 @ib_destroy_cq_user(ptr noundef %65, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i476)
  %tobool.not.i477 = icmp eq i32 %call.i476, 0
  br i1 %tobool.not.i477, label %if.end109.if.end111_crit_edge, label %land.rhs.i479

if.end109.if.end111_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

land.rhs.i479:                                    ; preds = %if.end109
  %.b38.i478 = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i478, label %land.rhs.i479.if.end111_crit_edge, label %if.then.i480, !prof !173

land.rhs.i479.if.end111_crit_edge:                ; preds = %land.rhs.i479
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then.i480:                                     ; preds = %land.rhs.i479
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.72) #12
  br label %if.end111

if.end111:                                        ; preds = %if.then.i480, %land.rhs.i479.if.end111_crit_edge, %if.end109.if.end111_crit_edge, %if.end101.if.end111_crit_edge
  %rds_ibdev112 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 1
  %66 = ptrtoint ptr %rds_ibdev112 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rds_ibdev112, align 8
  %tobool113.not = icmp eq ptr %67, null
  %i_send_hdrs137 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 15
  %68 = ptrtoint ptr %i_send_hdrs137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_send_hdrs137, align 8
  %tobool138.not = icmp eq ptr %69, null
  br i1 %tobool113.not, label %if.else, label %if.then114

if.then114:                                       ; preds = %if.end111
  br i1 %tobool138.not, label %if.then114.if.end121_crit_edge, label %if.then116

if.then114.if.end121_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then116:                                       ; preds = %if.then114
  %i_send_hdrs_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 16
  %70 = ptrtoint ptr %i_send_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_send_hdrs_dma, align 4
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 13
  %72 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_send_ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp8.not.i = icmp eq i32 %73, 0
  br i1 %cmp8.not.i, label %if.then116.rds_dma_hdrs_free.exit_crit_edge, label %for.body.lr.ph.i

if.then116.rds_dma_hdrs_free.exit_crit_edge:      ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_dma_hdrs_free.exit

for.body.lr.ph.i:                                 ; preds = %if.then116
  %dev1.i = getelementptr inbounds %struct.rds_ib_device, ptr %67, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %74 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1.i, align 4
  %arrayidx.i482 = getelementptr ptr, ptr %69, i32 %i.09.i
  %76 = ptrtoint ptr %arrayidx.i482 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i482, align 4
  %arrayidx2.i = getelementptr i32, ptr %71, i32 %i.09.i
  %78 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx2.i, align 4
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %75, align 8
  call void @dma_unmap_page_attrs(ptr noundef %81, i32 noundef %79, i32 noundef 48, i32 noundef 1, i32 noundef 0) #12
  call void @kfree(ptr noundef %77) #12
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %73
  br i1 %exitcond.not.i, label %for.body.i.rds_dma_hdrs_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.rds_dma_hdrs_free.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_dma_hdrs_free.exit

rds_dma_hdrs_free.exit:                           ; preds = %for.body.i.rds_dma_hdrs_free.exit_crit_edge, %if.then116.rds_dma_hdrs_free.exit_crit_edge
  call void @kvfree(ptr noundef nonnull %69) #12
  call void @kvfree(ptr noundef %71) #12
  %82 = ptrtoint ptr %i_send_hdrs137 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %i_send_hdrs137, align 8
  %83 = ptrtoint ptr %i_send_hdrs_dma to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %i_send_hdrs_dma, align 4
  br label %if.end121

if.end121:                                        ; preds = %rds_dma_hdrs_free.exit, %if.then114.if.end121_crit_edge
  %i_recv_hdrs = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 23
  %84 = ptrtoint ptr %i_recv_hdrs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i_recv_hdrs, align 8
  %tobool122.not = icmp eq ptr %85, null
  br i1 %tobool122.not, label %if.end121.if.end130_crit_edge, label %if.then123

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then123:                                       ; preds = %if.end121
  %i_recv_hdrs_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 24
  %86 = ptrtoint ptr %i_recv_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_recv_hdrs_dma, align 4
  %88 = ptrtoint ptr %i_recv_ring to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_recv_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp8.not.i483 = icmp eq i32 %89, 0
  br i1 %cmp8.not.i483, label %if.then123.rds_dma_hdrs_free.exit492_crit_edge, label %for.body.lr.ph.i485

if.then123.rds_dma_hdrs_free.exit492_crit_edge:   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_dma_hdrs_free.exit492

for.body.lr.ph.i485:                              ; preds = %if.then123
  %90 = ptrtoint ptr %rds_ibdev112 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rds_ibdev112, align 8
  %dev1.i484 = getelementptr inbounds %struct.rds_ib_device, ptr %91, i32 0, i32 3
  br label %for.body.i491

for.body.i491:                                    ; preds = %for.body.i491.for.body.i491_crit_edge, %for.body.lr.ph.i485
  %i.09.i486 = phi i32 [ 0, %for.body.lr.ph.i485 ], [ %inc.i489, %for.body.i491.for.body.i491_crit_edge ]
  %92 = ptrtoint ptr %dev1.i484 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev1.i484, align 4
  %arrayidx.i487 = getelementptr ptr, ptr %85, i32 %i.09.i486
  %94 = ptrtoint ptr %arrayidx.i487 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i487, align 4
  %arrayidx2.i488 = getelementptr i32, ptr %87, i32 %i.09.i486
  %96 = ptrtoint ptr %arrayidx2.i488 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx2.i488, align 4
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %93, align 8
  call void @dma_unmap_page_attrs(ptr noundef %99, i32 noundef %97, i32 noundef 48, i32 noundef 2, i32 noundef 0) #12
  call void @kfree(ptr noundef %95) #12
  %inc.i489 = add nuw i32 %i.09.i486, 1
  %exitcond.not.i490 = icmp eq i32 %inc.i489, %89
  br i1 %exitcond.not.i490, label %for.body.i491.rds_dma_hdrs_free.exit492_crit_edge, label %for.body.i491.for.body.i491_crit_edge

for.body.i491.for.body.i491_crit_edge:            ; preds = %for.body.i491
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i491

for.body.i491.rds_dma_hdrs_free.exit492_crit_edge: ; preds = %for.body.i491
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_dma_hdrs_free.exit492

rds_dma_hdrs_free.exit492:                        ; preds = %for.body.i491.rds_dma_hdrs_free.exit492_crit_edge, %if.then123.rds_dma_hdrs_free.exit492_crit_edge
  call void @kvfree(ptr noundef nonnull %85) #12
  call void @kvfree(ptr noundef %87) #12
  %100 = ptrtoint ptr %i_recv_hdrs to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %i_recv_hdrs, align 8
  %101 = ptrtoint ptr %i_recv_hdrs_dma to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %i_recv_hdrs_dma, align 4
  br label %if.end130

if.end130:                                        ; preds = %rds_dma_hdrs_free.exit492, %if.end121.if.end130_crit_edge
  %i_ack = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 32
  %102 = ptrtoint ptr %i_ack to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_ack, align 8
  %tobool131.not = icmp eq ptr %103, null
  br i1 %tobool131.not, label %if.end130.if.end296_crit_edge, label %if.then132

if.end130.if.end296_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %rds_ibdev112 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rds_ibdev112, align 8
  %dev = getelementptr inbounds %struct.rds_ib_device, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  %i_ack_dma = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 35
  %108 = ptrtoint ptr %i_ack_dma to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i_ack_dma, align 8
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 8
  call void @dma_unmap_page_attrs(ptr noundef %111, i32 noundef %109, i32 noundef 48, i32 noundef 1, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %103) #12
  %112 = ptrtoint ptr %i_ack to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %i_ack, align 8
  br label %if.end296

if.else:                                          ; preds = %if.end111
  br i1 %tobool138.not, label %if.else.if.end160_crit_edge, label %do.end154, !prof !173

if.else.if.end160_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

do.end154:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1134, i32 noundef 9, ptr noundef null) #12
  br label %if.end160

if.end160:                                        ; preds = %do.end154, %if.else.if.end160_crit_edge
  %i_send_hdrs_dma169 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 16
  %113 = ptrtoint ptr %i_send_hdrs_dma169 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_send_hdrs_dma169, align 4
  %tobool170.not = icmp eq ptr %114, null
  br i1 %tobool170.not, label %if.end160.if.end192_crit_edge, label %do.end186, !prof !173

if.end160.if.end192_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

do.end186:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1135, i32 noundef 9, ptr noundef null) #12
  br label %if.end192

if.end192:                                        ; preds = %do.end186, %if.end160.if.end192_crit_edge
  %i_recv_hdrs201 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 23
  %115 = ptrtoint ptr %i_recv_hdrs201 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i_recv_hdrs201, align 8
  %tobool202.not = icmp eq ptr %116, null
  br i1 %tobool202.not, label %if.end192.if.end224_crit_edge, label %do.end218, !prof !173

if.end192.if.end224_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end224

do.end218:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #12
  br label %if.end224

if.end224:                                        ; preds = %do.end218, %if.end192.if.end224_crit_edge
  %i_recv_hdrs_dma233 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 24
  %117 = ptrtoint ptr %i_recv_hdrs_dma233 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i_recv_hdrs_dma233, align 4
  %tobool234.not = icmp eq ptr %118, null
  br i1 %tobool234.not, label %if.end224.if.end256_crit_edge, label %do.end250, !prof !173

if.end224.if.end256_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256

do.end250:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1137, i32 noundef 9, ptr noundef null) #12
  br label %if.end256

if.end256:                                        ; preds = %do.end250, %if.end224.if.end256_crit_edge
  %i_ack265 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 32
  %119 = ptrtoint ptr %i_ack265 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i_ack265, align 8
  %tobool266.not = icmp eq ptr %120, null
  br i1 %tobool266.not, label %if.end256.if.end296_crit_edge, label %do.end282, !prof !173

if.end256.if.end296_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296

do.end282:                                        ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1138, i32 noundef 9, ptr noundef null) #12
  br label %if.end296

if.end296:                                        ; preds = %do.end282, %if.end256.if.end296_crit_edge, %if.then132, %if.end130.if.end296_crit_edge
  %i_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 17
  %121 = ptrtoint ptr %i_sends to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i_sends, align 8
  %tobool297.not = icmp eq ptr %122, null
  br i1 %tobool297.not, label %if.end296.if.end299_crit_edge, label %if.then298

if.end296.if.end299_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end299

if.then298:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_ib_send_clear_ring(ptr noundef %5) #12
  br label %if.end299

if.end299:                                        ; preds = %if.then298, %if.end296.if.end299_crit_edge
  %i_recvs = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 25
  %123 = ptrtoint ptr %i_recvs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i_recvs, align 8
  %tobool300.not = icmp eq ptr %124, null
  br i1 %tobool300.not, label %if.end299.if.end302_crit_edge, label %if.then301

if.end299.if.end302_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end302

if.then301:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_ib_recv_clear_ring(ptr noundef %5) #12
  br label %if.end302

if.end302:                                        ; preds = %if.then301, %if.end299.if.end302_crit_edge
  %125 = ptrtoint ptr %i_cm_id6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i_cm_id6, align 8
  call void @rdma_destroy_id(ptr noundef %126) #12
  %127 = ptrtoint ptr %rds_ibdev112 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rds_ibdev112, align 8
  %tobool305.not = icmp eq ptr %128, null
  br i1 %tobool305.not, label %if.end302.if.end308_crit_edge, label %if.then306

if.end302.if.end308_crit_edge:                    ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end308

if.then306:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_ib_remove_conn(ptr noundef nonnull %128, ptr noundef %1) #12
  br label %if.end308

if.end308:                                        ; preds = %if.then306, %if.end302.if.end308_crit_edge
  %129 = call ptr @memset(ptr %i_cm_id6, i32 0, i32 16)
  br label %do.body314

do.body314:                                       ; preds = %if.end308, %do.end.do.body314_crit_edge
  %rds_ibdev315 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 1
  %130 = ptrtoint ptr %rds_ibdev315 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rds_ibdev315, align 8
  %tobool316.not = icmp eq ptr %131, null
  br i1 %tobool316.not, label %do.end332, label %do.body324, !prof !173

do.body324:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/ib_cm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1159, 0\0A.popsection", ""() #12, !srcloc !187
  unreachable

do.end332:                                        ; preds = %do.body314
  %i_data_op = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 14
  %132 = ptrtoint ptr %i_data_op to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i_data_op, align 4
  %tobool333.not = icmp eq ptr %133, null
  br i1 %tobool333.not, label %do.end332.if.end338_crit_edge, label %if.then334

do.end332.if.end338_crit_edge:                    ; preds = %do.end332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end338

if.then334:                                       ; preds = %do.end332
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %133, i32 -456
  call void @rds_message_put(ptr noundef %add.ptr) #12
  %134 = ptrtoint ptr %i_data_op to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %i_data_op, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.then334, %do.end332.if.end338_crit_edge
  %i_ack_flags = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 30
  call void @_clear_bit(i32 noundef 0, ptr noundef %i_ack_flags) #12
  %i_ack_next = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 31
  %call.i.i471 = call zeroext i1 @__kasan_check_write(ptr noundef %i_ack_next, i32 noundef 8) #12
  call void @generic_atomic64_set(ptr noundef %i_ack_next, i64 noundef 0) #12
  %i_ack_recv = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 26
  %135 = ptrtoint ptr %i_ack_recv to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 0, ptr %i_ack_recv, align 8
  %i_flowctl = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 38
  %136 = ptrtoint ptr %i_flowctl to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load = load i8, ptr %i_flowctl, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %i_flowctl, align 4
  %i_credits = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 37
  %call.i.i472 = call zeroext i1 @__kasan_check_write(ptr noundef %i_credits, i32 noundef 4) #12
  %137 = ptrtoint ptr %i_credits to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 0, ptr %i_credits, align 4
  %i_send_ring339 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 13
  %138 = ptrtoint ptr %i_send_ring339 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %i_send_ring339, align 8
  call void @rds_ib_ring_init(ptr noundef %i_send_ring339, i32 noundef %139) #12
  %i_recv_ring342 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 20
  %140 = ptrtoint ptr %i_recv_ring342 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %i_recv_ring342, align 4
  call void @rds_ib_ring_init(ptr noundef %i_recv_ring342, i32 noundef %141) #12
  %i_ibinc = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 21
  %142 = ptrtoint ptr %i_ibinc to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i_ibinc, align 8
  %tobool345.not = icmp eq ptr %143, null
  br i1 %tobool345.not, label %if.end338.if.end349_crit_edge, label %if.then346

if.end338.if.end349_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end349

if.then346:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #14
  %ii_inc = getelementptr inbounds %struct.rds_ib_incoming, ptr %143, i32 0, i32 2
  call void @rds_inc_put(ptr noundef %ii_inc) #12
  %144 = ptrtoint ptr %i_ibinc to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %i_ibinc, align 8
  br label %if.end349

if.end349:                                        ; preds = %if.then346, %if.end338.if.end349_crit_edge
  %i_sends350 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 17
  %145 = ptrtoint ptr %i_sends350 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i_sends350, align 8
  call void @vfree(ptr noundef %146) #12
  %147 = ptrtoint ptr %i_sends350 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %i_sends350, align 8
  %i_recvs352 = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 25
  %148 = ptrtoint ptr %i_recvs352 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i_recvs352, align 8
  call void @vfree(ptr noundef %149) #12
  %150 = ptrtoint ptr %i_recvs352 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %i_recvs352, align 8
  %i_active_side = getelementptr inbounds %struct.rds_ib_connection, ptr %5, i32 0, i32 40
  %151 = ptrtoint ptr %i_active_side to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %i_active_side, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_flush_mrs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_ring_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_qp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_dma_hdrs_free(ptr nocapture noundef readonly %dev, ptr noundef %hdrs, ptr noundef %dma_addrs, i32 noundef %num_hdrs, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hdrs)
  %cmp8.not = icmp eq i32 %num_hdrs, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev1 = getelementptr inbounds %struct.rds_ib_device, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %arrayidx = getelementptr ptr, ptr %hdrs, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %dma_addrs, i32 %i.09
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %5, i32 noundef 48, i32 noundef %dir, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %3) #12
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %num_hdrs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kvfree(ptr noundef %hdrs) #12
  tail call void @kvfree(ptr noundef %dma_addrs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_dma_hdr_free(ptr nocapture noundef readonly %dev, ptr noundef %hdr, i32 noundef %dma_addr, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %dma_addr, i32 noundef 48, i32 noundef %dir, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %hdr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_send_clear_ring(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_recv_clear_ring(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_remove_conn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_ring_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_ib_conn_alloc(ptr noundef %conn, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !173

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 13
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 4512) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %call1 = tail call i32 @rds_ib_recv_alloc_caches(ptr noundef nonnull %call7.i.i, i32 noundef %gfp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %i_send_tasklet = getelementptr inbounds %struct.rds_ib_connection, ptr %call7.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %call7.i.i to i32
  tail call void @tasklet_init(ptr noundef %i_send_tasklet, ptr noundef nonnull @rds_ib_tasklet_fn_send, i32 noundef %4) #12
  %i_recv_tasklet = getelementptr inbounds %struct.rds_ib_connection, ptr %call7.i.i, i32 0, i32 12
  tail call void @tasklet_init(ptr noundef %i_recv_tasklet, ptr noundef nonnull @rds_ib_tasklet_fn_recv, i32 noundef %4) #12
  %i_recv_mutex = getelementptr inbounds %struct.rds_ib_connection, ptr %call7.i.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %i_recv_mutex, ptr noundef nonnull @.str.29, ptr noundef nonnull @rds_ib_conn_alloc.__key) #12
  %i_signaled_sends = getelementptr inbounds %struct.rds_ib_connection, ptr %call7.i.i, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_signaled_sends, i32 noundef 4) #12
  %5 = ptrtoint ptr %i_signaled_sends to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %i_signaled_sends, align 4
  %i_fastreg_wrs = getelementptr inbounds %struct.rds_ib_connection, ptr %call7.i.i, i32 0, i32 9
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_fastreg_wrs, i32 noundef 4) #12
  %6 = ptrtoint ptr %i_fastreg_wrs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 512, ptr %i_fastreg_wrs, align 8
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %call7.i.i, i32 0, i32 13
  tail call void @rds_ib_ring_init(ptr noundef %i_send_ring, i32 noundef 0) #12
  %i_recv_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %call7.i.i, i32 0, i32 20
  tail call void @rds_ib_ring_init(ptr noundef %i_recv_ring, i32 noundef 0) #12
  %conn5 = getelementptr inbounds %struct.rds_ib_connection, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %conn5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %conn, ptr %conn5, align 4
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %8 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %cp_transport_data, align 8
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ib_nodev_conns_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1), align 4
  %call.i.i51 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %11, ptr noundef nonnull @ib_nodev_conns) #12
  br i1 %call.i.i51, label %if.end.i.i, label %if.end4.list_add_tail.exit_crit_edge

if.end4.list_add_tail.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1) to i32))
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @ib_nodev_conns, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ib_nodev_conns, ptr %call7.i.i, align 8
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end4.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ib_nodev_conns_lock, i32 noundef %call9) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_conn_alloc.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_conn_alloc, %if.then21)) #12
          to label %cleanup [label %if.then21], !srcloc !172

if.then21:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c_path, align 4
  %cp_transport_data24 = getelementptr inbounds %struct.rds_conn_path, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %cp_transport_data24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cp_transport_data24, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_conn_alloc.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef %conn, ptr noundef %18) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %list_add_tail.exit, %if.then3, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ -12, %kzalloc.exit.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_recv_alloc_caches(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_tasklet_fn_send(i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %conn1 = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn1, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  %7 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, ptrtoint (ptr @rds_ib_stats to i32)
  %13 = inttoptr i32 %add to ptr
  %s_ib_tasklet_call = getelementptr inbounds %struct.rds_ib_statistics, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %s_ib_tasklet_call to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %s_ib_tasklet_call, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %s_ib_tasklet_call, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !189
  %16 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i44 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i44 to ptr
  %preempt_count.i.i45 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i45, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i45, align 4
  %i_cq_quiesce = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_cq_quiesce, i32 noundef 4) #12
  %20 = ptrtoint ptr %i_cq_quiesce to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_cq_quiesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_send_cq = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 5
  %22 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_send_cq, align 8
  %i_send_wc = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 7
  tail call fastcc void @poll_scq(ptr noundef %0, ptr noundef %23, ptr noundef %i_send_wc)
  %24 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_send_cq, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %27, i32 0, i32 1, i32 12
  %28 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %29(ptr noundef %25, i32 noundef 2) #12
  %30 = ptrtoint ptr %i_send_cq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_send_cq, align 8
  tail call fastcc void @poll_scq(ptr noundef %0, ptr noundef %31, ptr noundef %i_send_wc)
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 8
  %32 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %35 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.end.rds_conn_up.exit_crit_edge, label %do.end.i, !prof !173

if.end.rds_conn_up.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_up.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 835, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_up.exit

rds_conn_up.exit:                                 ; preds = %do.end.i, %if.end.rds_conn_up.exit_crit_edge
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 17
  %36 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %c_path.i, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %37, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i.i.not = icmp eq i32 %39, 3
  br i1 %cmp.i.i.not, label %land.lhs.true, label %rds_conn_up.exit.cleanup_crit_edge

rds_conn_up.exit.cleanup_crit_edge:               ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %rds_conn_up.exit
  %40 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %c_path.i, align 4
  %cp_flags = getelementptr inbounds %struct.rds_conn_path, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %cp_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %cp_flags, align 4
  %and1.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool23.not = icmp eq i32 %and1.i, 0
  br i1 %tobool23.not, label %land.lhs.true.if.then26_crit_edge, label %lor.lhs.false

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false:                                    ; preds = %land.lhs.true
  %c_map_queued = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 16
  %44 = ptrtoint ptr %c_map_queued to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %c_map_queued, align 4
  %and1.i46 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i46)
  %tobool25.not = icmp eq i32 %and1.i46, 0
  br i1 %tobool25.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %land.lhs.true.if.then26_crit_edge
  %46 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %conn1, align 4
  %c_path28 = getelementptr inbounds %struct.rds_connection, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %c_path28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %c_path28, align 4
  %call30 = tail call i32 @rds_send_xmit(ptr noundef %49) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %lor.lhs.false.cleanup_crit_edge, %rds_conn_up.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_tasklet_fn_recv(i32 noundef %data) #0 align 64 {
entry:
  %state = alloca %struct.rds_ib_ack_state, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %conn1 = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn1, align 4
  %rds_ibdev2 = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %rds_ibdev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rds_ibdev2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #12
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rds_conn_drop(ptr noundef %2) #12
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, ptrtoint (ptr @rds_ib_stats to i32)
  %15 = inttoptr i32 %add to ptr
  %s_ib_tasklet_call = getelementptr inbounds %struct.rds_ib_statistics, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %s_ib_tasklet_call to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %s_ib_tasklet_call, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %s_ib_tasklet_call, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !191
  %18 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i61 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i61 to ptr
  %preempt_count.i.i62 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i62, align 4
  %sub.i = add i32 %21, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i62, align 4
  %i_cq_quiesce = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_cq_quiesce, i32 noundef 4) #12
  %22 = ptrtoint ptr %i_cq_quiesce to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %i_cq_quiesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp eq i32 %23, 0
  br i1 %tobool15.not, label %if.end17, label %do.body3.cleanup_crit_edge

do.body3.cleanup_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %do.body3
  %24 = call ptr @memset(ptr %state, i32 0, i32 24)
  %i_recv_cq = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 6
  %25 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_recv_cq, align 4
  %i_recv_wc = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %poll_cq.i16.i = getelementptr inbounds %struct.ib_device, ptr %28, i32 0, i32 1, i32 10
  %29 = ptrtoint ptr %poll_cq.i16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %poll_cq.i16.i, align 4
  %call.i17.i = tail call i32 %30(ptr noundef %26, i32 noundef 32, ptr noundef %i_recv_wc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp18.i = icmp sgt i32 %call.i17.i, 0
  br i1 %cmp18.i, label %if.end17.for.body.preheader.i_crit_edge, label %if.end17.poll_rcq.exit_crit_edge

if.end17.poll_rcq.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_rcq.exit

if.end17.for.body.preheader.i_crit_edge:          ; preds = %if.end17
  br label %for.body.preheader.i

while.cond.loopexit.i:                            ; preds = %do.end.i
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 8
  %poll_cq.i.i = getelementptr inbounds %struct.ib_device, ptr %32, i32 0, i32 1, i32 10
  %33 = ptrtoint ptr %poll_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %poll_cq.i.i, align 4
  %call.i.i63 = call i32 %34(ptr noundef %26, i32 noundef 32, ptr noundef %i_recv_wc) #12
  %cmp.i = icmp sgt i32 %call.i.i63, 0
  br i1 %cmp.i, label %while.cond.loopexit.i.for.body.preheader.i_crit_edge, label %while.cond.loopexit.i.poll_rcq.exit_crit_edge

while.cond.loopexit.i.poll_rcq.exit_crit_edge:    ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_rcq.exit

while.cond.loopexit.i.for.body.preheader.i_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %while.cond.loopexit.i.for.body.preheader.i_crit_edge, %if.end17.for.body.preheader.i_crit_edge
  %call.i19.i = phi i32 [ %call.i.i63, %while.cond.loopexit.i.for.body.preheader.i_crit_edge ], [ %call.i17.i, %if.end17.for.body.preheader.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.014.i = phi i32 [ %inc.i, %do.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i = getelementptr %struct.ib_wc, ptr %i_recv_wc, i32 %i.014.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_rcq.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_tasklet_fn_recv, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !172

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i, align 8
  %status.i = getelementptr %struct.ib_wc, ptr %i_recv_wc, i32 %i.014.i, i32 1
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status.i, align 8
  %byte_len.i = getelementptr %struct.ib_wc, ptr %i_recv_wc, i32 %i.014.i, i32 4
  %39 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_len.i, align 4
  %ex.i = getelementptr %struct.ib_wc, ptr %i_recv_wc, i32 %i.014.i, i32 6
  %41 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ex.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_rcq.__UNIQUE_ID_ddebug561, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i64 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body.i
  call void @rds_ib_recv_cqe_handler(ptr noundef %0, ptr noundef %add.ptr.i, ptr noundef nonnull %state) #12
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i19.i
  br i1 %exitcond.not.i, label %while.cond.loopexit.i, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

poll_rcq.exit:                                    ; preds = %while.cond.loopexit.i.poll_rcq.exit_crit_edge, %if.end17.poll_rcq.exit_crit_edge
  %43 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_recv_cq, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %46, i32 0, i32 1, i32 12
  %47 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = call i32 %48(ptr noundef %44, i32 noundef 1) #12
  %49 = ptrtoint ptr %i_recv_cq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_recv_cq, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %poll_cq.i16.i64 = getelementptr inbounds %struct.ib_device, ptr %52, i32 0, i32 1, i32 10
  %53 = ptrtoint ptr %poll_cq.i16.i64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %poll_cq.i16.i64, align 4
  %call.i17.i65 = call i32 %54(ptr noundef %50, i32 noundef 32, ptr noundef %i_recv_wc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i65)
  %cmp18.i66 = icmp sgt i32 %call.i17.i65, 0
  br i1 %cmp18.i66, label %poll_rcq.exit.for.body.preheader.i72_crit_edge, label %poll_rcq.exit.poll_rcq.exit83_crit_edge

poll_rcq.exit.poll_rcq.exit83_crit_edge:          ; preds = %poll_rcq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_rcq.exit83

poll_rcq.exit.for.body.preheader.i72_crit_edge:   ; preds = %poll_rcq.exit
  br label %for.body.preheader.i72

while.cond.loopexit.i70:                          ; preds = %do.end.i82
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %50, align 8
  %poll_cq.i.i67 = getelementptr inbounds %struct.ib_device, ptr %56, i32 0, i32 1, i32 10
  %57 = ptrtoint ptr %poll_cq.i.i67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %poll_cq.i.i67, align 4
  %call.i.i68 = call i32 %58(ptr noundef %50, i32 noundef 32, ptr noundef %i_recv_wc) #12
  %cmp.i69 = icmp sgt i32 %call.i.i68, 0
  br i1 %cmp.i69, label %while.cond.loopexit.i70.for.body.preheader.i72_crit_edge, label %while.cond.loopexit.i70.poll_rcq.exit83_crit_edge

while.cond.loopexit.i70.poll_rcq.exit83_crit_edge: ; preds = %while.cond.loopexit.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_rcq.exit83

while.cond.loopexit.i70.for.body.preheader.i72_crit_edge: ; preds = %while.cond.loopexit.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader.i72

for.body.preheader.i72:                           ; preds = %while.cond.loopexit.i70.for.body.preheader.i72_crit_edge, %poll_rcq.exit.for.body.preheader.i72_crit_edge
  %call.i19.i71 = phi i32 [ %call.i.i68, %while.cond.loopexit.i70.for.body.preheader.i72_crit_edge ], [ %call.i17.i65, %poll_rcq.exit.for.body.preheader.i72_crit_edge ]
  br label %for.body.i75

for.body.i75:                                     ; preds = %do.end.i82.for.body.i75_crit_edge, %for.body.preheader.i72
  %i.014.i73 = phi i32 [ %inc.i80, %do.end.i82.for.body.i75_crit_edge ], [ 0, %for.body.preheader.i72 ]
  %add.ptr.i74 = getelementptr %struct.ib_wc, ptr %i_recv_wc, i32 %i.014.i73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_rcq.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_tasklet_fn_recv, %if.then.i79)) #12
          to label %do.end.i82 [label %if.then.i79], !srcloc !172

if.then.i79:                                      ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %add.ptr.i74, align 8
  %status.i76 = getelementptr %struct.ib_wc, ptr %i_recv_wc, i32 %i.014.i73, i32 1
  %61 = ptrtoint ptr %status.i76 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status.i76, align 8
  %byte_len.i77 = getelementptr %struct.ib_wc, ptr %i_recv_wc, i32 %i.014.i73, i32 4
  %63 = ptrtoint ptr %byte_len.i77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %byte_len.i77, align 4
  %ex.i78 = getelementptr %struct.ib_wc, ptr %i_recv_wc, i32 %i.014.i73, i32 6
  %65 = ptrtoint ptr %ex.i78 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ex.i78, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_rcq.__UNIQUE_ID_ddebug561, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i64 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66) #12
  br label %do.end.i82

do.end.i82:                                       ; preds = %if.then.i79, %for.body.i75
  call void @rds_ib_recv_cqe_handler(ptr noundef %0, ptr noundef %add.ptr.i74, ptr noundef nonnull %state) #12
  %inc.i80 = add nuw nsw i32 %i.014.i73, 1
  %exitcond.not.i81 = icmp eq i32 %inc.i80, %call.i19.i71
  br i1 %exitcond.not.i81, label %while.cond.loopexit.i70, label %do.end.i82.for.body.i75_crit_edge

do.end.i82.for.body.i75_crit_edge:                ; preds = %do.end.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i75

poll_rcq.exit83:                                  ; preds = %while.cond.loopexit.i70.poll_rcq.exit83_crit_edge, %poll_rcq.exit.poll_rcq.exit83_crit_edge
  %ack_next_valid = getelementptr inbounds %struct.rds_ib_ack_state, ptr %state, i32 0, i32 2
  %67 = ptrtoint ptr %ack_next_valid to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load = load i8, ptr %ack_next_valid, align 8
  %68 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool23.not = icmp eq i8 %68, 0
  br i1 %tobool23.not, label %poll_rcq.exit83.if.end28_crit_edge, label %if.then24

poll_rcq.exit83.if.end28_crit_edge:               ; preds = %poll_rcq.exit83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then24:                                        ; preds = %poll_rcq.exit83
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %state, align 8
  %bf.lshr26 = lshr i8 %bf.load, 7
  %bf.cast27 = zext i8 %bf.lshr26 to i32
  call void @rds_ib_set_ack(ptr noundef %0, i64 noundef %70, i32 noundef %bf.cast27) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %poll_rcq.exit83.if.end28_crit_edge
  %71 = ptrtoint ptr %ack_next_valid to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load29 = load i8, ptr %ack_next_valid, align 8
  %72 = and i8 %bf.load29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool33.not = icmp eq i8 %72, 0
  br i1 %tobool33.not, label %if.end28.if.end38_crit_edge, label %land.lhs.true

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end28
  %ack_recv = getelementptr inbounds %struct.rds_ib_ack_state, ptr %state, i32 0, i32 1
  %73 = ptrtoint ptr %ack_recv to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %ack_recv, align 8
  %i_ack_recv = getelementptr inbounds %struct.rds_ib_connection, ptr %0, i32 0, i32 26
  %75 = ptrtoint ptr %i_ack_recv to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %i_ack_recv, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %76)
  %cmp = icmp ugt i64 %74, %76
  br i1 %cmp, label %if.then34, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_send_drop_acked(ptr noundef %2, i64 noundef %74, ptr noundef null) #12
  %77 = ptrtoint ptr %ack_recv to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ack_recv, align 8
  %79 = ptrtoint ptr %i_ack_recv to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %i_ack_recv, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 8
  %80 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %83 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i, label %if.end38.rds_conn_up.exit_crit_edge, label %do.end.i84, !prof !173

if.end38.rds_conn_up.exit_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_conn_up.exit

do.end.i84:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 835, i32 noundef 9, ptr noundef null) #12
  br label %rds_conn_up.exit

rds_conn_up.exit:                                 ; preds = %do.end.i84, %if.end38.rds_conn_up.exit_crit_edge
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 17
  %84 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %c_path.i, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %85, i32 0, i32 14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #12
  %86 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %cmp.i.i.not = icmp eq i32 %87, 3
  br i1 %cmp.i.i.not, label %if.then41, label %rds_conn_up.exit.cleanup_crit_edge

rds_conn_up.exit.cleanup_crit_edge:               ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then41:                                        ; preds = %rds_conn_up.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @rds_ib_attempt_ack(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %rds_conn_up.exit.cleanup_crit_edge, %do.body3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_ib_conn_free(ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_conn_free.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_conn_free, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_conn_free.__UNIQUE_ID_ddebug588, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, ptr noundef %arg) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rds_ibdev = getelementptr inbounds %struct.rds_ib_connection, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %rds_ibdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rds_ibdev, align 8
  %tobool3.not = icmp eq ptr %1, null
  %spinlock = getelementptr inbounds %struct.rds_ib_device, ptr %1, i32 0, i32 15
  %spec.select = select i1 %tobool3.not, ptr @ib_nodev_conns_lock, ptr %spinlock
  tail call void @_raw_spin_lock_irq(ptr noundef %spec.select) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arg) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %arg, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %spec.select) #12
  tail call void @rds_ib_recv_free_caches(ptr noundef %arg) #12
  tail call void @kfree(ptr noundef %arg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_recv_free_caches(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_send_add_credits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_ib_get_client_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_add_conn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_ring_resize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_create_cq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_cq_comp_handler_send(ptr noundef %cq, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %context, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_cq_comp_handler_send.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_cq_comp_handler_send, %if.then)) #12
          to label %do.body4 [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_cq_comp_handler_send.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, ptr noundef %context, ptr noundef %cq) #12
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %7, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !192
  %8 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %13, ptrtoint (ptr @rds_ib_stats to i32)
  %14 = inttoptr i32 %add to ptr
  %s_ib_evt_handler_call = getelementptr inbounds %struct.rds_ib_statistics, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_ib_evt_handler_call to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %s_ib_evt_handler_call, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %s_ib_evt_handler_call, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i21 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i21 to ptr
  %preempt_count.i.i22 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i22, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i22, align 4
  %state.i = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 11, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body4.tasklet_schedule.exit_crit_edge

do.body4.tasklet_schedule.exit_crit_edge:         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %i_send_tasklet = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 11
  tail call void @__tasklet_schedule(ptr noundef %i_send_tasklet) #12
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.body4.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_cq_event_handler(ptr nocapture noundef readonly %event, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_cq_event_handler.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_cq_event_handler, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %event3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event3, align 4
  %call5 = tail call ptr @ib_event_msg(i32 noundef %1) #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_cq_event_handler.__UNIQUE_ID_ddebug558, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %1, ptr noundef %call5, ptr noundef %data) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_cq_comp_handler_recv(ptr noundef %cq, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %context, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_cq_comp_handler_recv.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_cq_comp_handler_recv, %if.then)) #12
          to label %do.body4 [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_cq_comp_handler_recv.__UNIQUE_ID_ddebug559, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.65, ptr noundef %context, ptr noundef %cq) #12
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %7, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !194
  %8 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %13, ptrtoint (ptr @rds_ib_stats to i32)
  %14 = inttoptr i32 %add to ptr
  %s_ib_evt_handler_call = getelementptr inbounds %struct.rds_ib_statistics, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_ib_evt_handler_call to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %s_ib_evt_handler_call, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %s_ib_evt_handler_call, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !195
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #12
  %and.i.i.i21 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i21 to ptr
  %preempt_count.i.i22 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i22, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i22, align 4
  %state.i = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 12, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body4.tasklet_schedule.exit_crit_edge

do.body4.tasklet_schedule.exit_crit_edge:         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %i_recv_tasklet = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %i_recv_tasklet) #12
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.body4.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_ib_qp_event_handler(ptr nocapture noundef readonly %event, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cp_transport_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_qp_event_handler.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_qp_event_handler, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %event3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %4 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event3, align 4
  %call5 = tail call ptr @ib_event_msg(i32 noundef %5) #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_qp_event_handler.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, ptr noundef %data, ptr noundef %3, i32 noundef %5, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %event6 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %6 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cond = icmp eq i32 %7, 4
  br i1 %cond, label %sw.bb, label %do.body8

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_cm_id, align 8
  %call7 = tail call i32 @rdma_notify(ptr noundef %9, i32 noundef 4) #12
  br label %sw.epilog

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_ib_qp_event_handler.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_ib_qp_event_handler, %if.then20)) #12
          to label %do.end26 [label %if.then20], !srcloc !172

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event6, align 4
  %call23 = tail call ptr @ib_event_msg(i32 noundef %11) #18
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %data, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %data, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_ib_qp_event_handler.__UNIQUE_ID_ddebug563, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %11, ptr noundef %call23, ptr noundef %c_laddr, ptr noundef %c_faddr) #12
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.body8
  tail call void @rds_conn_drop(ptr noundef %data) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end26, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rds_dma_hdrs_alloc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %dma_addrs, i32 noundef %num_hdrs, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %num_hdrs, 2
  %dev1 = getelementptr inbounds %struct.rds_ib_device, ptr %dev, i32 0, i32 3
  %call2 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 3264, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 3264, i32 noundef -1) #16
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hdrs)
  %cmp39.not = icmp eq i32 %num_hdrs, 0
  br i1 %cmp39.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree(ptr noundef nonnull %call2) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %arrayidx = getelementptr i32, ptr %call6, i32 %i.040
  %call11 = tail call fastcc ptr @rds_dma_hdr_alloc(ptr noundef %1, ptr noundef %arrayidx)
  %arrayidx12 = getelementptr ptr, ptr %call2, i32 %i.040
  %2 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %arrayidx12, align 4
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040)
  %cmp8.not.i = icmp eq i32 %i.040, 0
  br i1 %cmp8.not.i, label %if.then15.rds_dma_hdrs_free.exit_crit_edge, label %if.then15.for.body.i_crit_edge

if.then15.for.body.i_crit_edge:                   ; preds = %if.then15
  br label %for.body.i

if.then15.rds_dma_hdrs_free.exit_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_dma_hdrs_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then15.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then15.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %arrayidx.i = getelementptr ptr, ptr %call2, i32 %i.09.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %call6, i32 %i.09.i
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %8, i32 noundef 48, i32 noundef %dir, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %6) #12
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.040
  br i1 %exitcond.not.i, label %for.body.i.rds_dma_hdrs_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.rds_dma_hdrs_free.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rds_dma_hdrs_free.exit

rds_dma_hdrs_free.exit:                           ; preds = %for.body.i.rds_dma_hdrs_free.exit_crit_edge, %if.then15.rds_dma_hdrs_free.exit_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call2) #12
  tail call void @kvfree(ptr noundef nonnull %call6) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %num_hdrs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %dma_addrs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %dma_addrs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %rds_dma_hdrs_free.exit, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %rds_dma_hdrs_free.exit ], [ %call2, %for.end ], [ null, %if.then8 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rds_dma_hdr_alloc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %dma_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #17
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i.i.i) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !173

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %2) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %6, %if.end.i.i.i ], [ %4, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.70, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %2, ptr noundef nonnull %call.i.i.i, i32 noundef 48) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %call.i.i.i to i32
  %sub.i.i = add i32 %8, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %7, i32 %shr.i.i
  %and.i.i = and i32 %8, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %2, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 48, i32 noundef 0, i32 noundef 0) #12
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i.i, ptr %dma_addr, align 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i.not = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i.not, label %if.then6, label %ib_dma_map_single.exit.cleanup_crit_edge

ib_dma_map_single.exit.cleanup_crit_edge:         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %ib_dma_map_single.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ %call.i.i.i, %ib_dma_map_single.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_recv_init_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_event_msg(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_notify(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rds_ib_piggyb_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_cq_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @poll_scq(ptr noundef %ic, ptr noundef %cq, ptr noundef %wcs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %poll_cq.i27 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %poll_cq.i27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll_cq.i27, align 4
  %call.i28 = tail call i32 %3(ptr noundef %cq, i32 noundef 32, ptr noundef %wcs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp29 = icmp sgt i32 %call.i28, 0
  br i1 %cmp29, label %for.cond.preheader.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  %i_send_ring = getelementptr inbounds %struct.rds_ib_connection, ptr %ic, i32 0, i32 13
  br label %for.body.preheader

while.cond.loopexit:                              ; preds = %for.inc
  %4 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cq, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poll_cq.i, align 4
  %call.i = tail call i32 %7(ptr noundef %cq, i32 noundef 32, ptr noundef %wcs) #12
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %while.cond.loopexit.for.body.preheader_crit_edge, label %while.cond.loopexit.while.end_crit_edge

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.loopexit.for.body.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %while.cond.loopexit.for.body.preheader_crit_edge, %for.cond.preheader.lr.ph
  %call.i30 = phi i32 [ %call.i28, %for.cond.preheader.lr.ph ], [ %call.i, %while.cond.loopexit.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr = getelementptr %struct.ib_wc, ptr %wcs, i32 %i.025
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_scq.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_scq, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %status = getelementptr %struct.ib_wc, ptr %wcs, i32 %i.025, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  %byte_len = getelementptr %struct.ib_wc, ptr %wcs, i32 %i.025, i32 4
  %12 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %byte_len, align 4
  %ex = getelementptr %struct.ib_wc, ptr %wcs, i32 %i.025, i32 6
  %14 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ex, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_scq.__UNIQUE_ID_ddebug560, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, i64 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr, align 8
  %18 = ptrtoint ptr %i_send_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_send_ring, align 8
  %conv = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv)
  %cmp5.not = icmp ule i64 %17, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp7 = icmp eq i64 %17, -1
  %or.cond = or i1 %cmp7, %cmp5.not
  br i1 %or.cond, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rds_ib_send_cqe_handler(ptr noundef %ic, ptr noundef %add.ptr) #12
  br label %for.inc

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rds_ib_mr_cqe_handler(ptr noundef %ic, ptr noundef %add.ptr) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then9
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %call.i30
  br i1 %exitcond.not, label %while.cond.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_send_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_send_cqe_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_mr_cqe_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_set_ack(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_attempt_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_recv_cqe_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/ib_cm.c", i32 114, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rds_ib_cm_connect_complete._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rds_ib_cm_connect_complete._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/ib_cm.c", i32 123, i32 2}
!8 = !{ptr @rds_ib_cm_connect_complete._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rds_ib_cm_connect_complete._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/rds/ib_cm.c", i32 148, i32 3}
!16 = !{ptr @rds_ib_cm_connect_complete._entry.10, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rds_ib_cm_connect_complete._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rds/ib_cm.c", i32 848, i32 2}
!20 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.15, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug578, !19, !"__UNIQUE_ID_ddebug578", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/rds/ib_cm.c", i32 859, i32 3}
!25 = !{ptr @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug579, !24, !"__UNIQUE_ID_ddebug579", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/rds/ib_cm.c", i32 874, i32 4}
!28 = !{ptr @rds_ib_cm_handle_connect.__UNIQUE_ID_ddebug580, !27, !"__UNIQUE_ID_ddebug580", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rds/ib_cm.c", i32 908, i32 3}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rds/ib_cm.c", i32 919, i32 3}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/rds/ib_cm.c", i32 955, i32 3}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/rds/ib_cm.c", i32 993, i32 3}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug581, !36, !"__UNIQUE_ID_ddebug581", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/rds/ib_cm.c", i32 997, i32 2}
!41 = !{ptr @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug582, !40, !"__UNIQUE_ID_ddebug582", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/rds/ib_cm.c", i32 1031, i32 3}
!44 = !{ptr @rds_ib_conn_path_connect.__UNIQUE_ID_ddebug583, !43, !"__UNIQUE_ID_ddebug583", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/rds/ib_cm.c", i32 1052, i32 2}
!47 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug584, !46, !"__UNIQUE_ID_ddebug584", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/rds/ib_cm.c", i32 1057, i32 3}
!51 = !{ptr @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug585, !50, !"__UNIQUE_ID_ddebug585", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/rds/ib_cm.c", i32 1063, i32 4}
!54 = !{ptr @rds_ib_conn_path_shutdown.__UNIQUE_ID_ddebug586, !53, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!55 = !{ptr @rds_ib_conn_alloc.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../net/rds/ib_cm.c", i32 1221, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/rds/ib_cm.c", i32 1243, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rds_ib_conn_alloc.__UNIQUE_ID_ddebug587, !59, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/rds/ib_cm.c", i32 1255, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rds_ib_conn_free.__UNIQUE_ID_ddebug588, !63, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/rds/ib_cm.c", i32 713, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rds_ib_protocol_compatible._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rds_ib_protocol_compatible._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/rds/ib_cm.c", i32 744, i32 4}
!73 = !{ptr @rds_ib_protocol_compatible._rs, !72, !"_rs", i1 false, i1 false}
!74 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rds_ib_protocol_compatible._entry.37, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @rds_ib_protocol_compatible._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @rds_ib_protocol_compatible._rs.40, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../net/rds/ib_cm.c", i32 747, i32 4}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rds_ib_protocol_compatible._entry.41, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @rds_ib_protocol_compatible._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../net/rds/ib_cm.c", i32 770, i32 2}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!91 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/rds/rds.h", i32 803, i32 2}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/rds/ib_cm.c", i32 552, i32 3}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug565, !95, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/rds/ib_cm.c", i32 566, i32 3}
!100 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug566, !99, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/rds/ib_cm.c", i32 572, i32 3}
!103 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug567, !102, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/rds/ib_cm.c", i32 578, i32 3}
!106 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug568, !105, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/rds/ib_cm.c", i32 602, i32 3}
!109 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug569, !108, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/rds/ib_cm.c", i32 611, i32 3}
!112 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug570, !111, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/rds/ib_cm.c", i32 620, i32 3}
!115 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug571, !114, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/rds/ib_cm.c", i32 628, i32 3}
!118 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug572, !117, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/rds/ib_cm.c", i32 637, i32 3}
!121 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug573, !120, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/rds/ib_cm.c", i32 646, i32 3}
!124 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug574, !123, !"__UNIQUE_ID_ddebug574", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/rds/ib_cm.c", i32 652, i32 2}
!127 = !{ptr @rds_ib_setup_qp.__UNIQUE_ID_ddebug575, !126, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/rds/ib_cm.c", i32 380, i32 2}
!130 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rds_ib_cq_comp_handler_send.__UNIQUE_ID_ddebug564, !129, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/rds/ib_cm.c", i32 235, i32 2}
!134 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @rds_ib_cq_event_handler.__UNIQUE_ID_ddebug558, !133, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/rds/ib_cm.c", i32 252, i32 2}
!138 = !{ptr @rds_ib_cq_comp_handler_recv.__UNIQUE_ID_ddebug559, !137, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/rds/ib_cm.c", i32 359, i32 2}
!141 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @rds_ib_qp_event_handler.__UNIQUE_ID_ddebug562, !140, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/rds/ib_cm.c", i32 367, i32 3}
!145 = !{ptr @rds_ib_qp_event_handler.__UNIQUE_ID_ddebug563, !144, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!148 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../include/rdma/ib_verbs.h", i32 3936, i32 2}
!152 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/rds/ib_cm.c", i32 268, i32 4}
!156 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @poll_scq.__UNIQUE_ID_ddebug560, !155, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/rds/ib_cm.c", i32 313, i32 4}
!160 = !{ptr @poll_rcq.__UNIQUE_ID_ddebug561, !159, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i8 0, i8 2}
!172 = !{i64 2148726434, i64 2148726439, i64 2148726452, i64 2148726496, i64 2148726530, i64 2148726551}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2148346442}
!175 = !{i64 728355, i64 728379, i64 728400, i64 728417, i64 728434}
!176 = !{i64 2148346668}
!177 = !{i64 2158756635}
!178 = !{i64 2158756808}
!179 = !{i64 2158758641}
!180 = !{i64 2158758814}
!181 = !{i64 2158759317, i64 2158759797, i64 2158759354, i64 2158759410, i64 2158759444, i64 2158759468, i64 2158759509, i64 2158759530, i64 2158759558, i64 2158759592}
!182 = !{i64 2158760883, i64 2158761363, i64 2158760920, i64 2158760976, i64 2158761010, i64 2158761034, i64 2158761075, i64 2158761096, i64 2158761124, i64 2158761158}
!183 = !{i64 2149379603}
!184 = !{i64 2149379869}
!185 = !{!"auto-init"}
!186 = !{i64 2148247084, i64 2148247110, i64 2148247139, i64 2148247173, i64 2148247204, i64 2148247227}
!187 = !{i64 2158784268, i64 2158784749, i64 2158784305, i64 2158784361, i64 2158784395, i64 2158784419, i64 2158784460, i64 2158784481, i64 2158784509, i64 2158784543}
!188 = !{i64 2158654824}
!189 = !{i64 2158654997}
!190 = !{i64 2158660068}
!191 = !{i64 2158660241}
!192 = !{i64 2158670420}
!193 = !{i64 2158670593}
!194 = !{i64 2158649618}
!195 = !{i64 2158649791}
