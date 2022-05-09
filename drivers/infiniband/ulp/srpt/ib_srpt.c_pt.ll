; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/srpt/ib_srpt.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/srpt/ib_srpt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.132 }
%union.anon.132 = type { ptr }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.ib_port_modify = type { i32, i32, i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.179, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.179 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.170 }
%struct.anon.170 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.srpt_device = type { ptr, ptr, i32, ptr, ptr, i32, %struct.mutex, i8, ptr, ptr, %struct.ib_event_handler, %struct.list_head, [0 x %struct.srpt_port] }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.srpt_port = type { ptr, ptr, i8, i8, i32, i32, %union.ib_gid, %struct.work_struct, %struct.srpt_port_id, %struct.srpt_port_id, %struct.srpt_port_attrib, %struct.atomic_t, ptr, %struct.mutex, %struct.list_head }
%union.ib_gid = type { %struct.anon.166 }
%struct.anon.166 = type { i64, i64 }
%struct.srpt_port_id = type { %struct.mutex, %struct.list_head, %struct.se_wwn, [64 x i8] }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.srpt_port_attrib = type { i32, i32, i32, i8 }
%struct.ib_cm_id = type { ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_cm_event = type { i32, %union.anon.184, ptr }
%union.anon.184 = type { %struct.ib_cm_req_event_param }
%struct.ib_cm_req_event_param = type { ptr, i16, i8, ptr, ptr, ptr, i64, i32, i32, i32, i32, i8, i8, i16, i8, %struct.rdma_ucm_ece }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.sa_path_rec = type { %union.ib_gid, %union.ib_gid, i64, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.183, i32 }
%union.anon.183 = type { %struct.sa_path_rec_opa }
%struct.sa_path_rec_opa = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.srpt_rdma_ch = type { ptr, ptr, %union.anon.187, ptr, i32, %struct.ib_cqe, %struct.callback_head, %struct.kref, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i16, i8, i8, ptr, [40 x i8], %struct.work_struct }
%union.anon.187 = type { %struct.anon.188 }
%struct.anon.188 = type { ptr }
%struct.ib_cqe = type { ptr }
%struct.ib_event = type { ptr, %union.anon.159, i32 }
%union.anon.159 = type { ptr }
%struct.ib_mad_reg_req = type { i8, i8, [3 x i8], [4 x i32] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.srpt_ioctx = type { %struct.ib_cqe, ptr, i32, i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.169, ptr, i32 }
%union.anon.169 = type { i64 }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.172 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.172 = type { ptr, %union.anon.173 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.srpt_recv_ioctx = type { %struct.srpt_ioctx, %struct.list_head, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.131, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.131 = type { %struct.atomic_t }
%struct.ib_wc = type { %union.anon.163, i32, i32, i32, i32, ptr, %union.anon.164, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.srpt_send_ioctx = type { %struct.srpt_ioctx, ptr, ptr, %struct.srpt_rw_ctx, ptr, %struct.scatterlist, %struct.ib_cqe, i32, %struct.se_cmd, i8, i8, i8, [96 x i8] }
%struct.srpt_rw_ctx = type { %struct.rdma_rw_ctx, ptr, i32 }
%struct.rdma_rw_ctx = type { i32, i8, %union.anon.190 }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { %struct.ib_sge, %struct.ib_rdma_wr }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.167, ptr, i32, i32, i32, %union.anon.168 }
%union.anon.167 = type { i64 }
%union.anon.168 = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.srp_cmd = type { i8, i8, [3 x i8], i8, i8, i8, i64, [4 x i8], %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], [0 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.srp_direct_buf = type { i64, i32, i32 }
%struct.srp_indirect_buf = type <{ %struct.srp_direct_buf, i32, [0 x %struct.srp_direct_buf] }>
%struct.srp_imm_buf = type { i32 }
%struct.srp_tsk_mgmt = type { i8, i8, [6 x i8], i64, [4 x i8], %struct.scsi_lun, [2 x i8], i8, i8, i64, [8 x i8] }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.171 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.171 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.srp_login_req = type { i8, [7 x i8], i64, i32, [4 x i8], i16, i8, [1 x i8], i16, [2 x i8], [16 x i8], [16 x i8] }
%struct.srpt_nexus = type { %struct.callback_head, %struct.list_head, %struct.list_head, [16 x i8], [16 x i8] }
%struct.srp_login_rej = type { i8, [3 x i8], i32, i64, [8 x i8], i16, [6 x i8] }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.181 }
%union.anon.181 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.srp_login_rsp = type <{ i8, [3 x i8], i32, i64, i32, i32, i16, i8, [25 x i8] }>
%struct.srpt_tpg = type { %struct.list_head, ptr, %struct.se_portal_group }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ib_cm_rep_param = type { i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, %struct.rdma_ucm_ece }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.165, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.165 = type { %struct.work_struct }
%struct.ib_mad_send_buf = type { ptr, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_mad_agent = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.list_head, i8, i8, i8 }
%struct.ib_mad_recv_wc = type { ptr, %struct.ib_mad_recv_buf, %struct.list_head, i32, i32 }
%struct.ib_mad_recv_buf = type { %struct.list_head, ptr, %union.anon.185 }
%union.anon.185 = type { ptr }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.ib_dm_mad = type { %struct.ib_mad_hdr, %struct.ib_rmpp_hdr, %struct.ib_dm_hdr, [192 x i8] }
%struct.ib_rmpp_hdr = type { i8, i8, i8, i8, i32, i32 }
%struct.ib_dm_hdr = type { [28 x i8] }
%struct.srp_rsp = type <{ i8, i8, [2 x i8], i32, i64, [2 x i8], i8, i8, i32, i32, i32, i32, [0 x i8] }>
%struct.rdma_cm_event = type { i32, i32, %union.anon.180, %struct.rdma_ucm_ece }
%union.anon.180 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.srp_login_req_rdma = type { i64, i16, i8, i8, i32, [16 x i8], [16 x i8], i16, [6 x i8] }

@__UNIQUE_ID_author525 = internal constant [43 x i8] c"ib_srpt.author=Vu Pham and Bart Van Assche\00", section ".modinfo", align 1
@__UNIQUE_ID_description526 = internal constant [53 x i8] c"ib_srpt.description=SCSI RDMA Protocol target driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file527 = internal constant [49 x i8] c"ib_srpt.file=drivers/infiniband/ulp/srpt/ib_srpt\00", section ".modinfo", align 1
@__UNIQUE_ID_license528 = internal constant [29 x i8] c"ib_srpt.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__param_str_srp_max_req_size = internal constant [25 x i8] c"ib_srpt.srp_max_req_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@srp_max_req_size = internal global { i32, [28 x i8] } { i32 8276, [28 x i8] zeroinitializer }, align 32
@__param_srp_max_req_size = internal constant %struct.kernel_param { ptr @__param_str_srp_max_req_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.132 { ptr @srp_max_req_size } }, section "__param", align 4
@__UNIQUE_ID_srp_max_req_sizetype529 = internal constant [38 x i8] c"ib_srpt.parmtype=srp_max_req_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_srp_max_req_size530 = internal constant [77 x i8] c"ib_srpt.parm=srp_max_req_size:Maximum size of SRP request messages in bytes.\00", section ".modinfo", align 1
@__param_str_srpt_srq_size = internal constant [22 x i8] c"ib_srpt.srpt_srq_size\00", align 1
@srpt_srq_size = internal global { i32, [28 x i8] } { i32 4095, [28 x i8] zeroinitializer }, align 32
@__param_srpt_srq_size = internal constant %struct.kernel_param { ptr @__param_str_srpt_srq_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.132 { ptr @srpt_srq_size } }, section "__param", align 4
@__UNIQUE_ID_srpt_srq_sizetype531 = internal constant [35 x i8] c"ib_srpt.parmtype=srpt_srq_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_srpt_srq_size532 = internal constant [60 x i8] c"ib_srpt.parm=srpt_srq_size:Shared receive queue (SRQ) size.\00", section ".modinfo", align 1
@__param_str_srpt_service_guid = internal constant [26 x i8] c"ib_srpt.srpt_service_guid\00", align 1
@__param_ops_srpt_service_guid = internal constant %struct.kernel_param_ops { i32 0, ptr null, ptr @srpt_get_u64_x, ptr null }, align 4
@srpt_service_guid = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__param_srpt_service_guid = internal constant %struct.kernel_param { ptr @__param_str_srpt_service_guid, ptr null, ptr @__param_ops_srpt_service_guid, i16 292, i8 -1, i8 0, %union.anon.132 { ptr @srpt_service_guid } }, section "__param", align 4
@__UNIQUE_ID_srpt_service_guid533 = internal constant [136 x i8] c"ib_srpt.parm=srpt_service_guid:Using this value for ioc_guid, id_ext, and cm_listen_id instead of using the node_guid of the first HCA.\00", section ".modinfo", align 1
@rdma_cm_id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@srpt_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.1, ptr @srpt_add_one, ptr @srpt_remove_one, ptr null, ptr null, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@srpt_template = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str.239, i32 0, i32 0, ptr @srpt_get_fabric_wwn, ptr @srpt_get_tag, ptr null, ptr @srpt_check_false, ptr @srpt_check_true, ptr @srpt_check_true, ptr @srpt_check_false, ptr null, ptr null, ptr @srpt_tpg_get_inst_index, ptr @srpt_check_stop_free, ptr @srpt_release_cmd, ptr @srpt_close_session, ptr @srpt_sess_get_index, ptr null, ptr @srpt_write_pending, ptr @srpt_set_default_node_attrs, ptr @srpt_get_tcm_cmd_state, ptr @srpt_queue_data_in, ptr @srpt_queue_status, ptr @srpt_queue_tm_rsp, ptr @srpt_aborted_task, ptr @srpt_make_tport, ptr @srpt_drop_tport, ptr null, ptr @srpt_make_tpg, ptr @srpt_enable_tpg, ptr @srpt_drop_tpg, ptr null, ptr null, ptr null, ptr null, ptr @srpt_init_nodeacl, ptr @srpt_da_attrs, ptr @srpt_wwn_attrs, ptr null, ptr null, ptr @srpt_tpg_attrib_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ib_srpt__580_3890_srpt_init_module6 = internal global ptr @srpt_init_module, section ".initcall6.init", align 4
@__exitcall_srpt_cleanup_module = internal global ptr @srpt_cleanup_module, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llx\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ib_srpt\00", [24 x i8] zeroinitializer }, align 32
@srpt_add_one.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 3, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"srpt_add_one\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/infiniband/ulp/srpt/ib_srpt.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device = %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ib_srpt device = %p\0A\00", [43 x i8] zeroinitializer }, align 32
@srpt_add_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sdev->sdev_mutex\00", [46 x i8] zeroinitializer }, align 32
@srpt_add_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 3144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ib_srpt ib_create_cm_id() failed: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@srpt_add_one._entry_ptr = internal global ptr @srpt_add_one._entry, section ".printk_index", align 4
@srpt_add_one.__UNIQUE_ID_ddebug576 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 3, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Target login info: id_ext=%016llx,ioc_guid=%016llx,pkey=ffff,service_id=%016llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"ib_srpt Target login info: id_ext=%016llx,ioc_guid=%016llx,pkey=ffff,service_id=%016llx\0A\00", [39 x i8] zeroinitializer }, align 32
@srpt_add_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 3166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ib_srpt ib_cm_listen() failed: %d (cm_id state = %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@srpt_add_one._entry_ptr.12 = internal global ptr @srpt_add_one._entry.10, section ".printk_index", align 4
@srpt_add_one.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sport->mutex\00", [18 x i8] zeroinitializer }, align 32
@srpt_add_one.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&sport->work)\00", [32 x i8] zeroinitializer }, align 32
@srpt_add_one.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&sport->port_guid_id.mutex\00", [37 x i8] zeroinitializer }, align 32
@srpt_add_one.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&sport->port_gid_id.mutex\00", [38 x i8] zeroinitializer }, align 32
@srpt_add_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 3193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ib_srpt MAD registration failed for %s-%d.\0A\00", [50 x i8] zeroinitializer }, align 32
@srpt_add_one._entry_ptr.23 = internal global ptr @srpt_add_one._entry.21, section ".printk_index", align 4
@srpt_dev_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.226, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@srpt_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @srpt_dev_list, ptr @srpt_dev_list }, [24 x i8] zeroinitializer }, align 32
@srpt_add_one.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.24, i8 3, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"added %s.\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ib_srpt added %s.\0A\00", [45 x i8] zeroinitializer }, align 32
@srpt_add_one._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 3218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016ib_srpt %s(%s) failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@srpt_add_one._entry_ptr.28 = internal global ptr @srpt_add_one._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@srpt_use_srq.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 3, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"srpt_use_srq\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(%s): use_srq = %d; ret = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ib_srpt %s(%s): use_srq = %d; ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@srpt_alloc_srq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_alloc_srq.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 2, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"srpt_alloc_srq\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ib_create_srq() failed: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ib_srpt ib_create_srq() failed: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@srpt_alloc_srq.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.35, i8 2, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"create SRQ #wr= %d max_allow=%d dev= %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ib_srpt create SRQ #wr= %d max_allow=%d dev= %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"srpt-srq-req-buf\00", [47 x i8] zeroinitializer }, align 32
@srpt_srq_event.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"srpt_srq_event\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SRQ event %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ib_srpt SRQ event %d\0A\00", [42 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@srpt_recv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ib_srpt req_lim = %d < 0\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"srpt_recv_done\00", [17 x i8] zeroinitializer }, align 32
@srpt_recv_done._entry_ptr = internal global ptr @srpt_recv_done._entry, section ".printk_index", align 4
@srpt_recv_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@srpt_recv_done._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.3, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016ib_srpt receiving failed for ioctx %p with status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@srpt_recv_done._entry_ptr.48 = internal global ptr @srpt_recv_done._entry.46, section ".printk_index", align 4
@srpt_handle_new_iu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_handle_new_iu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ib_srpt Not yet implemented: SRP_I_LOGOUT\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"srpt_handle_new_iu\00", [45 x i8] zeroinitializer }, align 32
@srpt_handle_new_iu._entry_ptr = internal global ptr @srpt_handle_new_iu._entry, section ".printk_index", align 4
@srpt_handle_new_iu.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 1, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"received SRP_CRED_RSP\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ib_srpt received SRP_CRED_RSP\0A\00", [33 x i8] zeroinitializer }, align 32
@srpt_handle_new_iu.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 1, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"received SRP_AER_RSP\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ib_srpt received SRP_AER_RSP\0A\00", [34 x i8] zeroinitializer }, align 32
@srpt_handle_new_iu._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.3, i32 1667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ib_srpt Received SRP_RSP\0A\00", [36 x i8] zeroinitializer }, align 32
@srpt_handle_new_iu._entry_ptr.57 = internal global ptr @srpt_handle_new_iu._entry.55, section ".printk_index", align 4
@srpt_handle_new_iu._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.50, ptr @.str.3, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ib_srpt received IU with unknown opcode 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@srpt_handle_new_iu._entry_ptr.60 = internal global ptr @srpt_handle_new_iu._entry.58, section ".printk_index", align 4
@srpt_handle_new_iu.__already_done.61 = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_get_send_ioctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_handle_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ib_srpt 0x%llx: parsing SRP descriptor table failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"srpt_handle_cmd\00", [16 x i8] zeroinitializer }, align 32
@srpt_handle_cmd._entry_ptr = internal global ptr @srpt_handle_cmd._entry, section ".printk_index", align 4
@srpt_handle_cmd.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 1, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"target_submit_cmd() returned %d for tag %#llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ib_srpt target_submit_cmd() returned %d for tag %#llx\0A\00", [41 x i8] zeroinitializer }, align 32
@srpt_get_desc_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013ib_srpt received unsupported SRP_CMD request type (%u out + %u in != %u / %zu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"srpt_get_desc_tbl\00", [46 x i8] zeroinitializer }, align 32
@srpt_get_desc_tbl._entry_ptr = internal global ptr @srpt_get_desc_tbl._entry, section ".printk_index", align 4
@srpt_get_desc_tbl._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013ib_srpt Immediate data (length %d + %d) exceeds request size %d\0A\00", [61 x i8] zeroinitializer }, align 32
@srpt_get_desc_tbl._entry_ptr.70 = internal global ptr @srpt_get_desc_tbl._entry.68, section ".printk_index", align 4
@srpt_get_desc_tbl._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.3, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ib_srpt Received too few data - %d < %d\0A\00", [53 x i8] zeroinitializer }, align 32
@srpt_get_desc_tbl._entry_ptr.73 = internal global ptr @srpt_get_desc_tbl._entry.71, section ".printk_index", align 4
@srpt_get_desc_tbl._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.3, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ib_srpt Received invalid write request\0A\00", [54 x i8] zeroinitializer }, align 32
@srpt_get_desc_tbl._entry_ptr.76 = internal global ptr @srpt_get_desc_tbl._entry.74, section ".printk_index", align 4
@srpt_get_desc_tbl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_get_desc_tbl._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.3, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014ib_srpt Internal error - the receive buffers are not aligned properly.\0A\00", [54 x i8] zeroinitializer }, align 32
@srpt_get_desc_tbl._entry_ptr.79 = internal global ptr @srpt_get_desc_tbl._entry.77, section ".printk_index", align 4
@srpt_handle_tsk_mgmt.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"srpt_handle_tsk_mgmt\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"recv tsk_mgmt fn %d for task_tag %lld and cmd tag %lld ch %p sess %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ib_srpt recv tsk_mgmt fn %d for task_tag %lld and cmd tag %lld ch %p sess %p\0A\00", [50 x i8] zeroinitializer }, align 32
@ib_destroy_srq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Destroy of kernel SRQ shouldn't fail\00", [59 x i8] zeroinitializer }, align 32
@srpt_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 2664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ib_srpt Received CM DREP message for ch %s-%d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"srpt_cm_handler\00", [16 x i8] zeroinitializer }, align 32
@srpt_cm_handler._entry_ptr = internal global ptr @srpt_cm_handler._entry, section ".printk_index", align 4
@srpt_cm_handler._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 2669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ib_srpt Received CM TimeWait exit for ch %s-%d.\0A\00", [45 x i8] zeroinitializer }, align 32
@srpt_cm_handler._entry_ptr.89 = internal global ptr @srpt_cm_handler._entry.87, section ".printk_index", align 4
@srpt_cm_handler._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 2674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ib_srpt Received CM REP error for ch %s-%d.\0A\00", [49 x i8] zeroinitializer }, align 32
@srpt_cm_handler._entry_ptr.92 = internal global ptr @srpt_cm_handler._entry.90, section ".printk_index", align 4
@srpt_cm_handler._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.3, i32 2677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ib_srpt Received CM DREQ ERROR event.\0A\00", [55 x i8] zeroinitializer }, align 32
@srpt_cm_handler._entry_ptr.95 = internal global ptr @srpt_cm_handler._entry.93, section ".printk_index", align 4
@srpt_cm_handler._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.86, ptr @.str.3, i32 2680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ib_srpt Received CM MRA event\0A\00", [63 x i8] zeroinitializer }, align 32
@srpt_cm_handler._entry_ptr.98 = internal global ptr @srpt_cm_handler._entry.96, section ".printk_index", align 4
@srpt_cm_handler._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.86, ptr @.str.3, i32 2683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ib_srpt received unrecognized CM event %d\0A\00", [51 x i8] zeroinitializer }, align 32
@srpt_cm_handler._entry_ptr.101 = internal global ptr @srpt_cm_handler._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%04x:%04x:%04x:%04x\00", [44 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_cm_req_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 2169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\016ib_srpt Received SRP_LOGIN_REQ with i_port_id %pI6, t_port_id %pI6 and it_iu_len %d on port %d (guid=%pI6); pkey %#04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"srpt_cm_req_recv\00", [47 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr = internal global ptr @srpt_cm_req_recv._entry, section ".printk_index", align 4
@srpt_cm_req_recv._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 2190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013ib_srpt rejected SRP_LOGIN_REQ because its length (%d bytes) is out of range (%d .. %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.107 = internal global ptr @srpt_cm_req_recv._entry.105, section ".printk_index", align 4
@srpt_cm_req_recv._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.3, i32 2197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016ib_srpt rejected SRP_LOGIN_REQ because target port %s_%d has not yet been enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.110 = internal global ptr @srpt_cm_req_recv._entry.108, section ".printk_index", align 4
@srpt_cm_req_recv._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.3, i32 2206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013ib_srpt rejected SRP_LOGIN_REQ because it has an invalid target port identifier.\0A\00", [44 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.113 = internal global ptr @srpt_cm_req_recv._entry.111, section ".printk_index", align 4
@srpt_cm_req_recv._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.104, ptr @.str.3, i32 2214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ib_srpt rejected SRP_LOGIN_REQ because out of memory.\0A\00", [39 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.116 = internal global ptr @srpt_cm_req_recv._entry.114, section ".printk_index", align 4
@srpt_cm_req_recv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ch->release_work)\00", [59 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv.__key.118 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ch->spinlock\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"srpt-rsp-buf\00", [19 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.104, ptr @.str.3, i32 2253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013ib_srpt rejected SRP_LOGIN_REQ because creating a new QP SQ ring failed.\0A\00", [52 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.123 = internal global ptr @srpt_cm_req_recv._entry.121, section ".printk_index", align 4
@srpt_cm_req_recv.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.104, ptr @.str.3, ptr @.str.124, i8 2, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imm_data_offset = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ib_srpt imm_data_offset = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"srpt-req-buf\00", [19 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.104, ptr @.str.3, i32 2290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013ib_srpt rejected SRP_LOGIN_REQ because creating a new QP RQ ring failed.\0A\00", [52 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.129 = internal global ptr @srpt_cm_req_recv._entry.127, section ".printk_index", align 4
@srpt_cm_req_recv._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.104, ptr @.str.3, i32 2302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013ib_srpt rejected SRP_LOGIN_REQ because creating a new RDMA channel failed.\0A\00", [50 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.132 = internal global ptr @srpt_cm_req_recv._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%016llx%016llx\00", [47 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.104, ptr @.str.3, ptr @.str.134, i8 2, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"registering src addr %s or i_port_id %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ib_srpt registering src addr %s or i_port_id %s\0A\00", [47 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv.__already_done.136 = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_cm_req_recv._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.104, ptr @.str.3, i32 2348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016ib_srpt Rejected login for initiator %s: ret = %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.139 = internal global ptr @srpt_cm_req_recv._entry.137, section ".printk_index", align 4
@srpt_cm_req_recv._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.104, ptr @.str.3, i32 2370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ib_srpt Relogin - closed existing channel %s\0A\00", [48 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.142 = internal global ptr @srpt_cm_req_recv._entry.140, section ".printk_index", align 4
@srpt_cm_req_recv._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.104, ptr @.str.3, i32 2383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016ib_srpt rejected SRP_LOGIN_REQ because target %s_%d is not enabled\0A\00", [58 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.145 = internal global ptr @srpt_cm_req_recv._entry.143, section ".printk_index", align 4
@srpt_cm_req_recv._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.104, ptr @.str.3, i32 2395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013ib_srpt rejected SRP_LOGIN_REQ because enabling RTR failed (error code = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.148 = internal global ptr @srpt_cm_req_recv._entry.146, section ".printk_index", align 4
@srpt_cm_req_recv.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.104, ptr @.str.3, ptr @.str.149, i8 2, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Establish connection sess=%p name=%s ch=%p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ib_srpt Establish connection sess=%p name=%s ch=%p\0A\00", [44 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.104, ptr @.str.3, i32 2457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013ib_srpt sending SRP_LOGIN_REQ response failed (error code = %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.153 = internal global ptr @srpt_cm_req_recv._entry.151, section ".printk_index", align 4
@srpt_cm_req_recv.__already_done.154 = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_cm_req_recv._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.104, ptr @.str.3, i32 2493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ib_srpt Rejecting login with reason %#x\0A\00", [53 x i8] zeroinitializer }, align 32
@srpt_cm_req_recv._entry_ptr.157 = internal global ptr @srpt_cm_req_recv._entry.155, section ".printk_index", align 4
@srpt_zerolength_write_done.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.158, ptr @.str.3, ptr @.str.159, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"srpt_zerolength_write_done\00", [37 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s-%d wc->status %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ib_srpt %s-%d wc->status %d\0A\00", [35 x i8] zeroinitializer }, align 32
@srpt_zerolength_write_done.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.158, ptr @.str.3, ptr @.str.161, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s-%d: already disconnected.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ib_srpt %s-%d: already disconnected.\0A\00", [58 x i8] zeroinitializer }, align 32
@srpt_process_wait_list.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_process_wait_list.__already_done.163 = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@srpt_release_channel_work.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.164, ptr @.str.3, ptr @.str.165, i8 2, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"srpt_release_channel_work\00", [38 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ib_srpt %s-%d\0A\00", [17 x i8] zeroinitializer }, align 32
@srpt_create_ch_ib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.3, i32 1804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ib_srpt failed to create CQ cqe= %d ret= %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"srpt_create_ch_ib\00", [46 x i8] zeroinitializer }, align 32
@srpt_create_ch_ib._entry_ptr = internal global ptr @srpt_create_ch_ib._entry, section ".printk_index", align 4
@srpt_create_ch_ib.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.3, ptr @.str.169, i8 1, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"failed to create queue pair with sq_size = %d (%d) - retrying\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ib_srpt failed to create queue pair with sq_size = %d (%d) - retrying\0A\00", [57 x i8] zeroinitializer }, align 32
@srpt_create_ch_ib._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.168, ptr @.str.3, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013ib_srpt failed to create queue pair with sq_size = %d (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@srpt_create_ch_ib._entry_ptr.173 = internal global ptr @srpt_create_ch_ib._entry.171, section ".printk_index", align 4
@srpt_create_ch_ib.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.3, ptr @.str.174, i8 1, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: max_cqe= %d max_sge= %d sq_size = %d ch= %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ib_srpt %s: max_cqe= %d max_sge= %d sq_size = %d ch= %p\0A\00", [39 x i8] zeroinitializer }, align 32
@srpt_qp_event.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.176, ptr @.str.3, ptr @.str.177, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"srpt_qp_event\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"QP event %d on ch=%p sess_name=%s-%d state=%s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ib_srpt QP event %d on ch=%p sess_name=%s-%d state=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@srpt_qp_event.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.176, ptr @.str.3, ptr @.str.179, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s-%d, state %s: received Last WQE event.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ib_srpt %s-%d, state %s: received Last WQE event.\0A\00", [45 x i8] zeroinitializer }, align 32
@srpt_qp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.176, ptr @.str.3, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ib_srpt received unrecognized IB QP event %d\0A\00", [48 x i8] zeroinitializer }, align 32
@srpt_qp_event._entry_ptr = internal global ptr @srpt_qp_event._entry, section ".printk_index", align 4
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"connecting\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"live\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnecting\00", [18 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"draining\00", [23 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@srpt_init_ch_qp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_init_ch_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.3, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ib_srpt Translating pkey %#x failed (%d) - using index 0\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"srpt_init_ch_qp\00", [16 x i8] zeroinitializer }, align 32
@srpt_init_ch_qp._entry_ptr = internal global ptr @srpt_init_ch_qp._entry, section ".printk_index", align 4
@.str.190 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@srpt_cm_rej_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.3, i32 2587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016ib_srpt Received CM REJ for ch %s-%d; reason %d%s%s.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"srpt_cm_rej_recv\00", [47 x i8] zeroinitializer }, align 32
@srpt_cm_rej_recv._entry_ptr = internal global ptr @srpt_cm_rej_recv._entry, section ".printk_index", align 4
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"; private data\00", [17 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.195 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" (?)\00", [27 x i8] zeroinitializer }, align 32
@srpt_cm_rtu_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.3, i32 2605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ib_srpt %s-%d: QP transition to RTS failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"srpt_cm_rtu_recv\00", [47 x i8] zeroinitializer }, align 32
@srpt_cm_rtu_recv._entry_ptr = internal global ptr @srpt_cm_rtu_recv._entry, section ".printk_index", align 4
@srpt_cm_rtu_recv._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.197, ptr @.str.3, i32 2617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ib_srpt %s-%d: channel transition to LIVE state failed\0A\00", [38 x i8] zeroinitializer }, align 32
@srpt_cm_rtu_recv._entry_ptr.200 = internal global ptr @srpt_cm_rtu_recv._entry.198, section ".printk_index", align 4
@srpt_cm_rtu_recv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.201 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@srpt_zerolength_write.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.202, ptr @.str.3, ptr @.str.203, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"srpt_zerolength_write\00", [42 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s-%d: queued zerolength write\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ib_srpt %s-%d: queued zerolength write\0A\00", [56 x i8] zeroinitializer }, align 32
@srpt_close_ch.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.205, ptr @.str.3, ptr @.str.206, i8 1, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.205 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"srpt_close_ch\00", [18 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: already closed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ib_srpt %s: already closed\0A\00", [36 x i8] zeroinitializer }, align 32
@srpt_close_ch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.205, ptr @.str.3, i32 1912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ib_srpt %s-%d: changing queue pair into error state failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@srpt_close_ch._entry_ptr = internal global ptr @srpt_close_ch._entry, section ".printk_index", align 4
@srpt_close_ch._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.205, ptr @.str.3, i32 1917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013ib_srpt %s-%d: queuing zero-length write failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@srpt_close_ch._entry_ptr.211 = internal global ptr @srpt_close_ch._entry.209, section ".printk_index", align 4
@srpt_close_ch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_event_handler.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.212, ptr @.str.3, ptr @.str.213, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.212 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"srpt_event_handler\00", [45 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASYNC event= %d on device= %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ib_srpt ASYNC event= %d on device= %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"event %d: port_num %d out of range 1..%d\0A\00", [54 x i8] zeroinitializer }, align 32
@srpt_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.212, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ib_srpt received unrecognized IB event %d\0A\00", [51 x i8] zeroinitializer }, align 32
@srpt_event_handler._entry_ptr = internal global ptr @srpt_event_handler._entry, section ".printk_index", align 4
@srpt_refresh_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\014ib_srpt %s-%d: enabling device management failed (%d). Note: this is expected if SR-IOV is enabled.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"srpt_refresh_port\00", [46 x i8] zeroinitializer }, align 32
@srpt_refresh_port._entry_ptr = internal global ptr @srpt_refresh_port._entry, section ".printk_index", align 4
@srpt_refresh_port._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.3, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013ib_srpt %s-%d: MAD agent registration failed (%ld). Note: this is expected if SR-IOV is enabled.\0A\00", [60 x i8] zeroinitializer }, align 32
@srpt_refresh_port._entry_ptr.221 = internal global ptr @srpt_refresh_port._entry.219, section ".printk_index", align 4
@rdma_destroy_ah.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.222 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel AH shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Linux SRP target\00", [47 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%016llx\00", [22 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SRP.T10:\00", [23 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"srpt_dev_lock\00", [18 x i8] zeroinitializer }, align 32
@__const.srpt_unregister_mad_agent.port_modify = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 0, i32 524288, i8 0, [3 x i8] zeroinitializer }, align 4
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.227 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@srpt_release_sport.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_release_sport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.3, i32 2964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016ib_srpt %s_%d: waiting for unregistration of %d sessions ...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"srpt_release_sport\00", [45 x i8] zeroinitializer }, align 32
@srpt_release_sport._entry_ptr = internal global ptr @srpt_release_sport._entry, section ".printk_index", align 4
@srpt_release_sport._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.229, ptr @.str.3, i32 2970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016ib_srpt %s-%d: state %s\0A\00", [37 x i8] zeroinitializer }, align 32
@srpt_release_sport._entry_ptr.232 = internal global ptr @srpt_release_sport._entry.230, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.233 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__srpt_close_all_ch._entry = internal constant %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.3, i32 1993, ptr null, ptr null }, align 1
@.str.234 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016ib_srpt Closing channel %s-%d because target %s_%d has been disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__srpt_close_all_ch\00", [44 x i8] zeroinitializer }, align 32
@__srpt_close_all_ch._entry_ptr = internal global ptr @__srpt_close_all_ch._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.236 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.238 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"srpt\00", [27 x i8] zeroinitializer }, align 32
@srpt_da_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @srpt_attr_rdma_cm_port, ptr null], [24 x i8] zeroinitializer }, align 32
@srpt_wwn_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @srpt_wwn_attr_version, ptr null], [24 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @srpt_tpg_attrib_attr_srp_max_rdma_size, ptr @srpt_tpg_attrib_attr_srp_max_rsp_size, ptr @srpt_tpg_attrib_attr_srp_sq_size, ptr @srpt_tpg_attrib_attr_use_srq, ptr null], [44 x i8] zeroinitializer }, align 32
@srpt_release_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_release_cmd.__already_done.240 = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_disconnect_ch_sync.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.241, ptr @.str.3, ptr @.str.242, i8 1, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"srpt_disconnect_ch_sync\00", [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ch %s-%d state %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ib_srpt ch %s-%d state %d\0A\00", [37 x i8] zeroinitializer }, align 32
@srpt_disconnect_ch_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.241, ptr @.str.3, i32 1976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ib_srpt %s(%s-%d state %d): still waiting ...\0A\00", [47 x i8] zeroinitializer }, align 32
@srpt_disconnect_ch_sync._entry_ptr = internal global ptr @srpt_disconnect_ch_sync._entry, section ".printk_index", align 4
@srpt_write_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.3, i32 2757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014ib_srpt %s: IB send queue full (needed %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"srpt_write_pending\00", [45 x i8] zeroinitializer }, align 32
@srpt_write_pending._entry_ptr = internal global ptr @srpt_write_pending._entry, section ".printk_index", align 4
@srpt_write_pending._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.3, i32 2775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ib_srpt %s: ib_post_send() returned %d for %d (avail: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@srpt_write_pending._entry_ptr.249 = internal global ptr @srpt_write_pending._entry.247, section ".printk_index", align 4
@srpt_rdma_read_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.3, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016ib_srpt RDMA_READ for ioctx 0x%p failed with status %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"srpt_rdma_read_done\00", [44 x i8] zeroinitializer }, align 32
@srpt_rdma_read_done._entry_ptr = internal global ptr @srpt_rdma_read_done._entry, section ".printk_index", align 4
@srpt_rdma_read_done._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.251, ptr @.str.3, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ib_srpt %s[%d]: wrong state = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@srpt_rdma_read_done._entry_ptr.254 = internal global ptr @srpt_rdma_read_done._entry.252, section ".printk_index", align 4
@srpt_abort_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.255 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unexpected I/O context state %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.srpt_abort_cmd = private unnamed_addr constant [15 x i8] c"srpt_abort_cmd\00", align 1
@srpt_abort_cmd.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.srpt_abort_cmd, ptr @.str.3, ptr @.str.256, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.256 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Aborting cmd with state %d -> %d and tag %lld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ib_srpt Aborting cmd with state %d -> %d and tag %lld\0A\00", [41 x i8] zeroinitializer }, align 32
@srpt_abort_cmd.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.srpt_abort_cmd, ptr @.str.3, ptr @.str.258, i8 1, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.258 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tag %#llx: RDMA read error\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ib_srpt tag %#llx: RDMA read error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unexpected command state (%d)\00", [34 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ch %p; cmd %d: unexpected command state %d\0A\00", [52 x i8] zeroinitializer }, align 32
@srpt_queue_response.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srpt_queue_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.262, ptr @.str.3, i32 2860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"srpt_queue_response\00", [44 x i8] zeroinitializer }, align 32
@srpt_queue_response._entry_ptr = internal global ptr @srpt_queue_response._entry, section ".printk_index", align 4
@srpt_queue_response._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.262, ptr @.str.3, i32 2882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ib_srpt %s: sending cmd response failed for tag %llu (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@srpt_queue_response._entry_ptr.265 = internal global ptr @srpt_queue_response._entry.263, section ".printk_index", align 4
@srpt_build_cmd_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.3, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014ib_srpt truncated sense data from %d to %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"srpt_build_cmd_rsp\00", [45 x i8] zeroinitializer }, align 32
@srpt_build_cmd_rsp._entry_ptr = internal global ptr @srpt_build_cmd_rsp._entry, section ".printk_index", align 4
@srpt_send_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str.3, i32 1766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016ib_srpt sending response for ioctx 0x%p failed with status %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"srpt_send_done\00", [17 x i8] zeroinitializer }, align 32
@srpt_send_done._entry_ptr = internal global ptr @srpt_send_done._entry, section ".printk_index", align 4
@srpt_send_done._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.269, ptr @.str.3, i32 1772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013ib_srpt IB completion has been received too late for wr_id = %u.\0A\00", [60 x i8] zeroinitializer }, align 32
@srpt_send_done._entry_ptr.272 = internal global ptr @srpt_send_done._entry.270, section ".printk_index", align 4
@srpt_wwn_to_sport_id.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_net = external dso_local global %struct.net, align 128
@srpt_init_nodeacl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.274, ptr @.str.3, i32 3446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ib_srpt invalid initiator port ID %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"srpt_init_nodeacl\00", [46 x i8] zeroinitializer }, align 32
@srpt_init_nodeacl._entry_ptr = internal global ptr @srpt_init_nodeacl._entry, section ".printk_index", align 4
@.str.275 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%hx:%hx:%hx:%hx\00", [16 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0x\00", [29 x i8] zeroinitializer }, align 32
@srpt_attr_rdma_cm_port = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.277, ptr null, i16 420, ptr @srpt_rdma_cm_port_show, ptr @srpt_rdma_cm_port_store }, [44 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rdma_cm_port\00", [19 x i8] zeroinitializer }, align 32
@rdma_cm_port = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__const.srpt_rdma_cm_port_store.addr4 = private unnamed_addr constant %struct.sockaddr_in { i16 2, i16 0, %struct.in_addr zeroinitializer, [8 x i8] zeroinitializer }, align 4
@__const.srpt_rdma_cm_port_store.addr6 = private unnamed_addr constant %struct.sockaddr_in6 { i16 10, i16 0, i32 0, %struct.in6_addr zeroinitializer, i32 0 }, align 4
@rdma_cm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.292, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rdma_cm_mutex, i64 52), ptr getelementptr (i8, ptr @rdma_cm_mutex, i64 52) }, ptr @rdma_cm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.293, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@srpt_create_rdma_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.279, ptr @.str.3, i32 3628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ib_srpt RDMA/CM ID creation failed: %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"srpt_create_rdma_id\00", [44 x i8] zeroinitializer }, align 32
@srpt_create_rdma_id._entry_ptr = internal global ptr @srpt_create_rdma_id._entry, section ".printk_index", align 4
@.str.280 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pISp\00", [26 x i8] zeroinitializer }, align 32
@srpt_create_rdma_id._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.279, ptr @.str.3, i32 3638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013ib_srpt Binding RDMA/CM ID to address %s failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@srpt_create_rdma_id._entry_ptr.283 = internal global ptr @srpt_create_rdma_id._entry.281, section ".printk_index", align 4
@srpt_create_rdma_id._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.279, ptr @.str.3, i32 3646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ib_srpt rdma_listen() failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@srpt_create_rdma_id._entry_ptr.286 = internal global ptr @srpt_create_rdma_id._entry.284, section ".printk_index", align 4
@srpt_rdma_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.287, ptr @.str.3, i32 2719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"srpt_rdma_cm_handler\00", [43 x i8] zeroinitializer }, align 32
@srpt_rdma_cm_handler._entry_ptr = internal global ptr @srpt_rdma_cm_handler._entry, section ".printk_index", align 4
@srpt_rdma_cm_handler._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.287, ptr @.str.3, i32 2726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ib_srpt received unrecognized RDMA CM event %d\0A\00", [46 x i8] zeroinitializer }, align 32
@srpt_rdma_cm_handler._entry_ptr.290 = internal global ptr @srpt_rdma_cm_handler._entry.288, section ".printk_index", align 4
@.str.291 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pIS\00", [27 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rdma_cm_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rdma_cm_mutex\00", [18 x i8] zeroinitializer }, align 32
@srpt_wwn_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.294, ptr null, i16 292, ptr @srpt_wwn_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_attr_srp_max_rdma_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.296, ptr null, i16 420, ptr @srpt_tpg_attrib_srp_max_rdma_size_show, ptr @srpt_tpg_attrib_srp_max_rdma_size_store }, [44 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_attr_srp_max_rsp_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.306, ptr null, i16 420, ptr @srpt_tpg_attrib_srp_max_rsp_size_show, ptr @srpt_tpg_attrib_srp_max_rsp_size_store }, [44 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_attr_srp_sq_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.314, ptr null, i16 420, ptr @srpt_tpg_attrib_srp_sq_size_show, ptr @srpt_tpg_attrib_srp_sq_size_store }, [44 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_attr_use_srq = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.322, ptr null, i16 420, ptr @srpt_tpg_attrib_use_srq_show, ptr @srpt_tpg_attrib_use_srq_store }, [44 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"srp_max_rdma_size\00", [46 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_max_rdma_size_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.299, ptr @.str.3, i32 3469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ib_srpt kstrtoul() failed with ret: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"srpt_tpg_attrib_srp_max_rdma_size_store\00", [56 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr = internal global ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry, section ".printk_index", align 4
@srpt_tpg_attrib_srp_max_rdma_size_store._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.299, ptr @.str.3, i32 3474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ib_srpt val: %lu exceeds MAX_SRPT_RDMA_SIZE: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr.302 = internal global ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry.300, section ".printk_index", align 4
@srpt_tpg_attrib_srp_max_rdma_size_store._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.299, ptr @.str.3, i32 3479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ib_srpt val: %lu smaller than DEFAULT_MAX_RDMA_SIZE: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr.305 = internal global ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry.303, section ".printk_index", align 4
@.str.306 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"srp_max_rsp_size\00", [47 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_max_rsp_size_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.307, ptr @.str.3, i32 3506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"srpt_tpg_attrib_srp_max_rsp_size_store\00", [57 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr = internal global ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry, section ".printk_index", align 4
@srpt_tpg_attrib_srp_max_rsp_size_store._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.307, ptr @.str.3, i32 3511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ib_srpt val: %lu exceeds MAX_SRPT_RSP_SIZE: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr.310 = internal global ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry.308, section ".printk_index", align 4
@srpt_tpg_attrib_srp_max_rsp_size_store._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.307, ptr @.str.3, i32 3516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ib_srpt val: %lu smaller than MIN_MAX_RSP_SIZE: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr.313 = internal global ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry.311, section ".printk_index", align 4
@.str.314 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"srp_sq_size\00", [20 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_sq_size_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.315, ptr @.str.3, i32 3543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"srpt_tpg_attrib_srp_sq_size_store\00", [62 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_sq_size_store._entry_ptr = internal global ptr @srpt_tpg_attrib_srp_sq_size_store._entry, section ".printk_index", align 4
@srpt_tpg_attrib_srp_sq_size_store._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.315, ptr @.str.3, i32 3548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ib_srpt val: %lu exceeds MAX_SRPT_SRQ_SIZE: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_sq_size_store._entry_ptr.318 = internal global ptr @srpt_tpg_attrib_srp_sq_size_store._entry.316, section ".printk_index", align 4
@srpt_tpg_attrib_srp_sq_size_store._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.315, ptr @.str.3, i32 3553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013ib_srpt val: %lu smaller than MIN_SRPT_SRQ_SIZE: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@srpt_tpg_attrib_srp_sq_size_store._entry_ptr.321 = internal global ptr @srpt_tpg_attrib_srp_sq_size_store._entry.319, section ".printk_index", align 4
@.str.322 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"use_srq\00", [24 x i8] zeroinitializer }, align 32
@srpt_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.324, ptr @.str.3, i32 3853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013ib_srpt invalid value %d for kernel module parameter srp_max_req_size -- must be at least %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"srpt_init_module\00", [47 x i8] zeroinitializer }, align 32
@srpt_init_module._entry_ptr = internal global ptr @srpt_init_module._entry, section ".printk_index", align 4
@srpt_init_module._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.324, ptr @.str.3, i32 3860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\013ib_srpt invalid value %d for kernel module parameter srpt_srq_size -- must be in the range [%d..%d].\0A\00", [56 x i8] zeroinitializer }, align 32
@srpt_init_module._entry_ptr.327 = internal global ptr @srpt_init_module._entry.325, section ".printk_index", align 4
@srpt_init_module._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.324, ptr @.str.3, i32 3870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ib_srpt couldn't register IB client\0A\00", [57 x i8] zeroinitializer }, align 32
@srpt_init_module._entry_ptr.330 = internal global ptr @srpt_init_module._entry.328, section ".printk_index", align 4
@switch.table.srpt_remove_one = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186], [44 x i8] zeroinitializer }, align 32
@switch.table.srpt_handle_cmd = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 33, i32 34, i32 34, i32 36], [44 x i8] zeroinitializer }, align 32
@switch.table.srpt_qp_event = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186], [44 x i8] zeroinitializer }, align 32
@switch.table.srpt_qp_event.331 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.332 = internal global [9 x i64] [i64 7, i64 32, i64 9, i64 10, i64 11, i64 12, i64 13, i64 17, i64 18]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 696]
@__sancov_gen_cov_switch_values.334 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 65, i64 66, i64 193]
@__sancov_gen_cov_switch_values.335 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.336 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 64]
@__sancov_gen_cov_switch_values.337 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.338 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.339 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.340 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.341 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.342 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.343 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.344 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.345 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.346 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.347 = internal global [10 x i64] [i64 8, i64 32, i64 4, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15]
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"srp_max_req_size\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 72, i32 17 }
@___asan_gen_.351 = private unnamed_addr constant [14 x i8] c"srpt_srq_size\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 77, i32 12 }
@___asan_gen_.354 = private unnamed_addr constant [18 x i8] c"srpt_service_guid\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 68, i32 12 }
@___asan_gen_.357 = private unnamed_addr constant [11 x i8] c"rdma_cm_id\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 96, i32 27 }
@___asan_gen_.360 = private unnamed_addr constant [12 x i8] c"srpt_client\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3264, i32 25 }
@___asan_gen_.363 = private unnamed_addr constant [14 x i8] c"srpt_template\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3800, i32 44 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 84, i32 25 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3265, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3115, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3123, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3143, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3152, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3165, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3177, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3184, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3185, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3187, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3192, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant [14 x i8] c"srpt_dev_lock\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [14 x i8] c"srpt_dev_list\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 70, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3204, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3218, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3099, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3051, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3055, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3058, i32 42 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 190, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 326, i32 6 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1700, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1704, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1658, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1661, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1664, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1667, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1670, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1525, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1535, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1052, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1070, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1075, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1084, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1090, i32 4 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1595, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3688, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2663, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2668, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2673, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2677, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2680, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2683, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 535, i32 29 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2167, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2189, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2196, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2206, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2214, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2222, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2238, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2243, i32 40 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2253, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2267, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2278, i32 41 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2290, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2302, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2307, i32 41 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2311, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2347, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2369, i32 4 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2382, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2394, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2399, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2456, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2493, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 875, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 884, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2084, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1803, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1850, i32 4 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1856, i32 4 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1864, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 217, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 229, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 234, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 197, i32 10 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 199, i32 10 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 201, i32 10 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 203, i32 10 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 205, i32 10 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 207, i32 9 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1129, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2583, i32 26 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2585, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2604, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2616, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2623, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 865, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1903, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1911, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1916, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 143, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 154, i32 4 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 178, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 587, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 607, i32 4 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3630, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 346, i32 26 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 404, i32 4 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 405, i32 4 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 69, i32 8 }
@___asan_gen_.1000 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 3498, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2962, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2968, i32 5 }
@___asan_gen_.1017 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1021, i32 87, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1990, i32 5 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1036, i32 695, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1036, i32 723, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3802, i32 19 }
@___asan_gen_.1041 = private unnamed_addr constant [14 x i8] c"srpt_da_attrs\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3703, i32 35 }
@___asan_gen_.1044 = private unnamed_addr constant [15 x i8] c"srpt_wwn_attrs\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3795, i32 35 }
@___asan_gen_.1047 = private unnamed_addr constant [22 x i8] c"srpt_tpg_attrib_attrs\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3611, i32 35 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1965, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1975, i32 3 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2756, i32 3 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2773, i32 3 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1335, i32 3 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1345, i32 3 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1273, i32 3 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1278, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1292, i32 3 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1307, i32 3 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2825, i32 3 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2859, i32 3 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2881, i32 3 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1420, i32 4 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1765, i32 3 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 1771, i32 3 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3446, i32 3 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3385, i32 19 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3405, i32 21 }
@___asan_gen_.1167 = private unnamed_addr constant [23 x i8] c"srpt_attr_rdma_cm_port\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3701, i32 1 }
@___asan_gen_.1173 = private unnamed_addr constant [13 x i8] c"rdma_cm_port\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 95, i32 12 }
@___asan_gen_.1176 = private unnamed_addr constant [14 x i8] c"rdma_cm_mutex\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3627, i32 3 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3636, i32 40 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3637, i32 3 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3646, i32 3 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2718, i32 3 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2725, i32 3 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 2565, i32 39 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 93, i32 8 }
@___asan_gen_.1224 = private unnamed_addr constant [22 x i8] c"srpt_wwn_attr_version\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3793, i32 1 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3790, i32 25 }
@___asan_gen_.1233 = private unnamed_addr constant [39 x i8] c"srpt_tpg_attrib_attr_srp_max_rdma_size\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant [38 x i8] c"srpt_tpg_attrib_attr_srp_max_rsp_size\00", align 1
@___asan_gen_.1239 = private unnamed_addr constant [33 x i8] c"srpt_tpg_attrib_attr_srp_sq_size\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant [29 x i8] c"srpt_tpg_attrib_attr_use_srq\00", align 1
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3606, i32 1 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3456, i32 26 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3469, i32 3 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3473, i32 3 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3478, i32 3 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3607, i32 1 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3506, i32 3 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3510, i32 3 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3515, i32 3 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3608, i32 1 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3543, i32 3 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3547, i32 3 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3552, i32 3 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3609, i32 1 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3852, i32 3 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3859, i32 3 }
@___asan_gen_.1332 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1336 = private constant [41 x i8] c"../drivers/infiniband/ulp/srpt/ib_srpt.c\00", align 1
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1336, i32 3870, i32 3 }
@___asan_gen_.1338 = private unnamed_addr constant [29 x i8] c"switch.table.srpt_remove_one\00", align 1
@___asan_gen_.1339 = private unnamed_addr constant [29 x i8] c"switch.table.srpt_handle_cmd\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant [27 x i8] c"switch.table.srpt_qp_event\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant [31 x i8] c"switch.table.srpt_qp_event.331\00", align 1
@llvm.compiler.used = appending global [428 x ptr] [ptr @__UNIQUE_ID_author525, ptr @__UNIQUE_ID_description526, ptr @__UNIQUE_ID_file527, ptr @__UNIQUE_ID_license528, ptr @__UNIQUE_ID_srp_max_req_size530, ptr @__UNIQUE_ID_srp_max_req_sizetype529, ptr @__UNIQUE_ID_srpt_service_guid533, ptr @__UNIQUE_ID_srpt_srq_size532, ptr @__UNIQUE_ID_srpt_srq_sizetype531, ptr @__exitcall_srpt_cleanup_module, ptr @__initcall__kmod_ib_srpt__580_3890_srpt_init_module6, ptr @__param_srp_max_req_size, ptr @__param_srpt_service_guid, ptr @__param_srpt_srq_size, ptr @__srpt_close_all_ch._entry, ptr @__srpt_close_all_ch._entry_ptr, ptr @srpt_add_one._entry, ptr @srpt_add_one._entry.10, ptr @srpt_add_one._entry.21, ptr @srpt_add_one._entry.26, ptr @srpt_add_one._entry_ptr, ptr @srpt_add_one._entry_ptr.12, ptr @srpt_add_one._entry_ptr.23, ptr @srpt_add_one._entry_ptr.28, ptr @srpt_build_cmd_rsp._entry, ptr @srpt_build_cmd_rsp._entry_ptr, ptr @srpt_cleanup_module, ptr @srpt_close_ch._entry, ptr @srpt_close_ch._entry.209, ptr @srpt_close_ch._entry_ptr, ptr @srpt_close_ch._entry_ptr.211, ptr @srpt_cm_handler._entry, ptr @srpt_cm_handler._entry.87, ptr @srpt_cm_handler._entry.90, ptr @srpt_cm_handler._entry.93, ptr @srpt_cm_handler._entry.96, ptr @srpt_cm_handler._entry.99, ptr @srpt_cm_handler._entry_ptr, ptr @srpt_cm_handler._entry_ptr.101, ptr @srpt_cm_handler._entry_ptr.89, ptr @srpt_cm_handler._entry_ptr.92, ptr @srpt_cm_handler._entry_ptr.95, ptr @srpt_cm_handler._entry_ptr.98, ptr @srpt_cm_rej_recv._entry, ptr @srpt_cm_rej_recv._entry_ptr, ptr @srpt_cm_req_recv._entry, ptr @srpt_cm_req_recv._entry.105, ptr @srpt_cm_req_recv._entry.108, ptr @srpt_cm_req_recv._entry.111, ptr @srpt_cm_req_recv._entry.114, ptr @srpt_cm_req_recv._entry.121, ptr @srpt_cm_req_recv._entry.127, ptr @srpt_cm_req_recv._entry.130, ptr @srpt_cm_req_recv._entry.137, ptr @srpt_cm_req_recv._entry.140, ptr @srpt_cm_req_recv._entry.143, ptr @srpt_cm_req_recv._entry.146, ptr @srpt_cm_req_recv._entry.151, ptr @srpt_cm_req_recv._entry.155, ptr @srpt_cm_req_recv._entry_ptr, ptr @srpt_cm_req_recv._entry_ptr.107, ptr @srpt_cm_req_recv._entry_ptr.110, ptr @srpt_cm_req_recv._entry_ptr.113, ptr @srpt_cm_req_recv._entry_ptr.116, ptr @srpt_cm_req_recv._entry_ptr.123, ptr @srpt_cm_req_recv._entry_ptr.129, ptr @srpt_cm_req_recv._entry_ptr.132, ptr @srpt_cm_req_recv._entry_ptr.139, ptr @srpt_cm_req_recv._entry_ptr.142, ptr @srpt_cm_req_recv._entry_ptr.145, ptr @srpt_cm_req_recv._entry_ptr.148, ptr @srpt_cm_req_recv._entry_ptr.153, ptr @srpt_cm_req_recv._entry_ptr.157, ptr @srpt_cm_rtu_recv._entry, ptr @srpt_cm_rtu_recv._entry.198, ptr @srpt_cm_rtu_recv._entry_ptr, ptr @srpt_cm_rtu_recv._entry_ptr.200, ptr @srpt_create_ch_ib._entry, ptr @srpt_create_ch_ib._entry.171, ptr @srpt_create_ch_ib._entry_ptr, ptr @srpt_create_ch_ib._entry_ptr.173, ptr @srpt_create_rdma_id._entry, ptr @srpt_create_rdma_id._entry.281, ptr @srpt_create_rdma_id._entry.284, ptr @srpt_create_rdma_id._entry_ptr, ptr @srpt_create_rdma_id._entry_ptr.283, ptr @srpt_create_rdma_id._entry_ptr.286, ptr @srpt_disconnect_ch_sync._entry, ptr @srpt_disconnect_ch_sync._entry_ptr, ptr @srpt_event_handler._entry, ptr @srpt_event_handler._entry_ptr, ptr @srpt_get_desc_tbl._entry, ptr @srpt_get_desc_tbl._entry.68, ptr @srpt_get_desc_tbl._entry.71, ptr @srpt_get_desc_tbl._entry.74, ptr @srpt_get_desc_tbl._entry.77, ptr @srpt_get_desc_tbl._entry_ptr, ptr @srpt_get_desc_tbl._entry_ptr.70, ptr @srpt_get_desc_tbl._entry_ptr.73, ptr @srpt_get_desc_tbl._entry_ptr.76, ptr @srpt_get_desc_tbl._entry_ptr.79, ptr @srpt_handle_cmd._entry, ptr @srpt_handle_cmd._entry_ptr, ptr @srpt_handle_new_iu._entry, ptr @srpt_handle_new_iu._entry.55, ptr @srpt_handle_new_iu._entry.58, ptr @srpt_handle_new_iu._entry_ptr, ptr @srpt_handle_new_iu._entry_ptr.57, ptr @srpt_handle_new_iu._entry_ptr.60, ptr @srpt_init_ch_qp._entry, ptr @srpt_init_ch_qp._entry_ptr, ptr @srpt_init_module._entry, ptr @srpt_init_module._entry.325, ptr @srpt_init_module._entry.328, ptr @srpt_init_module._entry_ptr, ptr @srpt_init_module._entry_ptr.327, ptr @srpt_init_module._entry_ptr.330, ptr @srpt_init_nodeacl._entry, ptr @srpt_init_nodeacl._entry_ptr, ptr @srpt_qp_event._entry, ptr @srpt_qp_event._entry_ptr, ptr @srpt_queue_response._entry, ptr @srpt_queue_response._entry.263, ptr @srpt_queue_response._entry_ptr, ptr @srpt_queue_response._entry_ptr.265, ptr @srpt_rdma_cm_handler._entry, ptr @srpt_rdma_cm_handler._entry.288, ptr @srpt_rdma_cm_handler._entry_ptr, ptr @srpt_rdma_cm_handler._entry_ptr.290, ptr @srpt_rdma_read_done._entry, ptr @srpt_rdma_read_done._entry.252, ptr @srpt_rdma_read_done._entry_ptr, ptr @srpt_rdma_read_done._entry_ptr.254, ptr @srpt_recv_done._entry, ptr @srpt_recv_done._entry.46, ptr @srpt_recv_done._entry_ptr, ptr @srpt_recv_done._entry_ptr.48, ptr @srpt_refresh_port._entry, ptr @srpt_refresh_port._entry.219, ptr @srpt_refresh_port._entry_ptr, ptr @srpt_refresh_port._entry_ptr.221, ptr @srpt_release_sport._entry, ptr @srpt_release_sport._entry.230, ptr @srpt_release_sport._entry_ptr, ptr @srpt_release_sport._entry_ptr.232, ptr @srpt_send_done._entry, ptr @srpt_send_done._entry.270, ptr @srpt_send_done._entry_ptr, ptr @srpt_send_done._entry_ptr.272, ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry, ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry.300, ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry.303, ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr, ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr.302, ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr.305, ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry, ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry.308, ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry.311, ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr, ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr.310, ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr.313, ptr @srpt_tpg_attrib_srp_sq_size_store._entry, ptr @srpt_tpg_attrib_srp_sq_size_store._entry.316, ptr @srpt_tpg_attrib_srp_sq_size_store._entry.319, ptr @srpt_tpg_attrib_srp_sq_size_store._entry_ptr, ptr @srpt_tpg_attrib_srp_sq_size_store._entry_ptr.318, ptr @srpt_tpg_attrib_srp_sq_size_store._entry_ptr.321, ptr @srpt_write_pending._entry, ptr @srpt_write_pending._entry.247, ptr @srpt_write_pending._entry_ptr, ptr @srpt_write_pending._entry_ptr.249, ptr @srp_max_req_size, ptr @srpt_srq_size, ptr @srpt_service_guid, ptr @rdma_cm_id, ptr @srpt_client, ptr @srpt_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @srpt_add_one.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @srpt_add_one.__key.13, ptr @.str.14, ptr @srpt_add_one.__key.15, ptr @.str.16, ptr @srpt_add_one.__key.17, ptr @.str.18, ptr @srpt_add_one.__key.19, ptr @.str.20, ptr @.str.22, ptr @srpt_dev_lock, ptr @srpt_dev_list, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @srpt_recv_done._rs, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @srpt_cm_req_recv.__key, ptr @.str.117, ptr @srpt_cm_req_recv.__key.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.210, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @init_completion.__key, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @srpt_da_attrs, ptr @srpt_wwn_attrs, ptr @srpt_tpg_attrib_attrs, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.248, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.264, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.271, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @srpt_attr_rdma_cm_port, ptr @.str.277, ptr @rdma_cm_port, ptr @rdma_cm_mutex, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.282, ptr @.str.285, ptr @.str.287, ptr @.str.289, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @srpt_wwn_attr_version, ptr @.str.294, ptr @.str.295, ptr @srpt_tpg_attrib_attr_srp_max_rdma_size, ptr @srpt_tpg_attrib_attr_srp_max_rsp_size, ptr @srpt_tpg_attrib_attr_srp_sq_size, ptr @srpt_tpg_attrib_attr_use_srq, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.301, ptr @.str.304, ptr @.str.306, ptr @.str.307, ptr @.str.309, ptr @.str.312, ptr @.str.314, ptr @.str.315, ptr @.str.317, ptr @.str.320, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.326, ptr @.str.329, ptr @switch.table.srpt_remove_one, ptr @switch.table.srpt_handle_cmd, ptr @switch.table.srpt_qp_event, ptr @switch.table.srpt_qp_event.331], section "llvm.metadata"
@0 = internal global [334 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srp_max_req_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_srq_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_service_guid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_cm_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_template to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_dev_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_add_one._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_recv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_recv_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_recv_done._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_handle_new_iu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_handle_new_iu._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_handle_new_iu._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_handle_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_get_desc_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_get_desc_tbl._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_get_desc_tbl._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_get_desc_tbl._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_get_desc_tbl._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_handler._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_handler._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_handler._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_handler._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_handler._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv.__key.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_req_recv._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_create_ch_ib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_create_ch_ib._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_qp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_init_ch_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_rej_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_rtu_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_cm_rtu_recv._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_close_ch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_close_ch._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_refresh_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_refresh_port._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_release_sport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_release_sport._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_da_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_wwn_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_disconnect_ch_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_write_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_write_pending._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_rdma_read_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_rdma_read_done._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_queue_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_queue_response._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_build_cmd_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_send_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_send_done._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_init_nodeacl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_attr_rdma_cm_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_cm_port to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_cm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_create_rdma_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_create_rdma_id._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_create_rdma_id._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_rdma_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_rdma_cm_handler._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_wwn_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_attr_srp_max_rdma_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_attr_srp_max_rsp_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_attr_srp_sq_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_attr_use_srq to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_sq_size_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_sq_size_store._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_tpg_attrib_srp_sq_size_store._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_init_module._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srpt_init_module._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.srpt_remove_one to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.srpt_handle_cmd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.srpt_qp_event to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.srpt_qp_event.331 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @srpt_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %0 = load ptr, ptr @rdma_cm_id, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @rdma_destroy_id(ptr noundef nonnull %0) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ib_unregister_client(ptr noundef nonnull @srpt_client) #19
  tail call void @target_unregister_template(ptr noundef nonnull @srpt_template) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @srp_max_req_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 996, i32 %0)
  %cmp = icmp ult i32 %0, 996
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.323, i32 noundef %0, i32 noundef 996) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @srpt_srq_size, align 4
  %2 = add i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65532, i32 %2)
  %3 = icmp ult i32 %2, -65532
  br i1 %3, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, i32 noundef %1, i32 noundef 4, i32 noundef 65535) #22
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @target_register_template(ptr noundef nonnull @srpt_template) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call13 = tail call i32 @ib_register_client(ptr noundef nonnull @srpt_client) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %do.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329) #22
  tail call void @target_unregister_template(ptr noundef nonnull @srpt_template) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.end6 ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call13, %do.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_get_u64_x(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readonly %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str, i64 noundef %4)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_add_one(ptr noundef %device) #4 align 64 {
entry:
  %port_modify.i = alloca %struct.ib_port_modify, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_add_one.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_add_one, %if.then)) #19
          to label %if.end8.i.i [label %if.then], !srcloc !686

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_add_one.__UNIQUE_ID_ddebug573, ptr noundef nonnull @.str.5, ptr noundef %device) #19
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then, %entry
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 21
  %0 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phys_port_cnt, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 1040) #19
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = add nuw i32 %4, 152
  %retval.0.i253 = select i1 %3, i32 -1, i32 %5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i253, i32 noundef 3520) #23
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end7

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %device, ptr %call9.i.i, align 128
  %sdev_mutex = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %sdev_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @srpt_add_one.__key) #19
  %call12 = tail call ptr @__ib_alloc_pd(ptr noundef %device, i32 noundef 0, ptr noundef nonnull @.str.1) #19
  %pd = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %pd, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %call12 to i32
  br label %free_dev

if.end18:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call12, align 4
  %lkey = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %lkey, align 8
  %12 = load i32, ptr @srpt_srq_size, align 4
  %13 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call9.i.i, align 128
  %max_srq_wr = getelementptr inbounds %struct.ib_device, ptr %14, i32 0, i32 22, i32 34
  %15 = ptrtoint ptr %max_srq_wr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_srq_wr, align 8
  %17 = tail call i32 @llvm.smin.i32(i32 %12, i32 %16)
  %srq_size = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %srq_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %srq_size, align 4
  %use_srq = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 7, i32 4
  %19 = ptrtoint ptr %use_srq to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_srq, align 8, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  br i1 %tobool22.not, label %if.then.i, label %land.lhs.true.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @srpt_free_srq(ptr noundef nonnull %call9.i.i) #19
  %use_srq2.i = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %use_srq2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %use_srq2.i, align 4
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.end18
  %srq.i = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %srq.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call fastcc i32 @srpt_alloc_srq(ptr noundef nonnull %call9.i.i) #19
  br label %do.body.i

do.body.i:                                        ; preds = %if.then5.i, %land.lhs.true.i.do.body.i_crit_edge, %if.then.i
  %ret.0.i = phi i32 [ 0, %land.lhs.true.i.do.body.i_crit_edge ], [ %call.i, %if.then5.i ], [ 0, %if.then.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_use_srq.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_add_one, %if.then12.i)) #19
          to label %srpt_use_srq.exit [label %if.then12.i], !srcloc !686

if.then12.i:                                      ; preds = %do.body.i
  %init_name.i.i = getelementptr inbounds %struct.ib_device, ptr %14, i32 0, i32 13, i32 0, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i254, label %if.then12.i.dev_name.exit.i_crit_edge

if.then12.i.dev_name.exit.i_crit_edge:            ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i254:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #21
  %26 = getelementptr inbounds %struct.ib_device, ptr %14, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i254, %if.then12.i.dev_name.exit.i_crit_edge
  %retval.0.i1.i = phi ptr [ %28, %if.end.i.i254 ], [ %25, %if.then12.i.dev_name.exit.i_crit_edge ]
  %use_srq14.i = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %use_srq14.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %use_srq14.i, align 4, !range !687
  %31 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_use_srq.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i1.i, i32 noundef %31, i32 noundef %ret.0.i) #19
  br label %srpt_use_srq.exit

srpt_use_srq.exit:                                ; preds = %dev_name.exit.i, %do.body.i
  %32 = load i64, ptr @srpt_service_guid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool24.not = icmp eq i64 %32, 0
  br i1 %tobool24.not, label %if.then25, label %srpt_use_srq.exit.if.end26_crit_edge

srpt_use_srq.exit.if.end26_crit_edge:             ; preds = %srpt_use_srq.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.then25:                                        ; preds = %srpt_use_srq.exit
  call void @__sanitizer_cov_trace_pc() #21
  %node_guid = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 17
  %33 = ptrtoint ptr %node_guid to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %node_guid, align 8
  store i64 %34, ptr @srpt_service_guid, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %srpt_use_srq.exit.if.end26_crit_edge
  %call27 = tail call i32 @rdma_port_get_link_layer(ptr noundef %device, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 1
  br i1 %cmp28, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  %call30 = tail call ptr @ib_create_cm_id(ptr noundef %device, ptr noundef nonnull @srpt_cm_handler, ptr noundef nonnull %call9.i.i) #19
  %cm_id = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call30, ptr %cm_id, align 16
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %cm_id32 = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %cm_id32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cm_id32, align 16
  %cmp.i255 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %do.end37, label %if.end31.do.body49_crit_edge

if.end31.do.body49_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body49

do.end37:                                         ; preds = %if.end31
  %38 = ptrtoint ptr %37 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %38) #22
  %39 = ptrtoint ptr %cm_id32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cm_id32, align 16
  %41 = ptrtoint ptr %40 to i32
  store ptr null, ptr %cm_id32, align 16
  %42 = load ptr, ptr @rdma_cm_id, align 4
  %tobool45.not = icmp eq ptr %42, null
  br i1 %tobool45.not, label %do.end37.err_ring_crit_edge, label %do.end37.do.body49_crit_edge

do.end37.do.body49_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body49

do.end37.err_ring_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_ring

do.body49:                                        ; preds = %do.end37.do.body49_crit_edge, %if.end31.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_add_one.__UNIQUE_ID_ddebug576, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_add_one, %if.then61)) #19
          to label %do.end64 [label %if.then61], !srcloc !686

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #21
  %43 = load i64, ptr @srpt_service_guid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_add_one.__UNIQUE_ID_ddebug576, ptr noundef nonnull @.str.9, i64 noundef %43, i64 noundef %43, i64 noundef %43) #19
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %do.body49
  %44 = ptrtoint ptr %cm_id32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cm_id32, align 16
  %tobool66.not = icmp eq ptr %45, null
  br i1 %tobool66.not, label %do.end64.do.body82_crit_edge, label %cond.end71

do.end64.do.body82_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body82

cond.end71:                                       ; preds = %do.end64
  %46 = load i64, ptr @srpt_service_guid, align 8
  %call69 = tail call i32 @ib_cm_listen(ptr noundef nonnull %45, i64 noundef %46, i64 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp73 = icmp slt i32 %call69, 0
  br i1 %cmp73, label %do.end77, label %cond.end71.do.body82_crit_edge

cond.end71.do.body82_crit_edge:                   ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body82

do.end77:                                         ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #21
  %47 = ptrtoint ptr %cm_id32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cm_id32, align 16
  %state = getelementptr inbounds %struct.ib_cm_id, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state, align 8
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call69, i32 noundef %50) #22
  br label %err_cm

do.body82:                                        ; preds = %cond.end71.do.body82_crit_edge, %do.end64.do.body82_crit_edge
  %51 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call9.i.i, align 128
  %event_handler = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 10
  %53 = ptrtoint ptr %event_handler to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %event_handler, align 128
  %handler = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @srpt_event_handler, ptr %handler, align 4
  %list = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 10, i32 2
  %55 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 10, i32 2, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list, ptr %prev.i, align 4
  tail call void @ib_register_event_handler(ptr noundef %event_handler) #19
  %57 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call9.i.i, align 128
  %phys_port_cnt91283 = getelementptr inbounds %struct.ib_device, ptr %58, i32 0, i32 21
  %59 = ptrtoint ptr %phys_port_cnt91283 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %phys_port_cnt91283, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp92.not284 = icmp eq i32 %60, 0
  br i1 %cmp92.not284, label %do.body82.for.end_crit_edge, label %do.body82.for.body_crit_edge

do.body82.for.body_crit_edge:                     ; preds = %do.body82
  br label %for.body

do.body82.for.end_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body82.for.body_crit_edge
  %i.0285 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %do.body82.for.body_crit_edge ]
  %sub = add i32 %i.0285, -1
  %arrayidx94 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub
  %nexus_list = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 14
  %61 = ptrtoint ptr %nexus_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %nexus_list, ptr %nexus_list, align 16
  %prev.i256 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 14, i32 1
  %62 = ptrtoint ptr %prev.i256 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %nexus_list, ptr %prev.i256, align 4
  %mutex = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 13
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @srpt_add_one.__key.13) #19
  %63 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call9.i.i, ptr %arrayidx94, align 8
  %conv = trunc i32 %i.0285 to i8
  %port99 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 3
  %64 = ptrtoint ptr %port99 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv, ptr %port99, align 1
  %port_attrib100 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 10
  %65 = ptrtoint ptr %port_attrib100 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 65536, ptr %port_attrib100, align 4
  %srp_max_rsp_size = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 10, i32 1
  %66 = ptrtoint ptr %srp_max_rsp_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 256, ptr %srp_max_rsp_size, align 16
  %srp_sq_size = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 10, i32 2
  %67 = ptrtoint ptr %srp_sq_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4096, ptr %srp_sq_size, align 4
  %use_srq104 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 10, i32 3
  %68 = ptrtoint ptr %use_srq104 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %use_srq104, align 8
  %work = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 7
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #19
  %69 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -64, ptr %work, align 16
  %lockdep_map = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @srpt_add_one.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %entry109 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 7, i32 1
  %70 = ptrtoint ptr %entry109 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %entry109, ptr %entry109, align 4
  %prev.i257 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 7, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %entry109, ptr %prev.i257, align 8
  %func = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 7, i32 2
  %72 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @srpt_refresh_port_work, ptr %func, align 4
  %port_guid_id = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 8
  tail call void @__mutex_init(ptr noundef %port_guid_id, ptr noundef nonnull @.str.18, ptr noundef nonnull @srpt_add_one.__key.17) #19
  %tpg_list = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 8, i32 1
  %73 = ptrtoint ptr %tpg_list to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %tpg_list, ptr %tpg_list, align 8
  %prev.i258 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 8, i32 1, i32 1
  %74 = ptrtoint ptr %prev.i258 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %tpg_list, ptr %prev.i258, align 4
  %port_gid_id = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 9
  tail call void @__mutex_init(ptr noundef %port_gid_id, ptr noundef nonnull @.str.20, ptr noundef nonnull @srpt_add_one.__key.19) #19
  %tpg_list123 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 9, i32 1
  %75 = ptrtoint ptr %tpg_list123 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %tpg_list123, ptr %tpg_list123, align 8
  %prev.i259 = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub, i32 9, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %tpg_list123, ptr %prev.i259, align 4
  %call124 = tail call fastcc i32 @srpt_refresh_port(ptr noundef %arrayidx94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %for.inc, label %do.end129

do.end129:                                        ; preds = %for.body
  %77 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call9.i.i, align 128
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %78, i32 0, i32 13, i32 0, i32 0, i32 3
  %79 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end129.dev_name.exit_crit_edge

do.end129.dev_name.exit_crit_edge:                ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #21
  %81 = getelementptr inbounds %struct.ib_device, ptr %78, i32 0, i32 13
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end129.dev_name.exit_crit_edge
  %retval.0.i260 = phi ptr [ %83, %if.end.i ], [ %80, %do.end129.dev_name.exit_crit_edge ]
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i260, i32 noundef %i.0285) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %port_modify.i) #19
  %84 = call ptr @memcpy(ptr %port_modify.i, ptr @__const.srpt_unregister_mad_agent.port_modify, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp.not36.i = icmp slt i32 %sub, 1
  br i1 %cmp.not36.i, label %dev_name.exit.srpt_unregister_mad_agent.exit_crit_edge, label %dev_name.exit.for.body.i_crit_edge

dev_name.exit.for.body.i_crit_edge:               ; preds = %dev_name.exit
  br label %for.body.i

dev_name.exit.srpt_unregister_mad_agent.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_unregister_mad_agent.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dev_name.exit.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %dev_name.exit.for.body.i_crit_edge ]
  %sub.i = add i32 %i.037.i, -1
  %port1.i = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub.i, i32 3
  %85 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %port1.i, align 1
  %conv.i = zext i8 %86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i, i32 %conv.i)
  %cmp2.not.i = icmp eq i32 %i.037.i, %conv.i
  br i1 %cmp2.not.i, label %for.body.i.if.end.i261_crit_edge, label %do.end.i, !prof !688

for.body.i.if.end.i261_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i261

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 639, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i261

if.end.i261:                                      ; preds = %do.end.i, %for.body.i.if.end.i261_crit_edge
  %mad_agent.i = getelementptr %struct.srpt_device, ptr %call9.i.i, i32 0, i32 12, i32 %sub.i, i32 1
  %87 = ptrtoint ptr %mad_agent.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mad_agent.i, align 4
  %tobool22.not.i = icmp eq ptr %88, null
  br i1 %tobool22.not.i, label %if.end.i261.for.inc.i_crit_edge, label %if.then23.i

if.end.i261.for.inc.i_crit_edge:                  ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #21
  %89 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call9.i.i, align 128
  %call.i262 = call i32 @ib_modify_port(ptr noundef %90, i32 noundef %i.037.i, i32 noundef 0, ptr noundef nonnull %port_modify.i) #19
  %91 = ptrtoint ptr %mad_agent.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mad_agent.i, align 4
  call void @ib_unregister_mad_agent(ptr noundef %92) #19
  %93 = ptrtoint ptr %mad_agent.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %mad_agent.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.end.i261.for.inc.i_crit_edge
  %inc.i = add i32 %i.037.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %sub
  br i1 %cmp.not.i, label %for.inc.i.srpt_unregister_mad_agent.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.srpt_unregister_mad_agent.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_unregister_mad_agent.exit

srpt_unregister_mad_agent.exit:                   ; preds = %for.inc.i.srpt_unregister_mad_agent.exit_crit_edge, %dev_name.exit.srpt_unregister_mad_agent.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %port_modify.i) #19
  call void @ib_unregister_event_handler(ptr noundef %event_handler) #19
  br label %err_cm

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0285, 1
  %94 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call9.i.i, align 128
  %phys_port_cnt91 = getelementptr inbounds %struct.ib_device, ptr %95, i32 0, i32 21
  %96 = ptrtoint ptr %phys_port_cnt91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %phys_port_cnt91, align 8
  %cmp92.not = icmp ugt i32 %inc, %97
  br i1 %cmp92.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body82.for.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @srpt_dev_lock) #19
  %list135 = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 11
  %98 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @srpt_dev_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list135, ptr noundef %98, ptr noundef nonnull @srpt_dev_list) #19
  br i1 %call.i.i, label %if.end.i.i263, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail.exit

if.end.i.i263:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  store ptr %list135, ptr getelementptr inbounds (%struct.list_head, ptr @srpt_dev_list, i32 0, i32 1), align 4
  %99 = ptrtoint ptr %list135 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @srpt_dev_list, ptr %list135, align 16
  %prev3.i.i = getelementptr inbounds %struct.srpt_device, ptr %call9.i.i, i32 0, i32 11, i32 1
  %100 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %98, ptr %prev3.i.i, align 4
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %list135, ptr %98, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i263, %for.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @srpt_dev_lock) #19
  tail call void @ib_set_client_data(ptr noundef %device, ptr noundef nonnull @srpt_client, ptr noundef nonnull %call9.i.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_add_one.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_add_one, %if.then148)) #19
          to label %cleanup [label %if.then148], !srcloc !686

if.then148:                                       ; preds = %list_add_tail.exit
  %init_name.i264 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13, i32 0, i32 0, i32 3
  %102 = ptrtoint ptr %init_name.i264 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %init_name.i264, align 8
  %tobool.not.i265 = icmp eq ptr %103, null
  br i1 %tobool.not.i265, label %if.end.i266, label %if.then148.dev_name.exit268_crit_edge

if.then148.dev_name.exit268_crit_edge:            ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit268

if.end.i266:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #21
  %104 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  br label %dev_name.exit268

dev_name.exit268:                                 ; preds = %if.end.i266, %if.then148.dev_name.exit268_crit_edge
  %retval.0.i267 = phi ptr [ %106, %if.end.i266 ], [ %103, %if.then148.dev_name.exit268_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_add_one.__UNIQUE_ID_ddebug577, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i267) #19
  br label %cleanup

err_cm:                                           ; preds = %srpt_unregister_mad_agent.exit, %do.end77
  %ret.0 = phi i32 [ %call69, %do.end77 ], [ %call124, %srpt_unregister_mad_agent.exit ]
  %107 = ptrtoint ptr %cm_id32 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cm_id32, align 16
  %tobool155.not = icmp eq ptr %108, null
  br i1 %tobool155.not, label %err_cm.err_ring_crit_edge, label %if.then156

err_cm.err_ring_crit_edge:                        ; preds = %err_cm
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_ring

if.then156:                                       ; preds = %err_cm
  call void @__sanitizer_cov_trace_pc() #21
  call void @ib_destroy_cm_id(ptr noundef nonnull %108) #19
  br label %err_ring

err_ring:                                         ; preds = %if.then156, %err_cm.err_ring_crit_edge, %do.end37.err_ring_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then156 ], [ %ret.0, %err_cm.err_ring_crit_edge ], [ %41, %do.end37.err_ring_crit_edge ]
  call fastcc void @srpt_free_srq(ptr noundef nonnull %call9.i.i)
  %109 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pd, align 4
  %call.i269 = call i32 @ib_dealloc_pd_user(ptr noundef %110, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool.not.i270 = icmp eq i32 %call.i269, 0
  br i1 %tobool.not.i270, label %err_ring.free_dev_crit_edge, label %land.rhs.i

err_ring.free_dev_crit_edge:                      ; preds = %err_ring
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_dev

land.rhs.i:                                       ; preds = %err_ring
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.free_dev_crit_edge, label %if.then.i271, !prof !688

land.rhs.i.free_dev_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_dev

if.then.i271:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.227) #19
  br label %free_dev

free_dev:                                         ; preds = %if.then.i271, %land.rhs.i.free_dev_crit_edge, %err_ring.free_dev_crit_edge, %if.then15
  %ret.2 = phi i32 [ %8, %if.then15 ], [ %ret.1, %err_ring.free_dev_crit_edge ], [ %ret.1, %land.rhs.i.free_dev_crit_edge ], [ %ret.1, %if.then.i271 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #19
  %init_name.i272 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13, i32 0, i32 0, i32 3
  %111 = ptrtoint ptr %init_name.i272 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init_name.i272, align 8
  %tobool.not.i273 = icmp eq ptr %112, null
  br i1 %tobool.not.i273, label %if.end.i274, label %free_dev.dev_name.exit276_crit_edge

free_dev.dev_name.exit276_crit_edge:              ; preds = %free_dev
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit276

if.end.i274:                                      ; preds = %free_dev
  call void @__sanitizer_cov_trace_pc() #21
  %113 = getelementptr inbounds %struct.ib_device, ptr %device, i32 0, i32 13
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  br label %dev_name.exit276

dev_name.exit276:                                 ; preds = %if.end.i274, %free_dev.dev_name.exit276_crit_edge
  %retval.0.i275 = phi ptr [ %115, %if.end.i274 ], [ %112, %free_dev.dev_name.exit276_crit_edge ]
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i275) #22
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit276, %dev_name.exit268, %list_add_tail.exit, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %dev_name.exit276 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %dev_name.exit268 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_remove_one(ptr noundef %device, ptr noundef %client_data) #4 align 64 {
entry:
  %c.i = alloca %struct.completion, align 4
  %port_modify.i = alloca %struct.ib_port_modify, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_data, align 8
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_port_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %port_modify.i) #19
  %4 = call ptr @memcpy(ptr %port_modify.i, ptr @__const.srpt_unregister_mad_agent.port_modify, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not36.i = icmp slt i32 %3, 1
  br i1 %cmp.not36.i, label %entry.srpt_unregister_mad_agent.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.srpt_unregister_mad_agent.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_unregister_mad_agent.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %entry.for.body.i_crit_edge ]
  %sub.i = add i32 %i.037.i, -1
  %port1.i = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %sub.i, i32 3
  %5 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port1.i, align 1
  %conv.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.037.i, i32 %conv.i)
  %cmp2.not.i = icmp eq i32 %i.037.i, %conv.i
  br i1 %cmp2.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !688

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 639, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  %mad_agent.i = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %sub.i, i32 1
  %7 = ptrtoint ptr %mad_agent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mad_agent.i, align 4
  %tobool22.not.i = icmp eq ptr %8, null
  br i1 %tobool22.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then23.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %9 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client_data, align 8
  %call.i = call i32 @ib_modify_port(ptr noundef %10, i32 noundef %i.037.i, i32 noundef 0, ptr noundef nonnull %port_modify.i) #19
  %11 = ptrtoint ptr %mad_agent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mad_agent.i, align 4
  call void @ib_unregister_mad_agent(ptr noundef %12) #19
  %13 = ptrtoint ptr %mad_agent.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mad_agent.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.037.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %3
  br i1 %cmp.not.i, label %for.inc.i.srpt_unregister_mad_agent.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.srpt_unregister_mad_agent.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_unregister_mad_agent.exit

srpt_unregister_mad_agent.exit:                   ; preds = %for.inc.i.srpt_unregister_mad_agent.exit_crit_edge, %entry.srpt_unregister_mad_agent.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %port_modify.i) #19
  %event_handler = getelementptr inbounds %struct.srpt_device, ptr %client_data, i32 0, i32 10
  call void @ib_unregister_event_handler(ptr noundef %event_handler) #19
  %14 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client_data, align 8
  %phys_port_cnt341 = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %phys_port_cnt341 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_port_cnt341, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp42.not = icmp eq i32 %17, 0
  br i1 %cmp42.not, label %srpt_unregister_mad_agent.exit.for.end_crit_edge, label %srpt_unregister_mad_agent.exit.for.body_crit_edge

srpt_unregister_mad_agent.exit.for.body_crit_edge: ; preds = %srpt_unregister_mad_agent.exit
  br label %for.body

srpt_unregister_mad_agent.exit.for.end_crit_edge: ; preds = %srpt_unregister_mad_agent.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %srpt_unregister_mad_agent.exit.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %srpt_unregister_mad_agent.exit.for.body_crit_edge ]
  %work = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %i.043, i32 7
  %call = call zeroext i1 @cancel_work_sync(ptr noundef %work) #19
  %inc = add nuw i32 %i.043, 1
  %18 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client_data, align 8
  %phys_port_cnt3 = getelementptr inbounds %struct.ib_device, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %phys_port_cnt3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys_port_cnt3, align 8
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %srpt_unregister_mad_agent.exit.for.end_crit_edge
  %cm_id = getelementptr inbounds %struct.srpt_device, ptr %client_data, i32 0, i32 4
  %22 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cm_id, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @ib_destroy_cm_id(ptr noundef nonnull %23) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  call void @ib_set_client_data(ptr noundef %device, ptr noundef nonnull @srpt_client, ptr noundef null) #19
  call void @_raw_spin_lock(ptr noundef nonnull @srpt_dev_lock) #19
  %list = getelementptr inbounds %struct.srpt_device, ptr %client_data, i32 0, i32 11
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.srpt_device, ptr %client_data, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.srpt_device, ptr %client_data, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @srpt_dev_lock) #19
  %32 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client_data, align 8
  %phys_port_cnt744 = getelementptr inbounds %struct.ib_device, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %phys_port_cnt744 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phys_port_cnt744, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp845.not = icmp eq i32 %35, 0
  br i1 %cmp845.not, label %list_del.exit.for.end15_crit_edge, label %for.body9.lr.ph

list_del.exit.for.end15_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end15

for.body9.lr.ph:                                  ; preds = %list_del.exit
  %36 = getelementptr inbounds i8, ptr %c.i, i32 4
  br label %for.body9

for.body9:                                        ; preds = %srpt_release_sport.exit.for.body9_crit_edge, %for.body9.lr.ph
  %i.146 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc14, %srpt_release_sport.exit.for.body9_crit_edge ]
  %arrayidx11 = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %i.146
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %c.i) #19
  %37 = call ptr @memset(ptr %36, i32 255, i32 52)
  %38 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %c.i, align 4
  call void @__init_swait_queue_head(ptr noundef %36, ptr noundef nonnull @.str.233, ptr noundef nonnull @init_completion.__key) #19
  %39 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !689
  %and.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %for.body9.if.end42.i_crit_edge, label %land.rhs.i

for.body9.if.end42.i_crit_edge:                   ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i

land.rhs.i:                                       ; preds = %for.body9
  %.b3.i = load i1, ptr @srpt_release_sport.__already_done, align 1
  br i1 %.b3.i, label %land.rhs.i.if.end42.i_crit_edge, label %if.then.i, !prof !688

land.rhs.i.if.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_release_sport.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2952, i32 noundef 9, ptr noundef null) #19
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end42.i_crit_edge, %for.body9.if.end42.i_crit_edge
  %freed_channels.i = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %i.146, i32 12
  %40 = ptrtoint ptr %freed_channels.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %c.i, ptr %freed_channels.i, align 8
  %mutex.i = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %i.146, i32 13
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #19
  call fastcc void @srpt_set_enabled(ptr noundef %arrayidx11, i1 noundef zeroext false) #19
  call void @mutex_unlock(ptr noundef %mutex.i) #19
  %refcount.i = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %i.146, i32 11
  %call.i.i24.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #19
  %41 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp5225.i = icmp sgt i32 %42, 0
  br i1 %cmp5225.i, label %land.rhs54.lr.ph.i, label %if.end42.i.while.end.i_crit_edge

if.end42.i.while.end.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.i

land.rhs54.lr.ph.i:                               ; preds = %if.end42.i
  %port.i = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %i.146, i32 3
  %nexus_list.i = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %i.146, i32 14
  br label %land.rhs54.i

land.rhs54.i:                                     ; preds = %rcu_read_unlock.exit.i.land.rhs54.i_crit_edge, %land.rhs54.lr.ph.i
  %call55.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %c.i, i32 noundef 500) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp eq i32 %call55.i, 0
  br i1 %cmp56.i, label %do.end61.i, label %land.rhs54.i.while.end.i_crit_edge

land.rhs54.i.while.end.i_crit_edge:               ; preds = %land.rhs54.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.i

do.end61.i:                                       ; preds = %land.rhs54.i
  %43 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx11, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %init_name.i.i = getelementptr inbounds %struct.ib_device, ptr %46, i32 0, i32 13, i32 0, i32 0, i32 3
  %47 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i6.i = icmp eq ptr %48, null
  br i1 %tobool.not.i6.i, label %if.end.i.i33, label %do.end61.i.dev_name.exit.i_crit_edge

do.end61.i.dev_name.exit.i_crit_edge:             ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i33:                                     ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #21
  %49 = getelementptr inbounds %struct.ib_device, ptr %46, i32 0, i32 13
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i33, %do.end61.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %51, %if.end.i.i33 ], [ %48, %do.end61.i.dev_name.exit.i_crit_edge ]
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %port.i, align 1
  %conv64.i = zext i8 %53 to i32
  %call.i.i5.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #19
  %54 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %refcount.i, align 4
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %retval.0.i.i, i32 noundef %conv64.i, i32 noundef %55) #22
  %56 = call i32 @llvm.read_register.i32(metadata !676) #19
  %and.i.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !690
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i.i34 = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i.i34, label %dev_name.exit.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

dev_name.exit.i.rcu_read_lock.exit.i_crit_edge:   ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %dev_name.exit.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.236, i32 noundef 696, ptr noundef nonnull @.str.237) #19
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %dev_name.exit.i.rcu_read_lock.exit.i_crit_edge
  %60 = ptrtoint ptr %nexus_list.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn121.i = load ptr, ptr %nexus_list.i, align 4
  %cmp71.not22.i = icmp eq ptr %.pn121.i, %nexus_list.i
  br i1 %cmp71.not22.i, label %rcu_read_lock.exit.i.for.end103.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i35_crit_edge

rcu_read_lock.exit.i.for.body.i35_crit_edge:      ; preds = %rcu_read_lock.exit.i
  br label %for.body.i35

rcu_read_lock.exit.i.for.end103.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end103.i

for.cond.loopexit.i:                              ; preds = %get_ch_state_name.exit.i.for.cond.loopexit.i_crit_edge, %for.body.i35.for.cond.loopexit.i_crit_edge
  %61 = ptrtoint ptr %.pn123.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn1.i = load ptr, ptr %.pn123.i, align 4
  %cmp71.not.i = icmp eq ptr %.pn1.i, %nexus_list.i
  br i1 %cmp71.not.i, label %for.cond.loopexit.i.for.end103.i_crit_edge, label %for.cond.loopexit.i.for.body.i35_crit_edge

for.cond.loopexit.i.for.body.i35_crit_edge:       ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i35

for.cond.loopexit.i.for.end103.i_crit_edge:       ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end103.i

for.body.i35:                                     ; preds = %for.cond.loopexit.i.for.body.i35_crit_edge, %rcu_read_lock.exit.i.for.body.i35_crit_edge
  %.pn123.i = phi ptr [ %.pn1.i, %for.cond.loopexit.i.for.body.i35_crit_edge ], [ %.pn121.i, %rcu_read_lock.exit.i.for.body.i35_crit_edge ]
  %ch_list.i = getelementptr i8, ptr %.pn123.i, i32 8
  %62 = ptrtoint ptr %ch_list.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn218.i = load ptr, ptr %ch_list.i, align 4
  %cmp81.not19.i = icmp eq ptr %.pn218.i, %ch_list.i
  br i1 %cmp81.not19.i, label %for.body.i35.for.cond.loopexit.i_crit_edge, label %for.body.i35.do.end88.i_crit_edge

for.body.i35.do.end88.i_crit_edge:                ; preds = %for.body.i35
  br label %do.end88.i

for.body.i35.for.cond.loopexit.i_crit_edge:       ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.loopexit.i

do.end88.i:                                       ; preds = %get_ch_state_name.exit.i.do.end88.i_crit_edge, %for.body.i35.do.end88.i_crit_edge
  %.pn220.i = phi ptr [ %.pn2.i, %get_ch_state_name.exit.i.do.end88.i_crit_edge ], [ %.pn218.i, %for.body.i35.do.end88.i_crit_edge ]
  %sess_name.i = getelementptr i8, ptr %.pn220.i, i32 24
  %qp.i = getelementptr i8, ptr %.pn220.i, i32 -132
  %63 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %64, i32 0, i32 19
  %65 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qp_num.i, align 4
  %state.i = getelementptr i8, ptr %.pn220.i, i32 -20
  %67 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %68)
  %69 = icmp ult i32 %68, 5
  br i1 %69, label %switch.lookup, label %do.end88.i.get_ch_state_name.exit.i_crit_edge

do.end88.i.get_ch_state_name.exit.i_crit_edge:    ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_ch_state_name.exit.i

switch.lookup:                                    ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.srpt_remove_one, i32 0, i32 %68
  %70 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_ch_state_name.exit.i

get_ch_state_name.exit.i:                         ; preds = %switch.lookup, %do.end88.i.get_ch_state_name.exit.i_crit_edge
  %retval.0.i7.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.187, %do.end88.i.get_ch_state_name.exit.i_crit_edge ]
  %call91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef %sess_name.i, i32 noundef %66, ptr noundef nonnull %retval.0.i7.i) #22
  %71 = ptrtoint ptr %.pn220.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn2.i = load ptr, ptr %.pn220.i, align 4
  %cmp81.not.i = icmp eq ptr %.pn2.i, %ch_list.i
  br i1 %cmp81.not.i, label %get_ch_state_name.exit.i.for.cond.loopexit.i_crit_edge, label %get_ch_state_name.exit.i.do.end88.i_crit_edge

get_ch_state_name.exit.i.do.end88.i_crit_edge:    ; preds = %get_ch_state_name.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end88.i

get_ch_state_name.exit.i.for.cond.loopexit.i_crit_edge: ; preds = %get_ch_state_name.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.loopexit.i

for.end103.i:                                     ; preds = %for.cond.loopexit.i.for.end103.i_crit_edge, %rcu_read_lock.exit.i.for.end103.i_crit_edge
  %call.i8.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i8.i, label %for.end103.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i11.i

for.end103.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %for.end103.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

land.lhs.true.i11.i:                              ; preds = %for.end103.i
  %call1.i9.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.236, i32 noundef 724, ptr noundef nonnull @.str.238) #19
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i11.i.rcu_read_unlock.exit.i_crit_edge, %for.end103.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !691
  %72 = call i32 @llvm.read_register.i32(metadata !676) #19
  %and.i.i.i.i.i15.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #19
  %76 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %refcount.i, align 4
  %cmp52.i = icmp sgt i32 %77, 0
  br i1 %cmp52.i, label %rcu_read_unlock.exit.i.land.rhs54.i_crit_edge, label %rcu_read_unlock.exit.i.while.end.i_crit_edge

rcu_read_unlock.exit.i.while.end.i_crit_edge:     ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end.i

rcu_read_unlock.exit.i.land.rhs54.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs54.i

while.end.i:                                      ; preds = %rcu_read_unlock.exit.i.while.end.i_crit_edge, %land.rhs54.i.while.end.i_crit_edge, %if.end42.i.while.end.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #19
  %nexus_list106.i = getelementptr %struct.srpt_device, ptr %client_data, i32 0, i32 12, i32 %i.146, i32 14
  %78 = ptrtoint ptr %nexus_list106.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nexus_list106.i, align 8
  %cmp118.not28.i = icmp eq ptr %79, %nexus_list106.i
  br i1 %cmp118.not28.i, label %while.end.i.srpt_release_sport.exit_crit_edge, label %while.end.i.for.body122.i_crit_edge

while.end.i.for.body122.i_crit_edge:              ; preds = %while.end.i
  br label %for.body122.i

while.end.i.srpt_release_sport.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_release_sport.exit

for.body122.i:                                    ; preds = %if.end130.i.for.body122.i_crit_edge, %while.end.i.for.body122.i_crit_edge
  %.pn.in29.i = phi ptr [ %.pn32.i, %if.end130.i.for.body122.i_crit_edge ], [ %79, %while.end.i.for.body122.i_crit_edge ]
  %nexus.131.i = getelementptr i8, ptr %.pn.in29.i, i32 -8
  %80 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn32.i = load ptr, ptr %.pn.in29.i, align 4
  %call.i.i17.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i) #19
  br i1 %call.i.i17.i, label %if.end.i.i.i, label %for.body122.i.list_del.exit.i_crit_edge

for.body122.i.list_del.exit.i_crit_edge:          ; preds = %for.body122.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body122.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %.pn.in29.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body122.i.list_del.exit.i_crit_edge
  %87 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i, align 4
  %prev.i.i36 = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i36, align 4
  %tobool125.not.i = icmp eq ptr %nexus.131.i, null
  br i1 %tobool125.not.i, label %list_del.exit.i.if.end130.i_crit_edge, label %do.end129.i

list_del.exit.i.if.end130.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end130.i

do.end129.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @kvfree_call_rcu(ptr noundef nonnull %nexus.131.i, ptr noundef null) #19
  br label %if.end130.i

if.end130.i:                                      ; preds = %do.end129.i, %list_del.exit.i.if.end130.i_crit_edge
  %cmp118.not.i = icmp eq ptr %.pn32.i, %nexus_list106.i
  br i1 %cmp118.not.i, label %if.end130.i.srpt_release_sport.exit_crit_edge, label %if.end130.i.for.body122.i_crit_edge

if.end130.i.for.body122.i_crit_edge:              ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body122.i

if.end130.i.srpt_release_sport.exit_crit_edge:    ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_release_sport.exit

srpt_release_sport.exit:                          ; preds = %if.end130.i.srpt_release_sport.exit_crit_edge, %while.end.i.srpt_release_sport.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %c.i) #19
  %inc14 = add nuw i32 %i.146, 1
  %89 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %client_data, align 8
  %phys_port_cnt7 = getelementptr inbounds %struct.ib_device, ptr %90, i32 0, i32 21
  %91 = ptrtoint ptr %phys_port_cnt7 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %phys_port_cnt7, align 8
  %cmp8 = icmp ult i32 %inc14, %92
  br i1 %cmp8, label %srpt_release_sport.exit.for.body9_crit_edge, label %srpt_release_sport.exit.for.end15_crit_edge

srpt_release_sport.exit.for.end15_crit_edge:      ; preds = %srpt_release_sport.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end15

srpt_release_sport.exit.for.body9_crit_edge:      ; preds = %srpt_release_sport.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body9

for.end15:                                        ; preds = %srpt_release_sport.exit.for.end15_crit_edge, %list_del.exit.for.end15_crit_edge
  call fastcc void @srpt_free_srq(ptr noundef %client_data)
  %pd = getelementptr inbounds %struct.srpt_device, ptr %client_data, i32 0, i32 1
  %93 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pd, align 4
  %call.i37 = call i32 @ib_dealloc_pd_user(ptr noundef %94, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %for.end15.ib_dealloc_pd.exit_crit_edge, label %land.rhs.i39

for.end15.ib_dealloc_pd.exit_crit_edge:           ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %ib_dealloc_pd.exit

land.rhs.i39:                                     ; preds = %for.end15
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i39.ib_dealloc_pd.exit_crit_edge, label %if.then.i40, !prof !688

land.rhs.i39.ib_dealloc_pd.exit_crit_edge:        ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #21
  br label %ib_dealloc_pd.exit

if.then.i40:                                      ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.227) #19
  br label %ib_dealloc_pd.exit

ib_dealloc_pd.exit:                               ; preds = %if.then.i40, %land.rhs.i39.ib_dealloc_pd.exit_crit_edge, %for.end15.ib_dealloc_pd.exit_crit_edge
  call void @kfree(ptr noundef %client_data) #19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_cm_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_cm_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %event) #4 align 64 {
entry:
  %sguid.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.ib_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end46 [
    i32 1, label %sw.bb
    i32 11, label %sw.bb2
    i32 4, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge66
    i32 7, label %sw.bb6
    i32 8, label %do.end
    i32 9, label %do.end14
    i32 2, label %do.end25
    i32 6, label %do.end35
    i32 10, label %do.end41
  ]

entry.sw.bb5_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %private_data = getelementptr inbounds %struct.ib_cm_event, ptr %event, i32 0, i32 2
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sguid.i) #19
  %7 = call ptr @memset(ptr %sguid.i, i32 255, i32 40)
  %primary_path.i = getelementptr inbounds %struct.ib_cm_event, ptr %event, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %primary_path.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary_path.i, align 8
  %interface_id.i = getelementptr inbounds %struct.anon.166, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %interface_id.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %arrayidx1.i.i = getelementptr i16, ptr %interface_id.i, i32 1
  %12 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx1.i.i, align 2
  %conv2.i.i = zext i16 %13 to i32
  %arrayidx3.i.i = getelementptr i16, ptr %interface_id.i, i32 2
  %14 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx3.i.i, align 2
  %conv4.i.i = zext i16 %15 to i32
  %arrayidx5.i.i = getelementptr i16, ptr %interface_id.i, i32 3
  %16 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i16 %17 to i32
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %sguid.i, i32 noundef 40, ptr noundef nonnull @.str.102, i32 noundef %conv.i.i, i32 noundef %conv2.i.i, i32 noundef %conv4.i.i, i32 noundef %conv6.i.i) #19
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  %port.i = getelementptr inbounds %struct.ib_cm_event, ptr %event, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port.i, align 2
  %22 = ptrtoint ptr %primary_path.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %primary_path.i, align 8
  %pkey.i = getelementptr inbounds %struct.sa_path_rec, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pkey.i, align 8
  %call3.i = call fastcc i32 @srpt_cm_req_recv(ptr noundef %19, ptr noundef %cm_id, ptr noundef null, i8 noundef zeroext %21, i16 noundef zeroext %25, ptr noundef %6, ptr noundef nonnull %sguid.i) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sguid.i) #19
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %param3 = getelementptr inbounds %struct.ib_cm_event, ptr %event, i32 0, i32 1
  %26 = ptrtoint ptr %param3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %param3, align 8
  %private_data4 = getelementptr inbounds %struct.ib_cm_event, ptr %event, i32 0, i32 2
  %28 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data4, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 445) #24
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not.i, label %sw.bb2.srpt_cm_rej_recv.exit_crit_edge, label %sw.bb2.for.body.i_crit_edge

sw.bb2.for.body.i_crit_edge:                      ; preds = %sw.bb2
  br label %for.body.i

sw.bb2.srpt_cm_rej_recv.exit_crit_edge:           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_cm_rej_recv.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb2.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb2.for.body.i_crit_edge ]
  %mul5.i = mul nuw nsw i32 %i.025.i, 3
  %add.ptr.i = getelementptr i8, ptr %call7.i.i, i32 %mul5.i
  %arrayidx.i = getelementptr i8, ptr %29, i32 %i.025.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %32 to i32
  %call7.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.190, i32 noundef %conv6.i) #19
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 148
  br i1 %exitcond.not.i, label %for.body.i.srpt_cm_rej_recv.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.srpt_cm_rej_recv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_cm_rej_recv.exit

srpt_cm_rej_recv.exit:                            ; preds = %for.body.i.srpt_cm_rej_recv.exit_crit_edge, %sw.bb2.srpt_cm_rej_recv.exit_crit_edge
  %spec.select.i = phi ptr [ @.str.195, %sw.bb2.srpt_cm_rej_recv.exit_crit_edge ], [ %call7.i.i, %for.body.i.srpt_cm_rej_recv.exit_crit_edge ]
  %qp.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qp_num.i, align 4
  %sess_name.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 29
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef %sess_name.i, i32 noundef %36, i32 noundef %27, ptr noundef nonnull @.str.193, ptr noundef nonnull %spec.select.i) #22
  tail call void @kfree(ptr noundef %call7.i.i) #19
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge66
  tail call fastcc void @srpt_cm_rtu_recv(ptr noundef %1)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call fastcc i32 @srpt_disconnect_ch(ptr noundef %1)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 29
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qp_num, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %sess_name, i32 noundef %40) #22
  %call10 = tail call fastcc zeroext i1 @srpt_close_ch(ptr noundef %1)
  br label %sw.epilog

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name16 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 29
  %qp18 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %qp18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qp18, align 4
  %qp_num19 = getelementptr inbounds %struct.ib_qp, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %qp_num19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qp_num19, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %sess_name16, i32 noundef %44) #22
  %call21 = tail call fastcc zeroext i1 @srpt_close_ch(ptr noundef %1)
  br label %sw.epilog

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name27 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 29
  %qp29 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %qp29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qp29, align 4
  %qp_num30 = getelementptr inbounds %struct.ib_qp, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %qp_num30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qp_num30, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %sess_name27, i32 noundef %48) #22
  br label %sw.epilog

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #22
  br label %sw.epilog

do.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #22
  br label %sw.epilog

do.end46:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %3) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end46, %do.end41, %do.end35, %do.end25, %do.end14, %do.end, %sw.bb6, %sw.bb5, %srpt_cm_rej_recv.exit, %sw.bb
  %ret.0 = phi i32 [ 0, %do.end46 ], [ 0, %do.end41 ], [ 0, %do.end35 ], [ 0, %do.end25 ], [ 0, %do.end14 ], [ 0, %do.end ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %srpt_cm_rej_recv.exit ], [ %call3.i, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cm_listen(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_event_handler(ptr noundef %handler, ptr nocapture noundef readonly %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %handler, i32 -128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_event_handler.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_event_handler, %if.then)) #19
          to label %do.end [label %if.then], !srcloc !686

if.then:                                          ; preds = %entry
  %event4 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event4, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %6 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i125 = phi ptr [ %8, %if.end.i ], [ %5, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_event_handler.__UNIQUE_ID_ddebug534, ptr noundef nonnull @.str.214, i32 noundef %1, ptr noundef %retval.0.i125) #19
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %event6 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %9 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event6, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %10, label %do.end96 [
    i32 10, label %sw.bb
    i32 9, label %do.end.sw.bb41_crit_edge
    i32 11, label %do.end.sw.bb41_crit_edge127
    i32 12, label %do.end.sw.bb41_crit_edge128
    i32 13, label %do.end.sw.bb41_crit_edge129
    i32 17, label %do.end.sw.bb41_crit_edge130
    i32 18, label %do.end.sw.bb41_crit_edge131
  ]

do.end.sw.bb41_crit_edge131:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb41

do.end.sw.bb41_crit_edge130:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb41

do.end.sw.bb41_crit_edge129:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb41

do.end.sw.bb41_crit_edge128:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb41

do.end.sw.bb41_crit_edge127:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb41

do.end.sw.bb41_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb41

sw.bb:                                            ; preds = %do.end
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %12 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %element, align 4
  %conv = add i32 %13, 255
  %conv7 = and i32 %conv, 255
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_port_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %17)
  %cmp = icmp ult i32 %conv7, %17
  br i1 %cmp, label %if.then10, label %do.end22

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %port = getelementptr i8, ptr %handler, i32 24
  %arrayidx = getelementptr [0 x %struct.srpt_port], ptr %port, i32 0, i32 %conv7
  %lid = getelementptr inbounds %struct.srpt_port, ptr %arrayidx, i32 0, i32 5
  %18 = ptrtoint ptr %lid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %lid, align 8
  %sm_lid = getelementptr inbounds %struct.srpt_port, ptr %arrayidx, i32 0, i32 4
  %19 = ptrtoint ptr %sm_lid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sm_lid, align 4
  br label %sw.epilog

do.end22:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %add = add nuw nsw i32 %conv7, 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 156, i32 noundef 9, ptr noundef nonnull @.str.215, i32 noundef 10, i32 noundef %add, i32 noundef %17) #19
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.end.sw.bb41_crit_edge, %do.end.sw.bb41_crit_edge127, %do.end.sw.bb41_crit_edge128, %do.end.sw.bb41_crit_edge129, %do.end.sw.bb41_crit_edge130, %do.end.sw.bb41_crit_edge131
  %element42 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %20 = ptrtoint ptr %element42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %element42, align 4
  %conv44 = add i32 %21, 255
  %conv45 = and i32 %conv44, 255
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %phys_port_cnt47 = getelementptr inbounds %struct.ib_device, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %phys_port_cnt47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys_port_cnt47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv45, i32 %25)
  %cmp48 = icmp ult i32 %conv45, %25
  br i1 %cmp48, label %if.then50, label %do.end74

if.then50:                                        ; preds = %sw.bb41
  %port51 = getelementptr i8, ptr %handler, i32 24
  %arrayidx53 = getelementptr [0 x %struct.srpt_port], ptr %port51, i32 0, i32 %conv45
  %lid54 = getelementptr inbounds %struct.srpt_port, ptr %arrayidx53, i32 0, i32 5
  %26 = ptrtoint ptr %lid54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lid54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool55.not = icmp eq i32 %27, 0
  br i1 %tobool55.not, label %land.lhs.true, label %if.then50.sw.epilog_crit_edge

if.then50.sw.epilog_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.then50
  %sm_lid56 = getelementptr inbounds %struct.srpt_port, ptr %arrayidx53, i32 0, i32 4
  %28 = ptrtoint ptr %sm_lid56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sm_lid56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool57.not = icmp eq i32 %29, 0
  br i1 %tobool57.not, label %if.then58, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then58:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %work = getelementptr inbounds %struct.srpt_port, ptr %arrayidx53, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %work) #19
  br label %sw.epilog

do.end74:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #21
  %add77 = add nuw nsw i32 %conv45, 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.215, i32 noundef %10, i32 noundef %add77, i32 noundef %25) #19
  br label %sw.epilog

do.end96:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %10) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end96, %do.end74, %if.then58, %land.lhs.true.sw.epilog_crit_edge, %if.then50.sw.epilog_crit_edge, %do.end22, %if.then10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_register_event_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_refresh_port_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %call = tail call fastcc i32 @srpt_refresh_port(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @srpt_refresh_port(ptr noundef %sport) unnamed_addr #4 align 64 {
entry:
  %reg_req = alloca %struct.ib_mad_reg_req, align 4
  %port_modify = alloca %struct.ib_port_modify, align 4
  %port_attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reg_req) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %port_modify) #19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %port_attr) #19
  %0 = call ptr @memset(ptr %port_attr, i32 255, i32 72)
  %1 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sport, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %port = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 3
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 1
  %conv = zext i8 %6 to i32
  %call = call i32 @ib_query_port(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %port_attr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %sm_lid = getelementptr inbounds %struct.ib_port_attr, ptr %port_attr, i32 0, i32 12
  %7 = ptrtoint ptr %sm_lid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sm_lid, align 4
  %sm_lid1 = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 4
  %9 = ptrtoint ptr %sm_lid1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sm_lid1, align 4
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %port_attr, i32 0, i32 13
  %10 = ptrtoint ptr %lid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lid, align 8
  %lid2 = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 5
  %12 = ptrtoint ptr %lid2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %lid2, align 8
  %13 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sport, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port, align 1
  %conv6 = zext i8 %18 to i32
  %gid = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 6
  %call7 = call i32 @rdma_query_gid(ptr noundef %16, i32 noundef %conv6, i32 noundef 0, ptr noundef %gid) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %priv = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 8, i32 2, i32 1
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sport, ptr %priv, align 4
  %name = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 8, i32 3
  %interface_id = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 6, i32 0, i32 1
  %20 = ptrtoint ptr %interface_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %interface_id, align 2
  %conv.i = zext i16 %21 to i32
  %arrayidx1.i = getelementptr i16, ptr %interface_id, i32 1
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx1.i, align 2
  %conv2.i = zext i16 %23 to i32
  %arrayidx3.i = getelementptr i16, ptr %interface_id, i32 2
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i = zext i16 %25 to i32
  %arrayidx5.i = getelementptr i16, ptr %interface_id, i32 3
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = zext i16 %27 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 64, ptr noundef nonnull @.str.102, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i) #19
  %priv15 = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 9, i32 2, i32 1
  %28 = ptrtoint ptr %priv15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sport, ptr %priv15, align 4
  %name17 = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 9, i32 3
  %29 = ptrtoint ptr %gid to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %gid, align 8
  %31 = ptrtoint ptr %interface_id to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %interface_id, align 8
  %call22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name17, i32 noundef 64, ptr noundef nonnull @.str.133, i64 noundef %30, i64 noundef %32)
  %33 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sport, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %port, align 1
  %conv26 = zext i8 %38 to i32
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %36, i32 0, i32 11
  %39 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %40, i32 %conv26, i32 1, i32 2
  %41 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %42, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end29, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end29:                                         ; preds = %if.end10
  %43 = getelementptr inbounds i8, ptr %port_modify, i32 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %43, align 4
  %45 = ptrtoint ptr %port_modify to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 524288, ptr %port_modify, align 4
  %clr_port_cap_mask = getelementptr inbounds %struct.ib_port_modify, ptr %port_modify, i32 0, i32 1
  %46 = ptrtoint ptr %clr_port_cap_mask to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %clr_port_cap_mask, align 4
  %47 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %34, align 8
  %call34 = call i32 @ib_modify_port(ptr noundef %48, i32 noundef %conv26, i32 noundef 0, ptr noundef nonnull %port_modify) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end43, label %do.end

do.end:                                           ; preds = %if.end29
  %49 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sport, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %52, i32 0, i32 13, i32 0, i32 0, i32 3
  %53 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %55 = getelementptr inbounds %struct.ib_device, ptr %52, i32 0, i32 13
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %57, %if.end.i ], [ %54, %do.end.dev_name.exit_crit_edge ]
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port, align 1
  %conv41 = zext i8 %59 to i32
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef %retval.0.i, i32 noundef %conv41, i32 noundef %call34) #22
  br label %cleanup

if.end43:                                         ; preds = %if.end29
  %mad_agent = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 1
  %60 = ptrtoint ptr %mad_agent to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mad_agent, align 4
  %tobool44.not = icmp eq ptr %61, null
  br i1 %tobool44.not, label %if.then45, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  %62 = call ptr @memset(ptr %reg_req, i32 0, i32 24)
  %63 = ptrtoint ptr %reg_req to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 6, ptr %reg_req, align 4
  %mgmt_class_version = getelementptr inbounds %struct.ib_mad_reg_req, ptr %reg_req, i32 0, i32 1
  %64 = ptrtoint ptr %mgmt_class_version to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %mgmt_class_version, align 1
  %method_mask = getelementptr inbounds %struct.ib_mad_reg_req, ptr %reg_req, i32 0, i32 3
  call void @_set_bit(i32 noundef 1, ptr noundef %method_mask) #19
  call void @_set_bit(i32 noundef 2, ptr noundef %method_mask) #19
  %65 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sport, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %port, align 1
  %conv52 = zext i8 %70 to i32
  %call53 = call ptr @ib_register_mad_agent(ptr noundef %68, i32 noundef %conv52, i32 noundef 1, ptr noundef nonnull %reg_req, i8 noundef zeroext 0, ptr noundef nonnull @srpt_mad_send_handler, ptr noundef nonnull @srpt_mad_recv_handler, ptr noundef %sport, i32 noundef 0) #19
  %71 = ptrtoint ptr %mad_agent to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call53, ptr %mad_agent, align 4
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end60, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end60:                                         ; preds = %if.then45
  %72 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sport, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %init_name.i120 = getelementptr inbounds %struct.ib_device, ptr %75, i32 0, i32 13, i32 0, i32 0, i32 3
  %76 = ptrtoint ptr %init_name.i120 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i120, align 8
  %tobool.not.i121 = icmp eq ptr %77, null
  br i1 %tobool.not.i121, label %if.end.i122, label %do.end60.dev_name.exit124_crit_edge

do.end60.dev_name.exit124_crit_edge:              ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit124

if.end.i122:                                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #21
  %78 = getelementptr inbounds %struct.ib_device, ptr %75, i32 0, i32 13
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  br label %dev_name.exit124

dev_name.exit124:                                 ; preds = %if.end.i122, %do.end60.dev_name.exit124_crit_edge
  %retval.0.i123 = phi ptr [ %80, %if.end.i122 ], [ %77, %do.end60.dev_name.exit124_crit_edge ]
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %port, align 1
  %conv66 = zext i8 %82 to i32
  %83 = ptrtoint ptr %call53 to i32
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %retval.0.i123, i32 noundef %conv66, i32 noundef %83) #22
  %84 = ptrtoint ptr %mad_agent to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %mad_agent, align 4
  %85 = call ptr @memset(ptr %port_modify, i32 0, i32 12)
  %86 = ptrtoint ptr %clr_port_cap_mask to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 524288, ptr %clr_port_cap_mask, align 4
  %87 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sport, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %port, align 1
  %conv75 = zext i8 %92 to i32
  %call76 = call i32 @ib_modify_port(ptr noundef %90, i32 noundef %conv75, i32 noundef 0, ptr noundef nonnull %port_modify) #19
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit124, %if.then45.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %dev_name.exit, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_name.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.then45.cleanup_crit_edge ], [ 0, %dev_name.exit124 ], [ 0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %port_attr) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %port_modify) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reg_req) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_client_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_event_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_destroy_cm_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_free_srq(ptr nocapture noundef %sdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %srq = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 3
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @ib_destroy_srq_user(ptr noundef nonnull %1, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.ib_destroy_srq.exit_crit_edge, label %land.rhs.i

if.end.ib_destroy_srq.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %ib_destroy_srq.exit

land.rhs.i:                                       ; preds = %if.end
  %.b38.i = load i1, ptr @ib_destroy_srq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_destroy_srq.exit_crit_edge, label %if.then.i, !prof !688

land.rhs.i.ib_destroy_srq.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ib_destroy_srq.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @ib_destroy_srq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 3688, i32 noundef 9, ptr noundef nonnull @.str.84) #19
  br label %ib_destroy_srq.exit

ib_destroy_srq.exit:                              ; preds = %if.then.i, %land.rhs.i.ib_destroy_srq.exit_crit_edge, %if.end.ib_destroy_srq.exit_crit_edge
  %ioctx_ring = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 9
  %2 = ptrtoint ptr %ioctx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioctx_ring, align 4
  %srq_size = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 5
  %4 = ptrtoint ptr %srq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srq_size, align 4
  %req_buf_cache = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 8
  %6 = ptrtoint ptr %req_buf_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_buf_cache, align 8
  %tobool.not.i11 = icmp eq ptr %3, null
  br i1 %tobool.not.i11, label %ib_destroy_srq.exit.srpt_free_ioctx_ring.exit_crit_edge, label %for.cond.preheader.i

ib_destroy_srq.exit.srpt_free_ioctx_ring.exit_crit_edge: ; preds = %ib_destroy_srq.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_ioctx_ring.exit

for.cond.preheader.i:                             ; preds = %ib_destroy_srq.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.i = icmp sgt i32 %5, 0
  br i1 %cmp5.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %srpt_free_ioctx.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %srpt_free_ioctx.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.06.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.body.i.srpt_free_ioctx.exit.i_crit_edge, label %if.end.i.i

for.body.i.srpt_free_ioctx.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_ioctx.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 8
  %dma.i.i = getelementptr inbounds %struct.srpt_ioctx, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma.i.i, align 4
  %call.i.i = tail call i32 @kmem_cache_size(ptr noundef %7) #19
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %13, i32 noundef %call.i.i, i32 noundef 2, i32 noundef 0) #19
  %buf.i.i = getelementptr inbounds %struct.srpt_ioctx, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %17) #19
  tail call void @kfree(ptr noundef nonnull %9) #19
  br label %srpt_free_ioctx.exit.i

srpt_free_ioctx.exit.i:                           ; preds = %if.end.i.i, %for.body.i.srpt_free_ioctx.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %srpt_free_ioctx.exit.i.for.end.i_crit_edge, label %srpt_free_ioctx.exit.i.for.body.i_crit_edge

srpt_free_ioctx.exit.i.for.body.i_crit_edge:      ; preds = %srpt_free_ioctx.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

srpt_free_ioctx.exit.i.for.end.i_crit_edge:       ; preds = %srpt_free_ioctx.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %srpt_free_ioctx.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %3) #19
  br label %srpt_free_ioctx_ring.exit

srpt_free_ioctx_ring.exit:                        ; preds = %for.end.i, %ib_destroy_srq.exit.srpt_free_ioctx_ring.exit_crit_edge
  %18 = ptrtoint ptr %req_buf_cache to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req_buf_cache, align 8
  tail call void @kmem_cache_destroy(ptr noundef %19) #19
  %20 = ptrtoint ptr %srq to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %srq, align 4
  br label %return

return:                                           ; preds = %srpt_free_ioctx_ring.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @srpt_alloc_srq(ptr noundef %sdev) unnamed_addr #4 align 64 {
entry:
  %dummy.i1.i = alloca ptr, align 4
  %dummy.i.i = alloca ptr, align 4
  %list.i = alloca %struct.ib_sge, align 8
  %wr.i = alloca %struct.ib_recv_wr, align 8
  %srq_attr = alloca %struct.ib_srq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %srq_attr) #19
  %0 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %srq_attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @srpt_srq_event, ptr %srq_attr, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sdev, ptr %0, align 4
  %srq_size = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 5
  %6 = ptrtoint ptr %srq_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srq_size, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %2, align 4
  %10 = call ptr @memset(ptr %3, i32 0, i32 16)
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 8
  %srq2 = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 3
  %13 = ptrtoint ptr %srq2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %srq2, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.rhs

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b128 = load i1, ptr @srpt_alloc_srq.__already_done, align 1
  br i1 %.b128, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !688

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_alloc_srq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3048, i32 noundef 9, ptr noundef null) #19
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %pd = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 1
  %15 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pd, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 4
  %create_srq.i = getelementptr inbounds %struct.ib_device, ptr %18, i32 0, i32 1, i32 42
  %19 = ptrtoint ptr %create_srq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %create_srq.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end30.do.body40_crit_edge, label %ib_create_srq.exit

if.end30.do.body40_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body40

ib_create_srq.exit:                               ; preds = %if.end30
  %call1.i = call ptr @ib_create_srq_user(ptr noundef %16, ptr noundef nonnull %srq_attr, ptr noundef null, ptr noundef null) #19
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ib_create_srq.exit.do.body40_crit_edge, label %do.body58

ib_create_srq.exit.do.body40_crit_edge:           ; preds = %ib_create_srq.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body40

do.body40:                                        ; preds = %ib_create_srq.exit.do.body40_crit_edge, %if.end30.do.body40_crit_edge
  %retval.0.i132140 = phi ptr [ %call1.i, %ib_create_srq.exit.do.body40_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end30.do.body40_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_alloc_srq.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_alloc_srq, %if.then51)) #19
          to label %do.end55 [label %if.then51], !srcloc !686

if.then51:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %retval.0.i132140 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_alloc_srq.__UNIQUE_ID_ddebug570, ptr noundef nonnull @.str.34, i32 noundef %21) #19
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body40
  %22 = ptrtoint ptr %retval.0.i132140 to i32
  br label %cleanup

do.body58:                                        ; preds = %ib_create_srq.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_alloc_srq.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_alloc_srq, %if.then70)) #19
          to label %do.end76 [label %if.then70], !srcloc !686

if.then70:                                        ; preds = %do.body58
  %23 = ptrtoint ptr %srq_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %srq_size, align 4
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 8
  %max_srq_wr = getelementptr inbounds %struct.ib_device, ptr %26, i32 0, i32 22, i32 34
  %27 = ptrtoint ptr %max_srq_wr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_srq_wr, align 8
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 13, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i133 = icmp eq ptr %30, null
  br i1 %tobool.not.i133, label %if.end.i134, label %if.then70.dev_name.exit_crit_edge

if.then70.dev_name.exit_crit_edge:                ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit

if.end.i134:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #21
  %31 = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 13
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i134, %if.then70.dev_name.exit_crit_edge
  %retval.0.i135 = phi ptr [ %33, %if.end.i134 ], [ %30, %if.then70.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_alloc_srq.__UNIQUE_ID_ddebug571, ptr noundef nonnull @.str.36, i32 noundef %24, i32 noundef %28, ptr noundef %retval.0.i135) #19
  br label %do.end76

do.end76:                                         ; preds = %dev_name.exit, %do.body58
  %34 = load i32, ptr @srp_max_req_size, align 4
  %call77 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.37, i32 noundef %34, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %req_buf_cache = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 8
  %35 = ptrtoint ptr %req_buf_cache to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call77, ptr %req_buf_cache, align 8
  %tobool79.not = icmp eq ptr %call77, null
  br i1 %tobool79.not, label %do.end76.free_srq_crit_edge, label %if.end81

do.end76.free_srq_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_srq

if.end81:                                         ; preds = %do.end76
  %36 = ptrtoint ptr %srq_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %srq_size, align 4
  %call84 = call fastcc ptr @srpt_alloc_ioctx_ring(ptr noundef %sdev, i32 noundef %37, i32 noundef 32, ptr noundef nonnull %call77, i32 noundef 0, i32 noundef 2)
  %ioctx_ring = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 9
  %38 = ptrtoint ptr %ioctx_ring to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call84, ptr %ioctx_ring, align 4
  %tobool86.not = icmp eq ptr %call84, null
  br i1 %tobool86.not, label %free_cache, label %if.end88

if.end88:                                         ; preds = %if.end81
  %use_srq = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 7
  %39 = ptrtoint ptr %use_srq to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %use_srq, align 4
  %40 = ptrtoint ptr %srq2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1.i, ptr %srq2, align 4
  %41 = ptrtoint ptr %srq_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %srq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp145 = icmp sgt i32 %42, 0
  br i1 %cmp145, label %for.body.lr.ph, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end88
  %tobool.not.i136 = icmp eq ptr %sdev, null
  %43 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 2
  %44 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 1
  %lkey.i = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 2
  %45 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 1
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 2
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %srpt_post_recv.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %srpt_post_recv.exit.for.body_crit_edge ]
  %46 = ptrtoint ptr %ioctx_ring to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioctx_ring, align 4
  %arrayidx = getelementptr ptr, ptr %47, i32 %i.0146
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 4
  %wait_list = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %wait_list, ptr %wait_list, align 4
  %prev.i = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %49, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %wait_list, ptr %prev.i, align 4
  %52 = load ptr, ptr %ioctx_ring, align 4
  %arrayidx93 = getelementptr ptr, ptr %52, i32 %i.0146
  %53 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx93, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list.i) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr.i) #19
  %55 = call ptr @memset(ptr %wr.i, i32 255, i32 16)
  br i1 %tobool.not.i136, label %do.body4.i, label %do.end9.i, !prof !692

do.body4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 828, 0\0A.popsection", ""() #19, !srcloc !693
  unreachable

do.end9.i:                                        ; preds = %for.body
  %dma.i = getelementptr inbounds %struct.srpt_ioctx, ptr %54, i32 0, i32 2
  %56 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma.i, align 4
  %offset.i = getelementptr inbounds %struct.srpt_ioctx, ptr %54, i32 0, i32 3
  %58 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %59, %57
  %conv.i = zext i32 %add.i to i64
  %60 = ptrtoint ptr %list.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv.i, ptr %list.i, align 8
  %61 = load i32, ptr @srp_max_req_size, align 4
  %62 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %44, align 8
  %63 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lkey.i, align 8
  %65 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %43, align 4
  %66 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @srpt_recv_done, ptr %54, align 4
  %67 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %54, ptr %45, align 8
  %68 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %wr.i, align 8
  %69 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %list.i, ptr %sg_list.i, align 8
  %70 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %num_sge.i, align 4
  %71 = ptrtoint ptr %use_srq to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %use_srq, align 4, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool16.not.i = icmp eq i8 %72, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %73 = ptrtoint ptr %srq2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %srq2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #19
  %75 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !694
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %74, align 4
  %post_srq_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %77, i32 0, i32 1, i32 13
  %78 = ptrtoint ptr %post_srq_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %post_srq_recv.i.i, align 4
  %call.i.i = call i32 %79(ptr noundef %74, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #19
  br label %srpt_post_recv.exit

if.else.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 4)
  %80 = load ptr, ptr inttoptr (i32 4 to ptr), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i1.i) #19
  %81 = ptrtoint ptr %dummy.i1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i1.i, align 4, !annotation !694
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %80, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %83, i32 0, i32 1, i32 7
  %84 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %post_recv.i.i, align 4
  %call.i2.i = call i32 %85(ptr noundef %80, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i1.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i1.i) #19
  br label %srpt_post_recv.exit

srpt_post_recv.exit:                              ; preds = %if.else.i, %if.then17.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list.i) #19
  %inc = add nuw nsw i32 %i.0146, 1
  %86 = ptrtoint ptr %srq_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %srq_size, align 4
  %cmp = icmp slt i32 %inc, %87
  br i1 %cmp, label %srpt_post_recv.exit.for.body_crit_edge, label %srpt_post_recv.exit.cleanup_crit_edge

srpt_post_recv.exit.cleanup_crit_edge:            ; preds = %srpt_post_recv.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

srpt_post_recv.exit.for.body_crit_edge:           ; preds = %srpt_post_recv.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

free_cache:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #21
  %88 = ptrtoint ptr %req_buf_cache to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %req_buf_cache, align 8
  call void @kmem_cache_destroy(ptr noundef %89) #19
  br label %free_srq

free_srq:                                         ; preds = %free_cache, %do.end76.free_srq_crit_edge
  %call.i = call i32 @ib_destroy_srq_user(ptr noundef %call1.i, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i137 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i137, label %free_srq.cleanup_crit_edge, label %land.rhs.i

free_srq.cleanup_crit_edge:                       ; preds = %free_srq
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs.i:                                       ; preds = %free_srq
  %.b38.i = load i1, ptr @ib_destroy_srq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !688

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @ib_destroy_srq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 3688, i32 noundef 9, ptr noundef nonnull @.str.84) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.rhs.i.cleanup_crit_edge, %free_srq.cleanup_crit_edge, %srpt_post_recv.exit.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %do.end55
  %retval.0 = phi i32 [ %22, %do.end55 ], [ -12, %free_srq.cleanup_crit_edge ], [ -12, %land.rhs.i.cleanup_crit_edge ], [ -12, %if.then.i ], [ 0, %if.end88.cleanup_crit_edge ], [ 0, %srpt_post_recv.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %srq_attr) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_srq_event(ptr nocapture noundef readonly %event, ptr nocapture noundef readnone %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_srq_event.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_srq_event, %if.then)) #19
          to label %do.end [label %if.then], !srcloc !686

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %event3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_srq_event.__UNIQUE_ID_ddebug535, ptr noundef nonnull @.str.40, i32 noundef %1) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @srpt_alloc_ioctx_ring(ptr nocapture noundef readonly %sdev, i32 noundef %ring_size, i32 noundef %ioctx_size, ptr noundef %buf_cache, i32 noundef %alignment_offset, i32 noundef %dir) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ioctx_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %ioctx_size, label %do.end [
    i32 696, label %entry.if.end_crit_edge
    i32 32, label %entry.if.end_crit_edge120
  ]

entry.if.end_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 725, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge120
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ring_size, i32 4) #19
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.end.out_crit_edge, label %kvmalloc_array.exit, !prof !692

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

kvmalloc_array.exit:                              ; preds = %if.end
  %3 = extractvalue { i32, i1 } %1, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3264, i32 noundef -1) #23
  %tobool20.not = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not, label %kvmalloc_array.exit.out_crit_edge, label %for.cond.preheader

kvmalloc_array.exit.out_crit_edge:                ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.cond.preheader:                               ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ring_size)
  %cmp2364.not = icmp eq i32 %ring_size, 0
  br i1 %cmp2364.not, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.if.end8.i.i.i_crit_edge

for.cond.preheader.if.end8.i.i.i_crit_edge:       ; preds = %for.cond.preheader
  br label %if.end8.i.i.i

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end8.i.i.i:                                    ; preds = %srpt_alloc_ioctx.exit.if.end8.i.i.i_crit_edge, %for.cond.preheader.if.end8.i.i.i_crit_edge
  %i.065 = phi i32 [ %inc, %srpt_alloc_ioctx.exit.if.end8.i.i.i_crit_edge ], [ 0, %for.cond.preheader.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %ioctx_size, i32 noundef 3520) #23
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.srpt_alloc_ioctx.exit.thread_crit_edge, label %if.end.i55

if.end8.i.i.i.srpt_alloc_ioctx.exit.thread_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_alloc_ioctx.exit.thread

if.end.i55:                                       ; preds = %if.end8.i.i.i
  %call1.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %buf_cache, i32 noundef 3264) #19
  %buf.i = getelementptr inbounds %struct.srpt_ioctx, ptr %call9.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %buf.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i55.err_free_ioctx.i_crit_edge, label %if.end5.i

if.end.i55.err_free_ioctx.i_crit_edge:            ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_free_ioctx.i

if.end5.i:                                        ; preds = %if.end.i55
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 8
  %call7.i = tail call i32 @kmem_cache_size(ptr noundef %buf_cache) #19
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i) #19
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end5.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i29.i, !prof !688

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %ib_dma_map_single.exit.i

if.then.i.i29.i:                                  ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %8) #19
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i28.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i28.i, label %if.end.i.i.i30.i, label %if.then.i.i29.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i29.i.dev_name.exit.i.i.i_crit_edge:    ; preds = %if.then.i.i29.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i.i.i

if.end.i.i.i30.i:                                 ; preds = %if.then.i.i29.i
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i30.i, %if.then.i.i29.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %12, %if.end.i.i.i30.i ], [ %10, %if.then.i.i29.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #19
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @debug_dma_map_single(ptr noundef %8, ptr noundef nonnull %call1.i, i32 noundef %call7.i) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %call1.i to i32
  %sub.i.i.i = add i32 %14, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %13, i32 %shr.i.i.i
  %and.i.i.i = and i32 %14, 4088
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %call7.i, i32 noundef %dir, i32 noundef 0) #19
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %dma.i = getelementptr inbounds %struct.srpt_ioctx, ptr %call9.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.i.i, ptr %dma.i, align 8
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %retval.0.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i31.not.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i31.not.i, label %err_free_buf.i, label %srpt_alloc_ioctx.exit

err_free_buf.i:                                   ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %buf.i.le = getelementptr inbounds %struct.srpt_ioctx, ptr %call9.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf.i.le, align 4
  tail call void @kmem_cache_free(ptr noundef %buf_cache, ptr noundef %21) #19
  br label %err_free_ioctx.i

err_free_ioctx.i:                                 ; preds = %err_free_buf.i, %if.end.i55.err_free_ioctx.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #19
  br label %srpt_alloc_ioctx.exit.thread

srpt_alloc_ioctx.exit.thread:                     ; preds = %err_free_ioctx.i, %if.end8.i.i.i.srpt_alloc_ioctx.exit.thread_crit_edge
  %arrayidx73 = getelementptr ptr, ptr %call.i.i, i32 %i.065
  %22 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065)
  %cmp3167.not = icmp eq i32 %i.065, 0
  br i1 %cmp3167.not, label %srpt_alloc_ioctx.exit.thread.while.end_crit_edge, label %srpt_alloc_ioctx.exit.thread.while.body_crit_edge

srpt_alloc_ioctx.exit.thread.while.body_crit_edge: ; preds = %srpt_alloc_ioctx.exit.thread
  br label %while.body

srpt_alloc_ioctx.exit.thread.while.end_crit_edge: ; preds = %srpt_alloc_ioctx.exit.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

srpt_alloc_ioctx.exit:                            ; preds = %ib_dma_map_single.exit.i
  %arrayidx = getelementptr ptr, ptr %call.i.i, i32 %i.065
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i.i, ptr %arrayidx, align 4
  %index = getelementptr inbounds %struct.srpt_ioctx, ptr %call9.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.065, ptr %index, align 16
  %offset = getelementptr inbounds %struct.srpt_ioctx, ptr %call9.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %alignment_offset, ptr %offset, align 4
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %ring_size
  br i1 %exitcond.not, label %srpt_alloc_ioctx.exit.out_crit_edge, label %srpt_alloc_ioctx.exit.if.end8.i.i.i_crit_edge

srpt_alloc_ioctx.exit.if.end8.i.i.i_crit_edge:    ; preds = %srpt_alloc_ioctx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i.i

srpt_alloc_ioctx.exit.out_crit_edge:              ; preds = %srpt_alloc_ioctx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

while.body:                                       ; preds = %srpt_free_ioctx.exit.while.body_crit_edge, %srpt_alloc_ioctx.exit.thread.while.body_crit_edge
  %dec68.in = phi i32 [ %dec68, %srpt_free_ioctx.exit.while.body_crit_edge ], [ %i.065, %srpt_alloc_ioctx.exit.thread.while.body_crit_edge ]
  %dec68 = add nsw i32 %dec68.in, -1
  %arrayidx32 = getelementptr ptr, ptr %call.i.i, i32 %dec68
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx32, align 4
  %tobool.not.i57 = icmp eq ptr %27, null
  br i1 %tobool.not.i57, label %while.body.srpt_free_ioctx.exit_crit_edge, label %if.end.i60

while.body.srpt_free_ioctx.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_ioctx.exit

if.end.i60:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev, align 8
  %dma.i58 = getelementptr inbounds %struct.srpt_ioctx, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %dma.i58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma.i58, align 4
  %call.i = tail call i32 @kmem_cache_size(ptr noundef %buf_cache) #19
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %31, i32 noundef %call.i, i32 noundef %dir, i32 noundef 0) #19
  %buf.i59 = getelementptr inbounds %struct.srpt_ioctx, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf.i59, align 4
  tail call void @kmem_cache_free(ptr noundef %buf_cache, ptr noundef %35) #19
  tail call void @kfree(ptr noundef nonnull %27) #19
  br label %srpt_free_ioctx.exit

srpt_free_ioctx.exit:                             ; preds = %if.end.i60, %while.body.srpt_free_ioctx.exit_crit_edge
  %cmp31 = icmp sgt i32 %dec68.in, 1
  br i1 %cmp31, label %srpt_free_ioctx.exit.while.body_crit_edge, label %srpt_free_ioctx.exit.while.end_crit_edge

srpt_free_ioctx.exit.while.end_crit_edge:         ; preds = %srpt_free_ioctx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

srpt_free_ioctx.exit.while.body_crit_edge:        ; preds = %srpt_free_ioctx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end:                                        ; preds = %srpt_free_ioctx.exit.while.end_crit_edge, %srpt_alloc_ioctx.exit.thread.while.end_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #19
  br label %out

out:                                              ; preds = %while.end, %srpt_alloc_ioctx.exit.out_crit_edge, %for.cond.preheader.out_crit_edge, %kvmalloc_array.exit.out_crit_edge, %if.end.out_crit_edge
  %ring.0 = phi ptr [ null, %while.end ], [ null, %kvmalloc_array.exit.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call.i.i, %for.cond.preheader.out_crit_edge ], [ %call.i.i, %srpt_alloc_ioctx.exit.out_crit_edge ]
  ret ptr %ring.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_srq_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_recv_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %req_lim1 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_lim1, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !695
  tail call void @llvm.prefetch.p0(ptr %req_lim1, i32 1, i32 3, i32 1) #19
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req_lim1, ptr %req_lim1, i32 1, ptr elementtype(i32) %req_lim1) #19, !srcloc !696
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !697
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp2 = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp2, label %do.end, label %if.then.if.end_crit_edge, !prof !692

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %asmresult.i.i.i.i) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %9 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %byte_len, align 4
  %byte_len7 = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %byte_len7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %byte_len7, align 4
  %call8 = tail call fastcc zeroext i1 @srpt_handle_new_iu(ptr noundef %3, ptr noundef %5)
  br label %if.end19

if.else:                                          ; preds = %entry
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @srpt_recv_done._rs, ptr noundef nonnull @.str.44) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else.if.end19_crit_edge, label %do.end14

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %5, i32 noundef %13) #22
  br label %if.end19

if.end19:                                         ; preds = %do.end14, %if.else.if.end19_crit_edge, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @srpt_handle_new_iu(ptr noundef %ch, ptr noundef %recv_ioctx) unnamed_addr #4 align 64 {
entry:
  %dummy.i1.i = alloca ptr, align 4
  %dummy.i.i = alloca ptr, align 4
  %list.i = alloca %struct.ib_sge, align 8
  %wr.i = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !692

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1626, 0\0A.popsection", ""() #19, !srcloc !698
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %recv_ioctx, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !692

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1627, 0\0A.popsection", ""() #19, !srcloc !699
  unreachable

do.end29:                                         ; preds = %do.body10
  %state = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 18
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end29.push_crit_edge, label %if.end37, !prof !692

do.end29.push_crit_edge:                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %push

if.end37:                                         ; preds = %do.end29
  %sport = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 12
  %2 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sport, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dma = getelementptr inbounds %struct.srpt_ioctx, ptr %recv_ioctx, i32 0, i32 2
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %offset = getelementptr inbounds %struct.srpt_ioctx, ptr %recv_ioctx, i32 0, i32 3
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %12 = load i32, ptr @srp_max_req_size, align 4
  %add = add i32 %12, %11
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %14, i32 noundef %9, i32 noundef %add, i32 noundef 2) #19
  %buf = getelementptr inbounds %struct.srpt_ioctx, ptr %recv_ioctx, i32 0, i32 1
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %18
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr, align 8
  %conv43 = zext i8 %20 to i32
  %.off = add i8 %20, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %do.end9.i, label %if.end37.if.end61_crit_edge

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61

do.end9.i:                                        ; preds = %if.end37
  %sess.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 28
  %21 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sess.i, align 4
  %sess_tag_pool.i = getelementptr inbounds %struct.se_session, ptr %22, i32 0, i32 14
  %23 = tail call i32 @llvm.read_register.i32(metadata !676) #19
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !700
  %27 = tail call i32 @llvm.read_register.i32(metadata !676) #19
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu1.i.i, align 4
  %call2.i.i = tail call i32 @__sbitmap_queue_get(ptr noundef %sess_tag_pool.i) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !701
  %31 = tail call i32 @llvm.read_register.i32(metadata !676) #19
  %and.i.i.i6.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i6.i.i to ptr
  %preempt_count.i.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i7.i.i, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %do.end9.i.push_crit_edge, label %if.end11.i

do.end9.i.push_crit_edge:                         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %push

if.end11.i:                                       ; preds = %do.end9.i
  %ioctx_ring.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 20
  %35 = ptrtoint ptr %ioctx_ring.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioctx_ring.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %36, i32 %call2.i.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %ch13.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ch13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ch13.i, align 4
  %cmp14.not.i = icmp eq ptr %40, %ch
  br i1 %cmp14.not.i, label %do.end30.i, label %do.body22.i, !prof !688

do.body22.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1230, 0\0A.popsection", ""() #19, !srcloc !702
  unreachable

do.end30.i:                                       ; preds = %if.end11.i
  %state.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %38, i32 0, i32 7
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %state.i, align 4
  %recv_ioctx.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %38, i32 0, i32 2
  %42 = ptrtoint ptr %recv_ioctx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %recv_ioctx.i, align 8
  %tobool31.not.i = icmp eq ptr %43, null
  br i1 %tobool31.not.i, label %do.end30.i.srpt_get_send_ioctx.exit_crit_edge, label %land.rhs.i

do.end30.i.srpt_get_send_ioctx.exit_crit_edge:    ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_get_send_ioctx.exit

land.rhs.i:                                       ; preds = %do.end30.i
  %.b100.i = load i1, ptr @srpt_get_send_ioctx.__already_done, align 1
  br i1 %.b100.i, label %land.rhs.i.srpt_get_send_ioctx.exit_crit_edge, label %if.then46.i, !prof !688

land.rhs.i.srpt_get_send_ioctx.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_get_send_ioctx.exit

if.then46.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_get_send_ioctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1232, i32 noundef 9, ptr noundef null) #19
  br label %srpt_get_send_ioctx.exit

srpt_get_send_ioctx.exit:                         ; preds = %if.then46.i, %land.rhs.i.srpt_get_send_ioctx.exit_crit_edge, %do.end30.i.srpt_get_send_ioctx.exit_crit_edge
  %cmd.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %38, i32 0, i32 8
  %map_tag.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %38, i32 0, i32 8, i32 8
  %44 = call ptr @memset(ptr %cmd.i, i32 0, i32 539)
  %45 = ptrtoint ptr %map_tag.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call2.i.i, ptr %map_tag.i, align 4
  %map_cpu.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %38, i32 0, i32 8, i32 9
  %46 = ptrtoint ptr %map_cpu.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %30, ptr %map_cpu.i, align 8
  %tobool50.not = icmp eq ptr %38, null
  br i1 %tobool50.not, label %srpt_get_send_ioctx.exit.push_crit_edge, label %srpt_get_send_ioctx.exit.if.end61_crit_edge, !prof !692

srpt_get_send_ioctx.exit.if.end61_crit_edge:      ; preds = %srpt_get_send_ioctx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end61

srpt_get_send_ioctx.exit.push_crit_edge:          ; preds = %srpt_get_send_ioctx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %push

if.end61:                                         ; preds = %srpt_get_send_ioctx.exit.if.end61_crit_edge, %if.end37.if.end61_crit_edge
  %send_ioctx.0 = phi ptr [ %38, %srpt_get_send_ioctx.exit.if.end61_crit_edge ], [ null, %if.end37.if.end61_crit_edge ]
  %wait_list = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %recv_ioctx, i32 0, i32 1
  %47 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i282.not = icmp eq ptr %48, %wait_list
  br i1 %cmp.i282.not, label %if.end61.if.end117_crit_edge, label %if.then64

if.end61.if.end117_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end117

if.then64:                                        ; preds = %if.end61
  %processing_wait_list = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 27
  %49 = ptrtoint ptr %processing_wait_list to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %processing_wait_list, align 1, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool65.not = icmp eq i8 %50, 0
  br i1 %tobool65.not, label %land.rhs, label %if.then64.if.end108_crit_edge

if.then64.if.end108_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end108

land.rhs:                                         ; preds = %if.then64
  %.b276 = load i1, ptr @srpt_handle_new_iu.__already_done, align 1
  br i1 %.b276, label %land.rhs.if.end108_crit_edge, label %if.then83, !prof !688

land.rhs.if.end108_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end108

if.then83:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_handle_new_iu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1646, i32 noundef 9, ptr noundef null) #19
  br label %if.end108

if.end108:                                        ; preds = %if.then83, %land.rhs.if.end108_crit_edge, %if.then64.if.end108_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %wait_list) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end108.list_del_init.exit_crit_edge

if.end108.list_del_init.exit_crit_edge:           ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %recv_ioctx, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wait_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end108.list_del_init.exit_crit_edge
  %57 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %wait_list, ptr %wait_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %recv_ioctx, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %wait_list, ptr %prev.i3.i, align 4
  br label %if.end117

if.end117:                                        ; preds = %list_del_init.exit, %if.end61.if.end117_crit_edge
  %59 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.334)
  switch i8 %20, label %do.end167 [
    i8 2, label %sw.bb
    i8 1, label %sw.bb119
    i8 3, label %do.end123
    i8 65, label %do.body127
    i8 66, label %do.body143
    i8 -63, label %do.end162
  ]

sw.bb:                                            ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @srpt_handle_cmd(ptr noundef nonnull %ch, ptr noundef nonnull %recv_ioctx, ptr noundef %send_ioctx.0)
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @srpt_handle_tsk_mgmt(ptr noundef nonnull %ch, ptr noundef nonnull %recv_ioctx, ptr noundef %send_ioctx.0)
  br label %sw.epilog

do.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #21
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #22
  br label %sw.epilog

do.body127:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_handle_new_iu.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_handle_new_iu, %if.then138)) #19
          to label %sw.epilog [label %if.then138], !srcloc !686

if.then138:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_handle_new_iu.__UNIQUE_ID_ddebug552, ptr noundef nonnull @.str.52) #19
  br label %sw.epilog

do.body143:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_handle_new_iu.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_handle_new_iu, %if.then155)) #19
          to label %sw.epilog [label %if.then155], !srcloc !686

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_handle_new_iu.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.54) #19
  br label %sw.epilog

do.end162:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #21
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #22
  br label %sw.epilog

do.end167:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #21
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv43) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end167, %do.end162, %if.then155, %do.body143, %if.then138, %do.body127, %do.end123, %sw.bb119, %sw.bb
  %tobool171.not = icmp eq ptr %send_ioctx.0, null
  br i1 %tobool171.not, label %sw.epilog.if.then175_crit_edge, label %lor.lhs.false172

sw.epilog.if.then175_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then175

lor.lhs.false172:                                 ; preds = %sw.epilog
  %recv_ioctx173 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx.0, i32 0, i32 2
  %60 = ptrtoint ptr %recv_ioctx173 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %recv_ioctx173, align 8
  %tobool174.not = icmp eq ptr %61, null
  br i1 %tobool174.not, label %lor.lhs.false172.if.then175_crit_edge, label %lor.lhs.false172.out_crit_edge

lor.lhs.false172.out_crit_edge:                   ; preds = %lor.lhs.false172
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

lor.lhs.false172.if.then175_crit_edge:            ; preds = %lor.lhs.false172
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then175

if.then175:                                       ; preds = %lor.lhs.false172.if.then175_crit_edge, %sw.epilog.if.then175_crit_edge
  %62 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sport, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list.i) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr.i) #19
  %66 = call ptr @memset(ptr %wr.i, i32 255, i32 16)
  %tobool.not.i283 = icmp eq ptr %65, null
  br i1 %tobool.not.i283, label %do.body4.i284, label %do.end9.i286, !prof !692

do.body4.i284:                                    ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 828, 0\0A.popsection", ""() #19, !srcloc !693
  unreachable

do.end9.i286:                                     ; preds = %if.then175
  %67 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 2
  %68 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 1
  %69 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma, align 4
  %71 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offset, align 4
  %add.i = add i32 %72, %70
  %conv.i285 = zext i32 %add.i to i64
  %73 = ptrtoint ptr %list.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv.i285, ptr %list.i, align 8
  %74 = load i32, ptr @srp_max_req_size, align 4
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %68, align 8
  %lkey.i = getelementptr inbounds %struct.srpt_device, ptr %65, i32 0, i32 2
  %76 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lkey.i, align 8
  %78 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %67, align 4
  %79 = ptrtoint ptr %recv_ioctx to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @srpt_recv_done, ptr %recv_ioctx, align 4
  %80 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %recv_ioctx, ptr %80, align 8
  %82 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %wr.i, align 8
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 2
  %83 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %list.i, ptr %sg_list.i, align 8
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 3
  %84 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %num_sge.i, align 4
  %use_srq.i = getelementptr inbounds %struct.srpt_device, ptr %65, i32 0, i32 7
  %85 = ptrtoint ptr %use_srq.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %use_srq.i, align 4, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool16.not.i = icmp eq i8 %86, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %do.end9.i286
  call void @__sanitizer_cov_trace_pc() #21
  %srq.i = getelementptr inbounds %struct.srpt_device, ptr %65, i32 0, i32 3
  %87 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %srq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #19
  %89 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !694
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %88, align 4
  %post_srq_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %91, i32 0, i32 1, i32 13
  %92 = ptrtoint ptr %post_srq_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %post_srq_recv.i.i, align 4
  %call.i.i287 = call i32 %93(ptr noundef %88, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #19
  br label %srpt_post_recv.exit

if.else.i:                                        ; preds = %do.end9.i286
  call void @__sanitizer_cov_trace_pc() #21
  %qp.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %94 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i1.i) #19
  %96 = ptrtoint ptr %dummy.i1.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i1.i, align 4, !annotation !694
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %95, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %98, i32 0, i32 1, i32 7
  %99 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %post_recv.i.i, align 4
  %call.i2.i = call i32 %100(ptr noundef %95, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i1.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i1.i) #19
  br label %srpt_post_recv.exit

srpt_post_recv.exit:                              ; preds = %if.else.i, %if.then17.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list.i) #19
  br label %out

out:                                              ; preds = %if.end.i.i291, %if.end233.out_crit_edge, %push.out_crit_edge, %srpt_post_recv.exit, %lor.lhs.false172.out_crit_edge
  %res.0.off0 = phi i1 [ false, %push.out_crit_edge ], [ true, %srpt_post_recv.exit ], [ true, %lor.lhs.false172.out_crit_edge ], [ false, %if.end233.out_crit_edge ], [ false, %if.end.i.i291 ]
  ret i1 %res.0.off0

push:                                             ; preds = %srpt_get_send_ioctx.exit.push_crit_edge, %do.end9.i.push_crit_edge, %do.end29.push_crit_edge
  %wait_list181 = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %recv_ioctx, i32 0, i32 1
  %101 = ptrtoint ptr %wait_list181 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %wait_list181, align 4
  %cmp.i288.not = icmp eq ptr %102, %wait_list181
  br i1 %cmp.i288.not, label %if.then184, label %push.out_crit_edge

push.out_crit_edge:                               ; preds = %push
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then184:                                       ; preds = %push
  %processing_wait_list186 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 27
  %103 = ptrtoint ptr %processing_wait_list186 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %processing_wait_list186, align 1, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool187.not = icmp eq i8 %104, 0
  br i1 %tobool187.not, label %if.then184.if.end233_crit_edge, label %land.rhs195

if.then184.if.end233_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end233

land.rhs195:                                      ; preds = %if.then184
  %.b275277 = load i1, ptr @srpt_handle_new_iu.__already_done.61, align 1
  br i1 %.b275277, label %land.rhs195.if.end233_crit_edge, label %if.then206, !prof !688

land.rhs195.if.end233_crit_edge:                  ; preds = %land.rhs195
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end233

if.then206:                                       ; preds = %land.rhs195
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_handle_new_iu.__already_done.61, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1683, i32 noundef 9, ptr noundef null) #19
  br label %if.end233

if.end233:                                        ; preds = %if.then206, %land.rhs195.if.end233_crit_edge, %if.then184.if.end233_crit_edge
  %cmd_wait_list = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 24
  %prev.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 24, i32 1
  %105 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i, align 4
  %call.i.i290 = tail call zeroext i1 @__list_add_valid(ptr noundef %wait_list181, ptr noundef %106, ptr noundef %cmd_wait_list) #19
  br i1 %call.i.i290, label %if.end.i.i291, label %if.end233.out_crit_edge

if.end233.out_crit_edge:                          ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end.i.i291:                                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #21
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %wait_list181, ptr %prev.i, align 4
  %108 = ptrtoint ptr %wait_list181 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %cmd_wait_list, ptr %wait_list181, align 4
  %prev3.i.i = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %recv_ioctx, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %wait_list181, ptr %106, align 4
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_handle_cmd(ptr nocapture noundef readonly %ch, ptr noundef %recv_ioctx, ptr noundef %send_ioctx) unnamed_addr #4 align 64 {
entry:
  %sg = alloca ptr, align 4
  %sg_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #19
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg_cnt) #19
  %1 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sg_cnt, align 4
  %tobool.not = icmp eq ptr %send_ioctx, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !692

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1499, 0\0A.popsection", ""() #19, !srcloc !703
  unreachable

do.end9:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.srpt_ioctx, ptr %recv_ioctx, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %offset = getelementptr inbounds %struct.srpt_ioctx, ptr %recv_ioctx, i32 0, i32 3
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %cmd11 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 8
  %tag = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 6
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tag, align 8
  %tag12 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %tag12 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tag12, align 8
  %task_attr = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 10
  %9 = ptrtoint ptr %task_attr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %task_attr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %11 = icmp ult i8 %10, 5
  br i1 %11, label %switch.lookup, label %do.end9.sw.epilog_crit_edge

do.end9.sw.epilog_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  %12 = sext i8 %10 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.srpt_handle_cmd, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end9.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 34, %do.end9.sw.epilog_crit_edge ]
  %sam_task_attr18 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %sam_task_attr18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %sam_task_attr18, align 8
  %imm_data_offset = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 16
  %15 = ptrtoint ptr %imm_data_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %imm_data_offset, align 4
  %buf_fmt.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 3
  %17 = ptrtoint ptr %buf_fmt.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf_fmt.i, align 1
  %19 = and i8 %18, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool25.not.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %tobool29.not.i = icmp ult i8 %18, 16
  %..i = select i1 %tobool29.not.i, i32 3, i32 1
  %.sink.i = select i1 %tobool25.not.i, i32 %..i, i32 2
  %data_direction.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 8, i32 6
  %20 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i, ptr %data_direction.i, align 4
  %21 = ptrtoint ptr %buf_fmt.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf_fmt.i, align 1
  %conv35.i = zext i8 %22 to i32
  %and36.i = and i32 %conv35.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and36.i)
  %cmp.i = icmp eq i32 %and36.i, 1
  br i1 %cmp.i, label %sw.epilog.if.then43.i_crit_edge, label %lor.lhs.false.i

sw.epilog.if.then43.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then43.i

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %23 = lshr i32 %conv35.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp41.i = icmp eq i32 %23, 1
  br i1 %cmp41.i, label %lor.lhs.false.i.if.then43.i_crit_edge, label %if.else46.i

lor.lhs.false.i.if.then43.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then43.i

if.then43.i:                                      ; preds = %lor.lhs.false.i.if.then43.i_crit_edge, %sw.epilog.if.then43.i_crit_edge
  %add_data.i.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 14
  %add_cdb_len.i.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 12
  %24 = ptrtoint ptr %add_cdb_len.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add_cdb_len.i.i, align 1
  %26 = and i8 %25, -4
  %and.i.i = zext i8 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add_data.i.i, i32 %and.i.i
  %len.i = getelementptr inbounds %struct.srp_direct_buf, ptr %add.ptr.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  %call45.i = call fastcc i32 @srpt_alloc_rw_ctxs(ptr noundef nonnull %send_ioctx, ptr noundef %add.ptr.i.i, i32 noundef 1, ptr noundef nonnull %sg, ptr noundef nonnull %sg_cnt) #19
  br label %srpt_get_desc_tbl.exit

if.else46.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and36.i)
  %cmp50.i = icmp eq i32 %and36.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp56.i = icmp eq i32 %23, 2
  %or.cond.i = or i1 %cmp50.i, %cmp56.i
  br i1 %or.cond.i, label %if.then58.i, label %if.else80.i

if.then58.i:                                      ; preds = %if.else46.i
  %add_data.i212.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 14
  %add_cdb_len.i213.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 12
  %29 = ptrtoint ptr %add_cdb_len.i213.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add_cdb_len.i213.i, align 1
  %31 = and i8 %30, -4
  %and.i214.i = zext i8 %31 to i32
  %add.ptr.i215.i = getelementptr i8, ptr %add_data.i212.i, i32 %and.i214.i
  %len60.i = getelementptr inbounds %struct.srp_direct_buf, ptr %add.ptr.i215.i, i32 0, i32 2
  %32 = ptrtoint ptr %len60.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len60.i, align 4
  %div211.i = lshr i32 %33, 4
  %data_out_desc_cnt.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 4
  %34 = ptrtoint ptr %data_out_desc_cnt.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data_out_desc_cnt.i, align 2
  %conv61.i = zext i8 %35 to i32
  %data_in_desc_cnt.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 5
  %36 = ptrtoint ptr %data_in_desc_cnt.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data_in_desc_cnt.i, align 1
  %conv62.i = zext i8 %37 to i32
  %add.i = add nuw nsw i32 %conv62.i, %conv61.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div211.i, i32 %add.i)
  %cmp63.i = icmp ugt i32 %div211.i, %add.i
  br i1 %cmp63.i, label %do.end67.i, label %if.end75.i

do.end67.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #21
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv61.i, i32 noundef %conv62.i, i32 noundef %33, i32 noundef 16) #22
  br label %do.end25

if.end75.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #21
  %len76.i = getelementptr inbounds %struct.srp_indirect_buf, ptr %add.ptr.i215.i, i32 0, i32 1
  %38 = ptrtoint ptr %len76.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len76.i, align 4
  %desc_list.i = getelementptr inbounds %struct.srp_indirect_buf, ptr %add.ptr.i215.i, i32 0, i32 2
  %call78.i = call fastcc i32 @srpt_alloc_rw_ctxs(ptr noundef nonnull %send_ioctx, ptr noundef %desc_list.i, i32 noundef %div211.i, ptr noundef nonnull %sg, ptr noundef nonnull %sg_cnt) #19
  br label %srpt_get_desc_tbl.exit

if.else80.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp84.i = icmp eq i32 %23, 3
  br i1 %cmp84.i, label %if.then86.i, label %if.else80.i.if.end29_crit_edge

if.else80.i.if.end29_crit_edge:                   ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29

if.then86.i:                                      ; preds = %if.else80.i
  %add_data.i216.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 14
  %add_cdb_len.i217.i = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 12
  %40 = ptrtoint ptr %add_cdb_len.i217.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add_cdb_len.i217.i, align 1
  %42 = and i8 %41, -4
  %and.i218.i = zext i8 %42 to i32
  %add.ptr.i219.i = getelementptr i8, ptr %add_data.i216.i, i32 %and.i218.i
  %conv88.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %conv88.i
  %43 = ptrtoint ptr %add.ptr.i219.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i219.i, align 4
  %add92.i = add i32 %44, %conv88.i
  %45 = load i32, ptr @srp_max_req_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add92.i, i32 %45)
  %cmp93.i = icmp ugt i32 %add92.i, %45
  br i1 %cmp93.i, label %do.end98.i, label %if.end102.i

do.end98.i:                                       ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #21
  %call101.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv88.i, i32 noundef %44, i32 noundef %45) #22
  br label %do.end25

if.end102.i:                                      ; preds = %if.then86.i
  %byte_len.i = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %recv_ioctx, i32 0, i32 2
  %46 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %byte_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add92.i)
  %cmp103.i = icmp ult i32 %47, %add92.i
  br i1 %cmp103.i, label %do.end108.i, label %if.end112.i

do.end108.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #21
  %call111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %47, i32 noundef %add92.i) #22
  br label %do.end25

if.end112.i:                                      ; preds = %if.end102.i
  %add.ptr113.i = getelementptr %struct.srp_imm_buf, ptr %add.ptr.i219.i, i32 1
  %cmp114.i = icmp ugt ptr %add.ptr113.i, %add.ptr.i
  br i1 %cmp114.i, label %do.end119.i, label %if.end122.i

do.end119.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #21
  %call121.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #22
  br label %do.end25

if.end122.i:                                      ; preds = %if.end112.i
  %recv_ioctx124.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 2
  %48 = ptrtoint ptr %recv_ioctx124.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %recv_ioctx, ptr %recv_ioctx124.i, align 8
  %49 = ptrtoint ptr %add.ptr.i to i32
  %and125.i = and i32 %49, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %if.end153.i, label %land.end.i

land.end.i:                                       ; preds = %if.end122.i
  %.b210.i = load i1, ptr @srpt_get_desc_tbl.__already_done, align 1
  br i1 %.b210.i, label %land.end.i.do.end25_crit_edge, label %if.then139.i, !prof !688

land.end.i.do.end25_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end25

if.then139.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_get_desc_tbl.__already_done, align 1
  %call144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #22
  br label %do.end25

if.end153.i:                                      ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #21
  %imm_sg.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 5
  tail call void @sg_init_one(ptr noundef %imm_sg.i, ptr noundef %add.ptr.i, i32 noundef %44) #19
  %50 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %imm_sg.i, ptr %sg, align 4
  %51 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %sg_cnt, align 4
  br label %if.end29

srpt_get_desc_tbl.exit:                           ; preds = %if.end75.i, %if.then43.i
  %data_len.0 = phi i32 [ %28, %if.then43.i ], [ %39, %if.end75.i ]
  %retval.2.i = phi i32 [ %call45.i, %if.then43.i ], [ %call78.i, %if.end75.i ]
  %52 = zext i32 %retval.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %retval.2.i, label %srpt_get_desc_tbl.exit.do.end25_crit_edge [
    i32 0, label %srpt_get_desc_tbl.exit.if.end29_crit_edge
    i32 -11, label %srpt_get_desc_tbl.exit.busy_crit_edge
  ]

srpt_get_desc_tbl.exit.busy_crit_edge:            ; preds = %srpt_get_desc_tbl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %busy

srpt_get_desc_tbl.exit.if.end29_crit_edge:        ; preds = %srpt_get_desc_tbl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29

srpt_get_desc_tbl.exit.do.end25_crit_edge:        ; preds = %srpt_get_desc_tbl.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end25

do.end25:                                         ; preds = %srpt_get_desc_tbl.exit.do.end25_crit_edge, %if.then139.i, %land.end.i.do.end25_crit_edge, %do.end119.i, %do.end108.i, %do.end98.i, %do.end67.i
  %53 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tag, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i64 noundef %54) #22
  br label %busy

if.end29:                                         ; preds = %srpt_get_desc_tbl.exit.if.end29_crit_edge, %if.end153.i, %if.else80.i.if.end29_crit_edge
  %data_len.092.off0 = phi i32 [ %data_len.0, %srpt_get_desc_tbl.exit.if.end29_crit_edge ], [ 0, %if.else80.i.if.end29_crit_edge ], [ %44, %if.end153.i ]
  %sess = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 28
  %55 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sess, align 4
  %sense_data = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 12
  %lun = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 8
  %call30 = tail call i64 @scsilun_to_int(ptr noundef %lun) #19
  %call32 = tail call i32 @target_init_cmd(ptr noundef %cmd11, ptr noundef %56, ptr noundef %sense_data, i64 noundef %call30, i32 noundef %data_len.092.off0, i32 noundef 32, i32 noundef %.sink.i, i32 noundef 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end51, label %do.body36

do.body36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_handle_cmd.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_handle_cmd, %if.then46)) #19
          to label %busy [label %if.then46], !srcloc !686

if.then46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #21
  %57 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %tag, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_handle_cmd.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.65, i32 noundef %call32, i64 noundef %58) #19
  br label %busy

if.end51:                                         ; preds = %if.end29
  %cdb = getelementptr inbounds %struct.srp_cmd, ptr %add.ptr, i32 0, i32 13
  %59 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sg, align 4
  %61 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sg_cnt, align 4
  %call52 = tail call i32 @target_submit_prep(ptr noundef %cmd11, ptr noundef %cdb, ptr noundef %60, i32 noundef %62, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 3264) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @target_submit(ptr noundef %cmd11) #19
  br label %cleanup

busy:                                             ; preds = %if.then46, %do.body36, %do.end25, %srpt_get_desc_tbl.exit.busy_crit_edge
  %call56 = tail call i32 @target_send_busy(ptr noundef %cmd11) #19
  br label %cleanup

cleanup:                                          ; preds = %busy, %if.end55, %if.end51.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_cnt) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_handle_tsk_mgmt(ptr noundef %ch, ptr nocapture noundef readonly %recv_ioctx, ptr noundef %send_ioctx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 28
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %tobool.not = icmp eq ptr %send_ioctx, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !692

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1590, 0\0A.popsection", ""() #19, !srcloc !704
  unreachable

do.end10:                                         ; preds = %entry
  %buf = getelementptr inbounds %struct.srpt_ioctx, ptr %recv_ioctx, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %offset = getelementptr inbounds %struct.srpt_ioctx, ptr %recv_ioctx, i32 0, i32 3
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %cmd12 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_handle_tsk_mgmt.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_handle_tsk_mgmt, %if.then21)) #19
          to label %do.end25 [label %if.then21], !srcloc !686

if.then21:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #21
  %tsk_mgmt_func = getelementptr inbounds %struct.srp_tsk_mgmt, ptr %add.ptr, i32 0, i32 7
  %6 = ptrtoint ptr %tsk_mgmt_func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tsk_mgmt_func, align 2
  %conv = zext i8 %7 to i32
  %task_tag = getelementptr inbounds %struct.srp_tsk_mgmt, ptr %add.ptr, i32 0, i32 9
  %8 = ptrtoint ptr %task_tag to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %task_tag, align 8
  %tag = getelementptr inbounds %struct.srp_tsk_mgmt, ptr %add.ptr, i32 0, i32 3
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tag, align 8
  %12 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_handle_tsk_mgmt.__UNIQUE_ID_ddebug551, ptr noundef nonnull @.str.82, i32 noundef %conv, i64 noundef %9, i64 noundef %11, ptr noundef %ch, ptr noundef %13) #19
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.end10
  %state.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 7
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 6
  br i1 %cmp.not.i, label %do.end25.srpt_set_cmd_state.exit_crit_edge, label %if.then.i

do.end25.srpt_set_cmd_state.exit_crit_edge:       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_set_cmd_state.exit

if.then.i:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %state.i, align 4
  br label %srpt_set_cmd_state.exit

srpt_set_cmd_state.exit:                          ; preds = %if.then.i, %do.end25.srpt_set_cmd_state.exit_crit_edge
  %tag27 = getelementptr inbounds %struct.srp_tsk_mgmt, ptr %add.ptr, i32 0, i32 3
  %17 = ptrtoint ptr %tag27 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tag27, align 8
  %tag29 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 8, i32 4
  %19 = ptrtoint ptr %tag29 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tag29, align 8
  %tsk_mgmt_func30 = getelementptr inbounds %struct.srp_tsk_mgmt, ptr %add.ptr, i32 0, i32 7
  %20 = ptrtoint ptr %tsk_mgmt_func30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tsk_mgmt_func30, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.336)
  switch i8 %21, label %sw.default.i [
    i8 1, label %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge
    i8 2, label %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge60
    i8 4, label %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge61
    i8 8, label %sw.bb3.i
    i8 64, label %sw.bb4.i
  ]

srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge61: ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srp_tmr_to_tcm.exit

srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge60: ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srp_tmr_to_tcm.exit

srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge: ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srp_tmr_to_tcm.exit

sw.bb3.i:                                         ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srp_tmr_to_tcm.exit

sw.bb4.i:                                         ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srp_tmr_to_tcm.exit

sw.default.i:                                     ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srp_tmr_to_tcm.exit

srp_tmr_to_tcm.exit:                              ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge, %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge60, %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge61
  %retval.0.i58 = phi i8 [ -1, %sw.default.i ], [ 3, %sw.bb4.i ], [ 5, %sw.bb3.i ], [ %21, %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge ], [ %21, %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge60 ], [ %21, %srpt_set_cmd_state.exit.srp_tmr_to_tcm.exit_crit_edge61 ]
  %lun = getelementptr inbounds %struct.srp_tsk_mgmt, ptr %add.ptr, i32 0, i32 5
  %call34 = tail call i64 @scsilun_to_int(ptr noundef %lun) #19
  %task_tag36 = getelementptr inbounds %struct.srp_tsk_mgmt, ptr %add.ptr, i32 0, i32 9
  %23 = ptrtoint ptr %task_tag36 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %task_tag36, align 8
  %call37 = tail call i32 @target_submit_tmr(ptr noundef %cmd12, ptr noundef %1, ptr noundef null, i64 noundef %call34, ptr noundef %add.ptr, i8 noundef zeroext %retval.0.i58, i32 noundef 3264, i64 noundef %24, i32 noundef 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp.not = icmp eq i32 %call37, 0
  br i1 %cmp.not, label %srp_tmr_to_tcm.exit.if.end41_crit_edge, label %if.then39

srp_tmr_to_tcm.exit.if.end41_crit_edge:           ; preds = %srp_tmr_to_tcm.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.then39:                                        ; preds = %srp_tmr_to_tcm.exit
  call void @__sanitizer_cov_trace_pc() #21
  %se_tmr_req = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 8, i32 22
  %25 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %se_tmr_req, align 8
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %response, align 1
  %se_tfo = getelementptr inbounds %struct.srpt_send_ioctx, ptr %send_ioctx, i32 0, i32 8, i32 26
  %28 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se_tfo, align 8
  %queue_tm_rsp = getelementptr inbounds %struct.target_core_fabric_ops, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %queue_tm_rsp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue_tm_rsp, align 4
  tail call void %31(ptr noundef %cmd12) #19
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %srp_tmr_to_tcm.exit.if.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_init_cmd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_prep(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_submit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_send_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @srpt_alloc_rw_ctxs(ptr noundef %ioctx, ptr nocapture noundef readonly %db, i32 noundef %nbufs, ptr nocapture noundef writeonly %sg, ptr nocapture noundef %sg_cnt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 8, i32 11
  %0 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags.i, align 8
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.target_reverse_dma_direction.exit_crit_edge

entry.target_reverse_dma_direction.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %target_reverse_dma_direction.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %data_direction.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp4.i = icmp eq i32 %3, 1
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 2, i32 %switch.select.i
  br label %target_reverse_dma_direction.exit

target_reverse_dma_direction.exit:                ; preds = %if.end.i, %entry.target_reverse_dma_direction.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.target_reverse_dma_direction.exit_crit_edge ], [ %switch.select5.i, %if.end.i ]
  %ch1 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 1
  %4 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nbufs)
  %cmp = icmp eq i32 %nbufs, 1
  br i1 %cmp, label %if.end6.sink.split, label %if.else

if.else:                                          ; preds = %target_reverse_dma_direction.exit
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nbufs, i32 88) #19
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !692

kmalloc_array.exit.thread:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %rw_ctxs3127 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 4
  %8 = ptrtoint ptr %rw_ctxs3127 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rw_ctxs3127, align 8
  br label %cleanup68

if.end7.i:                                        ; preds = %if.else
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #23
  %rw_ctxs3 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 4
  %10 = ptrtoint ptr %rw_ctxs3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i, ptr %rw_ctxs3, align 8
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup68_crit_edge, label %if.end7.i.if.end6_crit_edge

if.end7.i.if.end6_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.end7.i.cleanup68_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup68

if.end6.sink.split:                               ; preds = %target_reverse_dma_direction.exit
  call void @__sanitizer_cov_trace_pc() #21
  %s_rw_ctx = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 3
  %rw_ctxs3131 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 4
  %11 = ptrtoint ptr %rw_ctxs3131 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %s_rw_ctx, ptr %rw_ctxs3131, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.end7.i.if.end6_crit_edge
  %n_rw_ctx = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 10
  %12 = ptrtoint ptr %n_rw_ctx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %n_rw_ctx, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %nbufs)
  %cmp7148 = icmp ult i32 %conv, %nbufs
  br i1 %cmp7148, label %for.body.lr.ph, label %if.end6.cleanup68_crit_edge

if.end6.cleanup68_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup68

for.body.lr.ph:                                   ; preds = %if.end6
  %rw_ctxs9 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 4
  %sub = add nsw i32 %nbufs, -1
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %5, i32 0, i32 1
  %sport = getelementptr inbounds %struct.srpt_rdma_ch, ptr %5, i32 0, i32 12
  %n_rdma = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %db.addr.0152 = phi ptr [ %db, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0151 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc46, %for.inc.for.body_crit_edge ]
  %prev_nents.0150 = phi i32 [ -1, %for.body.lr.ph ], [ %55, %for.inc.for.body_crit_edge ]
  %prev.0149 = phi ptr [ null, %for.body.lr.ph ], [ %53, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %rw_ctxs9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rw_ctxs9, align 8
  %16 = ptrtoint ptr %db.addr.0152 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %db.addr.0152, align 8
  %len = getelementptr inbounds %struct.srp_direct_buf, ptr %db.addr.0152, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %key = getelementptr inbounds %struct.srp_direct_buf, ptr %db.addr.0152, i32 0, i32 1
  %20 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key, align 8
  %sg10 = getelementptr %struct.srpt_rw_ctx, ptr %15, i32 %i.0151, i32 1
  %nents = getelementptr %struct.srpt_rw_ctx, ptr %15, i32 %i.0151, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0151, i32 %sub)
  %cmp11 = icmp slt i32 %i.0151, %sub
  %call13 = tail call i32 @target_alloc_sgl(ptr noundef %sg10, ptr noundef %nents, i32 noundef %19, i1 noundef zeroext false, i1 noundef zeroext %cmp11) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.srpt_rw_ctx, ptr %15, i32 %i.0151
  %22 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp, align 4
  %24 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sport, align 4
  %port = getelementptr inbounds %struct.srpt_port, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port, align 1
  %conv17 = zext i8 %27 to i32
  %28 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sg10, align 8
  %30 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nents, align 4
  %call20 = tail call i32 @rdma_rw_ctx_init(ptr noundef %arrayidx, ptr noundef %23, i32 noundef %conv17, ptr noundef %29, i32 noundef %31, i32 noundef 0, i64 noundef %17, i32 noundef %21, i32 noundef %retval.0.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  %32 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg10, align 8
  %34 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nents, align 4
  tail call void @target_free_sgl(ptr noundef %33, i32 noundef %35) #19
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %36 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %n_rdma, align 8
  %38 = trunc i32 %call20 to i8
  %conv28 = add i8 %37, %38
  store i8 %conv28, ptr %n_rdma, align 8
  %39 = ptrtoint ptr %n_rw_ctx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %n_rw_ctx, align 1
  %inc = add i8 %40, 1
  store i8 %inc, ptr %n_rw_ctx, align 1
  %tobool30.not = icmp eq ptr %prev.0149, null
  br i1 %tobool30.not, label %if.else36, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  %sub32 = add i32 %prev_nents.0150, -1
  %arrayidx33 = getelementptr %struct.scatterlist, ptr %prev.0149, i32 %sub32
  %41 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx33, align 4
  %and.i125 = and i32 %42, -3
  store i32 %and.i125, ptr %arrayidx33, align 4
  %43 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sg10, align 8
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %prev.0149, i32 %prev_nents.0150
  %offset.i.i = getelementptr %struct.scatterlist, ptr %prev.0149, i32 %prev_nents.0150, i32 1
  %45 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %prev.0149, i32 %prev_nents.0150, i32 2
  %46 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %length.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  %or.i.i = and i32 %47, -4
  %and.i.i = or i32 %or.i.i, 1
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  br label %for.inc

if.else36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  %49 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sg10, align 8
  %51 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %sg, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then23, %for.body.cleanup_crit_edge
  %ret.0 = phi i32 [ %call20, %if.then23 ], [ %call13, %for.body.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0151)
  %cmp47154.not = icmp eq i32 %i.0151, 0
  br i1 %cmp47154.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

for.inc:                                          ; preds = %if.else36, %if.then31
  %52 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sg10, align 8
  %54 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nents, align 4
  %56 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sg_cnt, align 4
  %add42 = add i32 %57, %55
  store i32 %add42, ptr %sg_cnt, align 4
  %inc46 = add nuw i32 %i.0151, 1
  %incdec.ptr = getelementptr %struct.srp_direct_buf, ptr %db.addr.0152, i32 1
  %exitcond.not = icmp eq i32 %inc46, %nbufs
  br i1 %exitcond.not, label %for.inc.cleanup68_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.cleanup68_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup68

while.body:                                       ; preds = %while.body.while.body_crit_edge, %cleanup.while.body_crit_edge
  %dec155.in = phi i32 [ %dec155, %while.body.while.body_crit_edge ], [ %i.0151, %cleanup.while.body_crit_edge ]
  %dec155 = add nsw i32 %dec155.in, -1
  %58 = ptrtoint ptr %rw_ctxs9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rw_ctxs9, align 8
  %arrayidx51 = getelementptr %struct.srpt_rw_ctx, ptr %59, i32 %dec155
  %60 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %qp, align 4
  %62 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sport, align 4
  %port55 = getelementptr inbounds %struct.srpt_port, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %port55 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %port55, align 1
  %conv56 = zext i8 %65 to i32
  %sg57 = getelementptr %struct.srpt_rw_ctx, ptr %59, i32 %dec155, i32 1
  %66 = ptrtoint ptr %sg57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sg57, align 8
  %nents58 = getelementptr %struct.srpt_rw_ctx, ptr %59, i32 %dec155, i32 2
  %68 = ptrtoint ptr %nents58 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nents58, align 4
  tail call void @rdma_rw_ctx_destroy(ptr noundef %arrayidx51, ptr noundef %61, i32 noundef %conv56, ptr noundef %67, i32 noundef %69, i32 noundef %retval.0.i) #19
  %70 = ptrtoint ptr %sg57 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sg57, align 8
  %72 = ptrtoint ptr %nents58 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nents58, align 4
  tail call void @target_free_sgl(ptr noundef %71, i32 noundef %73) #19
  %cmp47 = icmp sgt i32 %dec155.in, 1
  br i1 %cmp47, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %cleanup.while.end_crit_edge
  %74 = ptrtoint ptr %rw_ctxs9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rw_ctxs9, align 8
  %s_rw_ctx62 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 3
  %cmp63.not = icmp eq ptr %75, %s_rw_ctx62
  br i1 %cmp63.not, label %while.end.cleanup68_crit_edge, label %if.then65

while.end.cleanup68_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup68

if.then65:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef %75) #19
  br label %cleanup68

cleanup68:                                        ; preds = %if.then65, %while.end.cleanup68_crit_edge, %for.inc.cleanup68_crit_edge, %if.end6.cleanup68_crit_edge, %if.end7.i.cleanup68_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ -12, %if.end7.i.cleanup68_crit_edge ], [ %ret.0, %if.then65 ], [ %ret.0, %while.end.cleanup68_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ 0, %if.end6.cleanup68_crit_edge ], [ 0, %for.inc.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_alloc_sgl(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_free_sgl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_ctx_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_tmr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_srq_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_cm_rtu_recv(ptr noundef %ch) unnamed_addr #4 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %wr.i = alloca %struct.ib_rdma_wr, align 8
  %qp_attr.i = alloca %struct.ib_qp_attr, align 8
  %attr_mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %using_rdma_cm = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 26
  %0 = ptrtoint ptr %using_rdma_cm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %using_rdma_cm, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

cond.false:                                       ; preds = %entry
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i) #19
  %4 = call ptr @memset(ptr %qp_attr.i, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_mask.i) #19
  %5 = ptrtoint ptr %attr_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %attr_mask.i, align 4, !annotation !694
  %6 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %qp_attr.i, align 8
  %7 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = call i32 @ib_cm_init_qp_attr(ptr noundef %9, ptr noundef nonnull %qp_attr.i, ptr noundef nonnull %attr_mask.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.false.srpt_ch_qp_rts.exit_crit_edge

cond.false.srpt_ch_qp_rts.exit_crit_edge:         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_ch_qp_rts.exit

if.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #21
  %max_rd_atomic.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i, i32 0, i32 16
  %10 = ptrtoint ptr %max_rd_atomic.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %max_rd_atomic.i, align 2
  %11 = ptrtoint ptr %attr_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr_mask.i, align 4
  %call1.i = call i32 @ib_modify_qp(ptr noundef %3, ptr noundef nonnull %qp_attr.i, i32 noundef %12) #19
  br label %srpt_ch_qp_rts.exit

srpt_ch_qp_rts.exit:                              ; preds = %if.end.i, %cond.false.srpt_ch_qp_rts.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %cond.false.srpt_ch_qp_rts.exit_crit_edge ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_mask.i) #19
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %phi.cmp = icmp slt i32 %ret.0.i, 0
  br i1 %phi.cmp, label %do.end, label %srpt_ch_qp_rts.exit.if.end_crit_edge

srpt_ch_qp_rts.exit.if.end_crit_edge:             ; preds = %srpt_ch_qp_rts.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %srpt_ch_qp_rts.exit
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %13 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qp_num, align 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %sess_name, i32 noundef %16) #22
  %call3 = call fastcc zeroext i1 @srpt_close_ch(ptr noundef %ch)
  br label %cleanup

if.end:                                           ; preds = %srpt_ch_qp_rts.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %spinlock.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 17
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #19
  %state.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 18
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5.i = icmp eq i32 %18, 0
  br i1 %cmp5.i, label %if.end15, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #19
  %sess_name10 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %qp12 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %19 = ptrtoint ptr %qp12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp12, align 4
  %qp_num13 = getelementptr inbounds %struct.ib_qp, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %qp_num13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qp_num13, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef %sess_name10, i32 noundef %22) #22
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %state.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wr.i) #19
  %24 = call ptr @memset(ptr %wr.i, i32 0, i32 56)
  %25 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 1
  %zw_cqe.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %zw_cqe.i, ptr %25, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 5
  %27 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %send_flags.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_zerolength_write.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_cm_rtu_recv, %if.then.i74)) #19
          to label %srpt_zerolength_write.exit [label %if.then.i74], !srcloc !686

if.then.i74:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %qp.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %28 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qp_num.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_zerolength_write.__UNIQUE_ID_ddebug543, ptr noundef nonnull @.str.204, ptr noundef %sess_name.i, i32 noundef %31) #19
  br label %srpt_zerolength_write.exit

srpt_zerolength_write.exit:                       ; preds = %if.then.i74, %if.end15
  %qp4.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %32 = ptrtoint ptr %qp4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qp4.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #19
  %34 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !694
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %33, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %36, i32 0, i32 1, i32 6
  %37 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i = call i32 %38(ptr noundef %33, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wr.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp17 = icmp slt i32 %call.i.i, 0
  br i1 %cmp17, label %land.rhs, label %srpt_zerolength_write.exit.cleanup_crit_edge

srpt_zerolength_write.exit.cleanup_crit_edge:     ; preds = %srpt_zerolength_write.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs:                                         ; preds = %srpt_zerolength_write.exit
  %.b72 = load i1, ptr @srpt_cm_rtu_recv.__already_done, align 1
  br i1 %.b72, label %land.rhs.cleanup_crit_edge, label %if.then25, !prof !688

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_cm_rtu_recv.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2623, i32 noundef 9, ptr noundef nonnull @.str.201, i32 noundef %call.i.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %land.rhs.cleanup_crit_edge, %srpt_zerolength_write.exit.cleanup_crit_edge, %do.end8, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @srpt_disconnect_ch(ptr noundef %ch) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #19
  %state.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 18
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5.i = icmp ult i32 %1, 2
  br i1 %cmp5.i, label %if.end, label %srpt_set_ch_state.exit

srpt_set_ch_state.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #19
  %using_rdma_cm = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 26
  %3 = ptrtoint ptr %using_rdma_cm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %using_rdma_cm, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %5 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call2 = tail call i32 @rdma_disconnect(ptr noundef %7) #19
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @ib_send_cm_dreq(ptr noundef %7, ptr noundef null, i8 noundef zeroext 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call7 = tail call i32 @ib_send_cm_drep(ptr noundef %9, ptr noundef null, i8 noundef zeroext 0) #19
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then1
  %ret.0 = phi i32 [ %call2, %if.then1 ], [ %call7, %if.then5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp10 = icmp slt i32 %ret.0, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %call11 = tail call fastcc zeroext i1 @srpt_close_ch(ptr noundef %ch)
  %spec.select = select i1 %call11, i32 0, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %srpt_set_ch_state.exit
  %retval.0 = phi i32 [ -107, %srpt_set_ch_state.exit ], [ %ret.0, %if.end9.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ], [ %call4, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @srpt_close_ch(ptr noundef %ch) unnamed_addr #4 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %wr.i = alloca %struct.ib_rdma_wr, align 8
  %qp_attr.i = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #19
  %state.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 18
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5.i = icmp ult i32 %1, 3
  br i1 %cmp5.i, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_close_ch.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_close_ch, %if.then4)) #19
          to label %cleanup [label %if.then4], !srcloc !686

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_close_ch.__UNIQUE_ID_ddebug560, ptr noundef nonnull @.str.207, ptr noundef %sess_name) #19
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #19
  %kref = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #19
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #19, !srcloc !705
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !692

if.end5.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !688

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #19
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i) #19
  %5 = call ptr @memset(ptr %qp_attr.i, i32 255, i32 216)
  %6 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %qp_attr.i, align 8
  %qp.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qp.i, align 4
  %call.i = call i32 @ib_modify_qp(ptr noundef %8, ptr noundef nonnull %qp_attr.i, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end10, label %kref_get.exit.if.end15_crit_edge

kref_get.exit.if.end15_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end15

do.end10:                                         ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name12 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %9 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qp.i, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qp_num, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef %sess_name12, i32 noundef %12, i32 noundef %call.i) #22
  br label %if.end15

if.end15:                                         ; preds = %do.end10, %kref_get.exit.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wr.i) #19
  %13 = call ptr @memset(ptr %wr.i, i32 0, i32 56)
  %14 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 1
  %zw_cqe.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %zw_cqe.i, ptr %14, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 5
  %16 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %send_flags.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_zerolength_write.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_close_ch, %if.then.i97)) #19
          to label %srpt_zerolength_write.exit [label %if.then.i97], !srcloc !686

if.then.i97:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %17 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qp_num.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_zerolength_write.__UNIQUE_ID_ddebug543, ptr noundef nonnull @.str.204, ptr noundef %sess_name.i, i32 noundef %20) #19
  br label %srpt_zerolength_write.exit

srpt_zerolength_write.exit:                       ; preds = %if.then.i97, %if.end15
  %21 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #19
  %23 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !694
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %22, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i = call i32 %27(ptr noundef %22, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wr.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp17 = icmp slt i32 %call.i.i, 0
  br i1 %cmp17, label %do.end21, label %srpt_zerolength_write.exit.if.end76_crit_edge

srpt_zerolength_write.exit.if.end76_crit_edge:    ; preds = %srpt_zerolength_write.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end76

do.end21:                                         ; preds = %srpt_zerolength_write.exit
  %sess_name23 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %28 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qp.i, align 4
  %qp_num26 = getelementptr inbounds %struct.ib_qp, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %qp_num26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qp_num26, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef %sess_name23, i32 noundef %31, i32 noundef %call.i.i) #22
  %call2.i99 = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #19
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp5.i101 = icmp ult i32 %33, 4
  br i1 %cmp5.i101, label %if.then29, label %land.end

if.then29:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %state.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i99) #19
  %release_work = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i104 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %release_work) #19
  br label %if.end76

land.end:                                         ; preds = %do.end21
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i99) #19
  %.b95 = load i1, ptr @srpt_close_ch.__already_done, align 1
  br i1 %.b95, label %land.end.if.end76_crit_edge, label %if.then41, !prof !688

land.end.if.end76_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end76

if.then41:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_close_ch.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1921, i32 noundef 9, ptr noundef null) #19
  br label %if.end76

if.end76:                                         ; preds = %if.then41, %land.end.if.end76_crit_edge, %if.then29, %srpt_zerolength_write.exit.if.end76_crit_edge
  %call.i.i.i.i.i.i105 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !706
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #19
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #19, !srcloc !707
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i107, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i106, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !688

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #19
  br label %cleanup

if.then.i107:                                     ; preds = %if.end76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !708
  %sport.i.i = getelementptr %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 12
  %37 = ptrtoint ptr %sport.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sport.i.i, align 4
  %refcount.i.i.i = getelementptr inbounds %struct.srpt_port, ptr %38, i32 0, i32 11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !695
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #19
  %39 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #19, !srcloc !696
  %asmresult.i.i.i.i.i.i1.i = extractvalue { i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !697
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i1.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i1.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i107.srpt_drop_sport_ref.exit.i.i_crit_edge

if.then.i107.srpt_drop_sport_ref.exit.i.i_crit_edge: ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_drop_sport_ref.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i107
  %freed_channels.i.i.i = getelementptr inbounds %struct.srpt_port, ptr %38, i32 0, i32 12
  %40 = ptrtoint ptr %freed_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %freed_channels.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.srpt_drop_sport_ref.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.srpt_drop_sport_ref.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_drop_sport_ref.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @complete(ptr noundef nonnull %41) #19
  br label %srpt_drop_sport_ref.exit.i.i

srpt_drop_sport_ref.exit.i.i:                     ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.srpt_drop_sport_ref.exit.i.i_crit_edge, %if.then.i107.srpt_drop_sport_ref.exit.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %ch, null
  br i1 %tobool.not.i.i, label %srpt_drop_sport_ref.exit.i.i.cleanup_crit_edge, label %do.end.i.i

srpt_drop_sport_ref.exit.i.i.cleanup_crit_edge:   ; preds = %srpt_drop_sport_ref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end.i.i:                                       ; preds = %srpt_drop_sport_ref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rcu.i.i = getelementptr %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 6
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %srpt_drop_sport_ref.exit.i.i.cleanup_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then4, %do.body
  ret i1 %cmp5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @srpt_cm_req_recv(ptr noundef %sdev, ptr noundef %ib_cm_id, ptr noundef %rdma_cm_id, i8 noundef zeroext %port_num, i16 noundef zeroext %pkey, ptr noundef %req, ptr noundef %src_addr) unnamed_addr #4 align 64 {
entry:
  %qp_attr.i = alloca %struct.ib_qp_attr, align 8
  %attr_mask.i = alloca i32, align 4
  %i_port_id = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %port_num to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %i_port_id) #19
  %0 = call ptr @memset(ptr %i_port_id, i32 255, i32 36)
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !689
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %land.rhs

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42

land.rhs:                                         ; preds = %entry
  %.b953 = load i1, ptr @srpt_cm_req_recv.__already_done, align 1
  br i1 %.b953, label %land.rhs.if.end42_crit_edge, label %if.then, !prof !688

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_cm_req_recv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2163, i32 noundef 9, ptr noundef null) #19
  br label %if.end42

if.end42:                                         ; preds = %if.then, %land.rhs.if.end42_crit_edge, %entry.if.end42_crit_edge
  %req_it_iu_len = getelementptr inbounds %struct.srp_login_req, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %req_it_iu_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_it_iu_len, align 8
  %initiator_port_id = getelementptr inbounds %struct.srp_login_req, ptr %req, i32 0, i32 10
  %target_port_id = getelementptr inbounds %struct.srp_login_req, ptr %req, i32 0, i32 11
  %gid = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 6
  %conv56 = zext i16 %pkey to i32
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %initiator_port_id, ptr noundef %target_port_id, i32 noundef %3, i32 noundef %conv, ptr noundef %gid, i32 noundef %conv56) #22
  %mutex.i = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 13
  %nexus_list.i = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 14
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end29.i, %if.end42
  %tmp_nexus.0.i = phi ptr [ null, %if.end42 ], [ %call7.i.i.i, %if.end29.i ]
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #19
  %4 = ptrtoint ptr %nexus_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn71.i = load ptr, ptr %nexus_list.i, align 4
  %cmp.not72.i = icmp eq ptr %.pn71.i, %nexus_list.i
  br i1 %cmp.not72.i, label %for.cond.i.land.lhs.true15.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  br label %for.body.i

for.cond.i.land.lhs.true15.i_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true15.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %.pn73.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn71.i, %for.cond.i.for.body.i_crit_edge ]
  %i_port_id4.i = getelementptr i8, ptr %.pn73.i, i32 16
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %i_port_id4.i, ptr noundef dereferenceable(16) %initiator_port_id, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp5.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %t_port_id6.i = getelementptr i8, ptr %.pn73.i, i32 32
  %bcmp55.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %t_port_id6.i, ptr noundef dereferenceable(16) %target_port_id, i32 16) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp55.i)
  %cmp9.i = icmp eq i32 %bcmp55.i, 0
  br i1 %cmp9.i, label %for.end.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %.pn73.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn73.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %nexus_list.i
  br i1 %cmp.not.i, label %for.inc.i.land.lhs.true15.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.land.lhs.true15.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true15.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %n.0.le.i = getelementptr i8, ptr %.pn73.i, i32 -8
  %tobool.not.i = icmp eq ptr %n.0.le.i, null
  br i1 %tobool.not.i, label %for.end.i.land.lhs.true15.i_crit_edge, label %for.end.i.srpt_get_nexus.exit_crit_edge

for.end.i.srpt_get_nexus.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_get_nexus.exit

for.end.i.land.lhs.true15.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true15.i

land.lhs.true15.i:                                ; preds = %for.end.i.land.lhs.true15.i_crit_edge, %for.inc.i.land.lhs.true15.i_crit_edge, %for.cond.i.land.lhs.true15.i_crit_edge
  %tobool16.not.i = icmp eq ptr %tmp_nexus.0.i, null
  br i1 %tobool16.not.i, label %if.end24.i, label %if.then17.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  %entry18.i = getelementptr inbounds %struct.srpt_nexus, ptr %tmp_nexus.0.i, i32 0, i32 1
  %prev.i.i = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 14, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry18.i, ptr noundef %7, ptr noundef %nexus_list.i) #19
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then17.i.srpt_get_nexus.exit_crit_edge

if.then17.i.srpt_get_nexus.exit_crit_edge:        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_get_nexus.exit

if.end.i.i.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %entry18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nexus_list.i, ptr %entry18.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.srpt_nexus, ptr %tmp_nexus.0.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !709
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry18.i, ptr %7, align 4
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry18.i, ptr %prev.i.i, align 4
  br label %srpt_get_nexus.exit

if.end24.i:                                       ; preds = %land.lhs.true15.i
  tail call void @mutex_unlock(ptr noundef %mutex.i) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 56) #24
  %tobool26.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool26.not.i, label %srpt_get_nexus.exit.thread, label %if.end29.i

srpt_get_nexus.exit.thread:                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef null) #19
  br label %if.then64

if.end29.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %ch_list.i = getelementptr inbounds %struct.srpt_nexus, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ch_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %ch_list.i, ptr %ch_list.i, align 8
  %prev.i57.i = getelementptr inbounds %struct.srpt_nexus, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ch_list.i, ptr %prev.i57.i, align 4
  %i_port_id30.i = getelementptr inbounds %struct.srpt_nexus, ptr %call7.i.i.i, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %i_port_id30.i, ptr %initiator_port_id, i32 16)
  %t_port_id32.i = getelementptr inbounds %struct.srpt_nexus, ptr %call7.i.i.i, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %t_port_id32.i, ptr %target_port_id, i32 16)
  br label %for.cond.i

srpt_get_nexus.exit:                              ; preds = %if.end.i.i.i, %if.then17.i.srpt_get_nexus.exit_crit_edge, %for.end.i.srpt_get_nexus.exit_crit_edge
  %tmp_nexus.1.ph.i = phi ptr [ null, %if.end.i.i.i ], [ null, %if.then17.i.srpt_get_nexus.exit_crit_edge ], [ %tmp_nexus.0.i, %for.end.i.srpt_get_nexus.exit_crit_edge ]
  %nexus.2.ph.i = phi ptr [ %tmp_nexus.0.i, %if.end.i.i.i ], [ %tmp_nexus.0.i, %if.then17.i.srpt_get_nexus.exit_crit_edge ], [ %n.0.le.i, %for.end.i.srpt_get_nexus.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #19
  tail call void @kfree(ptr noundef %tmp_nexus.1.ph.i) #19
  %cmp.i = icmp ugt ptr %nexus.2.ph.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %srpt_get_nexus.exit.if.then64_crit_edge, label %if.end66

srpt_get_nexus.exit.if.then64_crit_edge:          ; preds = %srpt_get_nexus.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then64

if.then64:                                        ; preds = %srpt_get_nexus.exit.if.then64_crit_edge, %srpt_get_nexus.exit.thread
  %nexus.3.i995 = phi ptr [ inttoptr (i32 -12 to ptr), %srpt_get_nexus.exit.thread ], [ %nexus.2.ph.i, %srpt_get_nexus.exit.if.then64_crit_edge ]
  %17 = ptrtoint ptr %nexus.3.i995 to i32
  br label %cleanup691

if.end66:                                         ; preds = %srpt_get_nexus.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 52) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i964 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 32) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i966 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 28) #24
  %tobool70.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool70.not, label %if.end66.cleanup691_crit_edge, label %lor.lhs.false

if.end66.cleanup691_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup691

lor.lhs.false:                                    ; preds = %if.end66
  %tobool71.not = icmp eq ptr %call7.i.i964, null
  br i1 %tobool71.not, label %lor.lhs.false.cleanup691_crit_edge, label %lor.lhs.false72

lor.lhs.false.cleanup691_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup691

lor.lhs.false72:                                  ; preds = %lor.lhs.false
  %tobool73.not = icmp eq ptr %call7.i.i966, null
  br i1 %tobool73.not, label %lor.lhs.false72.cleanup691_crit_edge, label %if.end75

lor.lhs.false72.cleanup691_crit_edge:             ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup691

if.end75:                                         ; preds = %lor.lhs.false72
  %21 = load i32, ptr @srp_max_req_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %21)
  %cmp76 = icmp ugt i32 %3, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp79 = icmp ult i32 %3, 64
  %or.cond = or i1 %cmp79, %cmp76
  br i1 %or.cond, label %if.then81, label %if.end87

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #21
  %reason = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %22 = ptrtoint ptr %reason to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65538, ptr %reason, align 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %3, i32 noundef 64, i32 noundef %21) #22
  br label %do.end670

if.end87:                                         ; preds = %if.end75
  %enabled = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 2
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enabled, align 8, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool88.not = icmp eq i8 %24, 0
  br i1 %tobool88.not, label %if.then89, label %if.end99

if.then89:                                        ; preds = %if.end87
  %reason90 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %25 = ptrtoint ptr %reason90 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65537, ptr %reason90, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 13, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i967 = icmp eq ptr %31, null
  br i1 %tobool.not.i967, label %if.end.i, label %if.then89.dev_name.exit_crit_edge

if.then89.dev_name.exit_crit_edge:                ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #21
  %32 = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then89.dev_name.exit_crit_edge
  %retval.0.i968 = phi ptr [ %34, %if.end.i ], [ %31, %if.then89.dev_name.exit_crit_edge ]
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %retval.0.i968, i32 noundef %conv) #22
  br label %do.end670

if.end99:                                         ; preds = %if.end87
  %35 = ptrtoint ptr %target_port_id to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %target_port_id, align 8
  %37 = load i64, ptr @srpt_service_guid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %37)
  %cmp102.not = icmp eq i64 %36, %37
  br i1 %cmp102.not, label %lor.lhs.false104, label %if.end99.if.then109_crit_edge

if.end99.if.then109_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then109

lor.lhs.false104:                                 ; preds = %if.end99
  %add.ptr = getelementptr %struct.srp_login_req, ptr %req, i32 0, i32 11, i32 8
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %36)
  %cmp107.not = icmp eq i64 %39, %36
  br i1 %cmp107.not, label %if.end116, label %lor.lhs.false104.if.then109_crit_edge

lor.lhs.false104.if.then109_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then109

if.then109:                                       ; preds = %lor.lhs.false104.if.then109_crit_edge, %if.end99.if.then109_crit_edge
  %reason110 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %40 = ptrtoint ptr %reason110 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 65539, ptr %reason110, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #22
  br label %do.end670

if.end116:                                        ; preds = %lor.lhs.false104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i970 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 244) #24
  %tobool118.not = icmp eq ptr %call7.i.i970, null
  br i1 %tobool118.not, label %if.then119, label %if.end126

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #21
  %reason120 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %42 = ptrtoint ptr %reason120 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65537, ptr %reason120, align 4
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #22
  br label %do.end670

if.end126:                                        ; preds = %if.end116
  %kref = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #19
  %43 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 1, ptr %kref, align 8
  %pkey127 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 25
  %44 = ptrtoint ptr %pkey127 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %pkey, ptr %pkey127, align 8
  %45 = ptrtoint ptr %call7.i.i970 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %nexus.2.ph.i, ptr %call7.i.i970, align 8
  %zw_cqe = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 5
  %46 = ptrtoint ptr %zw_cqe to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @srpt_zerolength_write_done, ptr %zw_cqe, align 4
  %release_work = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 30
  tail call void @__init_work(ptr noundef %release_work, i32 noundef 0) #19
  %47 = ptrtoint ptr %release_work to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %release_work, align 8
  %lockdep_map = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 30, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.117, ptr noundef nonnull @srpt_cm_req_recv.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %entry133 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 30, i32 1
  %48 = ptrtoint ptr %entry133 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry133, ptr %entry133, align 4
  %prev.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 30, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry133, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 30, i32 2
  %50 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @srpt_release_channel_work, ptr %func, align 4
  %sport137 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 12
  %51 = ptrtoint ptr %sport137 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx, ptr %sport137, align 4
  %tobool138.not = icmp eq ptr %ib_cm_id, null
  br i1 %tobool138.not, label %if.else, label %if.then139

if.then139:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #21
  %context = getelementptr inbounds %struct.ib_cm_id, ptr %ib_cm_id, i32 0, i32 1
  br label %if.end142

if.else:                                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #21
  %using_rdma_cm = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 26
  %52 = ptrtoint ptr %using_rdma_cm to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %using_rdma_cm, align 2
  %context141 = getelementptr inbounds %struct.rdma_cm_id, ptr %rdma_cm_id, i32 0, i32 1
  br label %if.end142

if.end142:                                        ; preds = %if.else, %if.then139
  %context141.sink = phi ptr [ %context141, %if.else ], [ %context, %if.then139 ]
  %ib_cm_id.sink = phi ptr [ %rdma_cm_id, %if.else ], [ %ib_cm_id, %if.then139 ]
  %53 = ptrtoint ptr %context141.sink to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i970, ptr %context141.sink, align 4
  %54 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ib_cm_id.sink, ptr %54, align 8
  %56 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sdev, align 8
  %max_qp_wr = getelementptr inbounds %struct.ib_device, ptr %57, i32 0, i32 22, i32 8
  %58 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_qp_wr, align 8
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 128)
  %rq_size = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 9
  %61 = ptrtoint ptr %rq_size to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %rq_size, align 8
  %spinlock = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.119, ptr noundef nonnull @srpt_cm_req_recv.__key.118, i16 noundef signext 3) #19
  %state = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 18
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %state, align 4
  %cmd_wait_list = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 24
  %63 = ptrtoint ptr %cmd_wait_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %cmd_wait_list, ptr %cmd_wait_list, align 8
  %prev.i971 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 24, i32 1
  %64 = ptrtoint ptr %prev.i971 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %cmd_wait_list, ptr %prev.i971, align 4
  %65 = ptrtoint ptr %sport137 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sport137, align 4
  %srp_max_rsp_size = getelementptr inbounds %struct.srpt_port, ptr %66, i32 0, i32 10, i32 1
  %67 = ptrtoint ptr %srp_max_rsp_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %srp_max_rsp_size, align 4
  %max_rsp_size = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 10
  %69 = ptrtoint ptr %max_rsp_size to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %max_rsp_size, align 4
  %call153 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.120, i32 noundef %68, i32 noundef 512, i32 noundef 0, ptr noundef null) #19
  %rsp_buf_cache = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 19
  %70 = ptrtoint ptr %rsp_buf_cache to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call153, ptr %rsp_buf_cache, align 8
  %tobool155.not = icmp eq ptr %call153, null
  br i1 %tobool155.not, label %if.end142.free_ch_crit_edge, label %if.end157

if.end142.free_ch_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_ch

if.end157:                                        ; preds = %if.end142
  %71 = ptrtoint ptr %sport137 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sport137, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %75 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rq_size, align 8
  %call162 = tail call fastcc ptr @srpt_alloc_ioctx_ring(ptr noundef %74, i32 noundef %76, i32 noundef 696, ptr noundef nonnull %call153, i32 noundef 0, i32 noundef 1)
  %ioctx_ring = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 20
  %77 = ptrtoint ptr %ioctx_ring to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call162, ptr %ioctx_ring, align 4
  %tobool164.not = icmp eq ptr %call162, null
  br i1 %tobool164.not, label %do.end168, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end157
  %78 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rq_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp1741021 = icmp sgt i32 %79, 0
  br i1 %cmp1741021, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end168:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #21
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #22
  %reason171 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %80 = ptrtoint ptr %reason171 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 65537, ptr %reason171, align 4
  br label %free_rsp_cache

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.01022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %81 = ptrtoint ptr %ioctx_ring to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ioctx_ring, align 4
  %arrayidx177 = getelementptr ptr, ptr %82, i32 %i.01022
  %83 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx177, align 4
  %ch178 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %ch178 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i970, ptr %ch178, align 4
  %inc = add nuw nsw i32 %i.01022, 1
  %86 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rq_size, align 8
  %cmp174 = icmp slt i32 %inc, %87
  br i1 %cmp174, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %use_srq = getelementptr inbounds %struct.srpt_device, ptr %sdev, i32 0, i32 7
  %88 = ptrtoint ptr %use_srq to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %use_srq, align 4, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool179.not = icmp eq i8 %89, 0
  br i1 %tobool179.not, label %if.then180, label %for.end.if.end266_crit_edge

for.end.if.end266_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end266

if.then180:                                       ; preds = %for.end
  %req_flags = getelementptr inbounds %struct.srp_login_req, ptr %req, i32 0, i32 6
  %90 = ptrtoint ptr %req_flags to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %req_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %tobool182.not = icmp sgt i8 %91, -1
  br i1 %tobool182.not, label %if.then180.if.else220_crit_edge, label %do.body195

if.then180.if.else220_crit_edge:                  ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else220

do.body195:                                       ; preds = %if.then180
  %imm_data_offset184 = getelementptr inbounds %struct.srp_login_req, ptr %req, i32 0, i32 8
  %92 = ptrtoint ptr %imm_data_offset184 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %imm_data_offset184, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_cm_req_recv.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_cm_req_recv, %if.then206)) #19
          to label %if.end212 [label %if.then206], !srcloc !686

if.then206:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #21
  %94 = ptrtoint ptr %imm_data_offset184 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %imm_data_offset184, align 4
  %conv208 = zext i16 %95 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_cm_req_recv.__UNIQUE_ID_ddebug566, ptr noundef nonnull @.str.125, i32 noundef %conv208) #19
  br label %if.end212

if.end212:                                        ; preds = %if.then206, %do.body195
  %conv213 = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %93)
  %cmp214 = icmp ugt i16 %93, 47
  br i1 %cmp214, label %if.then216, label %if.end212.if.else220_crit_edge

if.end212.if.else220_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else220

if.then216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #21
  %imm_data_offset217 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 16
  %96 = ptrtoint ptr %imm_data_offset217 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %93, ptr %imm_data_offset217, align 4
  %rsp_flags = getelementptr inbounds %struct.srp_login_rsp, ptr %call7.i.i, i32 0, i32 7
  %97 = ptrtoint ptr %rsp_flags to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rsp_flags, align 2
  %99 = or i8 %98, -128
  store i8 %99, ptr %rsp_flags, align 2
  br label %if.end222

if.else220:                                       ; preds = %if.end212.if.else220_crit_edge, %if.then180.if.else220_crit_edge
  %conv2131005 = phi i32 [ %conv213, %if.end212.if.else220_crit_edge ], [ 0, %if.then180.if.else220_crit_edge ]
  %cond1889971003 = phi i16 [ %93, %if.end212.if.else220_crit_edge ], [ 0, %if.then180.if.else220_crit_edge ]
  %imm_data_offset221 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 16
  %100 = ptrtoint ptr %imm_data_offset221 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %imm_data_offset221, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.else220, %if.then216
  %conv2131004 = phi i32 [ %conv2131005, %if.else220 ], [ %conv213, %if.then216 ]
  %cond188998 = phi i16 [ %cond1889971003, %if.else220 ], [ %93, %if.then216 ]
  %sub224 = add i16 %cond188998, -1
  %or225 = or i16 %sub224, 511
  %add = sub i16 1, %cond188998
  %sub227 = add i16 %add, %or225
  %conv229 = zext i16 %sub227 to i32
  %101 = load i32, ptr @srp_max_req_size, align 4
  %add231 = add i32 %101, %conv2131004
  %add232 = add i32 %add231, %conv229
  %call233 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.126, i32 noundef %add232, i32 noundef 512, i32 noundef 0, ptr noundef null) #19
  %req_buf_cache = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 21
  %102 = ptrtoint ptr %req_buf_cache to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call233, ptr %req_buf_cache, align 8
  %tobool235.not = icmp eq ptr %call233, null
  br i1 %tobool235.not, label %if.end222.free_rsp_ring_crit_edge, label %if.end237

if.end222.free_rsp_ring_crit_edge:                ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_rsp_ring

if.end237:                                        ; preds = %if.end222
  %103 = ptrtoint ptr %sport137 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sport137, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %107 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rq_size, align 8
  %call243 = tail call fastcc ptr @srpt_alloc_ioctx_ring(ptr noundef %106, i32 noundef %108, i32 noundef 32, ptr noundef nonnull %call233, i32 noundef %conv229, i32 noundef 2)
  %ioctx_recv_ring = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 22
  %109 = ptrtoint ptr %ioctx_recv_ring to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call243, ptr %ioctx_recv_ring, align 4
  %tobool245.not = icmp eq ptr %call243, null
  br i1 %tobool245.not, label %cleanup.thread1007, label %for.cond254.preheader

for.cond254.preheader:                            ; preds = %if.end237
  %110 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rq_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp2561023 = icmp sgt i32 %111, 0
  br i1 %cmp2561023, label %for.cond254.preheader.for.body258_crit_edge, label %for.cond254.preheader.if.end266_crit_edge

for.cond254.preheader.if.end266_crit_edge:        ; preds = %for.cond254.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end266

for.cond254.preheader.for.body258_crit_edge:      ; preds = %for.cond254.preheader
  br label %for.body258

cleanup.thread1007:                               ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #21
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #22
  %reason252 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %112 = ptrtoint ptr %reason252 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 65537, ptr %reason252, align 4
  br label %free_recv_cache

for.body258:                                      ; preds = %for.body258.for.body258_crit_edge, %for.cond254.preheader.for.body258_crit_edge
  %i.11024 = phi i32 [ %inc262, %for.body258.for.body258_crit_edge ], [ 0, %for.cond254.preheader.for.body258_crit_edge ]
  %113 = ptrtoint ptr %ioctx_recv_ring to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ioctx_recv_ring, align 4
  %arrayidx260 = getelementptr ptr, ptr %114, i32 %i.11024
  %115 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx260, align 4
  %wait_list = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %wait_list, ptr %wait_list, align 4
  %prev.i972 = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %116, i32 0, i32 1, i32 1
  %118 = ptrtoint ptr %prev.i972 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %wait_list, ptr %prev.i972, align 4
  %inc262 = add nuw nsw i32 %i.11024, 1
  %119 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rq_size, align 8
  %cmp256 = icmp slt i32 %inc262, %120
  br i1 %cmp256, label %for.body258.for.body258_crit_edge, label %for.body258.if.end266_crit_edge

for.body258.if.end266_crit_edge:                  ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end266

for.body258.for.body258_crit_edge:                ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body258

if.end266:                                        ; preds = %for.body258.if.end266_crit_edge, %for.cond254.preheader.if.end266_crit_edge, %for.end.if.end266_crit_edge
  %call267 = tail call fastcc i32 @srpt_create_ch_ib(ptr noundef nonnull %call7.i.i970)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end276, label %if.then269

if.then269:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #21
  %reason270 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %121 = ptrtoint ptr %reason270 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 65537, ptr %reason270, align 4
  %call275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #22
  br label %free_recv_ring

if.end276:                                        ; preds = %if.end266
  %sess_name = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 29
  %call278 = tail call i32 @strlcpy(ptr noundef %sess_name, ptr noundef %src_addr, i32 noundef 40) #19
  %i_port_id280 = getelementptr inbounds %struct.srpt_nexus, ptr %nexus.2.ph.i, i32 0, i32 3
  %122 = ptrtoint ptr %i_port_id280 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %123 = load i64, ptr %i_port_id280, align 4
  %add.ptr284 = getelementptr %struct.srpt_nexus, ptr %nexus.2.ph.i, i32 0, i32 3, i32 8
  %124 = ptrtoint ptr %add.ptr284 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %add.ptr284, align 8
  %call285 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_port_id, i32 noundef 36, ptr noundef nonnull @.str.133, i64 noundef %123, i64 noundef %125)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_cm_req_recv.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_cm_req_recv, %if.then298)) #19
          to label %do.end304 [label %if.then298], !srcloc !686

if.then298:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_cm_req_recv.__UNIQUE_ID_ddebug567, ptr noundef nonnull @.str.135, ptr noundef %sess_name, ptr noundef nonnull %i_port_id) #19
  br label %do.end304

do.end304:                                        ; preds = %if.then298, %if.end276
  %126 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rq_size, align 8
  %port_guid_id = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 8
  call void @mutex_lock_nested(ptr noundef %port_guid_id, i32 noundef 0) #19
  %tpg_list = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 8, i32 1
  %128 = ptrtoint ptr %tpg_list to i32
  call void @__asan_load4_noabort(i32 %128)
  %stpg.01025 = load ptr, ptr %tpg_list, align 4
  %cmp313.not1026 = icmp eq ptr %stpg.01025, %tpg_list
  br i1 %cmp313.not1026, label %do.end304.for.end331_crit_edge, label %for.body317.lr.ph

do.end304.for.end331_crit_edge:                   ; preds = %do.end304
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end331

for.body317.lr.ph:                                ; preds = %do.end304
  %sess = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 28
  br label %for.body317

for.body317:                                      ; preds = %if.end320.for.body317_crit_edge, %for.body317.lr.ph
  %stpg.01027 = phi ptr [ %stpg.01025, %for.body317.lr.ph ], [ %stpg.0, %if.end320.for.body317_crit_edge ]
  %129 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sess, align 4
  %tobool.not.i973 = icmp eq ptr %130, null
  %cmp.i974 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i973, %cmp.i974
  br i1 %spec.select.i, label %if.end320, label %for.body317.for.end331_crit_edge

for.body317.for.end331_crit_edge:                 ; preds = %for.body317
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end331

if.end320:                                        ; preds = %for.body317
  %tpg = getelementptr inbounds %struct.srpt_tpg, ptr %stpg.01027, i32 0, i32 2
  %call323 = call ptr @target_setup_session(ptr noundef %tpg, i32 noundef %127, i32 noundef 1, i32 noundef 0, ptr noundef %sess_name, ptr noundef nonnull %call7.i.i970, ptr noundef null) #19
  %131 = ptrtoint ptr %sess to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call323, ptr %sess, align 4
  %132 = ptrtoint ptr %stpg.01027 to i32
  call void @__asan_load4_noabort(i32 %132)
  %stpg.0 = load ptr, ptr %stpg.01027, align 4
  %cmp313.not = icmp eq ptr %stpg.0, %tpg_list
  br i1 %cmp313.not, label %if.end320.for.end331_crit_edge, label %if.end320.for.body317_crit_edge

if.end320.for.body317_crit_edge:                  ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body317

if.end320.for.end331_crit_edge:                   ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end331

for.end331:                                       ; preds = %if.end320.for.end331_crit_edge, %for.body317.for.end331_crit_edge, %do.end304.for.end331_crit_edge
  call void @mutex_unlock(ptr noundef %port_guid_id) #19
  %port_gid_id = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 9
  call void @mutex_lock_nested(ptr noundef %port_gid_id, i32 noundef 0) #19
  %tpg_list337 = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 9, i32 1
  %133 = ptrtoint ptr %tpg_list337 to i32
  call void @__asan_load4_noabort(i32 %133)
  %stpg.11028 = load ptr, ptr %tpg_list337, align 4
  %cmp345.not1029 = icmp eq ptr %stpg.11028, %tpg_list337
  br i1 %cmp345.not1029, label %for.end331.for.end373_crit_edge, label %for.body349.lr.ph

for.end331.for.end373_crit_edge:                  ; preds = %for.end331
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end373

for.body349.lr.ph:                                ; preds = %for.end331
  %sess350 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 28
  %add.ptr364 = getelementptr inbounds i8, ptr %i_port_id, i32 2
  br label %for.body349

for.body349:                                      ; preds = %if.end361.for.body349_crit_edge, %for.body349.lr.ph
  %stpg.11030 = phi ptr [ %stpg.11028, %for.body349.lr.ph ], [ %stpg.1, %if.end361.for.body349_crit_edge ]
  %134 = ptrtoint ptr %sess350 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sess350, align 4
  %tobool.not.i975 = icmp eq ptr %135, null
  %cmp.i976 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  %spec.select.i977 = or i1 %tobool.not.i975, %cmp.i976
  br i1 %spec.select.i977, label %if.end353, label %for.body349.for.end373_crit_edge

for.body349.for.end373_crit_edge:                 ; preds = %for.body349
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end373

if.end353:                                        ; preds = %for.body349
  %tpg354 = getelementptr inbounds %struct.srpt_tpg, ptr %stpg.11030, i32 0, i32 2
  %call356 = call ptr @target_setup_session(ptr noundef %tpg354, i32 noundef %127, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i_port_id, ptr noundef nonnull %call7.i.i970, ptr noundef null) #19
  %136 = ptrtoint ptr %sess350 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call356, ptr %sess350, align 4
  %tobool.not.i978 = icmp eq ptr %call356, null
  %cmp.i979 = icmp ugt ptr %call356, inttoptr (i32 -4096 to ptr)
  %spec.select.i980 = or i1 %tobool.not.i978, %cmp.i979
  br i1 %spec.select.i980, label %if.end361, label %if.end353.for.end373_crit_edge

if.end353.for.end373_crit_edge:                   ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end373

if.end361:                                        ; preds = %if.end353
  %call365 = call ptr @target_setup_session(ptr noundef %tpg354, i32 noundef %127, i32 noundef 1, i32 noundef 0, ptr noundef %add.ptr364, ptr noundef nonnull %call7.i.i970, ptr noundef null) #19
  %137 = ptrtoint ptr %sess350 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call365, ptr %sess350, align 4
  %138 = ptrtoint ptr %stpg.11030 to i32
  call void @__asan_load4_noabort(i32 %138)
  %stpg.1 = load ptr, ptr %stpg.11030, align 4
  %cmp345.not = icmp eq ptr %stpg.1, %tpg_list337
  br i1 %cmp345.not, label %if.end361.for.end373_crit_edge, label %if.end361.for.body349_crit_edge

if.end361.for.body349_crit_edge:                  ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body349

if.end361.for.end373_crit_edge:                   ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end373

for.end373:                                       ; preds = %if.end361.for.end373_crit_edge, %if.end353.for.end373_crit_edge, %for.body349.for.end373_crit_edge, %for.end331.for.end373_crit_edge
  call void @mutex_unlock(ptr noundef %port_gid_id) #19
  %sess376 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 28
  %139 = ptrtoint ptr %sess376 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sess376, align 4
  %tobool.not.i981 = icmp eq ptr %140, null
  %cmp.i982 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  %spec.select.i983 = or i1 %tobool.not.i981, %cmp.i982
  br i1 %spec.select.i983, label %if.then378, label %if.end450

if.then378:                                       ; preds = %for.end373
  br i1 %tobool.not.i981, label %land.rhs390, label %if.then378.if.end428_crit_edge

if.then378.if.end428_crit_edge:                   ; preds = %if.then378
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end428

land.rhs390:                                      ; preds = %if.then378
  %.b949952 = load i1, ptr @srpt_cm_req_recv.__already_done.136, align 1
  br i1 %.b949952, label %land.rhs390.if.end428_crit_edge, label %if.then401, !prof !688

land.rhs390.if.end428_crit_edge:                  ; preds = %land.rhs390
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end428

if.then401:                                       ; preds = %land.rhs390
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_cm_req_recv.__already_done.136, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2344, i32 noundef 9, ptr noundef null) #19
  br label %if.end428

if.end428:                                        ; preds = %if.then401, %land.rhs390.if.end428_crit_edge, %if.then378.if.end428_crit_edge
  %141 = ptrtoint ptr %sess376 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sess376, align 4
  %143 = ptrtoint ptr %142 to i32
  store ptr null, ptr %sess376, align 4
  %call445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %sess_name, i32 noundef %143) #22
  %cmp446 = icmp eq ptr %142, inttoptr (i32 -12 to ptr)
  %cond448 = select i1 %cmp446, i32 65537, i32 65542
  %reason449 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %144 = ptrtoint ptr %reason449 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %cond448, ptr %reason449, align 4
  call fastcc void @srpt_destroy_ch_ib(ptr noundef nonnull %call7.i.i970)
  br label %free_recv_ring

if.end450:                                        ; preds = %for.end373
  %refcount = getelementptr %struct.srpt_device, ptr %sdev, i32 0, i32 12, i32 %sub, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #19
  %145 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #19, !srcloc !710
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #19
  %req_flags452 = getelementptr inbounds %struct.srp_login_req, ptr %req, i32 0, i32 6
  %146 = ptrtoint ptr %req_flags452 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %req_flags452, align 2
  %148 = and i8 %147, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp455 = icmp eq i8 %148, 0
  br i1 %cmp455, label %if.then457, label %if.else492

if.then457:                                       ; preds = %if.end450
  %ch_list = getelementptr inbounds %struct.srpt_nexus, ptr %nexus.2.ph.i, i32 0, i32 2
  %149 = ptrtoint ptr %ch_list to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pn1031 = load ptr, ptr %ch_list, align 4
  %cmp464.not1032 = icmp eq ptr %.pn1031, %ch_list
  br i1 %cmp464.not1032, label %if.then457.if.end497_crit_edge, label %for.body468.lr.ph

if.then457.if.end497_crit_edge:                   ; preds = %if.then457
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end497

for.body468.lr.ph:                                ; preds = %if.then457
  %rsp_flags481 = getelementptr inbounds %struct.srp_login_rsp, ptr %call7.i.i, i32 0, i32 7
  br label %for.body468

for.body468:                                      ; preds = %for.inc485.for.body468_crit_edge, %for.body468.lr.ph
  %.pn1033 = phi ptr [ %.pn1031, %for.body468.lr.ph ], [ %.pn, %for.inc485.for.body468_crit_edge ]
  %ch2.0 = getelementptr i8, ptr %.pn1033, i32 -136
  %call469 = call fastcc i32 @srpt_disconnect_ch(ptr noundef %ch2.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call469)
  %cmp470 = icmp slt i32 %call469, 0
  br i1 %cmp470, label %for.body468.for.inc485_crit_edge, label %do.end476

for.body468.for.inc485_crit_edge:                 ; preds = %for.body468
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc485

do.end476:                                        ; preds = %for.body468
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name478 = getelementptr i8, ptr %.pn1033, i32 24
  %call480 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %sess_name478) #22
  %150 = ptrtoint ptr %rsp_flags481 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %rsp_flags481, align 2
  %152 = or i8 %151, 1
  store i8 %152, ptr %rsp_flags481, align 2
  br label %for.inc485

for.inc485:                                       ; preds = %do.end476, %for.body468.for.inc485_crit_edge
  %153 = ptrtoint ptr %.pn1033 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pn = load ptr, ptr %.pn1033, align 4
  %cmp464.not = icmp eq ptr %.pn, %ch_list
  br i1 %cmp464.not, label %for.inc485.if.end497_crit_edge, label %for.inc485.for.body468_crit_edge

for.inc485.for.body468_crit_edge:                 ; preds = %for.inc485
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body468

for.inc485.if.end497_crit_edge:                   ; preds = %for.inc485
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end497

if.else492:                                       ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #21
  %rsp_flags493 = getelementptr inbounds %struct.srp_login_rsp, ptr %call7.i.i, i32 0, i32 7
  %154 = ptrtoint ptr %rsp_flags493 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %rsp_flags493, align 2
  %156 = or i8 %155, 2
  store i8 %156, ptr %rsp_flags493, align 2
  br label %if.end497

if.end497:                                        ; preds = %if.else492, %for.inc485.if.end497_crit_edge, %if.then457.if.end497_crit_edge
  %list498 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 23
  %ch_list499 = getelementptr inbounds %struct.srpt_nexus, ptr %nexus.2.ph.i, i32 0, i32 2
  %prev.i984 = getelementptr inbounds %struct.srpt_nexus, ptr %nexus.2.ph.i, i32 0, i32 2, i32 1
  %157 = ptrtoint ptr %prev.i984 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %prev.i984, align 4
  %call.i.i985 = call zeroext i1 @__list_add_valid(ptr noundef %list498, ptr noundef %158, ptr noundef %ch_list499) #19
  br i1 %call.i.i985, label %if.end.i.i, label %if.end497.list_add_tail_rcu.exit_crit_edge

if.end497.list_add_tail_rcu.exit_crit_edge:       ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end497
  call void @__sanitizer_cov_trace_pc() #21
  %159 = ptrtoint ptr %list498 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %ch_list499, ptr %list498, align 8
  %prev2.i.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 23, i32 1
  %160 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %158, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !709
  %161 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %list498, ptr %158, align 4
  %162 = ptrtoint ptr %prev.i984 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %list498, ptr %prev.i984, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end497.list_add_tail_rcu.exit_crit_edge
  %163 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %enabled, align 8, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool501.not = icmp eq i8 %164, 0
  br i1 %tobool501.not, label %if.then502, label %if.end513

if.then502:                                       ; preds = %list_add_tail_rcu.exit
  %reason503 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %165 = ptrtoint ptr %reason503 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 65537, ptr %reason503, align 4
  %166 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sdev, align 8
  %init_name.i986 = getelementptr inbounds %struct.ib_device, ptr %167, i32 0, i32 13, i32 0, i32 0, i32 3
  %168 = ptrtoint ptr %init_name.i986 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %init_name.i986, align 8
  %tobool.not.i987 = icmp eq ptr %169, null
  br i1 %tobool.not.i987, label %if.end.i988, label %if.then502.dev_name.exit990_crit_edge

if.then502.dev_name.exit990_crit_edge:            ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit990

if.end.i988:                                      ; preds = %if.then502
  call void @__sanitizer_cov_trace_pc() #21
  %170 = getelementptr inbounds %struct.ib_device, ptr %167, i32 0, i32 13
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  br label %dev_name.exit990

dev_name.exit990:                                 ; preds = %if.end.i988, %if.then502.dev_name.exit990_crit_edge
  %retval.0.i989 = phi ptr [ %172, %if.end.i988 ], [ %169, %if.then502.dev_name.exit990_crit_edge ]
  %call511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %retval.0.i989, i32 noundef %conv) #22
  call void @mutex_unlock(ptr noundef %mutex.i) #19
  br label %do.end670

if.end513:                                        ; preds = %list_add_tail_rcu.exit
  call void @mutex_unlock(ptr noundef %mutex.i) #19
  %using_rdma_cm515 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 26
  %173 = ptrtoint ptr %using_rdma_cm515 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %using_rdma_cm515, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool516.not = icmp eq i8 %174, 0
  br i1 %tobool516.not, label %if.end28.i, label %if.end513.do.body532_crit_edge

if.end513.do.body532_crit_edge:                   ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body532

if.end28.i:                                       ; preds = %if.end513
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 1
  %175 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i) #19
  %177 = call ptr @memset(ptr %qp_attr.i, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr_mask.i) #19
  %178 = ptrtoint ptr %attr_mask.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -1, ptr %attr_mask.i, align 4, !annotation !694
  %179 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 2, ptr %qp_attr.i, align 8
  %180 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %54, align 8
  %call.i = call i32 @ib_cm_init_qp_attr(ptr noundef %181, ptr noundef nonnull %qp_attr.i, ptr noundef nonnull %attr_mask.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool36.not.i, label %cond.end521, label %cond.end521.thread1012

cond.end521.thread1012:                           ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_mask.i) #19
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #19
  br label %if.then524

cond.end521:                                      ; preds = %if.end28.i
  %max_dest_rd_atomic.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i, i32 0, i32 17
  %182 = ptrtoint ptr %max_dest_rd_atomic.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 4, ptr %max_dest_rd_atomic.i, align 1
  %183 = ptrtoint ptr %attr_mask.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %attr_mask.i, align 4
  %call39.i = call i32 @ib_modify_qp(ptr noundef %176, ptr noundef nonnull %qp_attr.i, i32 noundef %184) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr_mask.i) #19
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool523.not = icmp eq i32 %call39.i, 0
  br i1 %tobool523.not, label %cond.end521.do.body532_crit_edge, label %cond.end521.if.then524_crit_edge

cond.end521.if.then524_crit_edge:                 ; preds = %cond.end521
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then524

cond.end521.do.body532_crit_edge:                 ; preds = %cond.end521
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body532

if.then524:                                       ; preds = %cond.end521.if.then524_crit_edge, %cond.end521.thread1012
  %ret.0.i1015 = phi i32 [ %call.i, %cond.end521.thread1012 ], [ %call39.i, %cond.end521.if.then524_crit_edge ]
  %reason525 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %185 = ptrtoint ptr %reason525 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 65537, ptr %reason525, align 4
  %call530 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %ret.0.i1015) #22
  br label %do.end670

do.body532:                                       ; preds = %cond.end521.do.body532_crit_edge, %if.end513.do.body532_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_cm_req_recv.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_cm_req_recv, %if.then544)) #19
          to label %do.end550 [label %if.then544], !srcloc !686

if.then544:                                       ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #21
  %186 = ptrtoint ptr %sess376 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %sess376, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_cm_req_recv.__UNIQUE_ID_ddebug568, ptr noundef nonnull @.str.150, ptr noundef %187, ptr noundef %sess_name, ptr noundef nonnull %call7.i.i970) #19
  br label %do.end550

do.end550:                                        ; preds = %if.then544, %do.body532
  %188 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -64, ptr %call7.i.i, align 8
  %tag = getelementptr inbounds %struct.srp_login_req, ptr %req, i32 0, i32 2
  %189 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %tag, align 8
  %tag551 = getelementptr inbounds %struct.srp_login_rsp, ptr %call7.i.i, i32 0, i32 3
  %191 = ptrtoint ptr %tag551 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %tag551, align 8
  %192 = load i32, ptr @srp_max_req_size, align 4
  %max_it_iu_len = getelementptr inbounds %struct.srp_login_rsp, ptr %call7.i.i, i32 0, i32 4
  %193 = ptrtoint ptr %max_it_iu_len to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %max_it_iu_len, align 8
  %194 = ptrtoint ptr %req_it_iu_len to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %req_it_iu_len, align 8
  %max_ti_iu_len = getelementptr inbounds %struct.srp_login_rsp, ptr %call7.i.i, i32 0, i32 5
  %196 = ptrtoint ptr %max_ti_iu_len to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %max_ti_iu_len, align 4
  %max_ti_iu_len553 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 13
  %197 = ptrtoint ptr %max_ti_iu_len553 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %3, ptr %max_ti_iu_len553, align 8
  %buf_fmt = getelementptr inbounds %struct.srp_login_rsp, ptr %call7.i.i, i32 0, i32 6
  %198 = ptrtoint ptr %buf_fmt to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 6, ptr %buf_fmt, align 8
  %199 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %rq_size, align 8
  %req_lim_delta = getelementptr inbounds %struct.srp_login_rsp, ptr %call7.i.i, i32 0, i32 2
  %201 = ptrtoint ptr %req_lim_delta to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %req_lim_delta, align 4
  %req_lim = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 14
  %call.i.i960 = call zeroext i1 @__kasan_check_write(ptr noundef %req_lim, i32 noundef 4) #19
  %202 = ptrtoint ptr %req_lim to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile i32 %200, ptr %req_lim, align 4
  %req_lim_delta556 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 15
  %call.i.i961 = call zeroext i1 @__kasan_check_write(ptr noundef %req_lim_delta556, i32 noundef 4) #19
  %203 = ptrtoint ptr %req_lim_delta556 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile i32 0, ptr %req_lim_delta556, align 8
  %204 = ptrtoint ptr %using_rdma_cm515 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %using_rdma_cm515, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool558.not = icmp eq i8 %205, 0
  br i1 %tobool558.not, label %if.else560, label %if.then559

if.then559:                                       ; preds = %do.end550
  call void @__sanitizer_cov_trace_pc() #21
  %206 = ptrtoint ptr %call7.i.i966 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call7.i.i, ptr %call7.i.i966, align 8
  %private_data_len = getelementptr inbounds %struct.rdma_conn_param, ptr %call7.i.i966, i32 0, i32 1
  %207 = ptrtoint ptr %private_data_len to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 52, ptr %private_data_len, align 4
  %rnr_retry_count = getelementptr inbounds %struct.rdma_conn_param, ptr %call7.i.i966, i32 0, i32 6
  %208 = ptrtoint ptr %rnr_retry_count to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 7, ptr %rnr_retry_count, align 1
  %flow_control = getelementptr inbounds %struct.rdma_conn_param, ptr %call7.i.i966, i32 0, i32 4
  %209 = ptrtoint ptr %flow_control to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %flow_control, align 1
  %responder_resources = getelementptr inbounds %struct.rdma_conn_param, ptr %call7.i.i966, i32 0, i32 2
  %210 = ptrtoint ptr %responder_resources to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 4, ptr %responder_resources, align 1
  %initiator_depth = getelementptr inbounds %struct.rdma_conn_param, ptr %call7.i.i966, i32 0, i32 3
  br label %if.end569

if.else560:                                       ; preds = %do.end550
  call void @__sanitizer_cov_trace_pc() #21
  %qp561 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 1
  %211 = ptrtoint ptr %qp561 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %qp561, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %212, i32 0, i32 19
  %213 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %qp_num, align 4
  %215 = ptrtoint ptr %call7.i.i966 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %call7.i.i966, align 8
  %private_data563 = getelementptr inbounds %struct.ib_cm_rep_param, ptr %call7.i.i966, i32 0, i32 2
  %216 = ptrtoint ptr %private_data563 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call7.i.i, ptr %private_data563, align 8
  %private_data_len564 = getelementptr inbounds %struct.ib_cm_rep_param, ptr %call7.i.i966, i32 0, i32 3
  %217 = ptrtoint ptr %private_data_len564 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 52, ptr %private_data_len564, align 4
  %rnr_retry_count565 = getelementptr inbounds %struct.ib_cm_rep_param, ptr %call7.i.i966, i32 0, i32 8
  %218 = ptrtoint ptr %rnr_retry_count565 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 7, ptr %rnr_retry_count565, align 1
  %flow_control566 = getelementptr inbounds %struct.ib_cm_rep_param, ptr %call7.i.i966, i32 0, i32 7
  %219 = ptrtoint ptr %flow_control566 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 1, ptr %flow_control566, align 8
  %failover_accepted = getelementptr inbounds %struct.ib_cm_rep_param, ptr %call7.i.i966, i32 0, i32 6
  %220 = ptrtoint ptr %failover_accepted to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %failover_accepted, align 1
  %srq = getelementptr inbounds %struct.ib_cm_rep_param, ptr %call7.i.i966, i32 0, i32 9
  %221 = ptrtoint ptr %srq to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 1, ptr %srq, align 2
  %responder_resources567 = getelementptr inbounds %struct.ib_cm_rep_param, ptr %call7.i.i966, i32 0, i32 4
  %222 = ptrtoint ptr %responder_resources567 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 4, ptr %responder_resources567, align 1
  %initiator_depth568 = getelementptr inbounds %struct.ib_cm_rep_param, ptr %call7.i.i966, i32 0, i32 5
  br label %if.end569

if.end569:                                        ; preds = %if.else560, %if.then559
  %initiator_depth568.sink = phi ptr [ %initiator_depth568, %if.else560 ], [ %initiator_depth, %if.then559 ]
  %223 = ptrtoint ptr %initiator_depth568.sink to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 4, ptr %initiator_depth568.sink, align 2
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #19
  %224 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %enabled, align 8, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool572.not = icmp eq i8 %225, 0
  br i1 %tobool572.not, label %if.end569.if.end586.thread_crit_edge, label %land.lhs.true

if.end569.if.end586.thread_crit_edge:             ; preds = %if.end569
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end586.thread

land.lhs.true:                                    ; preds = %if.end569
  %226 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp575 = icmp eq i32 %227, 0
  br i1 %cmp575, label %if.then577, label %land.lhs.true.if.end586.thread_crit_edge

land.lhs.true.if.end586.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end586.thread

if.then577:                                       ; preds = %land.lhs.true
  %228 = ptrtoint ptr %using_rdma_cm515 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %using_rdma_cm515, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool579.not = icmp eq i8 %229, 0
  br i1 %tobool579.not, label %if.else582, label %if.then580

if.then580:                                       ; preds = %if.then577
  call void @__sanitizer_cov_trace_pc() #21
  %call581 = call i32 @rdma_accept(ptr noundef %rdma_cm_id, ptr noundef nonnull %call7.i.i966) #19
  br label %if.end586

if.else582:                                       ; preds = %if.then577
  call void @__sanitizer_cov_trace_pc() #21
  %call583 = call i32 @ib_send_cm_rep(ptr noundef %ib_cm_id, ptr noundef nonnull %call7.i.i966) #19
  br label %if.end586

if.end586.thread:                                 ; preds = %land.lhs.true.if.end586.thread_crit_edge, %if.end569.if.end586.thread_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #19
  br label %do.end670

if.end586:                                        ; preds = %if.else582, %if.then580
  %ret.0 = phi i32 [ %call581, %if.then580 ], [ %call583, %if.else582 ]
  call void @mutex_unlock(ptr noundef %mutex.i) #19
  %230 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %ret.0, label %sw.default [
    i32 0, label %if.end586.cleanup691_crit_edge
    i32 -22, label %if.end586.do.end670_crit_edge
  ]

if.end586.do.end670_crit_edge:                    ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end670

if.end586.cleanup691_crit_edge:                   ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup691

sw.default:                                       ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #21
  %reason588 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %231 = ptrtoint ptr %reason588 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 65537, ptr %reason588, align 4
  %call593 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %ret.0) #22
  br label %do.end670

free_recv_ring:                                   ; preds = %if.end428, %if.then269
  %ret.1 = phi i32 [ %call267, %if.then269 ], [ %143, %if.end428 ]
  %ioctx_recv_ring594 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 22
  %232 = ptrtoint ptr %ioctx_recv_ring594 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ioctx_recv_ring594, align 4
  %234 = ptrtoint ptr %sport137 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %sport137, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 8
  %238 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %rq_size, align 8
  %req_buf_cache598 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 21
  %240 = ptrtoint ptr %req_buf_cache598 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %req_buf_cache598, align 8
  call fastcc void @srpt_free_ioctx_ring(ptr noundef %233, ptr noundef %237, i32 noundef %239, ptr noundef %241, i32 noundef 2)
  br label %free_recv_cache

free_recv_cache:                                  ; preds = %free_recv_ring, %cleanup.thread1007
  %ret.2 = phi i32 [ %ret.1, %free_recv_ring ], [ -12, %cleanup.thread1007 ]
  %req_buf_cache599 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %call7.i.i970, i32 0, i32 21
  %242 = ptrtoint ptr %req_buf_cache599 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %req_buf_cache599, align 8
  call void @kmem_cache_destroy(ptr noundef %243) #19
  br label %free_rsp_ring

free_rsp_ring:                                    ; preds = %free_recv_cache, %if.end222.free_rsp_ring_crit_edge
  %ret.3 = phi i32 [ %ret.2, %free_recv_cache ], [ -12, %if.end222.free_rsp_ring_crit_edge ]
  %244 = ptrtoint ptr %ioctx_ring to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ioctx_ring, align 4
  %246 = ptrtoint ptr %sport137 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %sport137, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %247, align 8
  %250 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %rq_size, align 8
  %252 = ptrtoint ptr %rsp_buf_cache to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rsp_buf_cache, align 8
  call fastcc void @srpt_free_ioctx_ring(ptr noundef %245, ptr noundef %249, i32 noundef %251, ptr noundef %253, i32 noundef 1)
  br label %free_rsp_cache

free_rsp_cache:                                   ; preds = %free_rsp_ring, %do.end168
  %ret.4 = phi i32 [ %ret.3, %free_rsp_ring ], [ -12, %do.end168 ]
  %254 = ptrtoint ptr %rsp_buf_cache to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rsp_buf_cache, align 8
  call void @kmem_cache_destroy(ptr noundef %255) #19
  br label %free_ch

free_ch:                                          ; preds = %free_rsp_cache, %if.end142.free_ch_crit_edge
  %ret.5 = phi i32 [ %ret.4, %free_rsp_cache ], [ -12, %if.end142.free_ch_crit_edge ]
  %tobool606.not = icmp eq ptr %rdma_cm_id, null
  %context610 = getelementptr inbounds %struct.ib_cm_id, ptr %ib_cm_id, i32 0, i32 1
  %context608 = getelementptr inbounds %struct.rdma_cm_id, ptr %rdma_cm_id, i32 0, i32 1
  %context610.sink = select i1 %tobool606.not, ptr %context610, ptr %context608
  %256 = ptrtoint ptr %context610.sink to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr null, ptr %context610.sink, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i970) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5)
  %cmp613 = icmp eq i32 %ret.5, 0
  br i1 %cmp613, label %land.rhs622, label %free_ch.do.end670_crit_edge

free_ch.do.end670_crit_edge:                      ; preds = %free_ch
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end670

land.rhs622:                                      ; preds = %free_ch
  %.b950951 = load i1, ptr @srpt_cm_req_recv.__already_done.154, align 1
  br i1 %.b950951, label %land.rhs622.do.end670_crit_edge, label %if.then633, !prof !688

land.rhs622.do.end670_crit_edge:                  ; preds = %land.rhs622
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end670

if.then633:                                       ; preds = %land.rhs622
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_cm_req_recv.__already_done.154, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2490, i32 noundef 9, ptr noundef null) #19
  br label %do.end670

do.end670:                                        ; preds = %if.then633, %land.rhs622.do.end670_crit_edge, %free_ch.do.end670_crit_edge, %sw.default, %if.end586.do.end670_crit_edge, %if.end586.thread, %if.then524, %dev_name.exit990, %if.then119, %if.then109, %dev_name.exit, %if.then81
  %ret.6 = phi i32 [ -22, %if.then81 ], [ -22, %if.then109 ], [ %ret.0.i1015, %if.then524 ], [ %ret.0, %sw.default ], [ %ret.0, %if.end586.do.end670_crit_edge ], [ -22, %dev_name.exit990 ], [ -12, %if.then119 ], [ -22, %dev_name.exit ], [ %ret.5, %free_ch.do.end670_crit_edge ], [ 0, %if.then633 ], [ 0, %land.rhs622.do.end670_crit_edge ], [ -22, %if.end586.thread ]
  %ch.0 = phi ptr [ null, %if.then81 ], [ null, %if.then109 ], [ %call7.i.i970, %if.then524 ], [ %call7.i.i970, %sw.default ], [ %call7.i.i970, %if.end586.do.end670_crit_edge ], [ %call7.i.i970, %dev_name.exit990 ], [ null, %if.then119 ], [ null, %dev_name.exit ], [ null, %free_ch.do.end670_crit_edge ], [ null, %if.then633 ], [ null, %land.rhs622.do.end670_crit_edge ], [ %call7.i.i970, %if.end586.thread ]
  %reason672 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 2
  %257 = ptrtoint ptr %reason672 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %reason672, align 4
  %call673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %258) #22
  %259 = ptrtoint ptr %call7.i.i964 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 -62, ptr %call7.i.i964, align 8
  %tag675 = getelementptr inbounds %struct.srp_login_req, ptr %req, i32 0, i32 2
  %260 = ptrtoint ptr %tag675 to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %tag675, align 8
  %tag676 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 3
  %262 = ptrtoint ptr %tag676 to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 %261, ptr %tag676, align 8
  %buf_fmt677 = getelementptr inbounds %struct.srp_login_rej, ptr %call7.i.i964, i32 0, i32 5
  %263 = ptrtoint ptr %buf_fmt677 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 6, ptr %buf_fmt677, align 8
  %tobool678.not = icmp eq ptr %rdma_cm_id, null
  br i1 %tobool678.not, label %if.else681, label %if.then679

if.then679:                                       ; preds = %do.end670
  call void @__sanitizer_cov_trace_pc() #21
  %call680 = call i32 @rdma_reject(ptr noundef nonnull %rdma_cm_id, ptr noundef nonnull %call7.i.i964, i8 noundef zeroext 32, i8 noundef zeroext 28) #19
  br label %if.end683

if.else681:                                       ; preds = %do.end670
  call void @__sanitizer_cov_trace_pc() #21
  %call682 = call i32 @ib_send_cm_rej(ptr noundef %ib_cm_id, i32 noundef 28, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %call7.i.i964, i8 noundef zeroext 32) #19
  br label %if.end683

if.end683:                                        ; preds = %if.else681, %if.then679
  %tobool684.not = icmp eq ptr %ch.0, null
  br i1 %tobool684.not, label %if.end683.cleanup691_crit_edge, label %land.lhs.true685

if.end683.cleanup691_crit_edge:                   ; preds = %if.end683
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup691

land.lhs.true685:                                 ; preds = %if.end683
  %sess686 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch.0, i32 0, i32 28
  %264 = ptrtoint ptr %sess686 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %sess686, align 4
  %tobool687.not = icmp eq ptr %265, null
  br i1 %tobool687.not, label %land.lhs.true685.cleanup691_crit_edge, label %if.then688

land.lhs.true685.cleanup691_crit_edge:            ; preds = %land.lhs.true685
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup691

if.then688:                                       ; preds = %land.lhs.true685
  call void @__sanitizer_cov_trace_pc() #21
  %call689 = call fastcc zeroext i1 @srpt_close_ch(ptr noundef nonnull %ch.0)
  br label %cleanup691

cleanup691:                                       ; preds = %if.then688, %land.lhs.true685.cleanup691_crit_edge, %if.end683.cleanup691_crit_edge, %if.end586.cleanup691_crit_edge, %lor.lhs.false72.cleanup691_crit_edge, %lor.lhs.false.cleanup691_crit_edge, %if.end66.cleanup691_crit_edge, %if.then64
  %ret.7 = phi i32 [ %17, %if.then64 ], [ 0, %if.then688 ], [ %ret.6, %land.lhs.true685.cleanup691_crit_edge ], [ %ret.6, %if.end683.cleanup691_crit_edge ], [ %ret.0, %if.end586.cleanup691_crit_edge ], [ -12, %lor.lhs.false72.cleanup691_crit_edge ], [ -12, %lor.lhs.false.cleanup691_crit_edge ], [ -12, %if.end66.cleanup691_crit_edge ]
  %rep_param.0 = phi ptr [ null, %if.then64 ], [ %call7.i.i966, %if.then688 ], [ %call7.i.i966, %land.lhs.true685.cleanup691_crit_edge ], [ %call7.i.i966, %if.end683.cleanup691_crit_edge ], [ %call7.i.i966, %if.end586.cleanup691_crit_edge ], [ null, %lor.lhs.false72.cleanup691_crit_edge ], [ %call7.i.i966, %lor.lhs.false.cleanup691_crit_edge ], [ %call7.i.i966, %if.end66.cleanup691_crit_edge ]
  %rej.0 = phi ptr [ null, %if.then64 ], [ %call7.i.i964, %if.then688 ], [ %call7.i.i964, %land.lhs.true685.cleanup691_crit_edge ], [ %call7.i.i964, %if.end683.cleanup691_crit_edge ], [ %call7.i.i964, %if.end586.cleanup691_crit_edge ], [ %call7.i.i964, %lor.lhs.false72.cleanup691_crit_edge ], [ null, %lor.lhs.false.cleanup691_crit_edge ], [ %call7.i.i964, %if.end66.cleanup691_crit_edge ]
  %rsp.0 = phi ptr [ null, %if.then64 ], [ %call7.i.i, %if.then688 ], [ %call7.i.i, %land.lhs.true685.cleanup691_crit_edge ], [ %call7.i.i, %if.end683.cleanup691_crit_edge ], [ %call7.i.i, %if.end586.cleanup691_crit_edge ], [ %call7.i.i, %lor.lhs.false72.cleanup691_crit_edge ], [ %call7.i.i, %lor.lhs.false.cleanup691_crit_edge ], [ null, %if.end66.cleanup691_crit_edge ]
  call void @kfree(ptr noundef %rep_param.0) #19
  call void @kfree(ptr noundef %rsp.0) #19
  call void @kfree(ptr noundef %rej.0) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %i_port_id) #19
  ret i32 %ret.7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_zerolength_write_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_zerolength_write_done.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_zerolength_write_done, %if.then)) #19
          to label %do.end [label %if.then], !srcloc !686

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 29
  %qp3 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %qp3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp3, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qp_num, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_zerolength_write_done.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.160, ptr noundef %sess_name, i32 noundef %7, i32 noundef %9) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status4 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %10 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  %state.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.then5.if.end28.i_crit_edge

if.then5.if.end28.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i

land.rhs.i:                                       ; preds = %if.then5
  %.b131.i = load i1, ptr @srpt_process_wait_list.__already_done, align 1
  br i1 %.b131.i, label %land.rhs.i.if.end28.i_crit_edge, label %if.then.i, !prof !688

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_process_wait_list.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1718, i32 noundef 9, ptr noundef null) #19
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end28.i_crit_edge, %if.then5.if.end28.i_crit_edge
  %cmd_wait_list.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 24
  %14 = ptrtoint ptr %cmd_wait_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %cmd_wait_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %cmd_wait_list.i
  br i1 %cmp.i.not.i, label %if.end28.i.if.end31_crit_edge, label %if.end38.i

if.end28.i.if.end31_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

if.end38.i:                                       ; preds = %if.end28.i
  %processing_wait_list.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 27
  %16 = ptrtoint ptr %processing_wait_list.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %processing_wait_list.i, align 1, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not.i = icmp eq i8 %17, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end85.i_crit_edge, label %land.rhs47.i

if.end38.i.if.end85.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end85.i

land.rhs47.i:                                     ; preds = %if.end38.i
  %.b129130.i = load i1, ptr @srpt_process_wait_list.__already_done.163, align 1
  br i1 %.b129130.i, label %land.rhs47.i.if.end85.i_crit_edge, label %if.then58.i, !prof !688

land.rhs47.i.if.end85.i_crit_edge:                ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end85.i

if.then58.i:                                      ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_process_wait_list.__already_done.163, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1723, i32 noundef 9, ptr noundef null) #19
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then58.i, %land.rhs47.i.if.end85.i_crit_edge, %if.end38.i.if.end85.i_crit_edge
  %18 = ptrtoint ptr %processing_wait_list.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %processing_wait_list.i, align 1
  %19 = ptrtoint ptr %cmd_wait_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_wait_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end85.i
  %.pn.in.i = phi ptr [ %20, %if.end85.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %cmp102.not.i = icmp eq ptr %.pn.in.i, %cmd_wait_list.i
  br i1 %cmp102.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %21 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %recv_ioctx.0.i = getelementptr i8, ptr %.pn.in.i, i32 -20
  %call105.i = tail call fastcc zeroext i1 @srpt_handle_new_iu(ptr noundef %3, ptr noundef %recv_ioctx.0.i) #19
  br i1 %call105.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %22 = ptrtoint ptr %processing_wait_list.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %processing_wait_list.i, align 1
  br label %if.end31

if.else:                                          ; preds = %do.end
  %spinlock.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #19
  %state.i43 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 18
  %23 = ptrtoint ptr %state.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp5.i = icmp ult i32 %24, 4
  br i1 %cmp5.i, label %if.then7, label %do.body10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %25 = ptrtoint ptr %state.i43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %state.i43, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #19
  %release_work = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %release_work) #19
  br label %if.end31

do.body10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_zerolength_write_done.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_zerolength_write_done, %if.then22)) #19
          to label %if.end31 [label %if.then22], !srcloc !686

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name23 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 29
  %qp25 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %qp25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qp25, align 4
  %qp_num26 = getelementptr inbounds %struct.ib_qp, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %qp_num26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qp_num26, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_zerolength_write_done.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.162, ptr noundef %sess_name23, i32 noundef %30) #19
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %do.body10, %if.then7, %for.end.i, %if.end28.i.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_release_channel_work(ptr noundef %w) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_release_channel_work.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_release_channel_work, %if.then)) #19
          to label %do.end [label %if.then], !srcloc !686

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name = getelementptr i8, ptr %w, i32 -40
  %qp = getelementptr i8, ptr %w, i32 -196
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_num, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_release_channel_work.__UNIQUE_ID_ddebug563, ptr noundef nonnull @.str.166, ptr noundef %sess_name, i32 noundef %3) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sport4 = getelementptr i8, ptr %w, i32 -148
  %4 = ptrtoint ptr %sport4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sport4, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %do.body17, label %do.end25, !prof !692

do.body17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2087, 0\0A.popsection", ""() #19, !srcloc !711
  unreachable

do.end25:                                         ; preds = %do.end
  %sess = getelementptr i8, ptr %w, i32 -44
  %8 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess, align 4
  %tobool27.not = icmp eq ptr %9, null
  br i1 %tobool27.not, label %do.body37, label %do.end45, !prof !692

do.body37:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2090, 0\0A.popsection", ""() #19, !srcloc !712
  unreachable

do.end45:                                         ; preds = %do.end25
  tail call void @target_stop_session(ptr noundef nonnull %9) #19
  tail call void @target_wait_for_sess_cmds(ptr noundef nonnull %9) #19
  tail call void @target_remove_session(ptr noundef nonnull %9) #19
  %10 = ptrtoint ptr %sess to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sess, align 4
  %using_rdma_cm = getelementptr i8, ptr %w, i32 -46
  %11 = ptrtoint ptr %using_rdma_cm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %using_rdma_cm, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool47.not = icmp eq i8 %12, 0
  %13 = getelementptr i8, ptr %w, i32 -192
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @rdma_destroy_id(ptr noundef %15) #19
  br label %if.end50

if.else:                                          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ib_destroy_cm_id(ptr noundef %15) #19
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then48
  %16 = ptrtoint ptr %sport4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sport4, align 4
  %mutex = getelementptr inbounds %struct.srpt_port, ptr %17, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #19
  %list = getelementptr i8, ptr %w, i32 -64
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_del_rcu.exit_crit_edge

if.end50.list_del_rcu.exit_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr i8, ptr %w, i32 -60
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end50.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr i8, ptr %w, i32 -60
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #19
  %closed = getelementptr i8, ptr %w, i32 -164
  %25 = ptrtoint ptr %closed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %closed, align 4
  %tobool53.not = icmp eq ptr %26, null
  br i1 %tobool53.not, label %list_del_rcu.exit.if.end56_crit_edge, label %if.then54

list_del_rcu.exit.if.end56_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end56

if.then54:                                        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @complete(ptr noundef nonnull %26) #19
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %list_del_rcu.exit.if.end56_crit_edge
  %qp.i = getelementptr i8, ptr %w, i32 -196
  %27 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qp.i, align 4
  %call.i.i90 = tail call i32 @ib_destroy_qp_user(ptr noundef %28, ptr noundef null) #19
  %cq.i = getelementptr i8, ptr %w, i32 -188
  %29 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cq.i, align 4
  %cq_size.i = getelementptr i8, ptr %w, i32 -184
  %31 = ptrtoint ptr %cq_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cq_size.i, align 4
  tail call void @ib_cq_pool_put(ptr noundef %30, i32 noundef %32) #19
  %ioctx_ring = getelementptr i8, ptr %w, i32 -76
  %33 = ptrtoint ptr %ioctx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioctx_ring, align 4
  %35 = ptrtoint ptr %sport4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sport4, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %rq_size = getelementptr i8, ptr %w, i32 -160
  %39 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rq_size, align 4
  %rsp_buf_cache = getelementptr i8, ptr %w, i32 -80
  %41 = ptrtoint ptr %rsp_buf_cache to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rsp_buf_cache, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end56.srpt_free_ioctx_ring.exit_crit_edge, label %for.cond.preheader.i

if.end56.srpt_free_ioctx_ring.exit_crit_edge:     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_ioctx_ring.exit

for.cond.preheader.i:                             ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp5.i = icmp sgt i32 %40, 0
  br i1 %cmp5.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %srpt_free_ioctx.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %srpt_free_ioctx.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %i.06.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %for.body.i.srpt_free_ioctx.exit.i_crit_edge, label %if.end.i.i92

for.body.i.srpt_free_ioctx.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_ioctx.exit.i

if.end.i.i92:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %38, align 8
  %dma.i.i = getelementptr inbounds %struct.srpt_ioctx, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma.i.i, align 4
  %call.i.i91 = tail call i32 @kmem_cache_size(ptr noundef %42) #19
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %50, i32 noundef %48, i32 noundef %call.i.i91, i32 noundef 1, i32 noundef 0) #19
  %buf.i.i = getelementptr inbounds %struct.srpt_ioctx, ptr %44, i32 0, i32 1
  %51 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %42, ptr noundef %52) #19
  tail call void @kfree(ptr noundef nonnull %44) #19
  br label %srpt_free_ioctx.exit.i

srpt_free_ioctx.exit.i:                           ; preds = %if.end.i.i92, %for.body.i.srpt_free_ioctx.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not.i, label %srpt_free_ioctx.exit.i.for.end.i_crit_edge, label %srpt_free_ioctx.exit.i.for.body.i_crit_edge

srpt_free_ioctx.exit.i.for.body.i_crit_edge:      ; preds = %srpt_free_ioctx.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

srpt_free_ioctx.exit.i.for.end.i_crit_edge:       ; preds = %srpt_free_ioctx.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %srpt_free_ioctx.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %34) #19
  br label %srpt_free_ioctx_ring.exit

srpt_free_ioctx_ring.exit:                        ; preds = %for.end.i, %if.end56.srpt_free_ioctx_ring.exit_crit_edge
  %53 = ptrtoint ptr %rsp_buf_cache to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rsp_buf_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %54) #19
  %ioctx_recv_ring = getelementptr i8, ptr %w, i32 -68
  %55 = ptrtoint ptr %ioctx_recv_ring to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioctx_recv_ring, align 4
  %57 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rq_size, align 4
  %req_buf_cache = getelementptr i8, ptr %w, i32 -72
  %59 = ptrtoint ptr %req_buf_cache to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %req_buf_cache, align 4
  %tobool.not.i93 = icmp eq ptr %56, null
  br i1 %tobool.not.i93, label %srpt_free_ioctx_ring.exit.srpt_free_ioctx_ring.exit108_crit_edge, label %for.cond.preheader.i95

srpt_free_ioctx_ring.exit.srpt_free_ioctx_ring.exit108_crit_edge: ; preds = %srpt_free_ioctx_ring.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_ioctx_ring.exit108

for.cond.preheader.i95:                           ; preds = %srpt_free_ioctx_ring.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp5.i94 = icmp sgt i32 %58, 0
  br i1 %cmp5.i94, label %for.cond.preheader.i95.for.body.i99_crit_edge, label %for.cond.preheader.i95.for.end.i107_crit_edge

for.cond.preheader.i95.for.end.i107_crit_edge:    ; preds = %for.cond.preheader.i95
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i107

for.cond.preheader.i95.for.body.i99_crit_edge:    ; preds = %for.cond.preheader.i95
  br label %for.body.i99

for.body.i99:                                     ; preds = %srpt_free_ioctx.exit.i106.for.body.i99_crit_edge, %for.cond.preheader.i95.for.body.i99_crit_edge
  %i.06.i96 = phi i32 [ %inc.i104, %srpt_free_ioctx.exit.i106.for.body.i99_crit_edge ], [ 0, %for.cond.preheader.i95.for.body.i99_crit_edge ]
  %arrayidx.i97 = getelementptr ptr, ptr %56, i32 %i.06.i96
  %61 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i97, align 4
  %tobool.not.i.i98 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i98, label %for.body.i99.srpt_free_ioctx.exit.i106_crit_edge, label %if.end.i.i103

for.body.i99.srpt_free_ioctx.exit.i106_crit_edge: ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_ioctx.exit.i106

if.end.i.i103:                                    ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #21
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %7, align 8
  %dma.i.i100 = getelementptr inbounds %struct.srpt_ioctx, ptr %62, i32 0, i32 2
  %65 = ptrtoint ptr %dma.i.i100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma.i.i100, align 4
  %call.i.i101 = tail call i32 @kmem_cache_size(ptr noundef %60) #19
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %68, i32 noundef %66, i32 noundef %call.i.i101, i32 noundef 2, i32 noundef 0) #19
  %buf.i.i102 = getelementptr inbounds %struct.srpt_ioctx, ptr %62, i32 0, i32 1
  %69 = ptrtoint ptr %buf.i.i102 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf.i.i102, align 4
  tail call void @kmem_cache_free(ptr noundef %60, ptr noundef %70) #19
  tail call void @kfree(ptr noundef nonnull %62) #19
  br label %srpt_free_ioctx.exit.i106

srpt_free_ioctx.exit.i106:                        ; preds = %if.end.i.i103, %for.body.i99.srpt_free_ioctx.exit.i106_crit_edge
  %inc.i104 = add nuw nsw i32 %i.06.i96, 1
  %exitcond.not.i105 = icmp eq i32 %inc.i104, %58
  br i1 %exitcond.not.i105, label %srpt_free_ioctx.exit.i106.for.end.i107_crit_edge, label %srpt_free_ioctx.exit.i106.for.body.i99_crit_edge

srpt_free_ioctx.exit.i106.for.body.i99_crit_edge: ; preds = %srpt_free_ioctx.exit.i106
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i99

srpt_free_ioctx.exit.i106.for.end.i107_crit_edge: ; preds = %srpt_free_ioctx.exit.i106
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i107

for.end.i107:                                     ; preds = %srpt_free_ioctx.exit.i106.for.end.i107_crit_edge, %for.cond.preheader.i95.for.end.i107_crit_edge
  tail call void @kvfree(ptr noundef nonnull %56) #19
  br label %srpt_free_ioctx_ring.exit108

srpt_free_ioctx_ring.exit108:                     ; preds = %for.end.i107, %srpt_free_ioctx_ring.exit.srpt_free_ioctx_ring.exit108_crit_edge
  %71 = ptrtoint ptr %req_buf_cache to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %req_buf_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %72) #19
  %kref = getelementptr i8, ptr %w, i32 -168
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !706
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #19
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #19, !srcloc !707
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %srpt_free_ioctx_ring.exit108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !688

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #19
  br label %kref_put.exit

if.then.i:                                        ; preds = %srpt_free_ioctx_ring.exit108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !708
  %add.ptr.i.i = getelementptr i8, ptr %w, i32 -200
  %74 = ptrtoint ptr %sport4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sport4, align 4
  %refcount.i.i.i = getelementptr inbounds %struct.srpt_port, ptr %75, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !695
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #19
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #19, !srcloc !696
  %asmresult.i.i.i.i.i.i1.i = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !697
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i1.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i1.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i.srpt_drop_sport_ref.exit.i.i_crit_edge

if.then.i.srpt_drop_sport_ref.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_drop_sport_ref.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %freed_channels.i.i.i = getelementptr inbounds %struct.srpt_port, ptr %75, i32 0, i32 12
  %77 = ptrtoint ptr %freed_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %freed_channels.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.srpt_drop_sport_ref.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.srpt_drop_sport_ref.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_drop_sport_ref.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @complete(ptr noundef nonnull %78) #19
  br label %srpt_drop_sport_ref.exit.i.i

srpt_drop_sport_ref.exit.i.i:                     ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.srpt_drop_sport_ref.exit.i.i_crit_edge, %if.then.i.srpt_drop_sport_ref.exit.i.i_crit_edge
  %tobool.not.i.i109 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i.i109, label %srpt_drop_sport_ref.exit.i.i.kref_put.exit_crit_edge, label %do.end.i.i

srpt_drop_sport_ref.exit.i.i.kref_put.exit_crit_edge: ; preds = %srpt_drop_sport_ref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %kref_put.exit

do.end.i.i:                                       ; preds = %srpt_drop_sport_ref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rcu.i.i = getelementptr i8, ptr %w, i32 -176
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #19
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %do.end.i.i, %srpt_drop_sport_ref.exit.i.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @srpt_create_ch_ib(ptr noundef %ch) unnamed_addr #4 align 64 {
entry:
  %dummy.i1.i = alloca ptr, align 4
  %dummy.i.i = alloca ptr, align 4
  %list.i = alloca %struct.ib_sge, align 8
  %wr.i = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %sport1 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 12
  %0 = ptrtoint ptr %sport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sport1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %srp_sq_size = getelementptr inbounds %struct.srpt_port, ptr %1, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %srp_sq_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srp_sq_size, align 4
  %rq_size = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 9
  %8 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !692

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1791, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 72) #24
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.end.cleanup156_crit_edge, label %retry.preheader

if.end.cleanup156_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup156

retry.preheader:                                  ; preds = %if.end
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %13 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_size, align 4
  %add282 = add i32 %14, %7
  %call27283 = tail call ptr @ib_cq_pool_get(ptr noundef %12, i32 noundef %add282, i32 noundef -1, i32 noundef 1) #19
  %cq = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 3
  %15 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call27283, ptr %cq, align 4
  %cmp.i284 = icmp ugt ptr %call27283, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %retry.preheader.if.then30_crit_edge, label %if.end40.lr.ph

retry.preheader.if.then30_crit_edge:              ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then30

if.end40.lr.ph:                                   ; preds = %retry.preheader
  %cq_size = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 4
  %qp_context = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 1
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 2
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 3
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 7
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 8
  %max_qp_wr = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 22, i32 8
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 6
  %max_rdma_ctxs = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 6, i32 5
  %max_send_sge = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 22, i32 10
  %max_send_sge50 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 6, i32 2
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 6, i32 3
  %port_num = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 10
  %use_srq = getelementptr inbounds %struct.srpt_device, ptr %3, i32 0, i32 7
  %srq = getelementptr inbounds %struct.srpt_device, ptr %3, i32 0, i32 3
  %srq55 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i.i, i32 0, i32 6, i32 1
  %using_rdma_cm = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 26
  %16 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 2
  %pd = getelementptr inbounds %struct.srpt_device, ptr %3, i32 0, i32 1
  %qp63 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %pkey.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 25
  br label %if.end40

if.then30:                                        ; preds = %cleanup.if.then30_crit_edge, %retry.preheader.if.then30_crit_edge
  %sq_size.0.lcssa = phi i32 [ %7, %retry.preheader.if.then30_crit_edge ], [ %div.245, %cleanup.if.then30_crit_edge ]
  %call27.lcssa = phi ptr [ %call27283, %retry.preheader.if.then30_crit_edge ], [ %call27, %cleanup.if.then30_crit_edge ]
  %17 = ptrtoint ptr %call27.lcssa to i32
  %18 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rq_size, align 4
  %add38 = add i32 %19, %sq_size.0.lcssa
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %add38, i32 noundef %17) #22
  br label %cleanup156

if.end40:                                         ; preds = %cleanup.if.end40_crit_edge, %if.end40.lr.ph
  %call27286 = phi ptr [ %call27283, %if.end40.lr.ph ], [ %call27, %cleanup.if.end40_crit_edge ]
  %sq_size.0285 = phi i32 [ %7, %if.end40.lr.ph ], [ %div.245, %cleanup.if.end40_crit_edge ]
  %20 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rq_size, align 4
  %add42 = add i32 %21, %sq_size.0285
  %22 = ptrtoint ptr %cq_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add42, ptr %cq_size, align 4
  %23 = ptrtoint ptr %qp_context to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ch, ptr %qp_context, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @srpt_qp_event, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call27286, ptr %send_cq, align 8
  %26 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call27286, ptr %recv_cq, align 4
  %27 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %sq_sig_type, align 8
  %28 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %qp_type, align 4
  %div = sdiv i32 %sq_size.0285, 2
  %29 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_qp_wr, align 8
  %31 = tail call i32 @llvm.smin.i32(i32 %div, i32 %30)
  %32 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cap, align 8
  %33 = ptrtoint ptr %max_rdma_ctxs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div, ptr %max_rdma_ctxs, align 4
  %34 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_send_sge, align 8
  %36 = ptrtoint ptr %max_send_sge50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_send_sge50, align 8
  %37 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %max_recv_sge, align 4
  %38 = ptrtoint ptr %sport1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sport1, align 4
  %port = getelementptr inbounds %struct.srpt_port, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %port, align 1
  %conv = zext i8 %41 to i32
  %42 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %port_num, align 4
  %43 = ptrtoint ptr %use_srq to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %use_srq, align 4, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool53.not = icmp eq i8 %44, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  %45 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %srq, align 4
  %47 = ptrtoint ptr %srq55 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %srq55, align 8
  br label %if.end58

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  %48 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %21, ptr %max_recv_wr, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then54
  %49 = ptrtoint ptr %using_rdma_cm to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %using_rdma_cm, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool59.not = icmp eq i8 %50, 0
  br i1 %tobool59.not, label %if.else64, label %if.then60

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #21
  %51 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %16, align 4
  %53 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pd, align 4
  %call61 = tail call i32 @rdma_create_qp(ptr noundef %52, ptr noundef %54, ptr noundef nonnull %call7.i.i) #19
  %55 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %16, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qp, align 4
  %59 = ptrtoint ptr %qp63 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %qp63, align 4
  br label %if.end82

if.else64:                                        ; preds = %if.end58
  %60 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pd, align 4
  %call.i = tail call ptr @ib_create_qp_kernel(ptr noundef %61, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1) #19
  %62 = ptrtoint ptr %qp63 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %qp63, align 4
  %cmp.i249 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %if.else78, label %if.then70

if.then70:                                        ; preds = %if.else64
  %63 = ptrtoint ptr %using_rdma_cm to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %using_rdma_cm, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i, label %if.then70.if.end28.i_crit_edge, label %land.rhs.i

if.then70.if.end28.i_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i

land.rhs.i:                                       ; preds = %if.then70
  %.b71.i = load i1, ptr @srpt_init_ch_qp.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.if.end28.i_crit_edge, label %if.then.i, !prof !688

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_init_ch_qp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1116, i32 noundef 9, ptr noundef null) #19
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end28.i_crit_edge, %if.then70.if.end28.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 216) #24
  %tobool36.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool36.not.i, label %if.end28.i.if.end82.thread262_crit_edge, label %if.end38.i

if.end28.i.if.end82.thread262_crit_edge:          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end82.thread262

if.end38.i:                                       ; preds = %if.end28.i
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %call7.i.i.i, align 8
  %qp_access_flags.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %qp_access_flags.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %qp_access_flags.i, align 8
  %68 = ptrtoint ptr %sport1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sport1, align 4
  %port.i = getelementptr inbounds %struct.srpt_port, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %port.i, align 1
  %conv.i = zext i8 %71 to i32
  %port_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i.i, i32 0, i32 19
  %72 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i, ptr %port_num.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %69, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %77 = load i8, ptr %port.i, align 1
  %conv42.i = zext i8 %77 to i32
  %78 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pkey.i, align 4
  %pkey_index.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i.i, i32 0, i32 12
  %call43.i = tail call i32 @ib_find_cached_pkey(ptr noundef %76, i32 noundef %conv42.i, i16 noundef zeroext %79, ptr noundef %pkey_index.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp.i250 = icmp slt i32 %call43.i, 0
  br i1 %cmp.i250, label %do.end48.i, label %if.end38.i.srpt_init_ch_qp.exit_crit_edge

if.end38.i.srpt_init_ch_qp.exit_crit_edge:        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_init_ch_qp.exit

do.end48.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #21
  %80 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %pkey.i, align 4
  %conv51.i = zext i16 %81 to i32
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %conv51.i, i32 noundef %call43.i) #22
  br label %srpt_init_ch_qp.exit

srpt_init_ch_qp.exit:                             ; preds = %do.end48.i, %if.end38.i.srpt_init_ch_qp.exit_crit_edge
  %call54.i = tail call i32 @ib_modify_qp(ptr noundef %call.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 57) #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool73.not = icmp eq i32 %call54.i, 0
  br i1 %tobool73.not, label %srpt_init_ch_qp.exit.if.end121_crit_edge, label %srpt_init_ch_qp.exit.if.end82.thread262_crit_edge

srpt_init_ch_qp.exit.if.end82.thread262_crit_edge: ; preds = %srpt_init_ch_qp.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end82.thread262

srpt_init_ch_qp.exit.if.end121_crit_edge:         ; preds = %srpt_init_ch_qp.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end121

if.end82.thread262:                               ; preds = %srpt_init_ch_qp.exit.if.end82.thread262_crit_edge, %if.end28.i.if.end82.thread262_crit_edge
  %retval.0.i251258 = phi i32 [ %call54.i, %srpt_init_ch_qp.exit.if.end82.thread262_crit_edge ], [ -12, %if.end28.i.if.end82.thread262_crit_edge ]
  %82 = ptrtoint ptr %qp63 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %qp63, align 4
  %call.i252 = tail call i32 @ib_destroy_qp_user(ptr noundef %83, ptr noundef null) #19
  br label %if.then84

if.else78:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #21
  %84 = ptrtoint ptr %call.i to i32
  br label %if.end82

if.end82:                                         ; preds = %if.else78, %if.then60
  %ret.0 = phi i32 [ %call61, %if.then60 ], [ %84, %if.else78 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool83.not = icmp eq i32 %ret.0, 0
  br i1 %tobool83.not, label %if.end82.if.end121_crit_edge, label %if.end82.if.then84_crit_edge

if.end82.if.then84_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then84

if.end82.if.end121_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end121

if.then84:                                        ; preds = %if.end82.if.then84_crit_edge, %if.end82.thread262
  %ret.0265 = phi i32 [ %retval.0.i251258, %if.end82.thread262 ], [ %ret.0, %if.end82.if.then84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sq_size.0285)
  %cmp86 = icmp sgt i32 %sq_size.0285, 16
  br i1 %cmp86, label %do.body90, label %err_destroy_cq

do.body90:                                        ; preds = %if.then84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_create_ch_ib.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_create_ch_ib, %if.then101)) #19
          to label %cleanup [label %if.then101], !srcloc !686

if.then101:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_create_ch_ib.__UNIQUE_ID_ddebug556, ptr noundef nonnull @.str.170, i32 noundef %sq_size.0285, i32 noundef %ret.0265) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %do.body90
  %85 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cq, align 4
  %87 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cq_size, align 4
  tail call void @ib_cq_pool_put(ptr noundef %86, i32 noundef %88) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %sq_size.0285)
  %cmp109 = icmp ugt i32 %sq_size.0285, 33
  %div.245 = select i1 %cmp109, i32 %div, i32 16
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 8
  %91 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rq_size, align 4
  %add = add i32 %92, %div.245
  %call27 = tail call ptr @ib_cq_pool_get(ptr noundef %90, i32 noundef %add, i32 noundef -1, i32 noundef 1) #19
  %93 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call27, ptr %cq, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.if.then30_crit_edge, label %cleanup.if.end40_crit_edge

cleanup.if.end40_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40

cleanup.if.then30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then30

if.end121:                                        ; preds = %if.end82.if.end121_crit_edge, %srpt_init_ch_qp.exit.if.end121_crit_edge
  %sq_wr_avail = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 11
  %94 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cap, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #19
  %96 = ptrtoint ptr %sq_wr_avail to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %95, ptr %sq_wr_avail, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_create_ch_ib.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_create_ch_ib, %if.then136)) #19
          to label %do.end144 [label %if.then136], !srcloc !686

if.then136:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #21
  %97 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cq, align 4
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cqe, align 4
  %101 = ptrtoint ptr %max_send_sge50 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_send_sge50, align 8
  %103 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_create_ch_ib.__UNIQUE_ID_ddebug559, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.168, i32 noundef %100, i32 noundef %102, i32 noundef %104, ptr noundef %ch) #19
  br label %do.end144

do.end144:                                        ; preds = %if.then136, %if.end121
  %105 = ptrtoint ptr %use_srq to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %use_srq, align 4, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool146.not = icmp eq i8 %106, 0
  br i1 %tobool146.not, label %for.cond.preheader, label %do.end144.cleanup156_crit_edge

do.end144.cleanup156_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup156

for.cond.preheader:                               ; preds = %do.end144
  %107 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp149288 = icmp sgt i32 %108, 0
  br i1 %cmp149288, label %for.body.lr.ph, label %for.cond.preheader.cleanup156_crit_edge

for.cond.preheader.cleanup156_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup156

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ioctx_recv_ring = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 22
  %tobool.not.i253 = icmp eq ptr %3, null
  %109 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 2
  %110 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 1
  %lkey.i = getelementptr inbounds %struct.srpt_device, ptr %3, i32 0, i32 2
  %111 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 1
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 2
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %srpt_post_recv.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0289 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %srpt_post_recv.exit.for.body_crit_edge ]
  %112 = ptrtoint ptr %ioctx_recv_ring to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ioctx_recv_ring, align 4
  %arrayidx = getelementptr ptr, ptr %113, i32 %i.0289
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list.i) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr.i) #19
  %116 = call ptr @memset(ptr %wr.i, i32 255, i32 16)
  br i1 %tobool.not.i253, label %do.body4.i, label %do.end9.i, !prof !692

do.body4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 828, 0\0A.popsection", ""() #19, !srcloc !693
  unreachable

do.end9.i:                                        ; preds = %for.body
  %dma.i = getelementptr inbounds %struct.srpt_ioctx, ptr %115, i32 0, i32 2
  %117 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma.i, align 4
  %offset.i = getelementptr inbounds %struct.srpt_ioctx, ptr %115, i32 0, i32 3
  %119 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %120, %118
  %conv.i254 = zext i32 %add.i to i64
  %121 = ptrtoint ptr %list.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv.i254, ptr %list.i, align 8
  %122 = load i32, ptr @srp_max_req_size, align 4
  %123 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %110, align 8
  %124 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %lkey.i, align 8
  %126 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %109, align 4
  %127 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @srpt_recv_done, ptr %115, align 4
  %128 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %115, ptr %111, align 8
  %129 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %wr.i, align 8
  %130 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %list.i, ptr %sg_list.i, align 8
  %131 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1, ptr %num_sge.i, align 4
  %132 = ptrtoint ptr %use_srq to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %use_srq, align 4, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool16.not.i = icmp eq i8 %133, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %134 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %srq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #19
  %136 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !694
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %135, align 4
  %post_srq_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %138, i32 0, i32 1, i32 13
  %139 = ptrtoint ptr %post_srq_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %post_srq_recv.i.i, align 4
  %call.i.i255 = call i32 %140(ptr noundef %135, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #19
  br label %srpt_post_recv.exit

if.else.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %141 = ptrtoint ptr %qp63 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %qp63, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i1.i) #19
  %143 = ptrtoint ptr %dummy.i1.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i1.i, align 4, !annotation !694
  %144 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %142, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %145, i32 0, i32 1, i32 7
  %146 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %post_recv.i.i, align 4
  %call.i2.i = call i32 %147(ptr noundef %142, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i1.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i1.i) #19
  br label %srpt_post_recv.exit

srpt_post_recv.exit:                              ; preds = %if.else.i, %if.then17.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list.i) #19
  %inc = add nuw nsw i32 %i.0289, 1
  %148 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rq_size, align 4
  %cmp149 = icmp slt i32 %inc, %149
  br i1 %cmp149, label %srpt_post_recv.exit.for.body_crit_edge, label %srpt_post_recv.exit.cleanup156_crit_edge

srpt_post_recv.exit.cleanup156_crit_edge:         ; preds = %srpt_post_recv.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup156

srpt_post_recv.exit.for.body_crit_edge:           ; preds = %srpt_post_recv.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

err_destroy_cq:                                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #21
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %sq_size.0285, i32 noundef %ret.0265) #22
  %150 = ptrtoint ptr %qp63 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %qp63, align 4
  %151 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cq, align 4
  %153 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cq_size, align 4
  tail call void @ib_cq_pool_put(ptr noundef %152, i32 noundef %154) #19
  br label %cleanup156

cleanup156:                                       ; preds = %err_destroy_cq, %srpt_post_recv.exit.cleanup156_crit_edge, %for.cond.preheader.cleanup156_crit_edge, %do.end144.cleanup156_crit_edge, %if.then30, %if.end.cleanup156_crit_edge
  %ret.1 = phi i32 [ %17, %if.then30 ], [ %ret.0265, %err_destroy_cq ], [ 0, %do.end144.cleanup156_crit_edge ], [ -12, %if.end.cleanup156_crit_edge ], [ 0, %for.cond.preheader.cleanup156_crit_edge ], [ 0, %srpt_post_recv.exit.cleanup156_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #19
  ret i32 %ret.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_setup_session(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_accept(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_rep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_destroy_ch_ib(ptr nocapture noundef readonly %ch) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef %1, ptr noundef null) #19
  %cq = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 3
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 4
  %cq_size = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 4
  %4 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cq_size, align 4
  tail call void @ib_cq_pool_put(ptr noundef %3, i32 noundef %5) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_free_ioctx_ring(ptr noundef %ioctx_ring, ptr nocapture noundef readonly %sdev, i32 noundef %ring_size, ptr noundef %buf_cache, i32 noundef %dir) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ioctx_ring, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ring_size)
  %cmp5 = icmp sgt i32 %ring_size, 0
  br i1 %cmp5, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %srpt_free_ioctx.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %srpt_free_ioctx.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %ioctx_ring, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.srpt_free_ioctx.exit_crit_edge, label %if.end.i

for.body.srpt_free_ioctx.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_ioctx.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 8
  %dma.i = getelementptr inbounds %struct.srpt_ioctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma.i, align 4
  %call.i = tail call i32 @kmem_cache_size(ptr noundef %buf_cache) #19
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %5, i32 noundef %call.i, i32 noundef %dir, i32 noundef 0) #19
  %buf.i = getelementptr inbounds %struct.srpt_ioctx, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf.i, align 4
  tail call void @kmem_cache_free(ptr noundef %buf_cache, ptr noundef %9) #19
  tail call void @kfree(ptr noundef nonnull %1) #19
  br label %srpt_free_ioctx.exit

srpt_free_ioctx.exit:                             ; preds = %if.end.i, %for.body.srpt_free_ioctx.exit_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %ring_size
  br i1 %exitcond.not, label %srpt_free_ioctx.exit.for.end_crit_edge, label %srpt_free_ioctx.exit.for.body_crit_edge

srpt_free_ioctx.exit.for.body_crit_edge:          ; preds = %srpt_free_ioctx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

srpt_free_ioctx.exit.for.end_crit_edge:           ; preds = %srpt_free_ioctx.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %srpt_free_ioctx.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kvfree(ptr noundef nonnull %ioctx_ring) #19
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_reject(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_rej(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_stop_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_wait_for_sess_cmds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_remove_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_cq_pool_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_qp_event(ptr nocapture noundef readonly %event, ptr noundef %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_qp_event.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_qp_event, %if.then)) #19
          to label %do.end [label %if.then], !srcloc !686

if.then:                                          ; preds = %entry
  %event3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event3, align 4
  %sess_name = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qp_num, align 4
  %state = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 18
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %switch.lookup, label %if.then.get_ch_state_name.exit_crit_edge

if.then.get_ch_state_name.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_ch_state_name.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.srpt_qp_event, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_ch_state_name.exit

get_ch_state_name.exit:                           ; preds = %switch.lookup, %if.then.get_ch_state_name.exit_crit_edge
  %retval.0.i57 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.187, %if.then.get_ch_state_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_qp_event.__UNIQUE_ID_ddebug536, ptr noundef nonnull @.str.178, i32 noundef %1, ptr noundef %ch, ptr noundef %sess_name, i32 noundef %5, ptr noundef nonnull %retval.0.i57) #19
  br label %do.end

do.end:                                           ; preds = %get_ch_state_name.exit, %entry
  %event5 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %10 = ptrtoint ptr %event5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event5, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %11, label %do.end37 [
    i32 4, label %sw.bb
    i32 16, label %do.body15
  ]

sw.bb:                                            ; preds = %do.end
  %using_rdma_cm = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 26
  %13 = ptrtoint ptr %using_rdma_cm to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %using_rdma_cm, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  %15 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %call9 = tail call i32 @rdma_notify(ptr noundef %17, i32 noundef 4) #19
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %call12 = tail call i32 @ib_cm_notify(ptr noundef %17, i32 noundef 4) #19
  br label %sw.epilog

do.body15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_qp_event.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_qp_event, %if.then27)) #19
          to label %sw.epilog [label %if.then27], !srcloc !686

if.then27:                                        ; preds = %do.body15
  %sess_name28 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %qp30 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %18 = ptrtoint ptr %qp30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qp30, align 4
  %qp_num31 = getelementptr inbounds %struct.ib_qp, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %qp_num31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qp_num31, align 4
  %state32 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 18
  %22 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %24 = icmp ult i32 %23, 5
  br i1 %24, label %switch.lookup67, label %if.then27.get_ch_state_name.exit64_crit_edge

if.then27.get_ch_state_name.exit64_crit_edge:     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %get_ch_state_name.exit64

switch.lookup67:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  %switch.gep68 = getelementptr inbounds [5 x ptr], ptr @switch.table.srpt_qp_event.331, i32 0, i32 %23
  %25 = ptrtoint ptr %switch.gep68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load69 = load ptr, ptr %switch.gep68, align 4
  br label %get_ch_state_name.exit64

get_ch_state_name.exit64:                         ; preds = %switch.lookup67, %if.then27.get_ch_state_name.exit64_crit_edge
  %retval.0.i63 = phi ptr [ %switch.load69, %switch.lookup67 ], [ @.str.187, %if.then27.get_ch_state_name.exit64_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_qp_event.__UNIQUE_ID_ddebug537, ptr noundef nonnull @.str.180, ptr noundef %sess_name28, i32 noundef %21, ptr noundef nonnull %retval.0.i63) #19
  br label %sw.epilog

do.end37:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %11) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end37, %get_ch_state_name.exit64, %do.body15, %if.else, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_cq_pool_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cm_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_cached_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_cm_init_qp_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_dreq(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_send_cm_drep(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_query_gid(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_register_mad_agent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_mad_send_handler(ptr nocapture noundef readnone %mad_agent, ptr nocapture noundef readonly %mad_wc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mad_wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad_wc, align 4
  %ah = getelementptr inbounds %struct.ib_mad_send_buf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %3, i32 noundef 1, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.rdma_destroy_ah.exit_crit_edge, label %land.rhs.i

entry.rdma_destroy_ah.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %rdma_destroy_ah.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.rdma_destroy_ah.exit_crit_edge, label %if.then.i, !prof !688

land.rhs.i.rdma_destroy_ah.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rdma_destroy_ah.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.222) #19
  br label %rdma_destroy_ah.exit

rdma_destroy_ah.exit:                             ; preds = %if.then.i, %land.rhs.i.rdma_destroy_ah.exit_crit_edge, %entry.rdma_destroy_ah.exit_crit_edge
  %4 = ptrtoint ptr %mad_wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mad_wc, align 4
  tail call void @ib_free_send_mad(ptr noundef %5) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_mad_recv_handler(ptr noundef %mad_agent, ptr nocapture noundef readnone %send_buf, ptr noundef %mad_wc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.ib_mad_agent, ptr %mad_agent, i32 0, i32 4
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %mad_wc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_wc, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %qp = getelementptr inbounds %struct.ib_mad_agent, ptr %mad_agent, i32 0, i32 1
  %5 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qp, align 4
  %pd = getelementptr inbounds %struct.ib_qp, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd, align 4
  %9 = ptrtoint ptr %mad_wc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mad_wc, align 4
  %grh = getelementptr inbounds %struct.ib_mad_recv_wc, ptr %mad_wc, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %grh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %grh, align 4
  %port_num = getelementptr inbounds %struct.ib_mad_agent, ptr %mad_agent, i32 0, i32 9
  %13 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_num, align 4
  %conv = zext i8 %14 to i32
  %call = tail call ptr @ib_create_ah_from_wc(ptr noundef %8, ptr noundef %10, ptr noundef %12, i32 noundef %conv) #19
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup.sink.split_crit_edge, label %do.end

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end
  %15 = ptrtoint ptr %mad_wc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mad_wc, align 4
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_qp, align 8
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %16, i32 0, i32 10
  %19 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pkey_index, align 4
  %call8 = tail call ptr @ib_create_send_mad(ptr noundef %mad_agent, i32 noundef %18, i16 noundef zeroext %20, i32 noundef 0, i32 noundef 64, i32 noundef 192, i32 noundef 3264, i8 noundef zeroext 1) #19
  %cmp.i56 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %do.end.err_rsp_crit_edge, label %if.end11

do.end.err_rsp_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_rsp

if.end11:                                         ; preds = %do.end
  %ah12 = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call8, i32 0, i32 3
  %21 = ptrtoint ptr %ah12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %ah12, align 4
  %mad = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call8, i32 0, i32 1
  %22 = ptrtoint ptr %mad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mad, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  %26 = call ptr @memcpy(ptr %23, ptr %25, i32 256)
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %23, i32 0, i32 3
  %27 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -127, ptr %method, align 1
  %status = getelementptr inbounds %struct.ib_mad_hdr, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %status, align 4
  %29 = load ptr, ptr %2, align 4
  %method17 = getelementptr inbounds %struct.ib_mad_hdr, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %method17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %method17, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.339)
  switch i8 %31, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end11
  %attr_id1.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %29, i32 0, i32 7
  %33 = ptrtoint ptr %attr_id1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %attr_id1.i, align 8
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.340)
  switch i16 %34, label %sw.default.i [
    i16 1, label %sw.bb.i
    i16 16, label %sw.bb2.i
    i16 17, label %sw.bb3.i
    i16 18, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %data.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3
  %36 = call ptr @memset(ptr %data.i.i, i32 0, i32 72)
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %data.i.i, align 4
  %class_version.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %class_version.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %class_version.i.i, align 1
  %cap_mask2_resp_time.i.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %cap_mask2_resp_time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 20, ptr %cap_mask2_resp_time.i.i.i, align 4
  %40 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %status, align 4
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %data.i27.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3
  %41 = ptrtoint ptr %data.i27.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %data.i27.i, align 2
  %max_controllers.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %max_controllers.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 16, ptr %max_controllers.i.i, align 2
  %controller_list.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %controller_list.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 16, ptr %controller_list.i.i, align 1
  %arrayidx10.i.1.i.i = getelementptr %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %status, align 4
  %45 = call ptr @memset(ptr %arrayidx10.i.1.i.i, i32 0, i32 7)
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.bb
  %attr_mod.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %29, i32 0, i32 9
  %46 = ptrtoint ptr %attr_mod.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %attr_mod.i, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %data.i29.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3
  %50 = add i32 %47, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %50)
  %51 = icmp ult i32 %50, -16
  br i1 %51, label %sw.bb3.i.srpt_get_ioc.exit.i_crit_edge, label %if.end.i.i

sw.bb3.i.srpt_get_ioc.exit.i_crit_edge:           ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_get_ioc.exit.i

if.end.i.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp2.i.i = icmp ugt i32 %47, 2
  br i1 %cmp2.i.i, label %if.end.i.i.srpt_get_ioc.exit.i_crit_edge, label %if.end6.i.i

if.end.i.i.srpt_get_ioc.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_get_ioc.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %use_srq.i.i = getelementptr inbounds %struct.srpt_device, ptr %49, i32 0, i32 7
  %52 = ptrtoint ptr %use_srq.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %use_srq.i.i, align 4, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool7.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %srq_size.i.i = getelementptr inbounds %struct.srpt_device, ptr %49, i32 0, i32 5
  %54 = ptrtoint ptr %srq_size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %srq_size.i.i, align 4
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %49, align 8
  %max_qp_wr.i.i = getelementptr inbounds %struct.ib_device, ptr %57, i32 0, i32 22, i32 8
  %58 = ptrtoint ptr %max_qp_wr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_qp_wr.i.i, align 8
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 128) #19
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.else.i.i, %if.then8.i.i
  %send_queue_depth.0.i.i = phi i32 [ %55, %if.then8.i.i ], [ %60, %if.else.i.i ]
  %61 = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 8
  %62 = call ptr @memset(ptr %61, i32 0, i32 120)
  %id_string.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 64
  %63 = call ptr @memcpy(ptr %id_string.i.i, ptr @.str.223, i32 17)
  %64 = load i64, ptr @srpt_service_guid, align 8
  %65 = ptrtoint ptr %data.i29.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %data.i29.i, align 8
  %66 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %49, align 8
  %vendor_id.i.i = getelementptr inbounds %struct.ib_device, ptr %67, i32 0, i32 22, i32 4
  %68 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vendor_id.i.i, align 8
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %61, align 8
  %71 = load ptr, ptr %49, align 8
  %vendor_part_id.i.i = getelementptr inbounds %struct.ib_device, ptr %71, i32 0, i32 22, i32 5
  %72 = ptrtoint ptr %vendor_part_id.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vendor_part_id.i.i, align 4
  %device_id.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 12
  %74 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %device_id.i.i, align 4
  %75 = load ptr, ptr %49, align 8
  %hw_ver.i.i = getelementptr inbounds %struct.ib_device, ptr %75, i32 0, i32 22, i32 6
  %76 = ptrtoint ptr %hw_ver.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hw_ver.i.i, align 8
  %conv.i.i = trunc i32 %77 to i16
  %device_version.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 16
  %78 = ptrtoint ptr %device_version.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i.i, ptr %device_version.i.i, align 8
  %79 = load ptr, ptr %49, align 8
  %vendor_id21.i.i = getelementptr inbounds %struct.ib_device, ptr %79, i32 0, i32 22, i32 4
  %80 = ptrtoint ptr %vendor_id21.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vendor_id21.i.i, align 8
  %subsys_vendor_id.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 20
  %82 = ptrtoint ptr %subsys_vendor_id.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %subsys_vendor_id.i.i, align 4
  %subsys_device_id.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 24
  %83 = ptrtoint ptr %subsys_device_id.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %subsys_device_id.i.i, align 8
  %io_class.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 28
  %84 = ptrtoint ptr %io_class.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 256, ptr %io_class.i.i, align 4
  %io_subclass.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 30
  %85 = ptrtoint ptr %io_subclass.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 24734, ptr %io_subclass.i.i, align 2
  %protocol.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 32
  %86 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 264, ptr %protocol.i.i, align 8
  %protocol_version.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 34
  %87 = ptrtoint ptr %protocol_version.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %protocol_version.i.i, align 2
  %conv22.i.i = trunc i32 %send_queue_depth.0.i.i to i16
  %send_queue_depth23.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 40
  %88 = ptrtoint ptr %send_queue_depth23.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv22.i.i, ptr %send_queue_depth23.i.i, align 8
  %rdma_read_depth.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 43
  %89 = ptrtoint ptr %rdma_read_depth.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 4, ptr %rdma_read_depth.i.i, align 1
  %90 = load i32, ptr @srp_max_req_size, align 4
  %send_size.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 44
  %91 = ptrtoint ptr %send_size.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %send_size.i.i, align 4
  %port_attrib.i.i = getelementptr inbounds %struct.srpt_port, ptr %1, i32 0, i32 10
  %92 = ptrtoint ptr %port_attrib.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port_attrib.i.i, align 4
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 16777216) #19
  %rdma_size.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 48
  %95 = ptrtoint ptr %rdma_size.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %rdma_size.i.i, align 8
  %num_svc_entries.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 54
  %96 = ptrtoint ptr %num_svc_entries.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %num_svc_entries.i.i, align 2
  %op_cap_mask.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 52
  %97 = ptrtoint ptr %op_cap_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 43, ptr %op_cap_mask.i.i, align 4
  br label %srpt_get_ioc.exit.i

srpt_get_ioc.exit.i:                              ; preds = %if.end10.i.i, %if.end.i.i.srpt_get_ioc.exit.i_crit_edge, %sw.bb3.i.srpt_get_ioc.exit.i_crit_edge
  %.sink.i.i = phi i16 [ 0, %if.end10.i.i ], [ 28, %sw.bb3.i.srpt_get_ioc.exit.i_crit_edge ], [ 256, %if.end.i.i.srpt_get_ioc.exit.i_crit_edge ]
  %98 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %.sink.i.i, ptr %status, align 4
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb
  %attr_mod7.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %29, i32 0, i32 9
  %99 = ptrtoint ptr %attr_mod7.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %attr_mod7.i, align 4
  %shr.i = lshr i32 %100, 8
  %conv8.i = trunc i32 %shr.i to i8
  %conv10.i = trunc i32 %100 to i8
  %shr11.i = lshr i32 %100, 16
  %conv13.i = trunc i32 %shr11.i to i16
  %101 = load i64, ptr @srpt_service_guid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %101)
  %tobool.not.i.i = icmp eq i64 %101, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %sw.bb5.i.if.end.i30.i_crit_edge, !prof !692

sw.bb5.i.if.end.i30.i_crit_edge:                  ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i30.i

do.end.i.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 385, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i30.i

if.end.i30.i:                                     ; preds = %do.end.i.i, %sw.bb5.i.if.end.i30.i_crit_edge
  %102 = add i16 %conv13.i, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %102)
  %103 = icmp ult i16 %102, -16
  br i1 %103, label %if.end.i30.i.srpt_get_svc_entries.exit.i_crit_edge, label %if.end24.i.i

if.end.i30.i.srpt_get_svc_entries.exit.i_crit_edge: ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_get_svc_entries.exit.i

if.end24.i.i:                                     ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv13.i)
  %cmp26.i.i = icmp ugt i16 %conv13.i, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv10.i, i8 %conv8.i)
  %cmp31.i.i = icmp ugt i8 %conv10.i, %conv8.i
  %or.cond57.i.i = or i1 %cmp26.i.i, %cmp31.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv8.i)
  %cmp35.i.i = icmp ugt i8 %conv8.i, 1
  %or.cond58.i.i = or i1 %cmp35.i.i, %or.cond57.i.i
  br i1 %or.cond58.i.i, label %if.end24.i.i.srpt_get_svc_entries.exit.i_crit_edge, label %if.end40.i.i

if.end24.i.i.srpt_get_svc_entries.exit.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_get_svc_entries.exit.i

if.end40.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %data.i31.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3
  %104 = call ptr @memset(ptr %data.i31.i, i32 0, i32 192)
  %id.i.i = getelementptr inbounds %struct.ib_dm_mad, ptr %23, i32 0, i32 3, i32 40
  %105 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %101, ptr %id.i.i, align 8
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %data.i31.i, i32 noundef 40, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.225, i64 noundef %101) #19
  br label %srpt_get_svc_entries.exit.i

srpt_get_svc_entries.exit.i:                      ; preds = %if.end40.i.i, %if.end24.i.i.srpt_get_svc_entries.exit.i_crit_edge, %if.end.i30.i.srpt_get_svc_entries.exit.i_crit_edge
  %.sink.i32.i = phi i16 [ 0, %if.end40.i.i ], [ 28, %if.end.i30.i.srpt_get_svc_entries.exit.i_crit_edge ], [ 256, %if.end24.i.i.srpt_get_svc_entries.exit.i_crit_edge ]
  %106 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %.sink.i32.i, ptr %status, align 4
  br label %sw.epilog

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %107 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 12, ptr %status, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %108 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 12, ptr %status, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %109 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 8, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.default.i, %srpt_get_svc_entries.exit.i, %srpt_get_ioc.exit.i, %sw.bb2.i, %sw.bb.i
  %call25 = tail call i32 @ib_post_send_mad(ptr noundef %call8, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %sw.epilog.cleanup.sink.split_crit_edge, label %if.end28

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

if.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @ib_free_send_mad(ptr noundef %call8) #19
  br label %err_rsp

err_rsp:                                          ; preds = %if.end28, %do.end.err_rsp_crit_edge
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %call, i32 noundef 1, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %err_rsp.cleanup.sink.split_crit_edge, label %land.rhs.i

err_rsp.cleanup.sink.split_crit_edge:             ; preds = %err_rsp
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

land.rhs.i:                                       ; preds = %err_rsp
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup.sink.split_crit_edge, label %if.then.i, !prof !688

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.222) #19
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %land.rhs.i.cleanup.sink.split_crit_edge, %err_rsp.cleanup.sink.split_crit_edge, %sw.epilog.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @ib_free_recv_mad(ptr noundef nonnull %mad_wc) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_send_mad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_destroy_ah_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_ah_from_wc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_send_mad(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_post_send_mad(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_recv_mad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_mad_agent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_set_enabled(ptr noundef %sport, i1 noundef zeroext %enabled) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 13, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !692

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2045, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %enabled24 = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 2
  %1 = ptrtoint ptr %enabled24 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled24, align 8, !range !687
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %frombool)
  %cmp28 = icmp eq i8 %2, %frombool
  br i1 %cmp28, label %if.end.if.end37_crit_edge, label %if.end31

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.end31:                                         ; preds = %if.end
  %3 = ptrtoint ptr %enabled24 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %enabled24, align 8
  br i1 %enabled, label %if.end31.if.end37_crit_edge, label %if.then36

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.then36:                                        ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then36.if.end.i_crit_edge, label %land.rhs.i

if.then36.if.end.i_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then36
  %dep_map.i = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 13, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !692

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1985, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then36.if.end.i_crit_edge
  %nexus_list.i = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 14
  %5 = ptrtoint ptr %nexus_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn82.i = load ptr, ptr %nexus_list.i, align 4
  %cmp27.not83.i = icmp eq ptr %.pn82.i, %nexus_list.i
  br i1 %cmp27.not83.i, label %if.end.i.if.end37_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %port.i = getelementptr inbounds %struct.srpt_port, ptr %sport, i32 0, i32 3
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %if.end49.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %6 = ptrtoint ptr %.pn84.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn84.i, align 4
  %cmp27.not.i = icmp eq ptr %.pn.i, %nexus_list.i
  br i1 %cmp27.not.i, label %for.cond.loopexit.i.if.end37_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.cond.loopexit.i.if.end37_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn84.i = phi ptr [ %.pn82.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %ch_list.i = getelementptr i8, ptr %.pn84.i, i32 8
  %7 = ptrtoint ptr %ch_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn7677.i = load ptr, ptr %ch_list.i, align 4
  %cmp36.not79.i = icmp eq ptr %.pn7677.i, %ch_list.i
  br i1 %cmp36.not79.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body39.i_crit_edge

for.body.i.for.body39.i_crit_edge:                ; preds = %for.body.i
  br label %for.body39.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.loopexit.i

for.body39.i:                                     ; preds = %if.end49.i.for.body39.i_crit_edge, %for.body.i.for.body39.i_crit_edge
  %.pn7680.i = phi ptr [ %.pn76.i, %if.end49.i.for.body39.i_crit_edge ], [ %.pn7677.i, %for.body.i.for.body39.i_crit_edge ]
  %ch.081.i = getelementptr i8, ptr %.pn7680.i, i32 -136
  %call40.i = tail call fastcc i32 @srpt_disconnect_ch(ptr noundef %ch.081.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call40.i)
  %cmp41.i = icmp sgt i32 %call40.i, -1
  br i1 %cmp41.i, label %do.end45.i, label %for.body39.i.if.end49.i_crit_edge

for.body39.i.if.end49.i_crit_edge:                ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end49.i

do.end45.i:                                       ; preds = %for.body39.i
  %sess_name.i = getelementptr i8, ptr %.pn7680.i, i32 24
  %qp.i = getelementptr i8, ptr %.pn7680.i, i32 -132
  %8 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qp_num.i, align 4
  %12 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sport, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %init_name.i.i = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 13, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end45.i.dev_name.exit.i_crit_edge

do.end45.i.dev_name.exit.i_crit_edge:             ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #21
  %18 = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end45.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %17, %do.end45.i.dev_name.exit.i_crit_edge ]
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port.i, align 1
  %conv.i = zext i8 %22 to i32
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef %sess_name.i, i32 noundef %11, ptr noundef %retval.0.i.i, i32 noundef %conv.i) #22
  br label %if.end49.i

if.end49.i:                                       ; preds = %dev_name.exit.i, %for.body39.i.if.end49.i_crit_edge
  %call50.i = tail call fastcc zeroext i1 @srpt_close_ch(ptr noundef %ch.081.i) #19
  %23 = ptrtoint ptr %.pn7680.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn76.i = load ptr, ptr %.pn7680.i, align 4
  %cmp36.not.i = icmp eq ptr %.pn76.i, %ch_list.i
  br i1 %cmp36.not.i, label %if.end49.i.for.cond.loopexit.i_crit_edge, label %if.end49.i.for.body39.i_crit_edge

if.end49.i.for.body39.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body39.i

if.end49.i.for.cond.loopexit.i_crit_edge:         ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.loopexit.i

if.end37:                                         ; preds = %for.cond.loopexit.i.if.end37_crit_edge, %if.end.i.if.end37_crit_edge, %if.end31.if.end37_crit_edge, %if.end.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @srpt_get_fabric_wwn(ptr nocapture noundef readonly %tpg) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %sport_id = getelementptr i8, ptr %tpg, i32 -4
  %0 = ptrtoint ptr %sport_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sport_id, align 4
  %name = getelementptr inbounds %struct.srpt_port_id, ptr %1, i32 0, i32 3
  ret ptr %name
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @srpt_get_tag(ptr nocapture noundef readnone %tpg) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @srpt_check_false(ptr nocapture noundef readnone %se_tpg) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @srpt_check_true(ptr nocapture noundef readnone %se_tpg) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @srpt_tpg_get_inst_index(ptr nocapture noundef readnone %se_tpg) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_check_stop_free(ptr noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @target_put_sess_cmd(ptr noundef %cmd) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_release_cmd(ptr noundef %se_cmd) #4 align 64 {
entry:
  %dummy.i1.i = alloca ptr, align 4
  %dummy.i.i = alloca ptr, align 4
  %list.i = alloca %struct.ib_sge, align 8
  %wr.i = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %ch1 = getelementptr i8, ptr %se_cmd, i32 -132
  %0 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch1, align 4
  %recv_ioctx2 = getelementptr i8, ptr %se_cmd, i32 -128
  %2 = ptrtoint ptr %recv_ioctx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_ioctx2, align 8
  %state = getelementptr i8, ptr %se_cmd, i32 -4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.not = icmp eq i32 %5, 6
  br i1 %cmp.not, label %entry.if.end34_crit_edge, label %land.rhs

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end34

land.rhs:                                         ; preds = %entry
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 34
  %6 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transport_state, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs6, label %land.rhs.if.end34_crit_edge

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end34

land.rhs6:                                        ; preds = %land.rhs
  %.b126 = load i1, ptr @srpt_release_cmd.__already_done, align 1
  br i1 %.b126, label %land.rhs6.if.end34_crit_edge, label %if.then, !prof !688

land.rhs6.if.end34_crit_edge:                     ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end34

if.then:                                          ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_release_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3322, i32 noundef 9, ptr noundef null) #19
  br label %if.end34

if.end34:                                         ; preds = %if.then, %land.rhs6.if.end34_crit_edge, %land.rhs.if.end34_crit_edge, %entry.if.end34_crit_edge
  %tobool42.not = icmp eq ptr %3, null
  br i1 %tobool42.not, label %if.end34.if.end102_crit_edge, label %if.then43

if.end34.if.end102_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end102

if.then43:                                        ; preds = %if.end34
  %wait_list = getelementptr inbounds %struct.srpt_recv_ioctx, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %9, %wait_list
  br i1 %cmp.i.not, label %if.then43.if.end92_crit_edge, label %land.rhs54

if.then43.if.end92_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end92

land.rhs54:                                       ; preds = %if.then43
  %.b124125 = load i1, ptr @srpt_release_cmd.__already_done.240, align 1
  br i1 %.b124125, label %land.rhs54.if.end92_crit_edge, label %if.then65, !prof !688

land.rhs54.if.end92_crit_edge:                    ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end92

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_release_cmd.__already_done.240, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3325, i32 noundef 9, ptr noundef null) #19
  br label %if.end92

if.end92:                                         ; preds = %if.then65, %land.rhs54.if.end92_crit_edge, %if.then43.if.end92_crit_edge
  %10 = ptrtoint ptr %recv_ioctx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %recv_ioctx2, align 8
  %sport = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sport, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list.i) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr.i) #19
  %15 = call ptr @memset(ptr %wr.i, i32 255, i32 16)
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !692

do.body4.i:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 828, 0\0A.popsection", ""() #19, !srcloc !693
  unreachable

do.end9.i:                                        ; preds = %if.end92
  %16 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 1
  %dma.i = getelementptr inbounds %struct.srpt_ioctx, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma.i, align 4
  %offset.i = getelementptr inbounds %struct.srpt_ioctx, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %21, %19
  %conv.i128 = zext i32 %add.i to i64
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.i128, ptr %list.i, align 8
  %23 = load i32, ptr @srp_max_req_size, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %17, align 8
  %lkey.i = getelementptr inbounds %struct.srpt_device, ptr %14, i32 0, i32 2
  %25 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lkey.i, align 8
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %16, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @srpt_recv_done, ptr %3, align 4
  %29 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %3, ptr %29, align 8
  %31 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %wr.i, align 8
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 2
  %32 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i, ptr %sg_list.i, align 8
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 3
  %33 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %num_sge.i, align 4
  %use_srq.i = getelementptr inbounds %struct.srpt_device, ptr %14, i32 0, i32 7
  %34 = ptrtoint ptr %use_srq.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_srq.i, align 4, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not.i = icmp eq i8 %35, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %srq.i = getelementptr inbounds %struct.srpt_device, ptr %14, i32 0, i32 3
  %36 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %srq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #19
  %38 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !694
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %37, align 4
  %post_srq_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %40, i32 0, i32 1, i32 13
  %41 = ptrtoint ptr %post_srq_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %post_srq_recv.i.i, align 4
  %call.i.i = call i32 %42(ptr noundef %37, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #19
  br label %srpt_post_recv.exit

if.else.i:                                        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %qp.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i1.i) #19
  %45 = ptrtoint ptr %dummy.i1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i1.i, align 4, !annotation !694
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %44, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %47, i32 0, i32 1, i32 7
  %48 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %post_recv.i.i, align 4
  %call.i2.i = call i32 %49(ptr noundef %44, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i1.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i1.i) #19
  br label %srpt_post_recv.exit

srpt_post_recv.exit:                              ; preds = %if.else.i, %if.then17.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list.i) #19
  br label %if.end102

if.end102:                                        ; preds = %srpt_post_recv.exit, %if.end34.if.end102_crit_edge
  %n_rw_ctx = getelementptr i8, ptr %se_cmd, i32 441
  %50 = ptrtoint ptr %n_rw_ctx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %n_rw_ctx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool103.not = icmp eq i8 %51, 0
  br i1 %tobool103.not, label %if.end102.if.end106_crit_edge, label %if.then104

if.end102.if.end106_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end106

if.then104:                                       ; preds = %if.end102
  %se_cmd_flags.i.i = getelementptr i8, ptr %se_cmd, i32 48
  %52 = ptrtoint ptr %se_cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %se_cmd_flags.i.i, align 8
  %and.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then104.target_reverse_dma_direction.exit.i_crit_edge

if.then104.target_reverse_dma_direction.exit.i_crit_edge: ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #21
  br label %target_reverse_dma_direction.exit.i

if.end.i.i:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #21
  %data_direction.i.i = getelementptr i8, ptr %se_cmd, i32 28
  %54 = ptrtoint ptr %data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %switch.selectcmp.i.i = icmp eq i32 %55, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %switch.selectcmp4.i.i = icmp eq i32 %55, 1
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, i32 2, i32 %switch.select.i.i
  br label %target_reverse_dma_direction.exit.i

target_reverse_dma_direction.exit.i:              ; preds = %if.end.i.i, %if.then104.target_reverse_dma_direction.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.then104.target_reverse_dma_direction.exit.i_crit_edge ], [ %switch.select5.i.i, %if.end.i.i ]
  %56 = ptrtoint ptr %n_rw_ctx to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %n_rw_ctx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp22.not.i = icmp eq i8 %57, 0
  br i1 %cmp22.not.i, label %target_reverse_dma_direction.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

target_reverse_dma_direction.exit.i.for.end.i_crit_edge: ; preds = %target_reverse_dma_direction.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %target_reverse_dma_direction.exit.i
  %rw_ctxs.i = getelementptr i8, ptr %se_cmd, i32 -32
  %qp.i129 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %sport.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %rw_ctxs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rw_ctxs.i, align 8
  %arrayidx.i = getelementptr %struct.srpt_rw_ctx, ptr %59, i32 %i.023.i
  %60 = ptrtoint ptr %qp.i129 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %qp.i129, align 4
  %62 = ptrtoint ptr %sport.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sport.i, align 4
  %port.i = getelementptr inbounds %struct.srpt_port, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %port.i, align 1
  %conv2.i = zext i8 %65 to i32
  %sg.i = getelementptr %struct.srpt_rw_ctx, ptr %59, i32 %i.023.i, i32 1
  %66 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sg.i, align 8
  %nents.i = getelementptr %struct.srpt_rw_ctx, ptr %59, i32 %i.023.i, i32 2
  %68 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nents.i, align 4
  call void @rdma_rw_ctx_destroy(ptr noundef %arrayidx.i, ptr noundef %61, i32 noundef %conv2.i, ptr noundef %67, i32 noundef %69, i32 noundef %retval.0.i.i) #19
  %70 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sg.i, align 8
  %72 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nents.i, align 4
  call void @target_free_sgl(ptr noundef %71, i32 noundef %73) #19
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %74 = ptrtoint ptr %n_rw_ctx to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %n_rw_ctx, align 1
  %conv.i130 = zext i8 %75 to i32
  %cmp.i131 = icmp ult i32 %inc.i, %conv.i130
  br i1 %cmp.i131, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %target_reverse_dma_direction.exit.i.for.end.i_crit_edge
  %rw_ctxs5.i = getelementptr i8, ptr %se_cmd, i32 -32
  %76 = ptrtoint ptr %rw_ctxs5.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rw_ctxs5.i, align 8
  %s_rw_ctx.i = getelementptr i8, ptr %se_cmd, i32 -120
  %cmp6.not.i = icmp eq ptr %77, %s_rw_ctx.i
  br i1 %cmp6.not.i, label %for.end.i.srpt_free_rw_ctxs.exit_crit_edge, label %if.then.i

for.end.i.srpt_free_rw_ctxs.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_free_rw_ctxs.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @kfree(ptr noundef %77) #19
  br label %srpt_free_rw_ctxs.exit

srpt_free_rw_ctxs.exit:                           ; preds = %if.then.i, %for.end.i.srpt_free_rw_ctxs.exit_crit_edge
  %78 = ptrtoint ptr %n_rw_ctx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %n_rw_ctx, align 1
  br label %if.end106

if.end106:                                        ; preds = %srpt_free_rw_ctxs.exit, %if.end102.if.end106_crit_edge
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 21
  %79 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %se_sess, align 4
  %sess_tag_pool.i = getelementptr inbounds %struct.se_session, ptr %80, i32 0, i32 14
  %map_tag.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 8
  %81 = ptrtoint ptr %map_tag.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %map_tag.i, align 4
  %map_cpu.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 9
  %83 = ptrtoint ptr %map_cpu.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %map_cpu.i, align 8
  call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i, i32 noundef %82, i32 noundef %84) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_close_session(ptr nocapture noundef readonly %se_sess) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  tail call fastcc void @srpt_disconnect_ch_sync(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @srpt_sess_get_index(ptr nocapture noundef readnone %se_sess) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_write_pending(ptr noundef %se_cmd) #4 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %ch1 = getelementptr i8, ptr %se_cmd, i32 -132
  %0 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch1, align 4
  %rdma_cqe = getelementptr i8, ptr %se_cmd, i32 -8
  %recv_ioctx = getelementptr i8, ptr %se_cmd, i32 -128
  %2 = ptrtoint ptr %recv_ioctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_ioctx, align 8
  %tobool.not = icmp eq ptr %3, null
  %state.i90 = getelementptr i8, ptr %se_cmd, i32 -4
  %4 = ptrtoint ptr %state.i90 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.not.i91 = icmp eq i32 %5, 6
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.not.i91, label %if.then.srpt_set_cmd_state.exit_crit_edge, label %if.then.i

if.then.srpt_set_cmd_state.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_set_cmd_state.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %state.i90 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state.i90, align 4
  br label %srpt_set_cmd_state.exit

srpt_set_cmd_state.exit:                          ; preds = %if.then.i, %if.then.srpt_set_cmd_state.exit_crit_edge
  tail call void @target_execute_cmd(ptr noundef %se_cmd) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp.not.i91, label %do.end, label %srpt_set_cmd_state.exit93

srpt_set_cmd_state.exit93:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %state.i90 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %state.i90, align 4
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2753, i32 noundef 9, ptr noundef null) #19
  br label %if.end17

if.end17:                                         ; preds = %do.end, %srpt_set_cmd_state.exit93
  %n_rdma = getelementptr i8, ptr %se_cmd, i32 440
  %8 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_rdma, align 8
  %conv = zext i8 %9 to i32
  %sq_wr_avail = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !695
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #19
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %conv, ptr elementtype(i32) %sq_wr_avail) #19, !srcloc !696
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !697
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp26 = icmp slt i32 %asmresult.i.i.i, 0
  br i1 %cmp26, label %do.end31, label %if.end36

do.end31:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %n_rdma, align 8
  %conv34 = zext i8 %12 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.246, i32 noundef %conv34) #22
  br label %out_undo

if.end36:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %rdma_cqe to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @srpt_rdma_read_done, ptr %rdma_cqe, align 4
  %n_rw_ctx = getelementptr i8, ptr %se_cmd, i32 441
  %14 = ptrtoint ptr %n_rw_ctx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %n_rw_ctx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp3895.not = icmp eq i8 %15, 0
  br i1 %cmp3895.not, label %if.end36.for.end_crit_edge, label %for.body.lr.ph

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end36
  %conv37 = zext i8 %15 to i32
  %i.094 = add nsw i32 %conv37, -1
  %rw_ctxs = getelementptr i8, ptr %se_cmd, i32 -32
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %sport = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %rw_ctxs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rw_ctxs, align 8
  %arrayidx.peel = getelementptr %struct.srpt_rw_ctx, ptr %17, i32 %i.094
  %18 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qp, align 4
  %20 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sport, align 4
  %port.peel = getelementptr inbounds %struct.srpt_port, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %port.peel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port.peel, align 1
  %conv40.peel = zext i8 %23 to i32
  %call41.peel = tail call ptr @rdma_rw_ctx_wrs(ptr noundef %arrayidx.peel, ptr noundef %19, i32 noundef %conv40.peel, ptr noundef %rdma_cqe, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp38.peel.not = icmp eq i8 %15, 1
  br i1 %cmp38.peel.not, label %for.body.lr.ph.for.end_crit_edge, label %for.body.peel.next

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.peel.next:                               ; preds = %for.body.lr.ph
  %i.0.peel = add nsw i32 %conv37, -2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %i.098 = phi i32 [ %i.0.peel, %for.body.peel.next ], [ %i.0, %for.body.for.body_crit_edge ]
  %first_wr.097 = phi ptr [ %call41.peel, %for.body.peel.next ], [ %call41, %for.body.for.body_crit_edge ]
  %24 = ptrtoint ptr %rw_ctxs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rw_ctxs, align 8
  %arrayidx = getelementptr %struct.srpt_rw_ctx, ptr %25, i32 %i.098
  %26 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qp, align 4
  %28 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sport, align 4
  %port = getelementptr inbounds %struct.srpt_port, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port, align 1
  %conv40 = zext i8 %31 to i32
  %call41 = tail call ptr @rdma_rw_ctx_wrs(ptr noundef %arrayidx, ptr noundef %27, i32 noundef %conv40, ptr noundef null, ptr noundef %first_wr.097) #19
  %i.0 = add nsw i32 %i.098, -1
  %cmp38 = icmp sgt i32 %i.098, 0
  br i1 %cmp38, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !713

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %if.end36.for.end_crit_edge
  %first_wr.0.lcssa = phi ptr [ null, %if.end36.for.end_crit_edge ], [ %call41.peel, %for.body.lr.ph.for.end_crit_edge ], [ %call41, %for.body.for.end_crit_edge ]
  %qp42 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %qp42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qp42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #19
  %34 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !694
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %33, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %36, i32 0, i32 1, i32 6
  %37 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %38(ptr noundef %33, ptr noundef %first_wr.0.lcssa, ptr noundef nonnull %dummy.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool44.not = icmp eq i32 %call.i, 0
  br i1 %tobool44.not, label %for.end.cleanup_crit_edge, label %do.end48

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  %39 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %n_rdma, align 8
  %conv51 = zext i8 %40 to i32
  %call.i.i88 = call zeroext i1 @__kasan_check_read(ptr noundef %sq_wr_avail, i32 noundef 4) #19
  %41 = ptrtoint ptr %sq_wr_avail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %sq_wr_avail, align 4
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.246, i32 noundef %call.i, i32 noundef %conv51, i32 noundef %42) #22
  br label %out_undo

out_undo:                                         ; preds = %do.end48, %do.end31
  %ret.0 = phi i32 [ -12, %do.end31 ], [ %call.i, %do.end48 ]
  %43 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %n_rdma, align 8
  %conv57 = zext i8 %44 to i32
  %call.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #19
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %conv57, ptr elementtype(i32) %sq_wr_avail) #19, !srcloc !710
  br label %cleanup

cleanup:                                          ; preds = %out_undo, %for.end.cleanup_crit_edge, %srpt_set_cmd_state.exit
  %retval.0 = phi i32 [ 0, %srpt_set_cmd_state.exit ], [ %ret.0, %out_undo ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @srpt_set_default_node_attrs(ptr nocapture noundef %nacl) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @srpt_get_tcm_cmd_state(ptr nocapture noundef readonly %se_cmd) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %se_cmd, i32 -4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_queue_data_in(ptr noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @srpt_queue_response(ptr noundef %cmd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_queue_status(ptr noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %sense_data = getelementptr i8, ptr %cmd, i32 443
  %sense_buffer = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 16
  %0 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sense_buffer, align 8
  %cmp.not = icmp eq ptr %sense_data, %1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !688

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2926, 0\0A.popsection", ""() #19, !srcloc !715
  unreachable

do.end7:                                          ; preds = %entry
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %2 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end7.if.end41_crit_edge, label %if.then9

do.end7.if.end41_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.then9:                                         ; preds = %do.end7
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scsi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp10.not = icmp eq i8 %5, 2
  br i1 %cmp10.not, label %if.then9.if.end41_crit_edge, label %do.end27, !prof !688

if.then9.if.end41_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

do.end27:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2929, i32 noundef 9, ptr noundef null) #19
  br label %if.end41

if.end41:                                         ; preds = %do.end27, %if.then9.if.end41_crit_edge, %do.end7.if.end41_crit_edge
  %queue_status_only = getelementptr i8, ptr %cmd, i32 442
  %6 = ptrtoint ptr %queue_status_only to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %queue_status_only, align 2
  tail call fastcc void @srpt_queue_response(ptr noundef %cmd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_queue_tm_rsp(ptr noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @srpt_queue_response(ptr noundef %cmd)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_aborted_task(ptr nocapture noundef readonly %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %ch1 = getelementptr i8, ptr %cmd, i32 -132
  %0 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch1, align 4
  %req_lim_delta = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_lim_delta, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %req_lim_delta, i32 1, i32 3, i32 1) #19
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req_lim_delta, ptr %req_lim_delta, i32 1, ptr elementtype(i32) %req_lim_delta) #19, !srcloc !710
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @srpt_make_tport(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr nocapture noundef readonly %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @srpt_dev_lock) #19
  %.pn39.i.i = load ptr, ptr @srpt_dev_list, align 4
  %cmp.not40.i.i = icmp eq ptr %.pn39.i.i, @srpt_dev_list
  br i1 %cmp.not40.i.i, label %entry.srpt_lookup_wwn.exit.thread_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.srpt_lookup_wwn.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_lookup_wwn.exit.thread

for.body.i.i:                                     ; preds = %for.inc17.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn41.i.i = phi ptr [ %.pn.i.i, %for.inc17.i.i.for.body.i.i_crit_edge ], [ %.pn39.i.i, %entry.for.body.i.i_crit_edge ]
  %sdev.0.i.i = getelementptr i8, ptr %.pn41.i.i, i32 -144
  %0 = ptrtoint ptr %sdev.0.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.0.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc17.i.i_crit_edge, label %for.cond1.preheader.i.i

for.body.i.i.for.inc17.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc17.i.i

for.cond1.preheader.i.i:                          ; preds = %for.body.i.i
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_port_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp237.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp237.not.i.i, label %for.cond1.preheader.i.i.for.inc17.i.i_crit_edge, label %for.body3.lr.ph.i.i

for.cond1.preheader.i.i.for.inc17.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc17.i.i

for.body3.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %port.i.i = getelementptr i8, ptr %.pn41.i.i, i32 8
  br label %for.body3.i.i

for.cond1.i.i:                                    ; preds = %if.end8.i.i
  %inc.i.i = add nuw i32 %i.038.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.cond1.i.i.for.inc17.i.i_crit_edge, label %for.cond1.i.i.for.body3.i.i_crit_edge

for.cond1.i.i.for.body3.i.i_crit_edge:            ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body3.i.i

for.cond1.i.i.for.inc17.i.i_crit_edge:            ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc17.i.i

for.body3.i.i:                                    ; preds = %for.cond1.i.i.for.body3.i.i_crit_edge, %for.body3.lr.ph.i.i
  %i.038.i.i = phi i32 [ 0, %for.body3.lr.ph.i.i ], [ %inc.i.i, %for.cond1.i.i.for.body3.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [0 x %struct.srpt_port], ptr %port.i.i, i32 0, i32 %i.038.i.i
  %name4.i.i = getelementptr inbounds %struct.srpt_port, ptr %arrayidx.i.i, i32 0, i32 8, i32 3
  %call.i.i = tail call i32 @strcmp(ptr noundef %name4.i.i, ptr noundef %name) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end8.i.i

if.then6.i.i:                                     ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %wwn.i.i = getelementptr inbounds %struct.srpt_port, ptr %arrayidx.i.i, i32 0, i32 8, i32 2
  br label %srpt_lookup_wwn.exit

if.end8.i.i:                                      ; preds = %for.body3.i.i
  %name9.i.i = getelementptr inbounds %struct.srpt_port, ptr %arrayidx.i.i, i32 0, i32 9, i32 3
  %call11.i.i = tail call i32 @strcmp(ptr noundef %name9.i.i, ptr noundef %name) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %if.then13.i.i, label %for.cond1.i.i

if.then13.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %wwn15.i.i = getelementptr inbounds %struct.srpt_port, ptr %arrayidx.i.i, i32 0, i32 9, i32 2
  br label %srpt_lookup_wwn.exit

for.inc17.i.i:                                    ; preds = %for.cond1.i.i.for.inc17.i.i_crit_edge, %for.cond1.preheader.i.i.for.inc17.i.i_crit_edge, %for.body.i.i.for.inc17.i.i_crit_edge
  %4 = ptrtoint ptr %.pn41.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i = load ptr, ptr %.pn41.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @srpt_dev_list
  br i1 %cmp.not.i.i, label %for.inc17.i.i.srpt_lookup_wwn.exit.thread_crit_edge, label %for.inc17.i.i.for.body.i.i_crit_edge

for.inc17.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

for.inc17.i.i.srpt_lookup_wwn.exit.thread_crit_edge: ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_lookup_wwn.exit.thread

srpt_lookup_wwn.exit.thread:                      ; preds = %for.inc17.i.i.srpt_lookup_wwn.exit.thread_crit_edge, %entry.srpt_lookup_wwn.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @srpt_dev_lock) #19
  br label %cond.false

srpt_lookup_wwn.exit:                             ; preds = %if.then13.i.i, %if.then6.i.i
  %retval.0.i.i = phi ptr [ %wwn.i.i, %if.then6.i.i ], [ %wwn15.i.i, %if.then13.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @srpt_dev_lock) #19
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %srpt_lookup_wwn.exit.cond.false_crit_edge, label %srpt_lookup_wwn.exit.cond.end_crit_edge

srpt_lookup_wwn.exit.cond.end_crit_edge:          ; preds = %srpt_lookup_wwn.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

srpt_lookup_wwn.exit.cond.false_crit_edge:        ; preds = %srpt_lookup_wwn.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.false

cond.false:                                       ; preds = %srpt_lookup_wwn.exit.cond.false_crit_edge, %srpt_lookup_wwn.exit.thread
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %srpt_lookup_wwn.exit.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 -22 to ptr), %cond.false ], [ %retval.0.i.i, %srpt_lookup_wwn.exit.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @srpt_drop_tport(ptr nocapture noundef %wwn) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @srpt_make_tpg(ptr noundef %wwn, ptr nocapture noundef readnone %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %wwn, i32 0, i32 1
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %wwn1.i = getelementptr inbounds %struct.srpt_port, ptr %1, i32 0, i32 8, i32 2
  %cmp.i = icmp eq ptr %wwn1.i, %wwn
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %port_guid_id.i = getelementptr inbounds %struct.srpt_port, ptr %1, i32 0, i32 8
  br label %srpt_wwn_to_sport_id.exit

if.end.i:                                         ; preds = %entry
  %wwn3.i = getelementptr inbounds %struct.srpt_port, ptr %1, i32 0, i32 9, i32 2
  %cmp4.i = icmp eq ptr %wwn3.i, %wwn
  br i1 %cmp4.i, label %if.then5.i, label %land.end.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %port_gid_id.i = getelementptr inbounds %struct.srpt_port, ptr %1, i32 0, i32 9
  br label %srpt_wwn_to_sport_id.exit

land.end.i:                                       ; preds = %if.end.i
  %.b49.i = load i1, ptr @srpt_wwn_to_sport_id.__already_done, align 1
  br i1 %.b49.i, label %land.end.i.srpt_wwn_to_sport_id.exit_crit_edge, label %if.then12.i, !prof !688

land.end.i.srpt_wwn_to_sport_id.exit_crit_edge:   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_wwn_to_sport_id.exit

if.then12.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_wwn_to_sport_id.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3293, i32 noundef 9, ptr noundef null) #19
  br label %srpt_wwn_to_sport_id.exit

srpt_wwn_to_sport_id.exit:                        ; preds = %if.then12.i, %land.end.i.srpt_wwn_to_sport_id.exit_crit_edge, %if.then5.i, %if.then.i
  %retval.0.i = phi ptr [ %port_guid_id.i, %if.then.i ], [ %port_gid_id.i, %if.then5.i ], [ null, %if.then12.i ], [ null, %land.end.i.srpt_wwn_to_sport_id.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 844) #24
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %srpt_wwn_to_sport_id.exit.cleanup_crit_edge, label %if.end

srpt_wwn_to_sport_id.exit.cleanup_crit_edge:      ; preds = %srpt_wwn_to_sport_id.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %srpt_wwn_to_sport_id.exit
  %sport_id3 = getelementptr inbounds %struct.srpt_tpg, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %sport_id3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %retval.0.i, ptr %sport_id3, align 8
  %tpg = getelementptr inbounds %struct.srpt_tpg, ptr %call7.i.i, i32 0, i32 2
  %call4 = tail call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %tpg, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #19
  %4 = inttoptr i32 %call4 to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %retval.0.i, i32 noundef 0) #19
  %tpg_list = getelementptr inbounds %struct.srpt_port_id, ptr %retval.0.i, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.srpt_port_id, ptr %retval.0.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %6, ptr noundef %tpg_list) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add_tail.exit_crit_edge

if.end8.list_add_tail.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tpg_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end8.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %retval.0.i) #19
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then6, %srpt_wwn_to_sport_id.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then6 ], [ %tpg, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %srpt_wwn_to_sport_id.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_enable_tpg(ptr nocapture noundef readonly %se_tpg, i1 noundef zeroext %enable) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr inbounds %struct.se_portal_group, ptr %se_tpg, i32 0, i32 11
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %mutex = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #19
  tail call fastcc void @srpt_set_enabled(ptr noundef %3, i1 noundef zeroext %enable)
  tail call void @mutex_unlock(ptr noundef %mutex) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_drop_tpg(ptr noundef %tpg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tpg, i32 -12
  %sport_id1 = getelementptr i8, ptr %tpg, i32 -4
  %0 = ptrtoint ptr %sport_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sport_id1, align 4
  %se_tpg_wwn.i = getelementptr inbounds %struct.se_portal_group, ptr %tpg, i32 0, i32 11
  %2 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #19
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #19
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i = getelementptr i8, ptr %tpg, i32 -8
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %tpg, i32 -8
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %1) #19
  %enabled = getelementptr inbounds %struct.srpt_port, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled, align 8
  %call4 = tail call i32 @core_tpg_deregister(ptr noundef %tpg) #19
  tail call void @kfree(ptr noundef %add.ptr) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_init_nodeacl(ptr nocapture noundef readnone %se_nacl, ptr noundef %name) #4 align 64 {
entry:
  %w.i = alloca [4 x i16], align 8
  %sa = alloca %struct.__kernel_sockaddr_storage, align 4
  %i_port_id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sa) #19
  %0 = call ptr @memset(ptr %sa, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %i_port_id) #19
  %1 = call ptr @memset(ptr %i_port_id, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %w.i) #19
  %2 = getelementptr inbounds [4 x i16], ptr %w.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i16], ptr %w.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i16], ptr %w.i, i32 0, i32 3
  %5 = ptrtoint ptr %w.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %w.i, align 8
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %name, ptr noundef nonnull @.str.275, ptr noundef nonnull %w.i, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %w.i) #19
  br i1 %cmp.not.i, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.then:                                          ; preds = %entry
  %call.i16 = call i32 @strncasecmp(ptr noundef %name, ptr noundef nonnull @.str.276, i32 noundef 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i = icmp eq i32 %call.i16, 0
  %spec.select.idx.i = select i1 %cmp.i, i32 2, i32 0
  %spec.select.i = getelementptr i8, ptr %name, i32 %spec.select.idx.i
  %call1.i = call i32 @strlen(ptr noundef %spec.select.i) #25
  %rem.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1.i)
  %cmp4.i = icmp ult i32 %call1.i, 32
  %div16.i = lshr i32 %call1.i, 1
  %cond.i = select i1 %cmp4.i, i32 %div16.i, i32 16
  %sub.i = sub nsw i32 16, %cond.i
  %6 = call ptr @memset(ptr %i_port_id, i32 0, i32 %sub.i)
  %add.ptr5.i = getelementptr i8, ptr %i_port_id, i32 %sub.i
  %call6.i = call i32 @hex2bin(ptr noundef %add.ptr5.i, ptr noundef %spec.select.i, i32 noundef %cond.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp2 = icmp slt i32 %call6.i, 0
  br i1 %cmp2, label %if.end.if.end5_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %call4 = call i32 @inet_pton_with_scope(ptr noundef nonnull @init_net, i16 noundef zeroext 0, ptr noundef %name, ptr noundef null, ptr noundef nonnull %sa) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %do.end, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef %name) #22
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end5.if.end9_crit_edge, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.127 = phi i32 [ %call4, %do.end ], [ %call4, %if.end5.if.end9_crit_edge ], [ %call6.i, %if.end.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %i_port_id) #19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sa) #19
  ret i32 %ret.127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_disconnect_ch_sync(ptr noundef %ch) unnamed_addr #4 align 64 {
entry:
  %closed = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %closed) #19
  %0 = getelementptr inbounds i8, ptr %closed, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %closed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %closed, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %closed, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.233, ptr noundef nonnull @init_completion.__key) #19
  %sport1 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 12
  %3 = ptrtoint ptr %sport1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sport1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_disconnect_ch_sync.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_disconnect_ch_sync, %if.then)) #19
          to label %do.end [label %if.then], !srcloc !686

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qp_num, align 4
  %state = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 18
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_disconnect_ch_sync.__UNIQUE_ID_ddebug561, ptr noundef nonnull @.str.243, ptr noundef %sess_name, i32 noundef %8, i32 noundef %10) #19
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %closed5 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 8
  %11 = ptrtoint ptr %closed5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %closed, ptr %closed5, align 4
  %mutex = getelementptr inbounds %struct.srpt_port, ptr %4, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #19
  %call6 = call fastcc i32 @srpt_disconnect_ch(ptr noundef %ch)
  call void @mutex_unlock(ptr noundef %mutex) #19
  %call829 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %closed, i32 noundef 500) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call829)
  %cmp30 = icmp eq i32 %call829, 0
  br i1 %cmp30, label %do.end11.lr.ph, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

do.end11.lr.ph:                                   ; preds = %do.end
  %sess_name13 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 29
  %qp15 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 1
  %state17 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %ch, i32 0, i32 18
  br label %do.end11

do.end11:                                         ; preds = %do.end11.do.end11_crit_edge, %do.end11.lr.ph
  %12 = ptrtoint ptr %qp15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp15, align 4
  %qp_num16 = getelementptr inbounds %struct.ib_qp, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %qp_num16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_num16, align 4
  %16 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state17, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.241, ptr noundef %sess_name13, i32 noundef %15, i32 noundef %17) #22
  %call8 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %closed, i32 noundef 500) #19
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %do.end11.do.end11_crit_edge, label %do.end11.while.end_crit_edge

do.end11.while.end_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

do.end11.do.end11_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end11

while.end:                                        ; preds = %do.end11.while.end_crit_edge, %do.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %closed) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_rdma_read_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -144
  %n_rdma = getelementptr i8, ptr %5, i32 448
  %6 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %n_rdma, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !692

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1330, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_rdma, align 8
  %conv22 = zext i8 %9 to i32
  %sq_wr_avail = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #19
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %conv22, ptr elementtype(i32) %sq_wr_avail) #19, !srcloc !710
  %11 = ptrtoint ptr %n_rdma to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %n_rdma, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24.not = icmp eq i32 %13, 0
  br i1 %cmp24.not, label %if.end39, label %do.end35, !prof !688

do.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, ptr noundef %add.ptr, i32 noundef %13) #22
  tail call fastcc void @srpt_abort_cmd(ptr noundef %add.ptr)
  br label %cleanup

if.end39:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end39.if.end74.i_crit_edge, !prof !692

if.end39.if.end74.i_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end74.i

do.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 805, i32 noundef 9, ptr noundef null) #19
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end.i, %if.end39.if.end74.i_crit_edge
  %state.i = getelementptr i8, ptr %5, i32 4
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp82.i = icmp eq i32 %15, 1
  br i1 %cmp82.i, label %if.then41, label %do.end44

if.then41:                                        ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %state.i, align 4
  %cmd = getelementptr i8, ptr %5, i32 8
  tail call void @target_execute_cmd(ptr noundef %cmd) #19
  br label %cleanup

do.end44:                                         ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.251, i32 noundef 1346, i32 noundef %18) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.then41, %do.end35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_rw_ctx_wrs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_abort_cmd(ptr noundef %ioctx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ioctx, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !692

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1256, 0\0A.popsection", ""() #19, !srcloc !716
  unreachable

do.end9:                                          ; preds = %entry
  %state10 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 7
  %0 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state10, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.341)
  switch i32 %1, label %land.end [
    i32 1, label %sw.bb
    i32 3, label %do.end9.sw.bb12_crit_edge
    i32 5, label %do.end9.sw.bb12_crit_edge7
  ]

do.end9.sw.bb12_crit_edge7:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb12

do.end9.sw.bb12_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb12

sw.bb:                                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #21
  %3 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state10, align 4
  br label %do.body57

sw.bb12:                                          ; preds = %do.end9.sw.bb12_crit_edge, %do.end9.sw.bb12_crit_edge7
  %4 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %state10, align 4
  br label %do.body57

land.end:                                         ; preds = %do.end9
  %.b1 = load i1, ptr @srpt_abort_cmd.__already_done, align 1
  br i1 %.b1, label %land.end.do.body57_crit_edge, label %if.then24, !prof !688

land.end.do.body57_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body57

if.then24:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_abort_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1274, i32 noundef 9, ptr noundef nonnull @.str.255, ptr noundef nonnull @__func__.srpt_abort_cmd, i32 noundef %1) #19
  br label %do.body57

do.body57:                                        ; preds = %if.then24, %land.end.do.body57_crit_edge, %sw.bb12, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_abort_cmd.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_abort_cmd, %if.then66)) #19
          to label %do.end70 [label %if.then66], !srcloc !686

if.then66:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #21
  %5 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state10, align 4
  %tag = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 8, i32 4
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tag, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_abort_cmd.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.257, i32 noundef %1, i32 noundef %6, i64 noundef %8) #19
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body57
  %9 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.342)
  switch i32 %1, label %do.end111 [
    i32 0, label %do.end70.sw.epilog125_crit_edge
    i32 2, label %do.end70.sw.epilog125_crit_edge8
    i32 4, label %do.end70.sw.epilog125_crit_edge9
    i32 6, label %do.end70.sw.epilog125_crit_edge10
    i32 1, label %do.body73
    i32 3, label %sw.bb92
    i32 5, label %sw.bb95
  ]

do.end70.sw.epilog125_crit_edge10:                ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog125

do.end70.sw.epilog125_crit_edge9:                 ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog125

do.end70.sw.epilog125_crit_edge8:                 ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog125

do.end70.sw.epilog125_crit_edge:                  ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog125

do.body73:                                        ; preds = %do.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_abort_cmd.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_abort_cmd, %if.then85)) #19
          to label %do.end90 [label %if.then85], !srcloc !686

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #21
  %tag87 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %tag87 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tag87, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_abort_cmd.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.259, i64 noundef %11) #19
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %do.body73
  %cmd91 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 8
  tail call void @transport_generic_request_failure(ptr noundef %cmd91, i32 noundef 13) #19
  br label %sw.epilog125

sw.bb92:                                          ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #21
  %cmd93 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 8
  %call94 = tail call i32 @transport_generic_free_cmd(ptr noundef %cmd93, i32 noundef 0) #19
  br label %sw.epilog125

sw.bb95:                                          ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #21
  %cmd96 = getelementptr inbounds %struct.srpt_send_ioctx, ptr %ioctx, i32 0, i32 8
  %call97 = tail call i32 @transport_generic_free_cmd(ptr noundef %cmd96, i32 noundef 0) #19
  br label %sw.epilog125

do.end111:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1307, i32 noundef 9, ptr noundef nonnull @.str.260, i32 noundef %1) #19
  br label %sw.epilog125

sw.epilog125:                                     ; preds = %do.end111, %sw.bb95, %sw.bb92, %do.end90, %do.end70.sw.epilog125_crit_edge, %do.end70.sw.epilog125_crit_edge8, %do.end70.sw.epilog125_crit_edge9, %do.end70.sw.epilog125_crit_edge10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_generic_request_failure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srpt_queue_response(ptr noundef %cmd) unnamed_addr #4 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %send_wr = alloca %struct.ib_send_wr, align 8
  %sge = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cmd, i32 -152
  %ch1 = getelementptr i8, ptr %cmd, i32 -132
  %0 = ptrtoint ptr %ch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch1, align 4
  %sport = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sport, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %send_wr) #19
  %6 = call ptr @memset(ptr %send_wr, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sge) #19
  %7 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %state3 = getelementptr i8, ptr %cmd, i32 -4
  %9 = call ptr @memset(ptr %sge, i32 255, i32 16)
  %10 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state3, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %11, label %sw.epilog [
    i32 0, label %entry.if.end75.sink.split_crit_edge
    i32 2, label %entry.if.end75.sink.split_crit_edge224
    i32 4, label %sw.bb5
  ]

entry.if.end75.sink.split_crit_edge224:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end75.sink.split

entry.if.end75.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end75.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end75.sink.split

sw.epilog:                                        ; preds = %entry
  %index = getelementptr i8, ptr %cmd, i32 -136
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2826, i32 noundef 9, ptr noundef nonnull @.str.261, ptr noundef %1, i32 noundef %14, i32 noundef %11) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %land.rhs, label %sw.epilog.if.end75_crit_edge

sw.epilog.if.end75_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end75

land.rhs:                                         ; preds = %sw.epilog
  %.b206 = load i1, ptr @srpt_queue_response.__already_done, align 1
  br i1 %.b206, label %land.rhs.cleanup_crit_edge, label %if.then38, !prof !688

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then38:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_queue_response.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2830, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

if.end75.sink.split:                              ; preds = %sw.bb5, %entry.if.end75.sink.split_crit_edge, %entry.if.end75.sink.split_crit_edge224
  %.sink = phi i32 [ 5, %sw.bb5 ], [ 3, %entry.if.end75.sink.split_crit_edge ], [ 3, %entry.if.end75.sink.split_crit_edge224 ]
  %15 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %state3, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %sw.epilog.if.end75_crit_edge
  %data_direction = getelementptr %struct.se_cmd, ptr %cmd, i32 0, i32 6
  %16 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp77 = icmp eq i32 %17, 2
  br i1 %cmp77, label %land.lhs.true, label %if.end75.if.end87_crit_edge

if.end75.if.end87_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end75
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %18 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool79.not = icmp eq i32 %19, 0
  br i1 %tobool79.not, label %land.lhs.true.if.end87_crit_edge, label %land.lhs.true80

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end87

land.lhs.true80:                                  ; preds = %land.lhs.true
  %queue_status_only = getelementptr i8, ptr %cmd, i32 442
  %20 = ptrtoint ptr %queue_status_only to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %queue_status_only, align 2, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool81.not = icmp eq i8 %21, 0
  br i1 %tobool81.not, label %if.then82, label %land.lhs.true80.if.end87_crit_edge

land.lhs.true80.if.end87_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end87

if.then82:                                        ; preds = %land.lhs.true80
  %n_rw_ctx = getelementptr i8, ptr %cmd, i32 441
  %22 = ptrtoint ptr %n_rw_ctx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %n_rw_ctx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp83221.not = icmp eq i8 %23, 0
  br i1 %cmp83221.not, label %if.then82.if.end87_crit_edge, label %for.body.lr.ph

if.then82.if.end87_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end87

for.body.lr.ph:                                   ; preds = %if.then82
  %conv = zext i8 %23 to i32
  %rw_ctxs = getelementptr i8, ptr %cmd, i32 -32
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0223.in = phi i32 [ %conv, %for.body.lr.ph ], [ %i.0223, %for.body.for.body_crit_edge ]
  %first_wr.0222 = phi ptr [ %send_wr, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %i.0223 = add nsw i32 %i.0223.in, -1
  %24 = ptrtoint ptr %rw_ctxs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rw_ctxs, align 8
  %arrayidx = getelementptr %struct.srpt_rw_ctx, ptr %25, i32 %i.0223
  %26 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qp, align 4
  %28 = ptrtoint ptr %sport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sport, align 4
  %port = getelementptr inbounds %struct.srpt_port, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port, align 1
  %conv86 = zext i8 %31 to i32
  %call = call ptr @rdma_rw_ctx_wrs(ptr noundef %arrayidx, ptr noundef %27, i32 noundef %conv86, ptr noundef null, ptr noundef %first_wr.0222) #19
  %cmp83 = icmp ugt i32 %i.0223.in, 1
  br i1 %cmp83, label %for.body.for.body_crit_edge, label %for.body.if.end87_crit_edge

for.body.if.end87_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end87

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.end87:                                         ; preds = %for.body.if.end87_crit_edge, %if.then82.if.end87_crit_edge, %land.lhs.true80.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %if.end75.if.end87_crit_edge
  %first_wr.1 = phi ptr [ %send_wr, %land.lhs.true80.if.end87_crit_edge ], [ %send_wr, %land.lhs.true.if.end87_crit_edge ], [ %send_wr, %if.end75.if.end87_crit_edge ], [ %send_wr, %if.then82.if.end87_crit_edge ], [ %call, %for.body.if.end87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp88.not = icmp eq i32 %11, 4
  br i1 %cmp88.not, label %if.else, label %if.then90

if.then90:                                        ; preds = %if.end87
  %tag = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 4
  %32 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tag, align 8
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 1
  %34 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %scsi_status, align 4
  %residual_count.i = getelementptr i8, ptr %cmd, i32 56
  %36 = ptrtoint ptr %residual_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %residual_count.i, align 8
  %38 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %if.then90.if.end.i_crit_edge, label %do.end.i, !prof !688

if.then90.if.end.i_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.end.i:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1378, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then90.if.end.i_crit_edge
  %buf.i = getelementptr i8, ptr %cmd, i32 -148
  %39 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf.i, align 4
  %tobool23.not.i = icmp eq ptr %40, null
  br i1 %tobool23.not.i, label %do.body33.i, label %do.end41.i, !prof !692

do.body33.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1381, 0\0A.popsection", ""() #19, !srcloc !717
  unreachable

do.end41.i:                                       ; preds = %if.end.i
  %sense_data42.i = getelementptr i8, ptr %cmd, i32 443
  %scsi_sense_length.i = getelementptr i8, ptr %cmd, i32 6
  %41 = ptrtoint ptr %scsi_sense_length.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %scsi_sense_length.i, align 2
  %conv.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %42)
  %cmp.i = icmp ugt i16 %42, 96
  br i1 %cmp.i, label %do.end61.i, label %do.end41.i.if.end67.i_crit_edge, !prof !692

do.end41.i.if.end67.i_crit_edge:                  ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end67.i

do.end61.i:                                       ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1385, i32 noundef 9, ptr noundef null) #19
  br label %if.end67.i

if.end67.i:                                       ; preds = %do.end61.i, %do.end41.i.if.end67.i_crit_edge
  %43 = call ptr @memset(ptr %40, i32 0, i32 36)
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -63, ptr %40, align 4
  %req_lim_delta.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %req_lim_delta.i, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !718
  call void @llvm.prefetch.p0(ptr %req_lim_delta.i, i32 1, i32 3, i32 1) #19
  %45 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %req_lim_delta.i) #19, !srcloc !719
  %asmresult.i.i.i211 = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !720
  %add.i = add i32 %asmresult.i.i.i211, 1
  %req_lim_delta75.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 3
  %46 = ptrtoint ptr %req_lim_delta75.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i, ptr %req_lim_delta75.i, align 4
  %tag76.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 4
  %47 = ptrtoint ptr %tag76.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %33, ptr %tag76.i, align 4
  %status78.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 7
  %48 = ptrtoint ptr %status78.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %35, ptr %status78.i, align 1
  %se_cmd_flags.i = getelementptr i8, ptr %cmd, i32 48
  %49 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %se_cmd_flags.i, align 8
  %and79.i = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.else92.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end67.i
  %51 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_direction, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %52, label %if.then81.i.if.end113.i_crit_edge [
    i32 1, label %if.then84.i
    i32 2, label %if.then88.i
  ]

if.then81.i.if.end113.i_crit_edge:                ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end113.i

if.then84.i:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #21
  %flags.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 6
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 8, ptr %flags.i, align 2
  %data_out_res_cnt.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 8
  br label %if.end113.sink.split.i

if.then88.i:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #21
  %flags89.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 6
  %55 = ptrtoint ptr %flags89.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 32, ptr %flags89.i, align 2
  %data_in_res_cnt.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 9
  br label %if.end113.sink.split.i

if.else92.i:                                      ; preds = %if.end67.i
  %and94.i = and i32 %50, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.else92.i.if.end113.i_crit_edge, label %if.then96.i

if.else92.i.if.end113.i_crit_edge:                ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end113.i

if.then96.i:                                      ; preds = %if.else92.i
  %56 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_direction, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.345)
  switch i32 %57, label %if.then96.i.if.end113.i_crit_edge [
    i32 1, label %if.then100.i
    i32 2, label %if.then107.i
  ]

if.then96.i.if.end113.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end113.i

if.then100.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #21
  %flags101.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 6
  %59 = ptrtoint ptr %flags101.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 4, ptr %flags101.i, align 2
  %data_out_res_cnt102.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 8
  br label %if.end113.sink.split.i

if.then107.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #21
  %flags108.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 6
  %60 = ptrtoint ptr %flags108.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 16, ptr %flags108.i, align 2
  %data_in_res_cnt109.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 9
  br label %if.end113.sink.split.i

if.end113.sink.split.i:                           ; preds = %if.then107.i, %if.then100.i, %if.then88.i, %if.then84.i
  %data_in_res_cnt109.sink.i = phi ptr [ %data_in_res_cnt109.i, %if.then107.i ], [ %data_out_res_cnt102.i, %if.then100.i ], [ %data_out_res_cnt.i, %if.then84.i ], [ %data_in_res_cnt.i, %if.then88.i ]
  %61 = ptrtoint ptr %data_in_res_cnt109.sink.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %37, ptr %data_in_res_cnt109.sink.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end113.sink.split.i, %if.then96.i.if.end113.i_crit_edge, %if.else92.i.if.end113.i_crit_edge, %if.then81.i.if.end113.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool114.not.i = icmp eq i16 %42, 0
  br i1 %tobool114.not.i, label %if.end113.i.srpt_build_cmd_rsp.exit_crit_edge, label %do.end118.i

if.end113.i.srpt_build_cmd_rsp.exit_crit_edge:    ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_build_cmd_rsp.exit

do.end118.i:                                      ; preds = %if.end113.i
  %max_ti_iu_len.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 13
  %62 = ptrtoint ptr %max_ti_iu_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_ti_iu_len.i, align 4
  %sub.i = add i32 %63, -36
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp119.i = icmp slt i32 %sub.i, %conv.i
  br i1 %cmp119.i, label %do.end124.i, label %do.end118.i.if.end127.i_crit_edge

do.end118.i.if.end127.i_crit_edge:                ; preds = %do.end118.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end127.i

do.end124.i:                                      ; preds = %do.end118.i
  call void @__sanitizer_cov_trace_pc() #21
  %call126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, i32 noundef %conv.i, i32 noundef %sub.i) #22
  br label %if.end127.i

if.end127.i:                                      ; preds = %do.end124.i, %do.end118.i.if.end127.i_crit_edge
  %sense_data_len.0.i = phi i32 [ %sub.i, %do.end124.i ], [ %conv.i, %do.end118.i.if.end127.i_crit_edge ]
  %flags128.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 6
  %64 = ptrtoint ptr %flags128.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags128.i, align 2
  %66 = or i8 %65, 2
  store i8 %66, ptr %flags128.i, align 2
  %sense_data_len131.i = getelementptr inbounds %struct.srp_rsp, ptr %40, i32 0, i32 10
  %67 = ptrtoint ptr %sense_data_len131.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sense_data_len.0.i, ptr %sense_data_len131.i, align 4
  %add.ptr.i = getelementptr %struct.srp_rsp, ptr %40, i32 1
  %68 = call ptr @memcpy(ptr %add.ptr.i, ptr %sense_data42.i, i32 %sense_data_len.0.i)
  br label %srpt_build_cmd_rsp.exit

srpt_build_cmd_rsp.exit:                          ; preds = %if.end127.i, %if.end113.i.srpt_build_cmd_rsp.exit_crit_edge
  %sense_data_len.1.i = phi i32 [ %sense_data_len.0.i, %if.end127.i ], [ 0, %if.end113.i.srpt_build_cmd_rsp.exit_crit_edge ]
  %add133.i = add i32 %sense_data_len.1.i, 36
  br label %if.end99

if.else:                                          ; preds = %if.end87
  %buf.i212 = getelementptr i8, ptr %cmd, i32 -148
  %69 = ptrtoint ptr %buf.i212 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf.i212, align 4
  %tobool.not.i213 = icmp eq ptr %70, null
  br i1 %tobool.not.i213, label %do.body5.i, label %srpt_build_tskmgmt_rsp.exit, !prof !692

do.body5.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/srpt/ib_srpt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1458, 0\0A.popsection", ""() #19, !srcloc !721
  unreachable

srpt_build_tskmgmt_rsp.exit:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %tag97 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 4
  %71 = ptrtoint ptr %tag97 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %tag97, align 8
  %se_tmr_req = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 22
  %73 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %se_tmr_req, align 8
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %switch.selectcmp2.i = icmp eq i8 %76, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %76)
  %switch.selectcmp.i = icmp eq i8 %76, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i8 4, i8 5
  %switch.select3.i = select i1 %switch.selectcmp2.i, i8 0, i8 %switch.select.i
  %77 = call ptr @memset(ptr %70, i32 0, i32 36)
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -63, ptr %70, align 4
  %req_lim_delta.i214 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 15
  %call.i.i.i215 = call zeroext i1 @__kasan_check_write(ptr noundef %req_lim_delta.i214, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !718
  call void @llvm.prefetch.p0(ptr %req_lim_delta.i214, i32 1, i32 3, i32 1) #19
  %79 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %req_lim_delta.i214) #19, !srcloc !719
  %asmresult.i.i.i216 = extractvalue { i32, i32 } %79, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !720
  %add11.i = add i32 %asmresult.i.i.i216, 1
  %req_lim_delta12.i = getelementptr inbounds %struct.srp_rsp, ptr %70, i32 0, i32 3
  %80 = ptrtoint ptr %req_lim_delta12.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add11.i, ptr %req_lim_delta12.i, align 4
  %tag13.i = getelementptr inbounds %struct.srp_rsp, ptr %70, i32 0, i32 4
  %81 = ptrtoint ptr %tag13.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 %72, ptr %tag13.i, align 4
  %flags.i217 = getelementptr inbounds %struct.srp_rsp, ptr %70, i32 0, i32 6
  %82 = ptrtoint ptr %flags.i217 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %flags.i217, align 2
  %84 = or i8 %83, 1
  store i8 %84, ptr %flags.i217, align 2
  %resp_data_len15.i = getelementptr inbounds %struct.srp_rsp, ptr %70, i32 0, i32 11
  %85 = ptrtoint ptr %resp_data_len15.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4, ptr %resp_data_len15.i, align 4
  %arrayidx.i = getelementptr %struct.srp_rsp, ptr %70, i32 1, i32 2, i32 1
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %switch.select3.i, ptr %arrayidx.i, align 1
  br label %if.end99

if.end99:                                         ; preds = %srpt_build_tskmgmt_rsp.exit, %srpt_build_cmd_rsp.exit
  %resp_len.0 = phi i32 [ %add133.i, %srpt_build_cmd_rsp.exit ], [ 40, %srpt_build_tskmgmt_rsp.exit ]
  %req_lim = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %req_lim, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %req_lim, i32 1, i32 3, i32 1) #19
  %87 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req_lim, ptr %req_lim, i32 1, ptr elementtype(i32) %req_lim) #19, !srcloc !710
  %n_rdma = getelementptr i8, ptr %cmd, i32 440
  %88 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %n_rdma, align 8
  %conv100 = zext i8 %89 to i32
  %add = add nuw nsw i32 %conv100, 1
  %sq_wr_avail = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 11
  %call.i.i208 = call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !695
  call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #19
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %add, ptr elementtype(i32) %sq_wr_avail) #19, !srcloc !696
  %asmresult.i.i.i = extractvalue { i32, i32 } %90, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !697
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp102 = icmp slt i32 %asmresult.i.i.i, 0
  br i1 %cmp102, label %do.end113, label %if.end118, !prof !692

do.end113:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #21
  %91 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %n_rdma, align 8
  %conv116 = zext i8 %92 to i32
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.262, i32 noundef %conv116) #22
  br label %out

if.end118:                                        ; preds = %if.end99
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %5, align 8
  %dma = getelementptr i8, ptr %cmd, i32 -144
  %95 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma, align 8
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %94, align 8
  call void @dma_sync_single_for_device(ptr noundef %98, i32 noundef %96, i32 noundef %resp_len.0, i32 noundef 1) #19
  %99 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma, align 8
  %conv123 = zext i32 %100 to i64
  %101 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv123, ptr %sge, align 8
  %102 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %resp_len.0, ptr %7, align 8
  %lkey = getelementptr inbounds %struct.srpt_device, ptr %5, i32 0, i32 2
  %103 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lkey, align 8
  %105 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %8, align 4
  %106 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @srpt_send_done, ptr %add.ptr, align 8
  %107 = ptrtoint ptr %send_wr to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %send_wr, align 8
  %108 = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %add.ptr, ptr %108, align 8
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr, i32 0, i32 2
  %110 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %sge, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr, i32 0, i32 3
  %111 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr, i32 0, i32 4
  %112 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr, i32 0, i32 5
  %113 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 2, ptr %send_flags, align 4
  %qp128 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %114 = ptrtoint ptr %qp128 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %qp128, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #19
  %116 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !694
  %117 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %115, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %118, i32 0, i32 1, i32 6
  %119 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %120(ptr noundef %115, ptr noundef %first_wr.1, ptr noundef nonnull %dummy.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp130 = icmp slt i32 %call.i, 0
  br i1 %cmp130, label %do.end135, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end135:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #21
  %tag138 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 4
  %121 = ptrtoint ptr %tag138 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %tag138, align 8
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.262, i64 noundef %122, i32 noundef %call.i) #22
  br label %out

out:                                              ; preds = %do.end135, %do.end113
  %123 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %n_rdma, align 8
  %conv142 = zext i8 %124 to i32
  %add143 = add nuw nsw i32 %conv142, 1
  %call.i.i209 = call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #19
  %125 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %add143, ptr elementtype(i32) %sq_wr_avail) #19, !srcloc !710
  %call.i.i210 = call zeroext i1 @__kasan_check_write(ptr noundef %req_lim, i32 noundef 4) #19
  call void @llvm.prefetch.p0(ptr %req_lim, i32 1, i32 3, i32 1) #19
  %126 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %req_lim, ptr %req_lim, i32 1, ptr elementtype(i32) %req_lim) #19, !srcloc !722
  %127 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %128)
  %cmp.not.i = icmp eq i32 %128, 6
  br i1 %cmp.not.i, label %out.srpt_set_cmd_state.exit_crit_edge, label %if.then.i

out.srpt_set_cmd_state.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_set_cmd_state.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  %129 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 6, ptr %state3, align 4
  br label %srpt_set_cmd_state.exit

srpt_set_cmd_state.exit:                          ; preds = %if.then.i, %out.srpt_set_cmd_state.exit_crit_edge
  %call148 = call i32 @target_put_sess_cmd(ptr noundef %cmd) #19
  br label %cleanup

cleanup:                                          ; preds = %srpt_set_cmd_state.exit, %if.end118.cleanup_crit_edge, %if.then38, %land.rhs.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %send_wr) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srpt_send_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc, align 8
  %state.i = getelementptr inbounds %struct.srpt_send_ioctx, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 6
  br i1 %cmp.not.i, label %entry.do.end_crit_edge, label %srpt_set_cmd_state.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

srpt_set_cmd_state.exit:                          ; preds = %entry
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %state.i, align 4
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.346)
  switch i32 %7, label %srpt_set_cmd_state.exit.do.end_crit_edge [
    i32 5, label %srpt_set_cmd_state.exit.if.end_crit_edge
    i32 3, label %srpt_set_cmd_state.exit.if.end_crit_edge55
  ]

srpt_set_cmd_state.exit.if.end_crit_edge55:       ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

srpt_set_cmd_state.exit.if.end_crit_edge:         ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

srpt_set_cmd_state.exit.do.end_crit_edge:         ; preds = %srpt_set_cmd_state.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

do.end:                                           ; preds = %srpt_set_cmd_state.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1760, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %srpt_set_cmd_state.exit.if.end_crit_edge, %srpt_set_cmd_state.exit.if.end_crit_edge55
  %n_rdma = getelementptr inbounds %struct.srpt_send_ioctx, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n_rdma, align 8
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 1
  %sq_wr_avail = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #19
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %add, ptr elementtype(i32) %sq_wr_avail) #19, !srcloc !710
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp21.not = icmp eq i32 %14, 0
  br i1 %cmp21.not, label %if.end.if.end30_crit_edge, label %do.end26

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, ptr noundef %5, i32 noundef %14) #22
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.end.if.end30_crit_edge
  br i1 %cmp.not.i, label %do.end37, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %cmd = getelementptr inbounds %struct.srpt_send_ioctx, ptr %5, i32 0, i32 8
  %call34 = tail call i32 @transport_generic_free_cmd(ptr noundef %cmd, i32 noundef 0) #19
  br label %if.end41

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.srpt_ioctx, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, i32 noundef %16) #22
  br label %if.end41

if.end41:                                         ; preds = %do.end37, %if.then33
  %state.i53 = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 18
  %17 = ptrtoint ptr %state.i53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end41.if.end28.i_crit_edge

if.end41.if.end28.i_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i

land.rhs.i:                                       ; preds = %if.end41
  %.b131.i = load i1, ptr @srpt_process_wait_list.__already_done, align 1
  br i1 %.b131.i, label %land.rhs.i.if.end28.i_crit_edge, label %if.then.i54, !prof !688

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28.i

if.then.i54:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_process_wait_list.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1718, i32 noundef 9, ptr noundef null) #19
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i54, %land.rhs.i.if.end28.i_crit_edge, %if.end41.if.end28.i_crit_edge
  %cmd_wait_list.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 24
  %19 = ptrtoint ptr %cmd_wait_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %cmd_wait_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %cmd_wait_list.i
  br i1 %cmp.i.not.i, label %if.end28.i.srpt_process_wait_list.exit_crit_edge, label %if.end38.i

if.end28.i.srpt_process_wait_list.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_process_wait_list.exit

if.end38.i:                                       ; preds = %if.end28.i
  %processing_wait_list.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %3, i32 0, i32 27
  %21 = ptrtoint ptr %processing_wait_list.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %processing_wait_list.i, align 1, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool40.not.i = icmp eq i8 %22, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end85.i_crit_edge, label %land.rhs47.i

if.end38.i.if.end85.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end85.i

land.rhs47.i:                                     ; preds = %if.end38.i
  %.b129130.i = load i1, ptr @srpt_process_wait_list.__already_done.163, align 1
  br i1 %.b129130.i, label %land.rhs47.i.if.end85.i_crit_edge, label %if.then58.i, !prof !688

land.rhs47.i.if.end85.i_crit_edge:                ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end85.i

if.then58.i:                                      ; preds = %land.rhs47.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @srpt_process_wait_list.__already_done.163, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1723, i32 noundef 9, ptr noundef null) #19
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then58.i, %land.rhs47.i.if.end85.i_crit_edge, %if.end38.i.if.end85.i_crit_edge
  %23 = ptrtoint ptr %processing_wait_list.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %processing_wait_list.i, align 1
  %24 = ptrtoint ptr %cmd_wait_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_wait_list.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end85.i
  %.pn.in.i = phi ptr [ %25, %if.end85.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %cmp102.not.i = icmp eq ptr %.pn.in.i, %cmd_wait_list.i
  br i1 %cmp102.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %26 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %recv_ioctx.0.i = getelementptr i8, ptr %.pn.in.i, i32 -20
  %call105.i = tail call fastcc zeroext i1 @srpt_handle_new_iu(ptr noundef %3, ptr noundef %recv_ioctx.0.i) #19
  br i1 %call105.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %27 = ptrtoint ptr %processing_wait_list.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %processing_wait_list.i, align 1
  br label %srpt_process_wait_list.exit

srpt_process_wait_list.exit:                      ; preds = %for.end.i, %if.end28.i.srpt_process_wait_list.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_pton_with_scope(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_rdma_cm_port_show(ptr nocapture noundef readnone %item, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @rdma_cm_port, align 2
  %conv = zext i16 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.201, i32 noundef %conv) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_rdma_cm_port_store(ptr nocapture noundef readnone %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %addr4 = alloca %struct.sockaddr_in, align 4
  %addr6 = alloca %struct.sockaddr_in6, align 4
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr4) #19
  %0 = call ptr @memcpy(ptr %addr4, ptr @__const.srpt_rdma_cm_port_store.addr4, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr6) #19
  %1 = call ptr @memcpy(ptr %addr6, ptr @__const.srpt_rdma_cm_port_store.addr6, i32 28)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #19
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !694
  %call = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i16, ptr @rdma_cm_port, align 2
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp2 = icmp eq i16 %3, %5
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end5.if.end16_crit_edge, label %if.then6

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then6:                                         ; preds = %if.end5
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %addr6, i32 0, i32 1
  %6 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %sin6_port, align 2
  %call7 = call fastcc ptr @srpt_create_rdma_id(ptr noundef nonnull %addr6)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then9:                                         ; preds = %if.then6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr4, i32 0, i32 1
  %9 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %sin_port, align 2
  %call10 = call fastcc ptr @srpt_create_rdma_id(ptr noundef nonnull %addr4)
  %cmp.i33 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.then12, label %if.then9.if.end16_crit_edge

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %if.then6.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %new_id.0 = phi ptr [ %call10, %if.then9.if.end16_crit_edge ], [ %call7, %if.then6.if.end16_crit_edge ], [ null, %if.end5.if.end16_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @rdma_cm_mutex, i32 noundef 0) #19
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %val, align 2
  store i16 %12, ptr @rdma_cm_port, align 2
  %13 = load ptr, ptr @rdma_cm_id, align 4
  store ptr %new_id.0, ptr @rdma_cm_id, align 4
  call void @mutex_unlock(ptr noundef nonnull @rdma_cm_mutex) #19
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  call void @rdma_destroy_id(ptr noundef nonnull %13) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %10, %if.then12 ], [ %count, %if.then18 ], [ %count, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr4) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @srpt_create_rdma_id(ptr noundef %listen_addr) unnamed_addr #4 align 64 {
entry:
  %addr_str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @srpt_rdma_cm_handler, ptr noundef null, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.1) #19
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %0) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @rdma_bind_addr(ptr noundef %call, ptr noundef %listen_addr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %addr_str) #19
  %1 = call ptr @memset(ptr %addr_str, i32 255, i32 64)
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %addr_str, i32 noundef 64, ptr noundef nonnull @.str.280, ptr noundef %listen_addr)
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef nonnull %addr_str, i32 noundef %call4) #22
  call void @rdma_destroy_id(ptr noundef %call) #19
  %2 = inttoptr i32 %call4 to ptr
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %addr_str) #19
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @rdma_listen(ptr noundef %call, i32 noundef 128) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %do.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, i32 noundef %call15) #22
  tail call void @rdma_destroy_id(ptr noundef %call) #19
  %3 = inttoptr i32 %call15 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end14.cleanup_crit_edge, %if.then5, %do.end
  %rdma_cm_id.0 = phi ptr [ %call, %do.end ], [ %2, %if.then5 ], [ %3, %do.end20 ], [ %call, %if.end14.cleanup_crit_edge ]
  ret ptr %rdma_cm_id.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_rdma_cm_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %event) #4 align 64 {
entry:
  %req.i = alloca %struct.srp_login_req, align 8
  %src_addr.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %3, label %do.end15 [
    i32 4, label %sw.bb
    i32 8, label %sw.bb2
    i32 9, label %sw.bb4
    i32 10, label %sw.bb5
    i32 15, label %sw.bb8
    i32 7, label %do.end
    i32 11, label %entry.sw.epilog_crit_edge
    i32 14, label %entry.sw.epilog_crit_edge34
  ]

entry.sw.epilog_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #19
  %route.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4
  %path_rec1.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %path_rec1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %path_rec1.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %src_addr.i) #19
  %7 = call ptr @memset(ptr %src_addr.i, i32 255, i32 40)
  %8 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cm_id, align 4
  %client_data.i.i = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 8
  %10 = load i32, ptr getelementptr inbounds (%struct.ib_client, ptr @srpt_client, i32 0, i32 9), align 4
  %call.i.i = tail call ptr @xa_load(ptr noundef %client_data.i.i, i32 noundef %10) #19
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.bb.srpt_rdma_cm_req_recv.exit_crit_edge, label %if.end.i

sw.bb.srpt_rdma_cm_req_recv.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_rdma_cm_req_recv.exit

if.end.i:                                         ; preds = %sw.bb
  %private_data_len.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %private_data_len.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %private_data_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %12)
  %cmp.i = icmp ult i8 %12, 56
  br i1 %cmp.i, label %if.end.i.srpt_rdma_cm_req_recv.exit_crit_edge, label %if.end4.i

if.end.i.srpt_rdma_cm_req_recv.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_rdma_cm_req_recv.exit

if.end4.i:                                        ; preds = %if.end.i
  %param.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %13 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param.i, align 8
  %15 = call ptr @memset(ptr %req.i, i32 0, i32 32)
  %opcode.i = getelementptr inbounds %struct.srp_login_req_rdma, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %opcode.i, align 1
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %req.i, align 8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %14, align 8
  %tag7.i = getelementptr inbounds %struct.srp_login_req, ptr %req.i, i32 0, i32 2
  %21 = ptrtoint ptr %tag7.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tag7.i, align 8
  %req_it_iu_len.i = getelementptr inbounds %struct.srp_login_req_rdma, ptr %14, i32 0, i32 4
  %22 = ptrtoint ptr %req_it_iu_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req_it_iu_len.i, align 4
  %req_it_iu_len8.i = getelementptr inbounds %struct.srp_login_req, ptr %req.i, i32 0, i32 3
  %24 = ptrtoint ptr %req_it_iu_len8.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %req_it_iu_len8.i, align 8
  %req_buf_fmt.i = getelementptr inbounds %struct.srp_login_req_rdma, ptr %14, i32 0, i32 1
  %25 = ptrtoint ptr %req_buf_fmt.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %req_buf_fmt.i, align 8
  %req_buf_fmt9.i = getelementptr inbounds %struct.srp_login_req, ptr %req.i, i32 0, i32 5
  %27 = ptrtoint ptr %req_buf_fmt9.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %req_buf_fmt9.i, align 8
  %req_flags.i = getelementptr inbounds %struct.srp_login_req_rdma, ptr %14, i32 0, i32 2
  %28 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %req_flags.i, align 2
  %req_flags10.i = getelementptr inbounds %struct.srp_login_req, ptr %req.i, i32 0, i32 6
  %30 = ptrtoint ptr %req_flags10.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %req_flags10.i, align 2
  %initiator_port_id.i = getelementptr inbounds %struct.srp_login_req, ptr %req.i, i32 0, i32 10
  %initiator_port_id11.i = getelementptr inbounds %struct.srp_login_req_rdma, ptr %14, i32 0, i32 5
  %31 = call ptr @memcpy(ptr %initiator_port_id.i, ptr %initiator_port_id11.i, i32 16)
  %target_port_id.i = getelementptr inbounds %struct.srp_login_req, ptr %req.i, i32 0, i32 11
  %target_port_id14.i = getelementptr inbounds %struct.srp_login_req_rdma, ptr %14, i32 0, i32 6
  %32 = call ptr @memcpy(ptr %target_port_id.i, ptr %target_port_id14.i, i32 16)
  %imm_data_offset.i = getelementptr inbounds %struct.srp_login_req_rdma, ptr %14, i32 0, i32 7
  %33 = ptrtoint ptr %imm_data_offset.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %imm_data_offset.i, align 8
  %imm_data_offset16.i = getelementptr inbounds %struct.srp_login_req, ptr %req.i, i32 0, i32 8
  %35 = ptrtoint ptr %imm_data_offset16.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %imm_data_offset16.i, align 4
  %call20.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %src_addr.i, i32 noundef 40, ptr noundef nonnull @.str.291, ptr noundef %route.i) #19
  %port_num.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 7
  %36 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_num.i, align 4
  %conv21.i = trunc i32 %37 to i8
  %tobool22.not.i = icmp eq ptr %6, null
  br i1 %tobool22.not.i, label %if.end4.i.cond.end.i_crit_edge, label %cond.true.i

if.end4.i.cond.end.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  %pkey.i = getelementptr inbounds %struct.sa_path_rec, ptr %6, i32 0, i32 8
  %38 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pkey.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end4.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %39, %cond.true.i ], [ 0, %if.end4.i.cond.end.i_crit_edge ]
  %call26.i = call fastcc i32 @srpt_cm_req_recv(ptr noundef nonnull %call.i.i, ptr noundef null, ptr noundef %cm_id, i8 noundef zeroext %conv21.i, i16 noundef zeroext %cond.i, ptr noundef nonnull %req.i, ptr noundef nonnull %src_addr.i) #19
  br label %srpt_rdma_cm_req_recv.exit

srpt_rdma_cm_req_recv.exit:                       ; preds = %cond.end.i, %if.end.i.srpt_rdma_cm_req_recv.exit_crit_edge, %sw.bb.srpt_rdma_cm_req_recv.exit_crit_edge
  %retval.0.i = phi i32 [ %call26.i, %cond.end.i ], [ -111, %sw.bb.srpt_rdma_cm_req_recv.exit_crit_edge ], [ -22, %if.end.i.srpt_rdma_cm_req_recv.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %src_addr.i) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #19
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 4
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %42 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %param, align 8
  %private_data_len = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %private_data_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %private_data_len, align 4
  %conv.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i32 = icmp eq i8 %45, 0
  br i1 %tobool.not.i32, label %sw.bb2.srpt_cm_rej_recv.exit_crit_edge, label %if.end8.i.i

sw.bb2.srpt_cm_rej_recv.exit_crit_edge:           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_cm_rej_recv.exit

if.end8.i.i:                                      ; preds = %sw.bb2
  %mul.i = mul nuw nsw i32 %conv.i, 3
  %add.i = add nuw nsw i32 %mul.i, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #23
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end8.i.i.srpt_cm_rej_recv.exit_crit_edge, label %for.body.preheader.i

if.end8.i.i.srpt_cm_rej_recv.exit_crit_edge:      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_cm_rej_recv.exit

for.body.preheader.i:                             ; preds = %if.end8.i.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %conv.i, i32 1) #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul5.i = mul nuw nsw i32 %i.025.i, 3
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %mul5.i
  %arrayidx.i = getelementptr i8, ptr %43, i32 %i.025.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %47 to i32
  %call7.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.190, i32 noundef %conv6.i) #19
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.srpt_cm_rej_recv.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.srpt_cm_rej_recv.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %srpt_cm_rej_recv.exit

srpt_cm_rej_recv.exit:                            ; preds = %for.body.i.srpt_cm_rej_recv.exit_crit_edge, %if.end8.i.i.srpt_cm_rej_recv.exit_crit_edge, %sw.bb2.srpt_cm_rej_recv.exit_crit_edge
  %cond.i33 = phi ptr [ @.str.194, %sw.bb2.srpt_cm_rej_recv.exit_crit_edge ], [ @.str.193, %if.end8.i.i.srpt_cm_rej_recv.exit_crit_edge ], [ @.str.193, %for.body.i.srpt_cm_rej_recv.exit_crit_edge ]
  %priv.0.i = phi ptr [ null, %sw.bb2.srpt_cm_rej_recv.exit_crit_edge ], [ null, %if.end8.i.i.srpt_cm_rej_recv.exit_crit_edge ], [ %call9.i.i, %for.body.i.srpt_cm_rej_recv.exit_crit_edge ]
  %qp.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %49, i32 0, i32 19
  %50 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qp_num.i, align 4
  %tobool10.not.i = icmp eq ptr %priv.0.i, null
  %spec.select.i = select i1 %tobool10.not.i, ptr @.str.195, ptr %priv.0.i
  %sess_name.i = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 29
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef %sess_name.i, i32 noundef %51, i32 noundef %41, ptr noundef nonnull %cond.i33, ptr noundef nonnull %spec.select.i) #22
  tail call void @kfree(ptr noundef %priv.0.i) #19
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @srpt_cm_rtu_recv(ptr noundef %1)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 18
  %52 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp = icmp ult i32 %53, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  %call6 = tail call fastcc i32 @srpt_disconnect_ch(ptr noundef %1)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call fastcc zeroext i1 @srpt_close_ch(ptr noundef %1)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call9 = tail call fastcc zeroext i1 @srpt_close_ch(ptr noundef %1)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %sess_name = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 29
  %qp = getelementptr inbounds %struct.srpt_rdma_ch, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qp, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qp_num, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %sess_name, i32 noundef %57) #22
  br label %sw.epilog

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289, i32 noundef %3) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end15, %do.end, %sw.bb8, %if.else, %if.then, %sw.bb4, %srpt_cm_rej_recv.exit, %srpt_rdma_cm_req_recv.exit, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge34
  %ret.0 = phi i32 [ 0, %do.end15 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge34 ], [ 0, %do.end ], [ 0, %sw.bb8 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb4 ], [ 0, %srpt_cm_rej_recv.exit ], [ %retval.0.i, %srpt_rdma_cm_req_recv.exit ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_listen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_wwn_version_show(ptr nocapture noundef readnone %item, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.295) #19
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_tpg_attrib_srp_max_rdma_size_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr i8, ptr %item, i32 -324
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %port_attrib = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %port_attrib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_attrib, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.297, i32 noundef %5) #19
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_tpg_attrib_srp_max_rdma_size_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr i8, ptr %item, i32 -324
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #19
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !694
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp4 = icmp ugt i32 %6, 16777216
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.301, i32 noundef %6, i32 noundef 16777216) #22
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cmp12 = icmp ult i32 %6, 65536
  br i1 %cmp12, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, i32 noundef %6, i32 noundef 65536) #22
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %port_attrib = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %port_attrib to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %port_attrib, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ -22, %do.end16 ], [ %count, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_tpg_attrib_srp_max_rsp_size_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr i8, ptr %item, i32 -324
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %srp_max_rsp_size = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %srp_max_rsp_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srp_max_rsp_size, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.297, i32 noundef %5) #19
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_tpg_attrib_srp_max_rsp_size_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr i8, ptr %item, i32 -324
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #19
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !694
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %6)
  %cmp4 = icmp ugt i32 %6, 1024
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, i32 noundef %6, i32 noundef 1024) #22
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %6)
  %cmp12 = icmp ult i32 %6, 40
  br i1 %cmp12, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, i32 noundef %6, i32 noundef 40) #22
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %srp_max_rsp_size = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %srp_max_rsp_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %srp_max_rsp_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ -22, %do.end16 ], [ %count, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_tpg_attrib_srp_sq_size_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr i8, ptr %item, i32 -324
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %srp_sq_size = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %srp_sq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srp_sq_size, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.297, i32 noundef %5) #19
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_tpg_attrib_srp_sq_size_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr i8, ptr %item, i32 -324
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #19
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !694
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, i32 noundef %call.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %6)
  %cmp4 = icmp ugt i32 %6, 65535
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.317, i32 noundef %6, i32 noundef 65535) #22
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp12 = icmp ult i32 %6, 4
  br i1 %cmp12, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.320, i32 noundef %6, i32 noundef 4) #22
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %srp_sq_size = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %srp_sq_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %srp_sq_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ -22, %do.end16 ], [ %count, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_tpg_attrib_use_srq_show(ptr nocapture noundef readonly %item, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr i8, ptr %item, i32 -324
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %use_srq = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %use_srq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_srq, align 4, !range !687
  %6 = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.201, i32 noundef %6) #19
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srpt_tpg_attrib_use_srq_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn.i = getelementptr i8, ptr %item, i32 -324
  %0 = ptrtoint ptr %se_tpg_wwn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn.i, align 4
  %priv.i = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #19
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !694
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool = icmp ne i32 %8, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %lnot.ext)
  %cmp5.not = icmp eq i32 %8, %lnot.ext
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sdev_mutex = getelementptr inbounds %struct.srpt_device, ptr %5, i32 0, i32 6
  %call8 = call i32 @mutex_lock_interruptible_nested(ptr noundef %sdev_mutex, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %mutex = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 13
  %call12 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.unlock_sdev_crit_edge, label %if.end15

if.end11.unlock_sdev_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %unlock_sdev

if.end15:                                         ; preds = %if.end11
  %enabled16 = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %enabled16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled16, align 8, !range !687
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool17 = icmp ne i8 %10, 0
  call fastcc void @srpt_set_enabled(ptr noundef %3, i1 noundef zeroext false)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool18 = icmp ne i32 %12, 0
  %use_srq = getelementptr inbounds %struct.srpt_port, ptr %3, i32 0, i32 10, i32 3
  %frombool19 = zext i1 %tobool18 to i8
  %13 = ptrtoint ptr %use_srq to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool19, ptr %use_srq, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  br i1 %tobool18, label %land.lhs.true.i, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  call fastcc void @srpt_free_srq(ptr noundef %5) #19
  %use_srq2.i = getelementptr inbounds %struct.srpt_device, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %use_srq2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %use_srq2.i, align 4
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.end15
  %srq.i = getelementptr inbounds %struct.srpt_device, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %srq.i, align 4
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i46 = call fastcc i32 @srpt_alloc_srq(ptr noundef %5) #19
  br label %do.body.i

do.body.i:                                        ; preds = %if.then5.i, %land.lhs.true.i.do.body.i_crit_edge, %if.then.i
  %ret.0.i = phi i32 [ 0, %land.lhs.true.i.do.body.i_crit_edge ], [ %call.i46, %if.then5.i ], [ 0, %if.then.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srpt_use_srq.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@srpt_tpg_attrib_use_srq_store, %if.then12.i)) #19
          to label %srpt_use_srq.exit [label %if.then12.i], !srcloc !686

if.then12.i:                                      ; preds = %do.body.i
  %init_name.i.i = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 13, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then12.i.dev_name.exit.i_crit_edge

if.then12.i.dev_name.exit.i_crit_edge:            ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #21
  %21 = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then12.i.dev_name.exit.i_crit_edge
  %retval.0.i1.i = phi ptr [ %23, %if.end.i.i ], [ %20, %if.then12.i.dev_name.exit.i_crit_edge ]
  %use_srq14.i = getelementptr inbounds %struct.srpt_device, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %use_srq14.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use_srq14.i, align 4, !range !687
  %26 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srpt_use_srq.__UNIQUE_ID_ddebug572, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i1.i, i32 noundef %26, i32 noundef %ret.0.i) #19
  br label %srpt_use_srq.exit

srpt_use_srq.exit:                                ; preds = %dev_name.exit.i, %do.body.i
  call fastcc void @srpt_set_enabled(ptr noundef %3, i1 noundef zeroext %tobool17)
  call void @mutex_unlock(ptr noundef %mutex) #19
  br label %unlock_sdev

unlock_sdev:                                      ; preds = %srpt_use_srq.exit, %if.end11.unlock_sdev_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.unlock_sdev_crit_edge ], [ %count, %srpt_use_srq.exit ]
  call void @mutex_unlock(ptr noundef %sdev_mutex) #19
  br label %cleanup

cleanup:                                          ; preds = %unlock_sdev, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock_sdev ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 334)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 334)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !253, !254, !255, !257, !258, !259, !261, !263, !264, !265, !267, !268, !269, !271, !273, !274, !275, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !305, !306, !307, !309, !310, !311, !312, !314, !315, !316, !318, !320, !322, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !359, !361, !363, !365, !367, !369, !371, !372, !373, !374, !376, !378, !380, !381, !382, !383, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395, !397, !398, !400, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !420, !421, !422, !423, !425, !427, !428, !429, !431, !432, !433, !434, !436, !437, !438, !440, !441, !443, !445, !447, !449, !450, !452, !454, !455, !457, !459, !460, !461, !462, !464, !465, !466, !468, !469, !471, !472, !473, !474, !476, !477, !478, !480, !481, !483, !485, !487, !489, !491, !492, !493, !494, !496, !497, !498, !500, !501, !502, !503, !505, !506, !507, !509, !510, !511, !512, !514, !515, !516, !518, !519, !520, !522, !523, !524, !526, !527, !528, !530, !532, !534, !536, !537, !538, !540, !541, !542, !544, !545, !546, !547, !549, !550, !551, !552, !554, !555, !556, !558, !560, !561, !562, !563, !565, !567, !569, !571, !572, !574, !576, !577, !578, !579, !581, !583, !584, !585, !587, !588, !589, !591, !592, !593, !595, !596, !597, !599, !601, !602, !603, !605, !607, !608, !610, !612, !614, !615, !617, !619, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !635, !636, !637, !639, !640, !641, !643, !644, !645, !647, !648, !650, !651, !652, !654, !655, !656, !658, !659, !660, !662, !663, !665, !666, !667, !668, !670, !671, !672, !674, !675}
!llvm.named.register.sp = !{!676}
!llvm.module.flags = !{!677, !678, !679, !680, !681, !682, !683, !684}
!llvm.ident = !{!685}

!0 = !{ptr @__UNIQUE_ID_author525, !1, !"__UNIQUE_ID_author525", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_description526, !3, !"__UNIQUE_ID_description526", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 61, i32 1}
!4 = !{ptr @__UNIQUE_ID_file527, !5, !"__UNIQUE_ID_file527", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 62, i32 1}
!6 = !{ptr @__UNIQUE_ID_license528, !5, !"__UNIQUE_ID_license528", i1 false, i1 false}
!7 = !{ptr @__param_srp_max_req_size, !8, !"__param_srp_max_req_size", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 73, i32 1}
!9 = !{ptr @__UNIQUE_ID_srp_max_req_sizetype529, !8, !"__UNIQUE_ID_srp_max_req_sizetype529", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_srp_max_req_size530, !11, !"__UNIQUE_ID_srp_max_req_size530", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 74, i32 1}
!12 = !{ptr @__param_srpt_srq_size, !13, !"__param_srpt_srq_size", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 78, i32 1}
!14 = !{ptr @__UNIQUE_ID_srpt_srq_sizetype531, !13, !"__UNIQUE_ID_srpt_srq_sizetype531", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_srpt_srq_size532, !16, !"__UNIQUE_ID_srpt_srq_size532", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 79, i32 1}
!17 = !{ptr @__param_srpt_service_guid, !18, !"__param_srpt_service_guid", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 86, i32 1}
!19 = !{ptr @__UNIQUE_ID_srpt_service_guid533, !20, !"__UNIQUE_ID_srpt_service_guid533", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 88, i32 1}
!21 = !{ptr @__initcall__kmod_ib_srpt__580_3890_srpt_init_module6, !22, !"__initcall__kmod_ib_srpt__580_3890_srpt_init_module6", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3890, i32 1}
!23 = !{ptr @__exitcall_srpt_cleanup_module, !24, !"__exitcall_srpt_cleanup_module", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3891, i32 1}
!25 = !{ptr @srpt_service_guid, !26, !"srpt_service_guid", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 68, i32 12}
!27 = !{ptr @rdma_cm_id, !28, !"rdma_cm_id", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 96, i32 27}
!29 = !{ptr @__param_str_srp_max_req_size, !8, !"__param_str_srp_max_req_size", i1 false, i1 false}
!30 = !{ptr @srp_max_req_size, !31, !"srp_max_req_size", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 72, i32 17}
!32 = !{ptr @__param_str_srpt_srq_size, !13, !"__param_str_srpt_srq_size", i1 false, i1 false}
!33 = !{ptr @srpt_srq_size, !34, !"srpt_srq_size", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 77, i32 12}
!35 = !{ptr @__param_str_srpt_service_guid, !18, !"__param_str_srpt_service_guid", i1 false, i1 false}
!36 = !{ptr @__param_ops_srpt_service_guid, !18, !"__param_ops_srpt_service_guid", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 84, i32 25}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3265, i32 10}
!41 = !{ptr @srpt_client, !42, !"srpt_client", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3264, i32 25}
!43 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3115, i32 2}
!45 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @srpt_add_one.__UNIQUE_ID_ddebug573, !44, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!48 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @srpt_add_one.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3123, i32 2}
!51 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3143, i32 3}
!54 = !{ptr @srpt_add_one._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @srpt_add_one._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3152, i32 2}
!58 = !{ptr @srpt_add_one.__UNIQUE_ID_ddebug576, !57, !"__UNIQUE_ID_ddebug576", i1 false, i1 false}
!59 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3165, i32 3}
!62 = !{ptr @srpt_add_one._entry.10, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @srpt_add_one._entry_ptr.12, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @srpt_add_one.__key.13, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3177, i32 3}
!66 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @srpt_add_one.__key.15, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3184, i32 3}
!69 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @srpt_add_one.__key.17, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3185, i32 3}
!72 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @srpt_add_one.__key.19, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3187, i32 3}
!75 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3192, i32 4}
!78 = !{ptr @srpt_add_one._entry.21, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @srpt_add_one._entry_ptr.23, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3204, i32 2}
!82 = !{ptr @srpt_add_one.__UNIQUE_ID_ddebug577, !81, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!83 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3218, i32 2}
!86 = !{ptr @srpt_add_one._entry.26, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @srpt_add_one._entry_ptr.28, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3099, i32 2}
!90 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @srpt_use_srq.__UNIQUE_ID_ddebug572, !89, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!92 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3048, i32 2}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3051, i32 3}
!97 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @srpt_alloc_srq.__UNIQUE_ID_ddebug570, !96, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!99 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3055, i32 2}
!102 = !{ptr @srpt_alloc_srq.__UNIQUE_ID_ddebug571, !101, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!103 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3058, i32 42}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 190, i32 2}
!108 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @srpt_srq_event.__UNIQUE_ID_ddebug535, !107, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!110 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!113 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1700, i32 4}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @srpt_recv_done._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @srpt_recv_done._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1704, i32 3}
!122 = !{ptr @srpt_recv_done._rs, !121, !"_rs", i1 false, i1 false}
!123 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @srpt_recv_done._entry.46, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @srpt_recv_done._entry_ptr.48, !121, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1646, i32 3}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1658, i32 3}
!130 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @srpt_handle_new_iu._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @srpt_handle_new_iu._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1661, i32 3}
!135 = !{ptr @srpt_handle_new_iu.__UNIQUE_ID_ddebug552, !134, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!136 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1664, i32 3}
!139 = !{ptr @srpt_handle_new_iu.__UNIQUE_ID_ddebug553, !138, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!140 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1667, i32 3}
!143 = !{ptr @srpt_handle_new_iu._entry.55, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @srpt_handle_new_iu._entry_ptr.57, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1670, i32 3}
!147 = !{ptr @srpt_handle_new_iu._entry.58, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @srpt_handle_new_iu._entry_ptr.60, !146, !"_entry_ptr", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1683, i32 3}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1232, i32 2}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1525, i32 4}
!155 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @srpt_handle_cmd._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @srpt_handle_cmd._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1535, i32 3}
!160 = !{ptr @srpt_handle_cmd.__UNIQUE_ID_ddebug550, !159, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!161 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1052, i32 4}
!164 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @srpt_get_desc_tbl._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @srpt_get_desc_tbl._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1070, i32 4}
!169 = !{ptr @srpt_get_desc_tbl._entry.68, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @srpt_get_desc_tbl._entry_ptr.70, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1075, i32 4}
!173 = !{ptr @srpt_get_desc_tbl._entry.71, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @srpt_get_desc_tbl._entry_ptr.73, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1084, i32 4}
!177 = !{ptr @srpt_get_desc_tbl._entry.74, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @srpt_get_desc_tbl._entry_ptr.76, !176, !"_entry_ptr", i1 false, i1 false}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1090, i32 4}
!181 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @srpt_get_desc_tbl._entry.77, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @srpt_get_desc_tbl._entry_ptr.79, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1595, i32 2}
!186 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @srpt_handle_tsk_mgmt.__UNIQUE_ID_ddebug551, !185, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!188 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../include/rdma/ib_verbs.h", i32 3688, i32 2}
!191 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2663, i32 3}
!195 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @srpt_cm_handler._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @srpt_cm_handler._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2668, i32 3}
!200 = !{ptr @srpt_cm_handler._entry.87, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @srpt_cm_handler._entry_ptr.89, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2673, i32 3}
!204 = !{ptr @srpt_cm_handler._entry.90, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @srpt_cm_handler._entry_ptr.92, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2677, i32 3}
!208 = !{ptr @srpt_cm_handler._entry.93, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @srpt_cm_handler._entry_ptr.95, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2680, i32 3}
!212 = !{ptr @srpt_cm_handler._entry.96, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @srpt_cm_handler._entry_ptr.98, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2683, i32 3}
!216 = !{ptr @srpt_cm_handler._entry.99, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @srpt_cm_handler._entry_ptr.101, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 535, i32 29}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2163, i32 2}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2167, i32 2}
!224 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @srpt_cm_req_recv._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @srpt_cm_req_recv._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.106, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2189, i32 3}
!229 = !{ptr @srpt_cm_req_recv._entry.105, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @srpt_cm_req_recv._entry_ptr.107, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2196, i32 3}
!233 = !{ptr @srpt_cm_req_recv._entry.108, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @srpt_cm_req_recv._entry_ptr.110, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2206, i32 3}
!237 = !{ptr @srpt_cm_req_recv._entry.111, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @srpt_cm_req_recv._entry_ptr.113, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2214, i32 3}
!241 = !{ptr @srpt_cm_req_recv._entry.114, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @srpt_cm_req_recv._entry_ptr.116, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @srpt_cm_req_recv.__key, !244, !"__key", i1 false, i1 false}
!244 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2222, i32 2}
!245 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @srpt_cm_req_recv.__key.118, !247, !"__key", i1 false, i1 false}
!247 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2238, i32 2}
!248 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.120, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2243, i32 40}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2253, i32 3}
!253 = !{ptr @srpt_cm_req_recv._entry.121, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @srpt_cm_req_recv._entry_ptr.123, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2267, i32 4}
!257 = !{ptr @srpt_cm_req_recv.__UNIQUE_ID_ddebug566, !256, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!258 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2278, i32 41}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2290, i32 4}
!263 = !{ptr @srpt_cm_req_recv._entry.127, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @srpt_cm_req_recv._entry_ptr.129, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.131, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2302, i32 3}
!267 = !{ptr @srpt_cm_req_recv._entry.130, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @srpt_cm_req_recv._entry_ptr.132, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2307, i32 41}
!271 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2311, i32 2}
!273 = !{ptr @srpt_cm_req_recv.__UNIQUE_ID_ddebug567, !272, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!274 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!275 = distinct !{null, !276, !"__already_done", i1 false, i1 false}
!276 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2344, i32 3}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2347, i32 3}
!279 = !{ptr @srpt_cm_req_recv._entry.137, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @srpt_cm_req_recv._entry_ptr.139, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.141, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2369, i32 4}
!283 = !{ptr @srpt_cm_req_recv._entry.140, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @srpt_cm_req_recv._entry_ptr.142, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.144, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2382, i32 3}
!287 = !{ptr @srpt_cm_req_recv._entry.143, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @srpt_cm_req_recv._entry_ptr.145, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.147, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2394, i32 3}
!291 = !{ptr @srpt_cm_req_recv._entry.146, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @srpt_cm_req_recv._entry_ptr.148, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.149, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2399, i32 2}
!295 = !{ptr @srpt_cm_req_recv.__UNIQUE_ID_ddebug568, !294, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!296 = !{ptr @.str.150, !294, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.152, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2456, i32 3}
!299 = !{ptr @srpt_cm_req_recv._entry.151, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @srpt_cm_req_recv._entry_ptr.153, !298, !"_entry_ptr", i1 false, i1 false}
!301 = distinct !{null, !302, !"__already_done", i1 false, i1 false}
!302 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2490, i32 2}
!303 = !{ptr @.str.156, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2493, i32 2}
!305 = !{ptr @srpt_cm_req_recv._entry.155, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @srpt_cm_req_recv._entry_ptr.157, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.158, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 875, i32 2}
!309 = !{ptr @.str.159, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @srpt_zerolength_write_done.__UNIQUE_ID_ddebug544, !308, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!311 = !{ptr @.str.160, !308, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.161, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 884, i32 4}
!314 = !{ptr @srpt_zerolength_write_done.__UNIQUE_ID_ddebug545, !313, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!315 = !{ptr @.str.162, !313, !"<string literal>", i1 false, i1 false}
!316 = distinct !{null, !317, !"__already_done", i1 false, i1 false}
!317 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1718, i32 2}
!318 = distinct !{null, !319, !"__already_done", i1 false, i1 false}
!319 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1723, i32 2}
!320 = !{ptr @.str.164, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2084, i32 2}
!322 = !{ptr @.str.165, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @srpt_release_channel_work.__UNIQUE_ID_ddebug563, !321, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!324 = !{ptr @.str.166, !321, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.167, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1803, i32 3}
!327 = !{ptr @.str.168, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @srpt_create_ch_ib._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @srpt_create_ch_ib._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.169, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1850, i32 4}
!332 = !{ptr @srpt_create_ch_ib.__UNIQUE_ID_ddebug556, !331, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!333 = !{ptr @.str.170, !331, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.172, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1856, i32 4}
!336 = !{ptr @srpt_create_ch_ib._entry.171, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @srpt_create_ch_ib._entry_ptr.173, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.174, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1864, i32 2}
!340 = !{ptr @srpt_create_ch_ib.__UNIQUE_ID_ddebug559, !339, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!341 = !{ptr @.str.175, !339, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.176, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 217, i32 2}
!344 = !{ptr @.str.177, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @srpt_qp_event.__UNIQUE_ID_ddebug536, !343, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!346 = !{ptr @.str.178, !343, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.179, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 229, i32 3}
!349 = !{ptr @srpt_qp_event.__UNIQUE_ID_ddebug537, !348, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!350 = !{ptr @.str.180, !348, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.181, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 234, i32 3}
!353 = !{ptr @srpt_qp_event._entry, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @srpt_qp_event._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.182, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 197, i32 10}
!357 = !{ptr @.str.183, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 199, i32 10}
!359 = !{ptr @.str.184, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 201, i32 10}
!361 = !{ptr @.str.185, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 203, i32 10}
!363 = !{ptr @.str.186, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 205, i32 10}
!365 = !{ptr @.str.187, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 207, i32 9}
!367 = distinct !{null, !368, !"__already_done", i1 false, i1 false}
!368 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1116, i32 2}
!369 = !{ptr @.str.188, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1129, i32 3}
!371 = !{ptr @.str.189, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @srpt_init_ch_qp._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @srpt_init_ch_qp._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = distinct !{null, !375, !"__already_done", i1 false, i1 false}
!375 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1157, i32 2}
!376 = !{ptr @.str.190, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2583, i32 26}
!378 = !{ptr @.str.191, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2585, i32 2}
!380 = !{ptr @.str.192, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @srpt_cm_rej_recv._entry, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @srpt_cm_rej_recv._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.193, !379, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.194, !379, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.195, !379, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.196, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2604, i32 3}
!388 = !{ptr @.str.197, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @srpt_cm_rtu_recv._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @srpt_cm_rtu_recv._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.199, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2616, i32 3}
!393 = !{ptr @srpt_cm_rtu_recv._entry.198, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @srpt_cm_rtu_recv._entry_ptr.200, !392, !"_entry_ptr", i1 false, i1 false}
!395 = distinct !{null, !396, !"__already_done", i1 false, i1 false}
!396 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2623, i32 2}
!397 = !{ptr @.str.201, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.202, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 865, i32 2}
!400 = !{ptr @.str.203, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @srpt_zerolength_write.__UNIQUE_ID_ddebug543, !399, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!402 = !{ptr @.str.204, !399, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.205, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1903, i32 3}
!405 = !{ptr @.str.206, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @srpt_close_ch.__UNIQUE_ID_ddebug560, !404, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!407 = !{ptr @.str.207, !404, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.208, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1911, i32 3}
!410 = !{ptr @srpt_close_ch._entry, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @srpt_close_ch._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.210, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1916, i32 3}
!414 = !{ptr @srpt_close_ch._entry.209, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @srpt_close_ch._entry_ptr.211, !413, !"_entry_ptr", i1 false, i1 false}
!416 = distinct !{null, !417, !"__already_done", i1 false, i1 false}
!417 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1921, i32 4}
!418 = !{ptr @.str.212, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 143, i32 2}
!420 = !{ptr @.str.213, !419, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @srpt_event_handler.__UNIQUE_ID_ddebug534, !419, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!422 = !{ptr @.str.214, !419, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.215, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 154, i32 4}
!425 = !{ptr @.str.216, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 178, i32 3}
!427 = !{ptr @srpt_event_handler._entry, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @srpt_event_handler._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.217, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 587, i32 3}
!431 = !{ptr @.str.218, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @srpt_refresh_port._entry, !430, !"_entry", i1 false, i1 false}
!433 = !{ptr @srpt_refresh_port._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.220, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 607, i32 4}
!436 = !{ptr @srpt_refresh_port._entry.219, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @srpt_refresh_port._entry_ptr.221, !435, !"_entry_ptr", i1 false, i1 false}
!438 = distinct !{null, !439, !"__already_done", i1 false, i1 false}
!439 = !{!"../include/rdma/ib_verbs.h", i32 3630, i32 2}
!440 = !{ptr @.str.222, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @.str.223, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 346, i32 26}
!443 = !{ptr @.str.224, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 404, i32 4}
!445 = !{ptr @.str.225, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 405, i32 4}
!447 = !{ptr @.str.226, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 69, i32 8}
!449 = !{ptr @srpt_dev_lock, !448, !"srpt_dev_lock", i1 false, i1 false}
!450 = !{ptr @srpt_dev_list, !451, !"srpt_dev_list", i1 false, i1 false}
!451 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 70, i32 8}
!452 = distinct !{null, !453, !"__already_done", i1 false, i1 false}
!453 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!454 = !{ptr @.str.227, !453, !"<string literal>", i1 false, i1 false}
!455 = distinct !{null, !456, !"__already_done", i1 false, i1 false}
!456 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2952, i32 2}
!457 = !{ptr @.str.228, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2962, i32 3}
!459 = !{ptr @.str.229, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @srpt_release_sport._entry, !458, !"_entry", i1 false, i1 false}
!461 = !{ptr @srpt_release_sport._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.231, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2968, i32 5}
!464 = !{ptr @srpt_release_sport._entry.230, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @srpt_release_sport._entry_ptr.232, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @init_completion.__key, !467, !"__key", i1 false, i1 false}
!467 = !{!"../include/linux/completion.h", i32 87, i32 2}
!468 = !{ptr @.str.233, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.234, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1990, i32 5}
!471 = !{ptr @.str.235, !470, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @__srpt_close_all_ch._entry, !470, !"_entry", i1 false, i1 false}
!473 = !{ptr @__srpt_close_all_ch._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!474 = distinct !{null, !475, !"__warned", i1 false, i1 false}
!475 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!476 = !{ptr @.str.236, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @.str.237, !475, !"<string literal>", i1 false, i1 false}
!478 = distinct !{null, !479, !"__warned", i1 false, i1 false}
!479 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!480 = !{ptr @.str.238, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @.str.239, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3802, i32 19}
!483 = !{ptr @srpt_template, !484, !"srpt_template", i1 false, i1 false}
!484 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3800, i32 44}
!485 = distinct !{null, !486, !"__already_done", i1 false, i1 false}
!486 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3321, i32 2}
!487 = distinct !{null, !488, !"__already_done", i1 false, i1 false}
!488 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3325, i32 3}
!489 = !{ptr @.str.241, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1965, i32 2}
!491 = !{ptr @.str.242, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @srpt_disconnect_ch_sync.__UNIQUE_ID_ddebug561, !490, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!493 = !{ptr @.str.243, !490, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @.str.244, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1975, i32 3}
!496 = !{ptr @srpt_disconnect_ch_sync._entry, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @srpt_disconnect_ch_sync._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.245, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2756, i32 3}
!500 = !{ptr @.str.246, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @srpt_write_pending._entry, !499, !"_entry", i1 false, i1 false}
!502 = !{ptr @srpt_write_pending._entry_ptr, !499, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.248, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2773, i32 3}
!505 = !{ptr @srpt_write_pending._entry.247, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @srpt_write_pending._entry_ptr.249, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.250, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1335, i32 3}
!509 = !{ptr @.str.251, !508, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @srpt_rdma_read_done._entry, !508, !"_entry", i1 false, i1 false}
!511 = !{ptr @srpt_rdma_read_done._entry_ptr, !508, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.253, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1345, i32 3}
!514 = !{ptr @srpt_rdma_read_done._entry.252, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @srpt_rdma_read_done._entry_ptr.254, !513, !"_entry_ptr", i1 false, i1 false}
!516 = distinct !{null, !517, !"__already_done", i1 false, i1 false}
!517 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1273, i32 3}
!518 = !{ptr @.str.255, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @__func__.srpt_abort_cmd, !517, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @.str.256, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1278, i32 2}
!522 = !{ptr @srpt_abort_cmd.__UNIQUE_ID_ddebug547, !521, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!523 = !{ptr @.str.257, !521, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @.str.258, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1292, i32 3}
!526 = !{ptr @srpt_abort_cmd.__UNIQUE_ID_ddebug548, !525, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!527 = !{ptr @.str.259, !525, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @.str.260, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1307, i32 3}
!530 = !{ptr @.str.261, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2825, i32 3}
!532 = distinct !{null, !533, !"__already_done", i1 false, i1 false}
!533 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2830, i32 6}
!534 = !{ptr @.str.262, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2859, i32 3}
!536 = !{ptr @srpt_queue_response._entry, !535, !"_entry", i1 false, i1 false}
!537 = !{ptr @srpt_queue_response._entry_ptr, !535, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.264, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2881, i32 3}
!540 = !{ptr @srpt_queue_response._entry.263, !539, !"_entry", i1 false, i1 false}
!541 = !{ptr @srpt_queue_response._entry_ptr.265, !539, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.266, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1420, i32 4}
!544 = !{ptr @.str.267, !543, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @srpt_build_cmd_rsp._entry, !543, !"_entry", i1 false, i1 false}
!546 = !{ptr @srpt_build_cmd_rsp._entry_ptr, !543, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.268, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1765, i32 3}
!549 = !{ptr @.str.269, !548, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @srpt_send_done._entry, !548, !"_entry", i1 false, i1 false}
!551 = !{ptr @srpt_send_done._entry_ptr, !548, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.271, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 1771, i32 3}
!554 = !{ptr @srpt_send_done._entry.270, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @srpt_send_done._entry_ptr.272, !553, !"_entry_ptr", i1 false, i1 false}
!556 = distinct !{null, !557, !"__already_done", i1 false, i1 false}
!557 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3293, i32 2}
!558 = !{ptr @.str.273, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3446, i32 3}
!560 = !{ptr @.str.274, !559, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @srpt_init_nodeacl._entry, !559, !"_entry", i1 false, i1 false}
!562 = !{ptr @srpt_init_nodeacl._entry_ptr, !559, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.275, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3385, i32 19}
!565 = !{ptr @.str.276, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3405, i32 21}
!567 = !{ptr @srpt_da_attrs, !568, !"srpt_da_attrs", i1 false, i1 false}
!568 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3703, i32 35}
!569 = !{ptr @.str.277, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3701, i32 1}
!571 = !{ptr @srpt_attr_rdma_cm_port, !570, !"srpt_attr_rdma_cm_port", i1 false, i1 false}
!572 = !{ptr @rdma_cm_port, !573, !"rdma_cm_port", i1 false, i1 false}
!573 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 95, i32 12}
!574 = !{ptr @.str.278, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3627, i32 3}
!576 = !{ptr @.str.279, !575, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @srpt_create_rdma_id._entry, !575, !"_entry", i1 false, i1 false}
!578 = !{ptr @srpt_create_rdma_id._entry_ptr, !575, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.280, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3636, i32 40}
!581 = !{ptr @.str.282, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3637, i32 3}
!583 = !{ptr @srpt_create_rdma_id._entry.281, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @srpt_create_rdma_id._entry_ptr.283, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.285, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3646, i32 3}
!587 = !{ptr @srpt_create_rdma_id._entry.284, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @srpt_create_rdma_id._entry_ptr.286, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.287, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2718, i32 3}
!591 = !{ptr @srpt_rdma_cm_handler._entry, !590, !"_entry", i1 false, i1 false}
!592 = !{ptr @srpt_rdma_cm_handler._entry_ptr, !590, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @.str.289, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2725, i32 3}
!595 = !{ptr @srpt_rdma_cm_handler._entry.288, !594, !"_entry", i1 false, i1 false}
!596 = !{ptr @srpt_rdma_cm_handler._entry_ptr.290, !594, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @.str.291, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 2565, i32 39}
!599 = !{ptr @.str.292, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 93, i32 8}
!601 = !{ptr @.str.293, !600, !"<string literal>", i1 false, i1 false}
!602 = !{ptr @rdma_cm_mutex, !600, !"rdma_cm_mutex", i1 false, i1 false}
!603 = !{ptr @srpt_wwn_attrs, !604, !"srpt_wwn_attrs", i1 false, i1 false}
!604 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3795, i32 35}
!605 = !{ptr @.str.294, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3793, i32 1}
!607 = !{ptr @srpt_wwn_attr_version, !606, !"srpt_wwn_attr_version", i1 false, i1 false}
!608 = !{ptr @.str.295, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3790, i32 25}
!610 = !{ptr @srpt_tpg_attrib_attrs, !611, !"srpt_tpg_attrib_attrs", i1 false, i1 false}
!611 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3611, i32 35}
!612 = !{ptr @.str.296, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3606, i32 1}
!614 = !{ptr @srpt_tpg_attrib_attr_srp_max_rdma_size, !613, !"srpt_tpg_attrib_attr_srp_max_rdma_size", i1 false, i1 false}
!615 = !{ptr @.str.297, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3456, i32 26}
!617 = !{ptr @.str.298, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3469, i32 3}
!619 = !{ptr @.str.299, !618, !"<string literal>", i1 false, i1 false}
!620 = !{ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry, !618, !"_entry", i1 false, i1 false}
!621 = !{ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr, !618, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.301, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3473, i32 3}
!624 = !{ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry.300, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr.302, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.304, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3478, i32 3}
!628 = !{ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry.303, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @srpt_tpg_attrib_srp_max_rdma_size_store._entry_ptr.305, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.306, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3607, i32 1}
!632 = !{ptr @srpt_tpg_attrib_attr_srp_max_rsp_size, !631, !"srpt_tpg_attrib_attr_srp_max_rsp_size", i1 false, i1 false}
!633 = !{ptr @.str.307, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3506, i32 3}
!635 = !{ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry, !634, !"_entry", i1 false, i1 false}
!636 = !{ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr, !634, !"_entry_ptr", i1 false, i1 false}
!637 = !{ptr @.str.309, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3510, i32 3}
!639 = !{ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry.308, !638, !"_entry", i1 false, i1 false}
!640 = !{ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr.310, !638, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.312, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3515, i32 3}
!643 = !{ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry.311, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @srpt_tpg_attrib_srp_max_rsp_size_store._entry_ptr.313, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.314, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3608, i32 1}
!647 = !{ptr @srpt_tpg_attrib_attr_srp_sq_size, !646, !"srpt_tpg_attrib_attr_srp_sq_size", i1 false, i1 false}
!648 = !{ptr @.str.315, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3543, i32 3}
!650 = !{ptr @srpt_tpg_attrib_srp_sq_size_store._entry, !649, !"_entry", i1 false, i1 false}
!651 = !{ptr @srpt_tpg_attrib_srp_sq_size_store._entry_ptr, !649, !"_entry_ptr", i1 false, i1 false}
!652 = !{ptr @.str.317, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3547, i32 3}
!654 = !{ptr @srpt_tpg_attrib_srp_sq_size_store._entry.316, !653, !"_entry", i1 false, i1 false}
!655 = !{ptr @srpt_tpg_attrib_srp_sq_size_store._entry_ptr.318, !653, !"_entry_ptr", i1 false, i1 false}
!656 = !{ptr @.str.320, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3552, i32 3}
!658 = !{ptr @srpt_tpg_attrib_srp_sq_size_store._entry.319, !657, !"_entry", i1 false, i1 false}
!659 = !{ptr @srpt_tpg_attrib_srp_sq_size_store._entry_ptr.321, !657, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @.str.322, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3609, i32 1}
!662 = !{ptr @srpt_tpg_attrib_attr_use_srq, !661, !"srpt_tpg_attrib_attr_use_srq", i1 false, i1 false}
!663 = !{ptr @.str.323, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3852, i32 3}
!665 = !{ptr @.str.324, !664, !"<string literal>", i1 false, i1 false}
!666 = !{ptr @srpt_init_module._entry, !664, !"_entry", i1 false, i1 false}
!667 = !{ptr @srpt_init_module._entry_ptr, !664, !"_entry_ptr", i1 false, i1 false}
!668 = !{ptr @.str.326, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3859, i32 3}
!670 = !{ptr @srpt_init_module._entry.325, !669, !"_entry", i1 false, i1 false}
!671 = !{ptr @srpt_init_module._entry_ptr.327, !669, !"_entry_ptr", i1 false, i1 false}
!672 = !{ptr @.str.329, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/infiniband/ulp/srpt/ib_srpt.c", i32 3870, i32 3}
!674 = !{ptr @srpt_init_module._entry.328, !673, !"_entry", i1 false, i1 false}
!675 = !{ptr @srpt_init_module._entry_ptr.330, !673, !"_entry_ptr", i1 false, i1 false}
!676 = !{!"sp"}
!677 = !{i32 1, !"wchar_size", i32 2}
!678 = !{i32 1, !"min_enum_size", i32 4}
!679 = !{i32 8, !"branch-target-enforcement", i32 0}
!680 = !{i32 8, !"sign-return-address", i32 0}
!681 = !{i32 8, !"sign-return-address-all", i32 0}
!682 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!683 = !{i32 7, !"uwtable", i32 1}
!684 = !{i32 7, !"frame-pointer", i32 2}
!685 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!686 = !{i64 2149058492, i64 2149058497, i64 2149058510, i64 2149058554, i64 2149058588, i64 2149058609}
!687 = !{i8 0, i8 2}
!688 = !{!"branch_weights", i32 2000, i32 1}
!689 = !{i64 851547}
!690 = !{i64 2149461274}
!691 = !{i64 2149461540}
!692 = !{!"branch_weights", i32 1, i32 2000}
!693 = !{i64 2158563136, i64 2158563638, i64 2158563173, i64 2158563229, i64 2158563263, i64 2158563287, i64 2158563328, i64 2158563349, i64 2158563377, i64 2158563411}
!694 = !{!"auto-init"}
!695 = !{i64 2148533591}
!696 = !{i64 2148448300, i64 2148448332, i64 2148448361, i64 2148448395, i64 2148448426, i64 2148448449}
!697 = !{i64 2148533820}
!698 = !{i64 2158635960, i64 2158636463, i64 2158635997, i64 2158636053, i64 2158636087, i64 2158636111, i64 2158636152, i64 2158636173, i64 2158636201, i64 2158636235}
!699 = !{i64 2158637595, i64 2158638098, i64 2158637632, i64 2158637688, i64 2158637722, i64 2158637746, i64 2158637787, i64 2158637808, i64 2158637836, i64 2158637870}
!700 = !{i64 2157910161}
!701 = !{i64 2157910328}
!702 = !{i64 2158595130, i64 2158595633, i64 2158595167, i64 2158595223, i64 2158595257, i64 2158595281, i64 2158595322, i64 2158595343, i64 2158595371, i64 2158595405}
!703 = !{i64 2158624914, i64 2158625417, i64 2158624951, i64 2158625007, i64 2158625041, i64 2158625065, i64 2158625106, i64 2158625127, i64 2158625155, i64 2158625189}
!704 = !{i64 2158631175, i64 2158631678, i64 2158631212, i64 2158631268, i64 2158631302, i64 2158631326, i64 2158631367, i64 2158631388, i64 2158631416, i64 2158631450}
!705 = !{i64 2148446645, i64 2148446677, i64 2148446706, i64 2148446740, i64 2148446771, i64 2148446794}
!706 = !{i64 2148534670}
!707 = !{i64 2148449110, i64 2148449142, i64 2148449171, i64 2148449205, i64 2148449236, i64 2148449259}
!708 = !{i64 2149410784}
!709 = !{i64 2151932147}
!710 = !{i64 2148445115, i64 2148445141, i64 2148445170, i64 2148445204, i64 2148445235, i64 2148445258}
!711 = !{i64 2158719584, i64 2158720087, i64 2158719621, i64 2158719677, i64 2158719711, i64 2158719735, i64 2158719776, i64 2158719797, i64 2158719825, i64 2158719859}
!712 = !{i64 2158721213, i64 2158721716, i64 2158721250, i64 2158721306, i64 2158721340, i64 2158721364, i64 2158721405, i64 2158721426, i64 2158721454, i64 2158721488}
!713 = distinct !{!713, !714}
!714 = !{!"llvm.loop.peeled.count", i32 1}
!715 = !{i64 2158819122, i64 2158819625, i64 2158819159, i64 2158819215, i64 2158819249, i64 2158819273, i64 2158819314, i64 2158819335, i64 2158819363, i64 2158819397}
!716 = !{i64 2158597776, i64 2158598279, i64 2158597813, i64 2158597869, i64 2158597903, i64 2158597927, i64 2158597968, i64 2158597989, i64 2158598017, i64 2158598051}
!717 = !{i64 2158616237, i64 2158616740, i64 2158616274, i64 2158616330, i64 2158616364, i64 2158616388, i64 2158616429, i64 2158616450, i64 2158616478, i64 2158616512}
!718 = !{i64 2148705015}
!719 = !{i64 951883, i64 951900, i64 951924, i64 951950, i64 951968}
!720 = !{i64 2148705385}
!721 = !{i64 2158621945, i64 2158622448, i64 2158621982, i64 2158622038, i64 2158622072, i64 2158622096, i64 2158622137, i64 2158622158, i64 2158622186, i64 2158622220}
!722 = !{i64 2148447580, i64 2148447606, i64 2148447635, i64 2148447669, i64 2148447700, i64 2148447723}
