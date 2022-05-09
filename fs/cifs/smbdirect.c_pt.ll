; ModuleID = '/llk/IR_all_yes/fs/cifs/smbdirect.c_pt.bc'
source_filename = "../fs/cifs/smbdirect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.session_key = type { i32, ptr }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.149 }
%union.anon.149 = type { ptr, [124 x i8] }
%struct.smbd_connection = type { i32, ptr, %struct.ib_qp_init_attr, ptr, ptr, ptr, %struct.ib_device_attr, i32, %struct.completion, %struct.wait_queue_head, %struct.wait_queue_head, %struct.completion, i8, %struct.work_struct, %struct.work_struct, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i32, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i8, %struct.wait_queue_head, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.167 }
%struct.anon.167 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.smbd_response = type { ptr, %struct.ib_cqe, %struct.ib_sge, i32, %struct.list_head, i8, [0 x i8] }
%struct.ib_cqe = type { ptr }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.164, ptr, i32, i32, i32, %union.anon.165 }
%union.anon.164 = type { i64 }
%union.anon.165 = type { i32 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.176 = type { %struct.ib_core_device }
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
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.smbd_request = type { ptr, %struct.ib_cqe, [16 x %struct.ib_sge], i32, [0 x i8] }
%struct.smbd_negotiate_req = type { i16, i16, i16, i16, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.smbd_mr = type { ptr, %struct.list_head, i32, ptr, ptr, i32, i32, %union.anon.179, %struct.ib_cqe, i8, %struct.completion }
%union.anon.179 = type { %struct.ib_reg_wr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.smbd_data_transfer = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.smb_rqst = type { ptr, i32, ptr, i32, i32, i32, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.154, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.154 = type { %struct.list_head }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_wc = type { %union.anon.160, i32, i32, i32, i32, ptr, %union.anon.161, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.160 = type { i64 }
%union.anon.161 = type { i32 }
%struct.ib_event = type { ptr, %union.anon.156, i32 }
%union.anon.156 = type { ptr }
%struct.rdma_cm_event = type { i32, i32, %union.anon.177, %struct.rdma_ucm_ece }
%union.anon.177 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.168 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.163 }
%struct.anon.163 = type { i64, i64 }
%union.anon.168 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.166, ptr, i32 }
%union.anon.166 = type { i64 }

@smbd_receive_credit_max = dso_local global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@smbd_send_credit_target = dso_local global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@smbd_max_send_size = dso_local global { i32, [28 x i8] } { i32 1364, [28 x i8] zeroinitializer }, align 32
@smbd_max_fragmented_recv_size = dso_local global { i32, [28 x i8] } { i32 1048576, [28 x i8] zeroinitializer }, align 32
@smbd_max_receive_size = dso_local global { i32, [28 x i8] } { i32 8192, [28 x i8] zeroinitializer }, align 32
@smbd_keep_alive_interval = dso_local global { i32, [28 x i8] } { i32 120, [28 x i8] zeroinitializer }, align 32
@smbd_max_frmr_depth = dso_local global { i32, [28 x i8] } { i32 2048, [28 x i8] zeroinitializer }, align 32
@rdma_readwrite_threshold = dso_local global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_str_smbd_logging_class = internal constant [24 x i8] c"cifs.smbd_logging_class\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@smbd_logging_class = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_smbd_logging_class = internal constant %struct.kernel_param { ptr @__param_str_smbd_logging_class, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @smbd_logging_class } }, section "__param", align 4
@__UNIQUE_ID_smbd_logging_classtype678 = internal constant [38 x i8] c"cifs.parmtype=smbd_logging_class:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_smbd_logging_class679 = internal constant [75 x i8] c"cifs.parm=smbd_logging_class:Logging class for SMBD transport 0x0 to 0x100\00", section ".modinfo", align 1
@__param_str_smbd_logging_level = internal constant [24 x i8] c"cifs.smbd_logging_level\00", align 1
@smbd_logging_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_smbd_logging_level = internal constant %struct.kernel_param { ptr @__param_str_smbd_logging_level, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @smbd_logging_level } }, section "__param", align 4
@__UNIQUE_ID_smbd_logging_leveltype680 = internal constant [38 x i8] c"cifs.parmtype=smbd_logging_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_smbd_logging_level681 = internal constant [91 x i8] c"cifs.parm=smbd_logging_level:Logging level for SMBD transport, 0 (default): error, 1: info\00", section ".modinfo", align 1
@smbd_destroy._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smbd_destroy = private unnamed_addr constant [13 x i8] c"smbd_destroy\00", align 1
@smbd_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: %s:%d rdma session already destroyed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/cifs/smbdirect.c\00", [44 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr = internal global ptr @smbd_destroy._entry, section ".printk_index", align 4
@smbd_destroy._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s:%d destroying rdma session\0A\00", [52 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.6 = internal global ptr @smbd_destroy._entry.4, section ".printk_index", align 4
@smbd_destroy._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CIFS: VFS: %s:%d wait for transport being disconnected\0A\00", [38 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.10 = internal global ptr @smbd_destroy._entry.8, section ".printk_index", align 4
@smbd_destroy._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CIFS: VFS: %s:%d destroying qp\0A\00", [62 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.14 = internal global ptr @smbd_destroy._entry.12, section ".printk_index", align 4
@smbd_destroy._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: %s:%d cancelling idle timer\0A\00", [54 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.18 = internal global ptr @smbd_destroy._entry.16, section ".printk_index", align 4
@smbd_destroy._rs.19 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013CIFS: VFS: %s:%d wait for all send posted to IB to finish\0A\00", [35 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.22 = internal global ptr @smbd_destroy._entry.20, section ".printk_index", align 4
@smbd_destroy._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: %s:%d drain the reassembly queue\0A\00", [49 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.26 = internal global ptr @smbd_destroy._entry.24, section ".printk_index", align 4
@smbd_destroy._rs.27 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CIFS: VFS: %s:%d free receive buffers\0A\00", [55 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.30 = internal global ptr @smbd_destroy._entry.28, section ".printk_index", align 4
@smbd_destroy._rs.31 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013CIFS: VFS: %s:%d freeing mr list\0A\00", [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.34 = internal global ptr @smbd_destroy._entry.32, section ".printk_index", align 4
@smbd_destroy._rs.35 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_destroy._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.smbd_destroy, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: %s:%d rdma session destroyed\0A\00", [53 x i8] zeroinitializer }, align 32
@smbd_destroy._entry_ptr.38 = internal global ptr @smbd_destroy._entry.36, section ".printk_index", align 4
@smbd_reconnect._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_reconnect = private unnamed_addr constant [15 x i8] c"smbd_reconnect\00", align 1
@smbd_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.smbd_reconnect, ptr @.str.2, i32 1416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s:%d reconnecting rdma session\0A\00", [50 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry_ptr = internal global ptr @smbd_reconnect._entry, section ".printk_index", align 4
@smbd_reconnect._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.smbd_reconnect, ptr @.str.2, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry_ptr.42 = internal global ptr @smbd_reconnect._entry.41, section ".printk_index", align 4
@smbd_reconnect._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.smbd_reconnect, ptr @.str.2, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s:%d disconnecting transport\0A\00", [52 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry_ptr.46 = internal global ptr @smbd_reconnect._entry.44, section ".printk_index", align 4
@smbd_reconnect._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.smbd_reconnect, ptr @.str.2, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: %s:%d creating rdma session\0A\00", [54 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry_ptr.50 = internal global ptr @smbd_reconnect._entry.48, section ".printk_index", align 4
@smbd_reconnect._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.smbd_reconnect, ptr @.str.2, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: RDMA transport re-established\0A\00", [52 x i8] zeroinitializer }, align 32
@smbd_reconnect._entry_ptr.54 = internal global ptr @smbd_reconnect._entry.52, section ".printk_index", align 4
@smbd_recv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_recv = private unnamed_addr constant [10 x i8] c"smbd_recv\00", align 1
@smbd_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @__func__.smbd_recv, ptr @.str.2, i32 1946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CIFS: VFS: Invalid msg iter dir %u\0A\00", [58 x i8] zeroinitializer }, align 32
@smbd_recv._entry_ptr = internal global ptr @smbd_recv._entry, section ".printk_index", align 4
@smbd_recv._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_recv._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.smbd_recv, ptr @.str.2, i32 1968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CIFS: VFS: Invalid msg type %d\0A\00", [62 x i8] zeroinitializer }, align 32
@smbd_recv._entry_ptr.59 = internal global ptr @smbd_recv._entry.57, section ".printk_index", align 4
@smbd_send._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_send = private unnamed_addr constant [10 x i8] c"smbd_send\00", align 1
@smbd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @__func__.smbd_send, ptr @.str.2, i32 2017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s:%d payload size %d > max size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr = internal global ptr @smbd_send._entry, section ".printk_index", align 4
@smbd_send._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.smbd_send, ptr @.str.2, i32 2023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s:%d num_rqst=%d total length=%u\0A\00", [48 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.64 = internal global ptr @smbd_send._entry.62, section ".printk_index", align 4
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@smbd_send._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @__func__.smbd_send, ptr @.str.2, ptr @.str.67, i8 1, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CIFS: %s: Sending smb (RDMA): idx=%d smb_len=%lu\0A\00", [46 x i8] zeroinitializer }, align 32
@smbd_send._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.smbd_send, ptr @.str.2, i32 2038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013CIFS: VFS: %s:%d rqst_idx=%d nvec=%d rqst->rq_npages=%d rq_pagesz=%d rq_tailsz=%d buflen=%lu\0A\00", [32 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.71 = internal global ptr @smbd_send._entry.69, section ".printk_index", align 4
@smbd_send._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.smbd_send, ptr @.str.2, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013CIFS: VFS: %s:%d sending iov[] from start=%d i=%d nvecs=%d remaining_data_length=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.75 = internal global ptr @smbd_send._entry.73, section ".printk_index", align 4
@smbd_send._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.smbd_send, ptr @.str.2, i32 2061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013CIFS: VFS: %s:%d iov[%d] iov_base=%p buflen=%d break to %d vectors\0A\00", [58 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.79 = internal global ptr @smbd_send._entry.77, section ".printk_index", align 4
@smbd_send._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @__func__.smbd_send, ptr @.str.2, i32 2075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013CIFS: VFS: %s:%d sending vec j=%d iov_base=%p iov_len=%zu remaining_data_length=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.83 = internal global ptr @smbd_send._entry.81, section ".printk_index", align 4
@smbd_send._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.smbd_send, ptr @.str.2, i32 2095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.86 = internal global ptr @smbd_send._entry.85, section ".printk_index", align 4
@smbd_send._rs.87 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @__func__.smbd_send, ptr @.str.2, i32 2103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: %s:%d looping i=%d buflen=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.90 = internal global ptr @smbd_send._entry.88, section ".printk_index", align 4
@smbd_send._rs.91 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @__func__.smbd_send, ptr @.str.2, i32 2113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: %s:%d sending pages buflen=%d nvecs=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.94 = internal global ptr @smbd_send._entry.92, section ".printk_index", align 4
@smbd_send._rs.95 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_send._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @__func__.smbd_send, ptr @.str.2, i32 2121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013CIFS: VFS: %s:%d sending pages i=%d offset=%d size=%d remaining_data_length=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@smbd_send._entry_ptr.98 = internal global ptr @smbd_send._entry.96, section ".printk_index", align 4
@smbd_register_mr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_register_mr = private unnamed_addr constant [17 x i8] c"smbd_register_mr\00", align 1
@smbd_register_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @__func__.smbd_register_mr, ptr @.str.2, i32 2359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: %s:%d num_pages=%d max_frmr_depth=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry_ptr = internal global ptr @smbd_register_mr._entry, section ".printk_index", align 4
@smbd_register_mr._rs.100 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @__func__.smbd_register_mr, ptr @.str.2, i32 2365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: %s:%d get_mr returning NULL\0A\00", [54 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry_ptr.103 = internal global ptr @smbd_register_mr._entry.101, section ".printk_index", align 4
@smbd_register_mr._rs.104 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @__func__.smbd_register_mr, ptr @.str.2, i32 2373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013CIFS: VFS: %s:%d num_pages=0x%x offset=0x%x tailsz=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry_ptr.107 = internal global ptr @smbd_register_mr._entry.105, section ".printk_index", align 4
@smbd_register_mr._rs.108 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @__func__.smbd_register_mr, ptr @.str.2, i32 2397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CIFS: VFS: %s:%d ib_dma_map_sg num_pages=%x dir=%x rc=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry_ptr.111 = internal global ptr @smbd_register_mr._entry.109, section ".printk_index", align 4
@smbd_register_mr._rs.112 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @__func__.smbd_register_mr, ptr @.str.2, i32 2406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013CIFS: VFS: %s:%d ib_map_mr_sg failed rc = %d num_pages = %x\0A\00", [33 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry_ptr.115 = internal global ptr @smbd_register_mr._entry.113, section ".printk_index", align 4
@smbd_register_mr._rs.116 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @__func__.smbd_register_mr, ptr @.str.2, i32 2434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013CIFS: VFS: %s:%d ib_post_send failed rc=%x reg_wr->key=%x\0A\00", [35 x i8] zeroinitializer }, align 32
@smbd_register_mr._entry_ptr.119 = internal global ptr @smbd_register_mr._entry.117, section ".printk_index", align 4
@smbd_deregister_mr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_deregister_mr = private unnamed_addr constant [19 x i8] c"smbd_deregister_mr\00", align 1
@smbd_deregister_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @__func__.smbd_deregister_mr, ptr @.str.2, i32 2491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s:%d ib_post_send failed rc=%x\0A\00", [50 x i8] zeroinitializer }, align 32
@smbd_deregister_mr._entry_ptr = internal global ptr @smbd_deregister_mr._entry, section ".printk_index", align 4
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__._smbd_get_connection = private unnamed_addr constant [21 x i8] c"_smbd_get_connection\00", align 1
@_smbd_get_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013CIFS: VFS: %s:%d smbd_ia_open rc=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr = internal global ptr @_smbd_get_connection._entry, section ".printk_index", align 4
@_smbd_get_connection._rs.124 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"\013CIFS: VFS: %s:%d consider lowering send_credit_target = %d. Possible CQE overrun, device reporting max_cpe %d max_qp_wr %d\0A\00", [34 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.127 = internal global ptr @_smbd_get_connection._entry.125, section ".printk_index", align 4
@_smbd_get_connection._rs.128 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"\013CIFS: VFS: %s:%d consider lowering receive_credit_max = %d. Possible CQE overrun, device reporting max_cpe %d max_qp_wr %d\0A\00", [34 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.131 = internal global ptr @_smbd_get_connection._entry.129, section ".printk_index", align 4
@_smbd_get_connection._rs.132 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013CIFS: VFS: %s:%d warning: device max_send_sge = %d too small\0A\00", [32 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.135 = internal global ptr @_smbd_get_connection._entry.133, section ".printk_index", align 4
@_smbd_get_connection._rs.136 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: %s:%d Queue Pair creation may fail\0A\00", [47 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.139 = internal global ptr @_smbd_get_connection._entry.137, section ".printk_index", align 4
@_smbd_get_connection._rs.140 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013CIFS: VFS: %s:%d warning: device max_recv_sge = %d too small\0A\00", [32 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.143 = internal global ptr @_smbd_get_connection._entry.141, section ".printk_index", align 4
@_smbd_get_connection._rs.144 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.146 = internal global ptr @_smbd_get_connection._entry.145, section ".printk_index", align 4
@_smbd_get_connection._rs.147 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: %s:%d rdma_create_qp failed %i\0A\00", [51 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.150 = internal global ptr @_smbd_get_connection._entry.148, section ".printk_index", align 4
@_smbd_get_connection._rs.151 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: %s:%d responder_resources=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.154 = internal global ptr @_smbd_get_connection._entry.152, section ".printk_index", align 4
@_smbd_get_connection._rs.155 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s:%d connecting to IP %pI4 port %d\0A\00", [46 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.158 = internal global ptr @_smbd_get_connection._entry.156, section ".printk_index", align 4
@_smbd_get_connection.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&info->conn_wait\00", [47 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.160 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&info->disconn_wait\00", [44 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.162 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.163 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&info->wait_reassembly_queue\00", [35 x i8] zeroinitializer }, align 32
@_smbd_get_connection._rs.164 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s:%d rdma_connect() failed with %i\0A\00", [46 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.167 = internal global ptr @_smbd_get_connection._entry.165, section ".printk_index", align 4
@_smbd_get_connection._rs.168 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s:%d rdma_connect failed port=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.171 = internal global ptr @_smbd_get_connection._entry.169, section ".printk_index", align 4
@_smbd_get_connection._rs.172 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: %s:%d rdma_connect connected\0A\00", [53 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.175 = internal global ptr @_smbd_get_connection._entry.173, section ".printk_index", align 4
@_smbd_get_connection._rs.176 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s:%d cache allocation failed\0A\00", [52 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.179 = internal global ptr @_smbd_get_connection._entry.177, section ".printk_index", align 4
@_smbd_get_connection.__key.180 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.181 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&info->wait_send_queue\00", [41 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.182 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.183 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&info->idle_timer_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.184 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.185 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&info->idle_timer_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.186 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.187 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&info->wait_send_pending\00", [39 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.188 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.189 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&info->wait_post_send\00", [42 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.190 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.191 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&info->disconnect_work)\00", [54 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.192 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.193 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&info->post_send_credits_work)\00", [47 x i8] zeroinitializer }, align 32
@_smbd_get_connection.__key.194 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.195 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&info->lock_new_credits_offered\00", [32 x i8] zeroinitializer }, align 32
@_smbd_get_connection._rs.196 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013CIFS: VFS: %s:%d smbd_negotiate rc=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.199 = internal global ptr @_smbd_get_connection._entry.197, section ".printk_index", align 4
@_smbd_get_connection._rs.200 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @__func__._smbd_get_connection, ptr @.str.2, i32 1696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CIFS: VFS: %s:%d memory registration allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@_smbd_get_connection._entry_ptr.203 = internal global ptr @_smbd_get_connection._entry.201, section ".printk_index", align 4
@_smbd_get_connection.__key.204 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smbd_ia_open._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_ia_open = private unnamed_addr constant [13 x i8] c"smbd_ia_open\00", align 1
@smbd_ia_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @__func__.smbd_ia_open, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013CIFS: VFS: %s:%d Fast Registration Work Requests (FRWR) is not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@smbd_ia_open._entry_ptr = internal global ptr @smbd_ia_open._entry, section ".printk_index", align 4
@smbd_ia_open._rs.206 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_ia_open._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @__func__.smbd_ia_open, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013CIFS: VFS: %s:%d Device capability flags = %llx max_fast_reg_page_list_len = %u\0A\00", [45 x i8] zeroinitializer }, align 32
@smbd_ia_open._entry_ptr.209 = internal global ptr @smbd_ia_open._entry.207, section ".printk_index", align 4
@smbd_ia_open._rs.210 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_ia_open._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @__func__.smbd_ia_open, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s:%d ib_alloc_pd() returned %d\0A\00", [50 x i8] zeroinitializer }, align 32
@smbd_ia_open._entry_ptr.213 = internal global ptr @smbd_ia_open._entry.211, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@smbd_create_id._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_create_id = private unnamed_addr constant [15 x i8] c"smbd_create_id\00", align 1
@smbd_create_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @__func__.smbd_create_id, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: %s:%d rdma_create_id() failed %i\0A\00", [49 x i8] zeroinitializer }, align 32
@smbd_create_id._entry_ptr = internal global ptr @smbd_create_id._entry, section ".printk_index", align 4
@smbd_create_id._rs.215 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_create_id._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @__func__.smbd_create_id, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s:%d rdma_resolve_addr() failed %i\0A\00", [46 x i8] zeroinitializer }, align 32
@smbd_create_id._entry_ptr.218 = internal global ptr @smbd_create_id._entry.216, section ".printk_index", align 4
@smbd_create_id._rs.219 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_create_id._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @__func__.smbd_create_id, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: %s:%d rdma_resolve_addr timeout rc: %i\0A\00", [43 x i8] zeroinitializer }, align 32
@smbd_create_id._entry_ptr.222 = internal global ptr @smbd_create_id._entry.220, section ".printk_index", align 4
@smbd_create_id._rs.223 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_create_id._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @__func__.smbd_create_id, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013CIFS: VFS: %s:%d rdma_resolve_addr() completed %i\0A\00", [43 x i8] zeroinitializer }, align 32
@smbd_create_id._entry_ptr.226 = internal global ptr @smbd_create_id._entry.224, section ".printk_index", align 4
@smbd_create_id._rs.227 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_create_id._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @__func__.smbd_create_id, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: %s:%d rdma_resolve_route() failed %i\0A\00", [45 x i8] zeroinitializer }, align 32
@smbd_create_id._entry_ptr.230 = internal global ptr @smbd_create_id._entry.228, section ".printk_index", align 4
@smbd_create_id._rs.231 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_create_id._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @__func__.smbd_create_id, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smbd_create_id._entry_ptr.233 = internal global ptr @smbd_create_id._entry.232, section ".printk_index", align 4
@smbd_create_id._rs.234 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_create_id._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @__func__.smbd_create_id, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: %s:%d rdma_resolve_route() completed %i\0A\00", [42 x i8] zeroinitializer }, align 32
@smbd_create_id._entry_ptr.237 = internal global ptr @smbd_create_id._entry.235, section ".printk_index", align 4
@smbd_conn_upcall._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_conn_upcall = private unnamed_addr constant [17 x i8] c"smbd_conn_upcall\00", align 1
@smbd_conn_upcall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @__func__.smbd_conn_upcall, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013CIFS: VFS: %s:%d event=%d status=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@smbd_conn_upcall._entry_ptr = internal global ptr @smbd_conn_upcall._entry, section ".printk_index", align 4
@smbd_conn_upcall._rs.239 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_conn_upcall._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @__func__.smbd_conn_upcall, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013CIFS: VFS: %s:%d connected event=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@smbd_conn_upcall._entry_ptr.242 = internal global ptr @smbd_conn_upcall._entry.240, section ".printk_index", align 4
@smbd_conn_upcall._rs.243 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_conn_upcall._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @__func__.smbd_conn_upcall, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: %s:%d connecting failed event=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@smbd_conn_upcall._entry_ptr.246 = internal global ptr @smbd_conn_upcall._entry.244, section ".printk_index", align 4
@smbd_qp_async_error_upcall._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_qp_async_error_upcall = private unnamed_addr constant [27 x i8] c"smbd_qp_async_error_upcall\00", align 1
@smbd_qp_async_error_upcall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @__func__.smbd_qp_async_error_upcall, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s:%d %s on device %s info %p\0A\00", [52 x i8] zeroinitializer }, align 32
@smbd_qp_async_error_upcall._entry_ptr = internal global ptr @smbd_qp_async_error_upcall._entry, section ".printk_index", align 4
@.str.248 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smbd_request_%p\00", [16 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smbd_response_%p\00", [47 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smbd_%p\00", [24 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@allocate_caches_and_workqueue._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.allocate_caches_and_workqueue = private unnamed_addr constant [30 x i8] c"allocate_caches_and_workqueue\00", align 1
@allocate_caches_and_workqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @__func__.allocate_caches_and_workqueue, ptr @.str.2, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: %s:%d failed to allocate receive buffers\0A\00", [41 x i8] zeroinitializer }, align 32
@allocate_caches_and_workqueue._entry_ptr = internal global ptr @allocate_caches_and_workqueue._entry, section ".printk_index", align 4
@allocate_receive_buffers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.253 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&info->reassembly_queue_lock\00", [35 x i8] zeroinitializer }, align 32
@allocate_receive_buffers.__key.254 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.255 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&info->receive_queue_lock\00", [38 x i8] zeroinitializer }, align 32
@allocate_receive_buffers.__key.256 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.257 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&info->empty_packet_queue_lock\00", [33 x i8] zeroinitializer }, align 32
@allocate_receive_buffers.__key.258 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.259 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&info->wait_receive_queues\00", [37 x i8] zeroinitializer }, align 32
@idle_connection_timer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.idle_connection_timer = private unnamed_addr constant [22 x i8] c"idle_connection_timer\00", align 1
@idle_connection_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @__func__.idle_connection_timer, ptr @.str.2, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013CIFS: VFS: %s:%d error status info->keep_alive_requested=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@idle_connection_timer._entry_ptr = internal global ptr @idle_connection_timer._entry, section ".printk_index", align 4
@idle_connection_timer._rs.261 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@idle_connection_timer._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @__func__.idle_connection_timer, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CIFS: VFS: %s:%d about to send an empty idle message\0A\00", [40 x i8] zeroinitializer }, align 32
@idle_connection_timer._entry_ptr.264 = internal global ptr @idle_connection_timer._entry.262, section ".printk_index", align 4
@smbd_post_send_sgl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_post_send_sgl = private unnamed_addr constant [19 x i8] c"smbd_post_send_sgl\00", align 1
@smbd_post_send_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @__func__.smbd_post_send_sgl, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CIFS: VFS: %s:%d disconnected not sending on wait_credit\0A\00", [36 x i8] zeroinitializer }, align 32
@smbd_post_send_sgl._entry_ptr = internal global ptr @smbd_post_send_sgl._entry, section ".printk_index", align 4
@smbd_post_send_sgl._rs.266 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_post_send_sgl._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @__func__.smbd_post_send_sgl, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013CIFS: VFS: %s:%d disconnected not sending on wait_send_queue\0A\00", [32 x i8] zeroinitializer }, align 32
@smbd_post_send_sgl._entry_ptr.269 = internal global ptr @smbd_post_send_sgl._entry.267, section ".printk_index", align 4
@smbd_post_send_sgl._rs.270 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_post_send_sgl._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @__func__.smbd_post_send_sgl, ptr @.str.2, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\013CIFS: VFS: %s:%d credits_requested=%d credits_granted=%d data_offset=%d data_length=%d remaining_data_length=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@smbd_post_send_sgl._entry_ptr.273 = internal global ptr @smbd_post_send_sgl._entry.271, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.274 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@smbd_post_send._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_post_send = private unnamed_addr constant [15 x i8] c"smbd_post_send\00", align 1
@smbd_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @__func__.smbd_post_send, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013CIFS: VFS: %s:%d rdma_request sge[%d] addr=%llu length=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@smbd_post_send._entry_ptr = internal global ptr @smbd_post_send._entry, section ".printk_index", align 4
@smbd_post_send._rs.277 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_post_send._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @__func__.smbd_post_send, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s:%d ib_post_send failed rc=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@smbd_post_send._entry_ptr.280 = internal global ptr @smbd_post_send._entry.278, section ".printk_index", align 4
@send_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.send_done = private unnamed_addr constant [10 x i8] c"send_done\00", align 1
@send_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @__func__.send_done, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CIFS: VFS: %s:%d smbd_request %p completed wc->status=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@send_done._entry_ptr = internal global ptr @send_done._entry, section ".printk_index", align 4
@send_done._rs.282 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@send_done._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @__func__.send_done, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s:%d wc->status=%d wc->opcode=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@send_done._entry_ptr.285 = internal global ptr @send_done._entry.283, section ".printk_index", align 4
@smbd_post_send_credits._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_post_send_credits = private unnamed_addr constant [23 x i8] c"smbd_post_send_credits\00", align 1
@smbd_post_send_credits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @__func__.smbd_post_send_credits, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: %s:%d post_recv failed rc=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@smbd_post_send_credits._entry_ptr = internal global ptr @smbd_post_send_credits._entry, section ".printk_index", align 4
@smbd_post_send_credits._rs.287 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_post_send_credits._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @__func__.smbd_post_send_credits, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013CIFS: VFS: %s:%d send an empty message\0A\00", [54 x i8] zeroinitializer }, align 32
@smbd_post_send_credits._entry_ptr.290 = internal global ptr @smbd_post_send_credits._entry.288, section ".printk_index", align 4
@smbd_post_recv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_post_recv = private unnamed_addr constant [15 x i8] c"smbd_post_recv\00", align 1
@smbd_post_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @__func__.smbd_post_recv, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s:%d ib_post_recv failed rc=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@smbd_post_recv._entry_ptr = internal global ptr @smbd_post_recv._entry, section ".printk_index", align 4
@recv_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.recv_done = private unnamed_addr constant [10 x i8] c"recv_done\00", align 1
@recv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @__func__.recv_done, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013CIFS: VFS: %s:%d response=%p type=%d wc status=%d wc opcode %d byte_len=%d pkey_index=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@recv_done._entry_ptr = internal global ptr @recv_done._entry, section ".printk_index", align 4
@recv_done._rs.293 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@recv_done._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @__func__.recv_done, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s:%d wc->status=%d opcode=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@recv_done._entry_ptr.296 = internal global ptr @recv_done._entry.294, section ".printk_index", align 4
@recv_done._rs.297 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@recv_done._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @__func__.recv_done, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013CIFS: VFS: %s:%d data flags %d data_offset %d data_length %d remaining_data_length %d\0A\00", [39 x i8] zeroinitializer }, align 32
@recv_done._entry_ptr.300 = internal global ptr @recv_done._entry.298, section ".printk_index", align 4
@recv_done._rs.301 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@recv_done._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @__func__.recv_done, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s:%d unexpected response type=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@recv_done._entry_ptr.304 = internal global ptr @recv_done._entry.302, section ".printk_index", align 4
@dump_smbd_negotiate_resp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dump_smbd_negotiate_resp = private unnamed_addr constant [25 x i8] c"dump_smbd_negotiate_resp\00", align 1
@dump_smbd_negotiate_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @__func__.dump_smbd_negotiate_resp, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [223 x i8], [33 x i8] } { [223 x i8] c"\013CIFS: VFS: %s:%d resp message min_version %u max_version %u negotiated_version %u credits_requested %u credits_granted %u status %u max_readwrite_size %u preferred_send_size %u max_receive_size %u max_fragmented_size %u\0A\00", [33 x i8] zeroinitializer }, align 32
@dump_smbd_negotiate_resp._entry_ptr = internal global ptr @dump_smbd_negotiate_resp._entry, section ".printk_index", align 4
@process_negotiation_response._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.process_negotiation_response = private unnamed_addr constant [29 x i8] c"process_negotiation_response\00", align 1
@process_negotiation_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @__func__.process_negotiation_response, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s:%d error: packet_length=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry_ptr = internal global ptr @process_negotiation_response._entry, section ".printk_index", align 4
@process_negotiation_response._rs.307 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @__func__.process_negotiation_response, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CIFS: VFS: %s:%d error: negotiated_version=%x\0A\00", [47 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry_ptr.310 = internal global ptr @process_negotiation_response._entry.308, section ".printk_index", align 4
@process_negotiation_response._rs.311 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @__func__.process_negotiation_response, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s:%d error: credits_requested==0\0A\00", [48 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry_ptr.314 = internal global ptr @process_negotiation_response._entry.312, section ".printk_index", align 4
@process_negotiation_response._rs.315 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @__func__.process_negotiation_response, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s:%d error: credits_granted==0\0A\00", [50 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry_ptr.318 = internal global ptr @process_negotiation_response._entry.316, section ".printk_index", align 4
@process_negotiation_response._rs.319 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @__func__.process_negotiation_response, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s:%d error: preferred_send_size=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry_ptr.322 = internal global ptr @process_negotiation_response._entry.320, section ".printk_index", align 4
@process_negotiation_response._rs.323 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @__func__.process_negotiation_response, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013CIFS: VFS: %s:%d error: max_receive_size=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry_ptr.326 = internal global ptr @process_negotiation_response._entry.324, section ".printk_index", align 4
@process_negotiation_response._rs.327 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @__func__.process_negotiation_response, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CIFS: VFS: %s:%d error: max_fragmented_size=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@process_negotiation_response._entry_ptr.330 = internal global ptr @process_negotiation_response._entry.328, section ".printk_index", align 4
@smbd_negotiate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_negotiate = private unnamed_addr constant [15 x i8] c"smbd_negotiate\00", align 1
@smbd_negotiate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @__func__.smbd_negotiate, ptr @.str.2, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013CIFS: VFS: %s:%d smbd_post_recv rc=%d iov.addr=%llx iov.length=%x iov.lkey=%x\0A\00", [47 x i8] zeroinitializer }, align 32
@smbd_negotiate._entry_ptr = internal global ptr @smbd_negotiate._entry, section ".printk_index", align 4
@smbd_negotiate._rs.332 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_negotiate._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @__func__.smbd_negotiate, ptr @.str.2, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CIFS: VFS: %s:%d wait_for_completion_timeout rc=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@smbd_negotiate._entry_ptr.335 = internal global ptr @smbd_negotiate._entry.333, section ".printk_index", align 4
@smbd_post_send_negotiate_req._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_post_send_negotiate_req = private unnamed_addr constant [29 x i8] c"smbd_post_send_negotiate_req\00", align 1
@smbd_post_send_negotiate_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @__func__.smbd_post_send_negotiate_req, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013CIFS: VFS: %s:%d sge addr=%llx length=%x lkey=%x\0A\00", [44 x i8] zeroinitializer }, align 32
@smbd_post_send_negotiate_req._entry_ptr = internal global ptr @smbd_post_send_negotiate_req._entry, section ".printk_index", align 4
@smbd_post_send_negotiate_req._rs.337 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_post_send_negotiate_req._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @__func__.smbd_post_send_negotiate_req, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smbd_post_send_negotiate_req._entry_ptr.339 = internal global ptr @smbd_post_send_negotiate_req._entry.338, section ".printk_index", align 4
@allocate_mr_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.340 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&info->wait_mr\00", [17 x i8] zeroinitializer }, align 32
@allocate_mr_list.__key.341 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.342 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&info->mr_list_lock\00", [44 x i8] zeroinitializer }, align 32
@allocate_mr_list.__key.343 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.344 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&info->wait_for_mr_cleanup\00", [37 x i8] zeroinitializer }, align 32
@allocate_mr_list._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.allocate_mr_list = private unnamed_addr constant [17 x i8] c"allocate_mr_list\00", align 1
@allocate_mr_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @__func__.allocate_mr_list, ptr @.str.2, i32 2261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013CIFS: VFS: %s:%d ib_alloc_mr failed mr_type=%x max_frmr_depth=%x\0A\00", [60 x i8] zeroinitializer }, align 32
@allocate_mr_list._entry_ptr = internal global ptr @allocate_mr_list._entry, section ".printk_index", align 4
@allocate_mr_list._rs.346 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@allocate_mr_list._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @__func__.allocate_mr_list, ptr @.str.2, i32 2269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CIFS: VFS: %s:%d failed to allocate sgl\0A\00", [53 x i8] zeroinitializer }, align 32
@allocate_mr_list._entry_ptr.349 = internal global ptr @allocate_mr_list._entry.347, section ".printk_index", align 4
@allocate_mr_list.__key.350 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.351 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&info->mr_recovery_work)\00", [53 x i8] zeroinitializer }, align 32
@smbd_mr_recovery_work._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_mr_recovery_work = private unnamed_addr constant [22 x i8] c"smbd_mr_recovery_work\00", align 1
@smbd_mr_recovery_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @__func__.smbd_mr_recovery_work, ptr @.str.2, i32 2186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CIFS: VFS: %s:%d ib_dereg_mr failed rc=%x\0A\00", [51 x i8] zeroinitializer }, align 32
@smbd_mr_recovery_work._entry_ptr = internal global ptr @smbd_mr_recovery_work._entry, section ".printk_index", align 4
@smbd_mr_recovery_work._rs.353 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_mr_recovery_work._entry.354 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @__func__.smbd_mr_recovery_work, ptr @.str.2, i32 2197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smbd_mr_recovery_work._entry_ptr.355 = internal global ptr @smbd_mr_recovery_work._entry.354, section ".printk_index", align 4
@smbd_recv_buf._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_recv_buf = private unnamed_addr constant [14 x i8] c"smbd_recv_buf\00", align 1
@smbd_recv_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.356, ptr @__func__.smbd_recv_buf, ptr @.str.2, i32 1782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CIFS: VFS: %s:%d size=%d info->reassembly_data_length=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry_ptr = internal global ptr @smbd_recv_buf._entry, section ".printk_index", align 4
@smbd_recv_buf._rs.357 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry.358 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @__func__.smbd_recv_buf, ptr @.str.2, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s:%d returning rfc1002 length %d\0A\00", [48 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry_ptr.360 = internal global ptr @smbd_recv_buf._entry.358, section ".printk_index", align 4
@smbd_recv_buf._rs.361 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @__func__.smbd_recv_buf, ptr @.str.2, i32 1854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s:%d put_receive_buffer offset=0\0A\00", [48 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry_ptr.364 = internal global ptr @smbd_recv_buf._entry.362, section ".printk_index", align 4
@smbd_recv_buf._rs.365 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @__func__.smbd_recv_buf, ptr @.str.2, i32 1863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\013CIFS: VFS: %s:%d _get_first_reassembly memcpy %d bytes data_transfer_length-offset=%d after that to_read=%d data_read=%d offset=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry_ptr.368 = internal global ptr @smbd_recv_buf._entry.366, section ".printk_index", align 4
@smbd_recv_buf._rs.369 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry.370 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.371, ptr @__func__.smbd_recv_buf, ptr @.str.2, i32 1874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013CIFS: VFS: %s:%d returning to thread data_read=%d reassembly_data_length=%d first_entry_offset=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry_ptr.372 = internal global ptr @smbd_recv_buf._entry.370, section ".printk_index", align 4
@smbd_recv_buf._rs.373 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @__func__.smbd_recv_buf, ptr @.str.2, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s:%d wait_event on more data\0A\00", [52 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry_ptr.376 = internal global ptr @smbd_recv_buf._entry.374, section ".printk_index", align 4
@smbd_recv_buf._rs.377 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry.378 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.379, ptr @__func__.smbd_recv_buf, ptr @.str.2, i32 1889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CIFS: VFS: %s:%d disconnected\0A\00", [63 x i8] zeroinitializer }, align 32
@smbd_recv_buf._entry_ptr.380 = internal global ptr @smbd_recv_buf._entry.378, section ".printk_index", align 4
@smbd_recv_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_recv_page = private unnamed_addr constant [15 x i8] c"smbd_recv_page\00", align 1
@smbd_recv_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @__func__.smbd_recv_page, ptr @.str.2, i32 1923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013CIFS: VFS: %s:%d reading from page=%p address=%p to_read=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@smbd_recv_page._entry_ptr = internal global ptr @smbd_recv_page._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@smbd_post_send_data._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smbd_post_send_data = private unnamed_addr constant [20 x i8] c"smbd_post_send_data\00", align 1
@smbd_post_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.382, ptr @__func__.smbd_post_send_data, ptr @.str.2, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: Can't fit data to SGL, n_vec=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@smbd_post_send_data._entry_ptr = internal global ptr @smbd_post_send_data._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@get_mr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_mr = private unnamed_addr constant [7 x i8] c"get_mr\00", align 1
@get_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @__func__.get_mr, ptr @.str.2, i32 2310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: %s:%d wait_event_interruptible rc=%x\0A\00", [45 x i8] zeroinitializer }, align 32
@get_mr._entry_ptr = internal global ptr @get_mr._entry, section ".printk_index", align 4
@get_mr._rs.384 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_mr._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @__func__.get_mr, ptr @.str.2, i32 2316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s:%d info->transport_status=%x\0A\00", [50 x i8] zeroinitializer }, align 32
@get_mr._entry_ptr.387 = internal global ptr @get_mr._entry.385, section ".printk_index", align 4
@register_mr_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.register_mr_done = private unnamed_addr constant [17 x i8] c"register_mr_done\00", align 1
@register_mr_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @__func__.register_mr_done, ptr @.str.2, i32 2155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013CIFS: VFS: %s:%d status=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@register_mr_done._entry_ptr = internal global ptr @register_mr_done._entry, section ".printk_index", align 4
@local_inv_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.local_inv_done = private unnamed_addr constant [15 x i8] c"local_inv_done\00", align 1
@local_inv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.389, ptr @__func__.local_inv_done, ptr @.str.2, i32 2460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CIFS: VFS: %s:%d invalidate failed status=%x\0A\00", [48 x i8] zeroinitializer }, align 32
@local_inv_done._entry_ptr = internal global ptr @local_inv_done._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.390 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.391 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.392 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.393 = private unnamed_addr constant [24 x i8] c"smbd_receive_credit_max\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 81, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant [24 x i8] c"smbd_send_credit_target\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 84, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant [19 x i8] c"smbd_max_send_size\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 87, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant [30 x i8] c"smbd_max_fragmented_recv_size\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 90, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant [22 x i8] c"smbd_max_receive_size\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 93, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant [25 x i8] c"smbd_keep_alive_interval\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 96, i32 5 }
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c"smbd_max_frmr_depth\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 103, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant [25 x i8] c"rdma_readwrite_threshold\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 106, i32 5 }
@___asan_gen_.417 = private unnamed_addr constant [19 x i8] c"smbd_logging_class\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 123, i32 21 }
@___asan_gen_.420 = private unnamed_addr constant [19 x i8] c"smbd_logging_level\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 130, i32 21 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1329, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1333, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1336, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1342, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1346, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1349, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1354, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1369, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1382, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1406, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1416, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1419, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1428, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1433, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1438, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1945, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1967, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2016, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2022, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2030, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2036, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2048, i32 5 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2059, i32 5 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2072, i32 6 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2093, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2103, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2112, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2119, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2358, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2365, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2372, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2396, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2404, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2433, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2491, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 3498, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1536, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1542, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1551, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1566, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1569, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1572, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1575, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1612, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1625, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1645, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1648, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1649, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1650, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1653, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1661, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1665, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1669, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1673, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1674, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1678, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1681, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1683, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1684, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1686, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1690, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1696, i32 3 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1711, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 641, i32 3 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 642, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 658, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 555, i32 3 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 572, i32 3 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 579, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 584, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 591, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 598, i32 3 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 603, i32 3 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 180, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 201, i32 3 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 209, i32 3 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 242, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1459, i32 32 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1475, i32 32 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1491, i32 32 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1492, i32 20 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1498, i32 3 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1244, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1249, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1253, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1256, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1302, i32 3 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1309, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 846, i32 3 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 861, i32 3 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 903, i32 2 }
@___asan_gen_.1171 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 326, i32 6 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 794, i32 3 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 815, i32 3 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 273, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 277, i32 3 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 416, i32 5 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 436, i32 4 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1068, i32 3 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 451, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 456, i32 3 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 519, i32 3 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 535, i32 3 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 298, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 318, i32 3 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 324, i32 3 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 331, i32 3 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 337, i32 3 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 345, i32 3 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 352, i32 3 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 361, i32 3 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1082, i32 2 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1096, i32 2 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 726, i32 2 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 736, i32 2 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2247, i32 2 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2248, i32 2 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2251, i32 2 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2260, i32 4 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2269, i32 4 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2279, i32 2 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2184, i32 5 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2195, i32 5 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1781, i32 2 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1822, i32 5 }
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1854, i32 5 }
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1861, i32 4 }
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1872, i32 3 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1879, i32 2 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1889, i32 3 }
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1922, i32 2 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 1023, i32 3 }
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2310, i32 3 }
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2315, i32 3 }
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2155, i32 3 }
@___asan_gen_.1542 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.1545 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1549 = private constant [23 x i8] c"../fs/cifs/smbdirect.c\00", align 1
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1549, i32 2460, i32 3 }
@___asan_gen_.1551 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1554 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1555 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.1556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1555, i32 87, i32 2 }
@llvm.compiler.used = appending global [504 x ptr] [ptr @__UNIQUE_ID_smbd_logging_class679, ptr @__UNIQUE_ID_smbd_logging_classtype678, ptr @__UNIQUE_ID_smbd_logging_level681, ptr @__UNIQUE_ID_smbd_logging_leveltype680, ptr @__param_smbd_logging_class, ptr @__param_smbd_logging_level, ptr @_smbd_get_connection._entry, ptr @_smbd_get_connection._entry.125, ptr @_smbd_get_connection._entry.129, ptr @_smbd_get_connection._entry.133, ptr @_smbd_get_connection._entry.137, ptr @_smbd_get_connection._entry.141, ptr @_smbd_get_connection._entry.145, ptr @_smbd_get_connection._entry.148, ptr @_smbd_get_connection._entry.152, ptr @_smbd_get_connection._entry.156, ptr @_smbd_get_connection._entry.165, ptr @_smbd_get_connection._entry.169, ptr @_smbd_get_connection._entry.173, ptr @_smbd_get_connection._entry.177, ptr @_smbd_get_connection._entry.197, ptr @_smbd_get_connection._entry.201, ptr @_smbd_get_connection._entry_ptr, ptr @_smbd_get_connection._entry_ptr.127, ptr @_smbd_get_connection._entry_ptr.131, ptr @_smbd_get_connection._entry_ptr.135, ptr @_smbd_get_connection._entry_ptr.139, ptr @_smbd_get_connection._entry_ptr.143, ptr @_smbd_get_connection._entry_ptr.146, ptr @_smbd_get_connection._entry_ptr.150, ptr @_smbd_get_connection._entry_ptr.154, ptr @_smbd_get_connection._entry_ptr.158, ptr @_smbd_get_connection._entry_ptr.167, ptr @_smbd_get_connection._entry_ptr.171, ptr @_smbd_get_connection._entry_ptr.175, ptr @_smbd_get_connection._entry_ptr.179, ptr @_smbd_get_connection._entry_ptr.199, ptr @_smbd_get_connection._entry_ptr.203, ptr @allocate_caches_and_workqueue._entry, ptr @allocate_caches_and_workqueue._entry_ptr, ptr @allocate_mr_list._entry, ptr @allocate_mr_list._entry.347, ptr @allocate_mr_list._entry_ptr, ptr @allocate_mr_list._entry_ptr.349, ptr @dump_smbd_negotiate_resp._entry, ptr @dump_smbd_negotiate_resp._entry_ptr, ptr @get_mr._entry, ptr @get_mr._entry.385, ptr @get_mr._entry_ptr, ptr @get_mr._entry_ptr.387, ptr @idle_connection_timer._entry, ptr @idle_connection_timer._entry.262, ptr @idle_connection_timer._entry_ptr, ptr @idle_connection_timer._entry_ptr.264, ptr @local_inv_done._entry, ptr @local_inv_done._entry_ptr, ptr @process_negotiation_response._entry, ptr @process_negotiation_response._entry.308, ptr @process_negotiation_response._entry.312, ptr @process_negotiation_response._entry.316, ptr @process_negotiation_response._entry.320, ptr @process_negotiation_response._entry.324, ptr @process_negotiation_response._entry.328, ptr @process_negotiation_response._entry_ptr, ptr @process_negotiation_response._entry_ptr.310, ptr @process_negotiation_response._entry_ptr.314, ptr @process_negotiation_response._entry_ptr.318, ptr @process_negotiation_response._entry_ptr.322, ptr @process_negotiation_response._entry_ptr.326, ptr @process_negotiation_response._entry_ptr.330, ptr @recv_done._entry, ptr @recv_done._entry.294, ptr @recv_done._entry.298, ptr @recv_done._entry.302, ptr @recv_done._entry_ptr, ptr @recv_done._entry_ptr.296, ptr @recv_done._entry_ptr.300, ptr @recv_done._entry_ptr.304, ptr @register_mr_done._entry, ptr @register_mr_done._entry_ptr, ptr @send_done._entry, ptr @send_done._entry.283, ptr @send_done._entry_ptr, ptr @send_done._entry_ptr.285, ptr @smbd_conn_upcall._entry, ptr @smbd_conn_upcall._entry.240, ptr @smbd_conn_upcall._entry.244, ptr @smbd_conn_upcall._entry_ptr, ptr @smbd_conn_upcall._entry_ptr.242, ptr @smbd_conn_upcall._entry_ptr.246, ptr @smbd_create_id._entry, ptr @smbd_create_id._entry.216, ptr @smbd_create_id._entry.220, ptr @smbd_create_id._entry.224, ptr @smbd_create_id._entry.228, ptr @smbd_create_id._entry.232, ptr @smbd_create_id._entry.235, ptr @smbd_create_id._entry_ptr, ptr @smbd_create_id._entry_ptr.218, ptr @smbd_create_id._entry_ptr.222, ptr @smbd_create_id._entry_ptr.226, ptr @smbd_create_id._entry_ptr.230, ptr @smbd_create_id._entry_ptr.233, ptr @smbd_create_id._entry_ptr.237, ptr @smbd_deregister_mr._entry, ptr @smbd_deregister_mr._entry_ptr, ptr @smbd_destroy._entry, ptr @smbd_destroy._entry.12, ptr @smbd_destroy._entry.16, ptr @smbd_destroy._entry.20, ptr @smbd_destroy._entry.24, ptr @smbd_destroy._entry.28, ptr @smbd_destroy._entry.32, ptr @smbd_destroy._entry.36, ptr @smbd_destroy._entry.4, ptr @smbd_destroy._entry.8, ptr @smbd_destroy._entry_ptr, ptr @smbd_destroy._entry_ptr.10, ptr @smbd_destroy._entry_ptr.14, ptr @smbd_destroy._entry_ptr.18, ptr @smbd_destroy._entry_ptr.22, ptr @smbd_destroy._entry_ptr.26, ptr @smbd_destroy._entry_ptr.30, ptr @smbd_destroy._entry_ptr.34, ptr @smbd_destroy._entry_ptr.38, ptr @smbd_destroy._entry_ptr.6, ptr @smbd_ia_open._entry, ptr @smbd_ia_open._entry.207, ptr @smbd_ia_open._entry.211, ptr @smbd_ia_open._entry_ptr, ptr @smbd_ia_open._entry_ptr.209, ptr @smbd_ia_open._entry_ptr.213, ptr @smbd_mr_recovery_work._entry, ptr @smbd_mr_recovery_work._entry.354, ptr @smbd_mr_recovery_work._entry_ptr, ptr @smbd_mr_recovery_work._entry_ptr.355, ptr @smbd_negotiate._entry, ptr @smbd_negotiate._entry.333, ptr @smbd_negotiate._entry_ptr, ptr @smbd_negotiate._entry_ptr.335, ptr @smbd_post_recv._entry, ptr @smbd_post_recv._entry_ptr, ptr @smbd_post_send._entry, ptr @smbd_post_send._entry.278, ptr @smbd_post_send._entry_ptr, ptr @smbd_post_send._entry_ptr.280, ptr @smbd_post_send_credits._entry, ptr @smbd_post_send_credits._entry.288, ptr @smbd_post_send_credits._entry_ptr, ptr @smbd_post_send_credits._entry_ptr.290, ptr @smbd_post_send_data._entry, ptr @smbd_post_send_data._entry_ptr, ptr @smbd_post_send_negotiate_req._entry, ptr @smbd_post_send_negotiate_req._entry.338, ptr @smbd_post_send_negotiate_req._entry_ptr, ptr @smbd_post_send_negotiate_req._entry_ptr.339, ptr @smbd_post_send_sgl._entry, ptr @smbd_post_send_sgl._entry.267, ptr @smbd_post_send_sgl._entry.271, ptr @smbd_post_send_sgl._entry_ptr, ptr @smbd_post_send_sgl._entry_ptr.269, ptr @smbd_post_send_sgl._entry_ptr.273, ptr @smbd_qp_async_error_upcall._entry, ptr @smbd_qp_async_error_upcall._entry_ptr, ptr @smbd_reconnect._entry, ptr @smbd_reconnect._entry.41, ptr @smbd_reconnect._entry.44, ptr @smbd_reconnect._entry.48, ptr @smbd_reconnect._entry.52, ptr @smbd_reconnect._entry_ptr, ptr @smbd_reconnect._entry_ptr.42, ptr @smbd_reconnect._entry_ptr.46, ptr @smbd_reconnect._entry_ptr.50, ptr @smbd_reconnect._entry_ptr.54, ptr @smbd_recv._entry, ptr @smbd_recv._entry.57, ptr @smbd_recv._entry_ptr, ptr @smbd_recv._entry_ptr.59, ptr @smbd_recv_buf._entry, ptr @smbd_recv_buf._entry.358, ptr @smbd_recv_buf._entry.362, ptr @smbd_recv_buf._entry.366, ptr @smbd_recv_buf._entry.370, ptr @smbd_recv_buf._entry.374, ptr @smbd_recv_buf._entry.378, ptr @smbd_recv_buf._entry_ptr, ptr @smbd_recv_buf._entry_ptr.360, ptr @smbd_recv_buf._entry_ptr.364, ptr @smbd_recv_buf._entry_ptr.368, ptr @smbd_recv_buf._entry_ptr.372, ptr @smbd_recv_buf._entry_ptr.376, ptr @smbd_recv_buf._entry_ptr.380, ptr @smbd_recv_page._entry, ptr @smbd_recv_page._entry_ptr, ptr @smbd_register_mr._entry, ptr @smbd_register_mr._entry.101, ptr @smbd_register_mr._entry.105, ptr @smbd_register_mr._entry.109, ptr @smbd_register_mr._entry.113, ptr @smbd_register_mr._entry.117, ptr @smbd_register_mr._entry_ptr, ptr @smbd_register_mr._entry_ptr.103, ptr @smbd_register_mr._entry_ptr.107, ptr @smbd_register_mr._entry_ptr.111, ptr @smbd_register_mr._entry_ptr.115, ptr @smbd_register_mr._entry_ptr.119, ptr @smbd_send._entry, ptr @smbd_send._entry.62, ptr @smbd_send._entry.69, ptr @smbd_send._entry.73, ptr @smbd_send._entry.77, ptr @smbd_send._entry.81, ptr @smbd_send._entry.85, ptr @smbd_send._entry.88, ptr @smbd_send._entry.92, ptr @smbd_send._entry.96, ptr @smbd_send._entry_ptr, ptr @smbd_send._entry_ptr.64, ptr @smbd_send._entry_ptr.71, ptr @smbd_send._entry_ptr.75, ptr @smbd_send._entry_ptr.79, ptr @smbd_send._entry_ptr.83, ptr @smbd_send._entry_ptr.86, ptr @smbd_send._entry_ptr.90, ptr @smbd_send._entry_ptr.94, ptr @smbd_send._entry_ptr.98, ptr @smbd_receive_credit_max, ptr @smbd_send_credit_target, ptr @smbd_max_send_size, ptr @smbd_max_fragmented_recv_size, ptr @smbd_max_receive_size, ptr @smbd_keep_alive_interval, ptr @smbd_max_frmr_depth, ptr @rdma_readwrite_threshold, ptr @smbd_logging_class, ptr @smbd_logging_level, ptr @smbd_destroy._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smbd_destroy._rs.3, ptr @.str.5, ptr @smbd_destroy._rs.7, ptr @.str.9, ptr @smbd_destroy._rs.11, ptr @.str.13, ptr @smbd_destroy._rs.15, ptr @.str.17, ptr @smbd_destroy._rs.19, ptr @.str.21, ptr @smbd_destroy._rs.23, ptr @.str.25, ptr @smbd_destroy._rs.27, ptr @.str.29, ptr @smbd_destroy._rs.31, ptr @.str.33, ptr @smbd_destroy._rs.35, ptr @.str.37, ptr @smbd_reconnect._rs, ptr @.str.39, ptr @smbd_reconnect._rs.40, ptr @smbd_reconnect._rs.43, ptr @.str.45, ptr @smbd_reconnect._rs.47, ptr @.str.49, ptr @smbd_reconnect._rs.51, ptr @.str.53, ptr @smbd_recv._rs, ptr @.str.55, ptr @smbd_recv._rs.56, ptr @.str.58, ptr @smbd_send._rs, ptr @.str.60, ptr @smbd_send._rs.61, ptr @.str.63, ptr @smbd_send._rs.65, ptr @.str.66, ptr @.str.67, ptr @smbd_send._rs.68, ptr @.str.70, ptr @smbd_send._rs.72, ptr @.str.74, ptr @smbd_send._rs.76, ptr @.str.78, ptr @smbd_send._rs.80, ptr @.str.82, ptr @smbd_send._rs.84, ptr @smbd_send._rs.87, ptr @.str.89, ptr @smbd_send._rs.91, ptr @.str.93, ptr @smbd_send._rs.95, ptr @.str.97, ptr @smbd_register_mr._rs, ptr @.str.99, ptr @smbd_register_mr._rs.100, ptr @.str.102, ptr @smbd_register_mr._rs.104, ptr @.str.106, ptr @smbd_register_mr._rs.108, ptr @.str.110, ptr @smbd_register_mr._rs.112, ptr @.str.114, ptr @smbd_register_mr._rs.116, ptr @.str.118, ptr @smbd_deregister_mr._rs, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @_smbd_get_connection._rs, ptr @.str.123, ptr @_smbd_get_connection._rs.124, ptr @.str.126, ptr @_smbd_get_connection._rs.128, ptr @.str.130, ptr @_smbd_get_connection._rs.132, ptr @.str.134, ptr @_smbd_get_connection._rs.136, ptr @.str.138, ptr @_smbd_get_connection._rs.140, ptr @.str.142, ptr @_smbd_get_connection._rs.144, ptr @_smbd_get_connection._rs.147, ptr @.str.149, ptr @_smbd_get_connection._rs.151, ptr @.str.153, ptr @_smbd_get_connection._rs.155, ptr @.str.157, ptr @_smbd_get_connection.__key, ptr @.str.159, ptr @_smbd_get_connection.__key.160, ptr @.str.161, ptr @_smbd_get_connection.__key.162, ptr @.str.163, ptr @_smbd_get_connection._rs.164, ptr @.str.166, ptr @_smbd_get_connection._rs.168, ptr @.str.170, ptr @_smbd_get_connection._rs.172, ptr @.str.174, ptr @_smbd_get_connection._rs.176, ptr @.str.178, ptr @_smbd_get_connection.__key.180, ptr @.str.181, ptr @_smbd_get_connection.__key.182, ptr @.str.183, ptr @_smbd_get_connection.__key.184, ptr @.str.185, ptr @_smbd_get_connection.__key.186, ptr @.str.187, ptr @_smbd_get_connection.__key.188, ptr @.str.189, ptr @_smbd_get_connection.__key.190, ptr @.str.191, ptr @_smbd_get_connection.__key.192, ptr @.str.193, ptr @_smbd_get_connection.__key.194, ptr @.str.195, ptr @_smbd_get_connection._rs.196, ptr @.str.198, ptr @_smbd_get_connection._rs.200, ptr @.str.202, ptr @_smbd_get_connection.__key.204, ptr @smbd_ia_open._rs, ptr @.str.205, ptr @smbd_ia_open._rs.206, ptr @.str.208, ptr @smbd_ia_open._rs.210, ptr @.str.212, ptr @smbd_create_id._rs, ptr @.str.214, ptr @smbd_create_id._rs.215, ptr @.str.217, ptr @smbd_create_id._rs.219, ptr @.str.221, ptr @smbd_create_id._rs.223, ptr @.str.225, ptr @smbd_create_id._rs.227, ptr @.str.229, ptr @smbd_create_id._rs.231, ptr @smbd_create_id._rs.234, ptr @.str.236, ptr @smbd_conn_upcall._rs, ptr @.str.238, ptr @smbd_conn_upcall._rs.239, ptr @.str.241, ptr @smbd_conn_upcall._rs.243, ptr @.str.245, ptr @smbd_qp_async_error_upcall._rs, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @allocate_caches_and_workqueue._rs, ptr @.str.252, ptr @allocate_receive_buffers.__key, ptr @.str.253, ptr @allocate_receive_buffers.__key.254, ptr @.str.255, ptr @allocate_receive_buffers.__key.256, ptr @.str.257, ptr @allocate_receive_buffers.__key.258, ptr @.str.259, ptr @idle_connection_timer._rs, ptr @.str.260, ptr @idle_connection_timer._rs.261, ptr @.str.263, ptr @smbd_post_send_sgl._rs, ptr @.str.265, ptr @smbd_post_send_sgl._rs.266, ptr @.str.268, ptr @smbd_post_send_sgl._rs.270, ptr @.str.272, ptr @.str.274, ptr @.str.275, ptr @smbd_post_send._rs, ptr @.str.276, ptr @smbd_post_send._rs.277, ptr @.str.279, ptr @send_done._rs, ptr @.str.281, ptr @send_done._rs.282, ptr @.str.284, ptr @smbd_post_send_credits._rs, ptr @.str.286, ptr @smbd_post_send_credits._rs.287, ptr @.str.289, ptr @smbd_post_recv._rs, ptr @.str.291, ptr @recv_done._rs, ptr @.str.292, ptr @recv_done._rs.293, ptr @.str.295, ptr @recv_done._rs.297, ptr @.str.299, ptr @recv_done._rs.301, ptr @.str.303, ptr @dump_smbd_negotiate_resp._rs, ptr @.str.305, ptr @process_negotiation_response._rs, ptr @.str.306, ptr @process_negotiation_response._rs.307, ptr @.str.309, ptr @process_negotiation_response._rs.311, ptr @.str.313, ptr @process_negotiation_response._rs.315, ptr @.str.317, ptr @process_negotiation_response._rs.319, ptr @.str.321, ptr @process_negotiation_response._rs.323, ptr @.str.325, ptr @process_negotiation_response._rs.327, ptr @.str.329, ptr @smbd_negotiate._rs, ptr @.str.331, ptr @smbd_negotiate._rs.332, ptr @.str.334, ptr @smbd_post_send_negotiate_req._rs, ptr @.str.336, ptr @smbd_post_send_negotiate_req._rs.337, ptr @allocate_mr_list.__key, ptr @.str.340, ptr @allocate_mr_list.__key.341, ptr @.str.342, ptr @allocate_mr_list.__key.343, ptr @.str.344, ptr @allocate_mr_list._rs, ptr @.str.345, ptr @allocate_mr_list._rs.346, ptr @.str.348, ptr @allocate_mr_list.__key.350, ptr @.str.351, ptr @smbd_mr_recovery_work._rs, ptr @.str.352, ptr @smbd_mr_recovery_work._rs.353, ptr @smbd_recv_buf._rs, ptr @.str.356, ptr @smbd_recv_buf._rs.357, ptr @.str.359, ptr @smbd_recv_buf._rs.361, ptr @.str.363, ptr @smbd_recv_buf._rs.365, ptr @.str.367, ptr @smbd_recv_buf._rs.369, ptr @.str.371, ptr @smbd_recv_buf._rs.373, ptr @.str.375, ptr @smbd_recv_buf._rs.377, ptr @.str.379, ptr @smbd_recv_page._rs, ptr @.str.381, ptr @smbd_post_send_data._rs, ptr @.str.382, ptr @get_mr._rs, ptr @.str.383, ptr @get_mr._rs.384, ptr @.str.386, ptr @register_mr_done._rs, ptr @.str.388, ptr @local_inv_done._rs, ptr @.str.389, ptr @init_completion.__key, ptr @.str.390], section "llvm.metadata"
@0 = internal global [388 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_receive_credit_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send_credit_target to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_max_send_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_max_fragmented_recv_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_max_receive_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_keep_alive_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_max_frmr_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_readwrite_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_logging_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_logging_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._rs.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_destroy._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_reconnect._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.87 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.91 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._rs.95 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_send._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._rs.100 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._rs.104 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._rs.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._rs.112 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._rs.116 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_register_mr._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_deregister_mr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_deregister_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.124 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.128 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.132 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.136 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.140 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.144 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.147 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.151 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.155 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.164 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.168 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.172 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.176 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.188 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.196 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._rs.200 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_smbd_get_connection.__key.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_ia_open._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_ia_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_ia_open._rs.206 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_ia_open._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_ia_open._rs.210 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_ia_open._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._rs.215 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._rs.219 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._rs.223 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._rs.227 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._rs.231 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._rs.234 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_create_id._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_conn_upcall._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_conn_upcall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_conn_upcall._rs.239 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_conn_upcall._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_conn_upcall._rs.243 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_conn_upcall._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_qp_async_error_upcall._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_qp_async_error_upcall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_caches_and_workqueue._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_caches_and_workqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_receive_buffers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_receive_buffers.__key.254 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_receive_buffers.__key.256 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_receive_buffers.__key.258 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_connection_timer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_connection_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_connection_timer._rs.261 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_connection_timer._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_sgl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_sgl._rs.266 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_sgl._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_sgl._rs.270 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_sgl._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send._rs.277 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_done._rs.282 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_done._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_credits._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_credits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_credits._rs.287 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_credits._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_recv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._rs.293 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._rs.297 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._rs.301 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_smbd_negotiate_resp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_smbd_negotiate_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 223, i32 256, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._rs.307 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._rs.311 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._rs.315 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._rs.319 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._rs.323 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._rs.327 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_negotiation_response._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_negotiate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_negotiate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_negotiate._rs.332 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_negotiate._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_negotiate_req._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_negotiate_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_negotiate_req._rs.337 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_negotiate_req._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_mr_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_mr_list.__key.341 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_mr_list.__key.343 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_mr_list._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_mr_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_mr_list._rs.346 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_mr_list._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_mr_list.__key.350 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_mr_recovery_work._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_mr_recovery_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_mr_recovery_work._rs.353 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_mr_recovery_work._entry.354 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._rs.357 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._entry.358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._rs.361 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._rs.365 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._rs.369 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._entry.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._rs.373 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._rs.377 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_buf._entry.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_recv_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_data._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbd_post_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mr._rs.384 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_mr._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mr_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mr_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_inv_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_inv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smbd_destroy(ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry178 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry277 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smbd_conn = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 58
  %0 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smbd_conn, align 4
  %tobool.not = icmp eq ptr %1, null
  %2 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %do.body17

do.body:                                          ; preds = %entry
  br i1 %cmp.not, label %lor.lhs.false, label %do.body.do.body4_crit_edge

do.body.do.body4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

lor.lhs.false:                                    ; preds = %do.body
  %3 = load i32, ptr @smbd_logging_class, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup354_crit_edge, label %lor.lhs.false.do.body4_crit_edge

lor.lhs.false.do.body4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

lor.lhs.false.cleanup354_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup354

do.body4:                                         ; preds = %lor.lhs.false.do.body4_crit_edge, %do.body.do.body4_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %do.body4.cleanup354_crit_edge, label %do.end

do.body4.cleanup354_crit_edge:                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup354

do.end:                                           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1329) #13
  br label %cleanup354

do.body17:                                        ; preds = %entry
  br i1 %cmp.not, label %lor.lhs.false19, label %do.body17.do.body24_crit_edge

do.body17.do.body24_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

lor.lhs.false19:                                  ; preds = %do.body17
  %4 = load i32, ptr @smbd_logging_class, align 4
  %and20 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false19.do.end40_crit_edge, label %lor.lhs.false19.do.body24_crit_edge

lor.lhs.false19.do.body24_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

lor.lhs.false19.do.end40_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.body24:                                        ; preds = %lor.lhs.false19.do.body24_crit_edge, %do.body17.do.body24_crit_edge
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.3, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body24.do.end40_crit_edge, label %do.end30

do.body24.do.end40_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1333) #13
  br label %do.end40

do.end40:                                         ; preds = %do.end30, %do.body24.do.end40_crit_edge, %lor.lhs.false19.do.end40_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp41.not = icmp eq i32 %6, 5
  br i1 %cmp41.not, label %do.end40.do.body92_crit_edge, label %if.then42

do.end40.do.body92_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

if.then42:                                        ; preds = %do.end40
  %7 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smbd_conn, align 4
  %id = getelementptr inbounds %struct.smbd_connection, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %id, align 4
  %call44 = tail call i32 @rdma_disconnect(ptr noundef %10) #10
  %11 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp46.not = icmp eq i32 %11, 0
  br i1 %cmp46.not, label %lor.lhs.false47, label %if.then42.do.body52_crit_edge

if.then42.do.body52_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

lor.lhs.false47:                                  ; preds = %if.then42
  %12 = load i32, ptr @smbd_logging_class, align 4
  %and48 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false47.do.end68_crit_edge, label %lor.lhs.false47.do.body52_crit_edge

lor.lhs.false47.do.body52_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

lor.lhs.false47.do.end68_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.body52:                                        ; preds = %lor.lhs.false47.do.body52_crit_edge, %if.then42.do.body52_crit_edge
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.7, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body52.do.end68_crit_edge, label %do.end58

do.body52.do.end68_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1336) #13
  br label %do.end68

do.end68:                                         ; preds = %do.end58, %do.body52.do.end68_crit_edge, %lor.lhs.false47.do.end68_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1339) #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp76 = icmp eq i32 %14, 5
  br i1 %cmp76, label %do.end68.do.body92_crit_edge, label %if.then77

do.end68.do.body92_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

if.then77:                                        ; preds = %do.end68
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %disconn_wait = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 10
  %call79428 = call i32 @prepare_to_wait_event(ptr noundef %disconn_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp81429 = icmp eq i32 %17, 5
  br i1 %cmp81429, label %if.then77.for.end_crit_edge, label %if.then77.if.end83_crit_edge

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  br label %if.end83

if.then77.for.end_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end83:                                         ; preds = %cleanup.if.end83_crit_edge, %if.then77.if.end83_crit_edge
  %call79430 = phi i32 [ %call79, %cleanup.if.end83_crit_edge ], [ %call79428, %if.then77.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79430)
  %tobool84.not = icmp eq i32 %call79430, 0
  br i1 %tobool84.not, label %cleanup, label %if.end83.__out_crit_edge

if.end83.__out_crit_edge:                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end83
  call void @schedule() #10
  %call79 = call i32 @prepare_to_wait_event(ptr noundef %disconn_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 8
  %cmp81 = icmp eq i32 %19, 5
  br i1 %cmp81, label %cleanup.for.end_crit_edge, label %cleanup.if.end83_crit_edge

cleanup.if.end83_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then77.for.end_crit_edge
  call void @finish_wait(ptr noundef %disconn_wait, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end83.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.body92

do.body92:                                        ; preds = %__out, %do.end68.do.body92_crit_edge, %do.end40.do.body92_crit_edge
  %20 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp93.not = icmp eq i32 %20, 0
  br i1 %cmp93.not, label %lor.lhs.false94, label %do.body92.do.body99_crit_edge

do.body92.do.body99_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

lor.lhs.false94:                                  ; preds = %do.body92
  %21 = load i32, ptr @smbd_logging_class, align 4
  %and95 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %lor.lhs.false94.do.end115_crit_edge, label %lor.lhs.false94.do.body99_crit_edge

lor.lhs.false94.do.body99_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

lor.lhs.false94.do.end115_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end115

do.body99:                                        ; preds = %lor.lhs.false94.do.body99_crit_edge, %do.body92.do.body99_crit_edge
  %call100 = call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.11, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.body99.do.end115_crit_edge, label %do.end105

do.body99.do.end115_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end115

do.end105:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1342) #13
  br label %do.end115

do.end115:                                        ; preds = %do.end105, %do.body99.do.end115_crit_edge, %lor.lhs.false94.do.end115_crit_edge
  %id116 = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %id116 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %id116, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qp, align 4
  call void @ib_drain_qp(ptr noundef %25) #10
  %26 = ptrtoint ptr %id116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %id116, align 4
  call void @rdma_destroy_qp(ptr noundef %27) #10
  %28 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp119.not = icmp eq i32 %28, 0
  br i1 %cmp119.not, label %lor.lhs.false120, label %do.end115.do.body125_crit_edge

do.end115.do.body125_crit_edge:                   ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body125

lor.lhs.false120:                                 ; preds = %do.end115
  %29 = load i32, ptr @smbd_logging_class, align 4
  %and121 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %lor.lhs.false120.do.end141_crit_edge, label %lor.lhs.false120.do.body125_crit_edge

lor.lhs.false120.do.body125_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body125

lor.lhs.false120.do.end141_crit_edge:             ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

do.body125:                                       ; preds = %lor.lhs.false120.do.body125_crit_edge, %do.end115.do.body125_crit_edge
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.15, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body125.do.end141_crit_edge, label %do.end131

do.body125.do.end141_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end141

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1346) #13
  br label %do.end141

do.end141:                                        ; preds = %do.end131, %do.body125.do.end141_crit_edge, %lor.lhs.false120.do.end141_crit_edge
  %idle_timer_work = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 62
  %call142 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_timer_work) #10
  %30 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp144.not = icmp eq i32 %30, 0
  br i1 %cmp144.not, label %lor.lhs.false145, label %do.end141.do.body150_crit_edge

do.end141.do.body150_crit_edge:                   ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body150

lor.lhs.false145:                                 ; preds = %do.end141
  %31 = load i32, ptr @smbd_logging_class, align 4
  %and146 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %lor.lhs.false145.do.body168_crit_edge, label %lor.lhs.false145.do.body150_crit_edge

lor.lhs.false145.do.body150_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body150

lor.lhs.false145.do.body168_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body168

do.body150:                                       ; preds = %lor.lhs.false145.do.body150_crit_edge, %do.end141.do.body150_crit_edge
  %call151 = call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.19, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %do.body150.do.body168_crit_edge, label %do.end156

do.body150.do.body168_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body168

do.end156:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #12
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1349) #13
  br label %do.body168

do.body168:                                       ; preds = %do.end156, %do.body150.do.body168_crit_edge, %lor.lhs.false145.do.body168_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1351) #10
  %send_pending = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 42
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %32 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %send_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp175 = icmp eq i32 %33, 0
  br i1 %cmp175, label %do.body168.do.body197_crit_edge, label %if.end177

do.body168.do.body197_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body197

if.end177:                                        ; preds = %do.body168
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry178) #10
  %34 = call ptr @memset(ptr %__wq_entry178, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry178, i32 noundef 0) #10
  %wait_send_pending = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 43
  %call182431 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry178, i32 noundef 2) #10
  %call.i.i411432 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %35 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %send_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp185433 = icmp eq i32 %36, 0
  br i1 %cmp185433, label %if.end177.for.end191_crit_edge, label %if.end177.cleanup188_crit_edge

if.end177.cleanup188_crit_edge:                   ; preds = %if.end177
  br label %cleanup188

if.end177.for.end191_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end191

cleanup188:                                       ; preds = %cleanup188.cleanup188_crit_edge, %if.end177.cleanup188_crit_edge
  call void @schedule() #10
  %call182 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry178, i32 noundef 2) #10
  %call.i.i411 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %37 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %send_pending, align 4
  %cmp185 = icmp eq i32 %38, 0
  br i1 %cmp185, label %cleanup188.for.end191_crit_edge, label %cleanup188.cleanup188_crit_edge

cleanup188.cleanup188_crit_edge:                  ; preds = %cleanup188
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

cleanup188.for.end191_crit_edge:                  ; preds = %cleanup188
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end191

for.end191:                                       ; preds = %cleanup188.for.end191_crit_edge, %if.end177.for.end191_crit_edge
  call void @finish_wait(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry178) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry178) #10
  br label %do.body197

do.body197:                                       ; preds = %for.end191, %do.body168.do.body197_crit_edge
  %39 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp198.not = icmp eq i32 %39, 0
  br i1 %cmp198.not, label %lor.lhs.false199, label %do.body197.do.body204_crit_edge

do.body197.do.body204_crit_edge:                  ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body204

lor.lhs.false199:                                 ; preds = %do.body197
  %40 = load i32, ptr @smbd_logging_class, align 4
  %and200 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %lor.lhs.false199.do.end220_crit_edge, label %lor.lhs.false199.do.body204_crit_edge

lor.lhs.false199.do.body204_crit_edge:            ; preds = %lor.lhs.false199
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body204

lor.lhs.false199.do.end220_crit_edge:             ; preds = %lor.lhs.false199
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end220

do.body204:                                       ; preds = %lor.lhs.false199.do.body204_crit_edge, %do.body197.do.body204_crit_edge
  %call205 = call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.23, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %do.body204.do.end220_crit_edge, label %do.end210

do.body204.do.end220_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end220

do.end210:                                        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #12
  %call212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1354) #13
  br label %do.end220

do.end220:                                        ; preds = %do.end210, %do.body204.do.end220_crit_edge, %lor.lhs.false199.do.end220_crit_edge
  %reassembly_queue_lock = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 53
  %call227435 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reassembly_queue_lock) #10
  %reassembly_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 52
  %41 = ptrtoint ptr %reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %reassembly_queue.i, align 4
  %cmp.i.not.i436 = icmp eq ptr %42, %reassembly_queue.i
  %add.ptr.i437 = getelementptr i8, ptr %42, i32 -28
  %tobool233.not426438 = icmp eq ptr %add.ptr.i437, null
  %tobool233.not439 = or i1 %cmp.i.not.i436, %tobool233.not426438
  br i1 %tobool233.not439, label %do.end220.if.else_crit_edge, label %do.end220.if.then234_crit_edge

do.end220.if.then234_crit_edge:                   ; preds = %do.end220
  br label %if.then234

do.end220.if.else_crit_edge:                      ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then234:                                       ; preds = %list_del.exit.if.then234_crit_edge, %do.end220.if.then234_crit_edge
  %add.ptr.i441 = phi ptr [ %add.ptr.i, %list_del.exit.if.then234_crit_edge ], [ %add.ptr.i437, %do.end220.if.then234_crit_edge ]
  %43 = phi ptr [ %53, %list_del.exit.if.then234_crit_edge ], [ %42, %do.end220.if.then234_crit_edge ]
  %call227440 = phi i32 [ %call227, %list_del.exit.if.then234_crit_edge ], [ %call227435, %do.end220.if.then234_crit_edge ]
  %call.i.i413 = call zeroext i1 @__list_del_entry_valid(ptr noundef %43) #10
  br i1 %call.i.i413, label %if.end.i.i, label %if.then234.list_del.exit_crit_edge

if.then234.list_del.exit_crit_edge:               ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then234.list_del.exit_crit_edge
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reassembly_queue_lock, i32 noundef %call227440) #10
  call fastcc void @put_receive_buffer(ptr noundef %1, ptr noundef nonnull %add.ptr.i441)
  %call227 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reassembly_queue_lock) #10
  %52 = ptrtoint ptr %reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %reassembly_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %53, %reassembly_queue.i
  %add.ptr.i = getelementptr i8, ptr %53, i32 -28
  %tobool233.not426 = icmp eq ptr %add.ptr.i, null
  %tobool233.not = or i1 %cmp.i.not.i, %tobool233.not426
  br i1 %tobool233.not, label %list_del.exit.if.else_crit_edge, label %list_del.exit.if.then234_crit_edge

list_del.exit.if.then234_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then234

list_del.exit.if.else_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %list_del.exit.if.else_crit_edge, %do.end220.if.else_crit_edge
  %call227.lcssa = phi i32 [ %call227435, %do.end220.if.else_crit_edge ], [ %call227, %list_del.exit.if.else_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reassembly_queue_lock, i32 noundef %call227.lcssa) #10
  %reassembly_data_length = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 55
  %54 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %reassembly_data_length, align 8
  %55 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp242.not = icmp eq i32 %55, 0
  br i1 %cmp242.not, label %lor.lhs.false244, label %if.else.do.body249_crit_edge

if.else.do.body249_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body249

lor.lhs.false244:                                 ; preds = %if.else
  %56 = load i32, ptr @smbd_logging_class, align 4
  %and245 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %lor.lhs.false244.do.body267_crit_edge, label %lor.lhs.false244.do.body249_crit_edge

lor.lhs.false244.do.body249_crit_edge:            ; preds = %lor.lhs.false244
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body249

lor.lhs.false244.do.body267_crit_edge:            ; preds = %lor.lhs.false244
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body267

do.body249:                                       ; preds = %lor.lhs.false244.do.body249_crit_edge, %if.else.do.body249_crit_edge
  %call250 = call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.27, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %do.body249.do.body267_crit_edge, label %do.end255

do.body249.do.body267_crit_edge:                  ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body267

do.end255:                                        ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #12
  %call257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1369) #13
  br label %do.body267

do.body267:                                       ; preds = %do.end255, %do.body249.do.body267_crit_edge, %lor.lhs.false244.do.body267_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1372) #10
  %count_receive_queue = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 46
  %57 = ptrtoint ptr %count_receive_queue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_receive_queue, align 4
  %count_empty_packet_queue = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 49
  %59 = ptrtoint ptr %count_empty_packet_queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count_empty_packet_queue, align 4
  %add = add i32 %60, %58
  %receive_credit_max = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 17
  %61 = ptrtoint ptr %receive_credit_max to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %receive_credit_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %62)
  %cmp273 = icmp eq i32 %add, %62
  br i1 %cmp273, label %do.body267.do.end298_crit_edge, label %if.end276

do.body267.do.end298_crit_edge:                   ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end298

if.end276:                                        ; preds = %do.body267
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry277) #10
  %63 = call ptr @memset(ptr %__wq_entry277, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry277, i32 noundef 0) #10
  %wait_receive_queues = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 51
  %call281444 = call i32 @prepare_to_wait_event(ptr noundef %wait_receive_queues, ptr noundef nonnull %__wq_entry277, i32 noundef 2) #10
  %64 = ptrtoint ptr %count_receive_queue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_receive_queue, align 4
  %66 = ptrtoint ptr %count_empty_packet_queue to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_empty_packet_queue, align 4
  %add284445 = add i32 %67, %65
  %68 = ptrtoint ptr %receive_credit_max to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %receive_credit_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add284445, i32 %69)
  %cmp286446 = icmp eq i32 %add284445, %69
  br i1 %cmp286446, label %if.end276.for.end293_crit_edge, label %if.end276.cleanup290_crit_edge

if.end276.cleanup290_crit_edge:                   ; preds = %if.end276
  br label %cleanup290

if.end276.for.end293_crit_edge:                   ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end293

cleanup290:                                       ; preds = %cleanup290.cleanup290_crit_edge, %if.end276.cleanup290_crit_edge
  call void @schedule() #10
  %call281 = call i32 @prepare_to_wait_event(ptr noundef %wait_receive_queues, ptr noundef nonnull %__wq_entry277, i32 noundef 2) #10
  %70 = ptrtoint ptr %count_receive_queue to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count_receive_queue, align 4
  %72 = ptrtoint ptr %count_empty_packet_queue to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count_empty_packet_queue, align 4
  %add284 = add i32 %73, %71
  %74 = ptrtoint ptr %receive_credit_max to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %receive_credit_max, align 8
  %cmp286 = icmp eq i32 %add284, %75
  br i1 %cmp286, label %cleanup290.for.end293_crit_edge, label %cleanup290.cleanup290_crit_edge

cleanup290.cleanup290_crit_edge:                  ; preds = %cleanup290
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup290

cleanup290.for.end293_crit_edge:                  ; preds = %cleanup290
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end293

for.end293:                                       ; preds = %cleanup290.for.end293_crit_edge, %if.end276.for.end293_crit_edge
  call void @finish_wait(ptr noundef %wait_receive_queues, ptr noundef nonnull %__wq_entry277) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry277) #10
  br label %do.end298

do.end298:                                        ; preds = %for.end293, %do.body267.do.end298_crit_edge
  call fastcc void @destroy_receive_buffers(ptr noundef %1)
  %76 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp300.not = icmp eq i32 %76, 0
  br i1 %cmp300.not, label %lor.lhs.false302, label %do.end298.do.body307_crit_edge

do.end298.do.body307_crit_edge:                   ; preds = %do.end298
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body307

lor.lhs.false302:                                 ; preds = %do.end298
  %77 = load i32, ptr @smbd_logging_class, align 4
  %and303 = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %lor.lhs.false302.do.end323_crit_edge, label %lor.lhs.false302.do.body307_crit_edge

lor.lhs.false302.do.body307_crit_edge:            ; preds = %lor.lhs.false302
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body307

lor.lhs.false302.do.end323_crit_edge:             ; preds = %lor.lhs.false302
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end323

do.body307:                                       ; preds = %lor.lhs.false302.do.body307_crit_edge, %do.end298.do.body307_crit_edge
  %call308 = call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.31, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %do.body307.do.end323_crit_edge, label %do.end313

do.body307.do.end323_crit_edge:                   ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end323

do.end313:                                        ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #12
  %call315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1382) #13
  br label %do.end323

do.end323:                                        ; preds = %do.end313, %do.body307.do.end323_crit_edge, %lor.lhs.false302.do.end323_crit_edge
  %wait_mr = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 39
  call void @__wake_up(ptr noundef %wait_mr, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  %mr_used_count = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 38
  %call.i.i412448 = call zeroext i1 @__kasan_check_read(ptr noundef %mr_used_count, i32 noundef 4) #10
  %78 = ptrtoint ptr %mr_used_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %mr_used_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool325.not449 = icmp eq i32 %79, 0
  br i1 %tobool325.not449, label %do.end323.while.end_crit_edge, label %while.body.lr.ph

do.end323.while.end_crit_edge:                    ; preds = %do.end323
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end323
  %srv_mutex = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 25
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %srv_mutex) #10
  call void @msleep(i32 noundef 1000) #10
  call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #10
  %call.i.i412 = call zeroext i1 @__kasan_check_read(ptr noundef %mr_used_count, i32 noundef 4) #10
  %80 = ptrtoint ptr %mr_used_count to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %mr_used_count, align 4
  %tobool325.not = icmp eq i32 %81, 0
  br i1 %tobool325.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end323.while.end_crit_edge
  %mr_recovery_work.i = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 40
  %call.i = call zeroext i1 @cancel_work_sync(ptr noundef %mr_recovery_work.i) #10
  %mr_list.i = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 35
  %82 = ptrtoint ptr %mr_list.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mr_list.i, align 8
  %cmp.not32.i = icmp eq ptr %83, %mr_list.i
  br i1 %cmp.not32.i, label %while.end.destroy_mr_list.exit_crit_edge, label %while.end.for.body.i_crit_edge

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

while.end.destroy_mr_list.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_mr_list.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %.pn.in33.i = phi ptr [ %.pn36.i, %if.end.i.for.body.i_crit_edge ], [ %83, %while.end.for.body.i_crit_edge ]
  %mr.035.i = getelementptr i8, ptr %.pn.in33.i, i32 -4
  %84 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn36.i = load ptr, ptr %.pn.in33.i, align 4
  %state.i = getelementptr i8, ptr %.pn.in33.i, i32 8
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp8.i = icmp eq i32 %86, 2
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %id116 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %id116, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %sgl.i = getelementptr i8, ptr %.pn.in33.i, i32 16
  %91 = ptrtoint ptr %sgl.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sgl.i, align 4
  %sgl_count.i = getelementptr i8, ptr %.pn.in33.i, i32 20
  %93 = ptrtoint ptr %sgl_count.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sgl_count.i, align 8
  %dir.i = getelementptr i8, ptr %.pn.in33.i, i32 24
  %95 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dir.i, align 4
  %97 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %90, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %98, ptr noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %mr9.i = getelementptr i8, ptr %.pn.in33.i, i32 12
  %99 = ptrtoint ptr %mr9.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mr9.i, align 8
  %call.i.i414 = call i32 @ib_dereg_mr_user(ptr noundef %100, ptr noundef null) #10
  %sgl11.i = getelementptr i8, ptr %.pn.in33.i, i32 16
  %101 = ptrtoint ptr %sgl11.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sgl11.i, align 4
  call void @kfree(ptr noundef %102) #10
  call void @kfree(ptr noundef %mr.035.i) #10
  %cmp.not.i = icmp eq ptr %.pn36.i, %mr_list.i
  br i1 %cmp.not.i, label %if.end.i.destroy_mr_list.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.destroy_mr_list.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_mr_list.exit

destroy_mr_list.exit:                             ; preds = %if.end.i.destroy_mr_list.exit_crit_edge, %while.end.destroy_mr_list.exit_crit_edge
  %send_cq = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 4
  %103 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %send_cq, align 4
  call void @ib_free_cq(ptr noundef %104) #10
  %recv_cq = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 5
  %105 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %recv_cq, align 8
  call void @ib_free_cq(ptr noundef %106) #10
  %pd = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 3
  %107 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pd, align 8
  %call.i415 = call i32 @ib_dealloc_pd_user(ptr noundef %108, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i415)
  %tobool.not.i = icmp eq i32 %call.i415, 0
  br i1 %tobool.not.i, label %destroy_mr_list.exit.ib_dealloc_pd.exit_crit_edge, label %land.rhs.i

destroy_mr_list.exit.ib_dealloc_pd.exit_crit_edge: ; preds = %destroy_mr_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dealloc_pd.exit

land.rhs.i:                                       ; preds = %destroy_mr_list.exit
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_dealloc_pd.exit_crit_edge, label %if.then.i416, !prof !701

land.rhs.i.ib_dealloc_pd.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dealloc_pd.exit

if.then.i416:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.122) #10
  br label %ib_dealloc_pd.exit

ib_dealloc_pd.exit:                               ; preds = %if.then.i416, %land.rhs.i.ib_dealloc_pd.exit_crit_edge, %destroy_mr_list.exit.ib_dealloc_pd.exit_crit_edge
  %109 = ptrtoint ptr %id116 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %id116, align 4
  call void @rdma_destroy_id(ptr noundef %110) #10
  %request_mempool = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 64
  %111 = ptrtoint ptr %request_mempool to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %request_mempool, align 4
  call void @mempool_destroy(ptr noundef %112) #10
  %request_cache = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 63
  %113 = ptrtoint ptr %request_cache to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %request_cache, align 8
  call void @kmem_cache_destroy(ptr noundef %114) #10
  %response_mempool = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 66
  %115 = ptrtoint ptr %response_mempool to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %response_mempool, align 4
  call void @mempool_destroy(ptr noundef %116) #10
  %response_cache = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 65
  %117 = ptrtoint ptr %response_cache to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %response_cache, align 8
  call void @kmem_cache_destroy(ptr noundef %118) #10
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 6, ptr %1, align 8
  %workqueue = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 61
  %120 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %workqueue, align 8
  call void @destroy_workqueue(ptr noundef %121) #10
  %122 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp330.not = icmp eq i32 %122, 0
  br i1 %cmp330.not, label %lor.lhs.false332, label %ib_dealloc_pd.exit.do.body337_crit_edge

ib_dealloc_pd.exit.do.body337_crit_edge:          ; preds = %ib_dealloc_pd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body337

lor.lhs.false332:                                 ; preds = %ib_dealloc_pd.exit
  %123 = load i32, ptr @smbd_logging_class, align 4
  %and333 = and i32 %123, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333)
  %tobool334.not = icmp eq i32 %and333, 0
  br i1 %tobool334.not, label %lor.lhs.false332.do.end353_crit_edge, label %lor.lhs.false332.do.body337_crit_edge

lor.lhs.false332.do.body337_crit_edge:            ; preds = %lor.lhs.false332
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body337

lor.lhs.false332.do.end353_crit_edge:             ; preds = %lor.lhs.false332
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end353

do.body337:                                       ; preds = %lor.lhs.false332.do.body337_crit_edge, %ib_dealloc_pd.exit.do.body337_crit_edge
  %call338 = call i32 @___ratelimit(ptr noundef nonnull @smbd_destroy._rs.35, ptr noundef nonnull @__func__.smbd_destroy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %do.body337.do.end353_crit_edge, label %do.end343

do.body337.do.end353_crit_edge:                   ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end353

do.end343:                                        ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #12
  %call345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.smbd_destroy, i32 noundef 1406) #13
  br label %do.end353

do.end353:                                        ; preds = %do.end343, %do.body337.do.end353_crit_edge, %lor.lhs.false332.do.end353_crit_edge
  call void @kfree(ptr noundef %1) #10
  br label %cleanup354

cleanup354:                                       ; preds = %do.end353, %do.end, %do.body4.cleanup354_crit_edge, %lor.lhs.false.cleanup354_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_receive_buffer(ptr noundef %info, ptr noundef %response) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sge = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 2
  %4 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sge, align 8
  %length = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %conv.i = trunc i64 %5 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %conv.i, i32 noundef %7, i32 noundef 2, i32 noundef 0) #10
  %receive_queue_lock = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 47
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %receive_queue_lock) #10
  %list = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 4
  %receive_queue = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 45
  %prev.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 45, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %11, ptr noundef %receive_queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %receive_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %count_receive_queue = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 46
  %16 = ptrtoint ptr %count_receive_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_receive_queue, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %count_receive_queue, align 4
  %count_put_receive_buffer = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 68
  %18 = ptrtoint ptr %count_put_receive_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count_put_receive_buffer, align 4
  %inc6 = add i32 %19, 1
  store i32 %inc6, ptr %count_put_receive_buffer, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %receive_queue_lock, i32 noundef %call3) #10
  %workqueue = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 61
  %20 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %workqueue, align 8
  %post_send_credits_work = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %post_send_credits_work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_receive_buffers(ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %receive_queue_lock.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 47
  %receive_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 45
  %count_receive_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 46
  %count_get_receive_buffer.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 67
  %response_mempool = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 66
  %call2.i38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %receive_queue_lock.i) #10
  %0 = ptrtoint ptr %receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %receive_queue.i, align 4
  %cmp.i.not.i39 = icmp eq ptr %1, %receive_queue.i
  br i1 %cmp.i.not.i39, label %entry.get_receive_buffer.exit.thread_crit_edge, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  br label %if.then.i

entry.get_receive_buffer.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_receive_buffer.exit.thread

get_receive_buffer.exit.thread:                   ; preds = %while.body.get_receive_buffer.exit.thread_crit_edge, %entry.get_receive_buffer.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i38, %entry.get_receive_buffer.exit.thread_crit_edge ], [ %call2.i, %while.body.get_receive_buffer.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %receive_queue_lock.i, i32 noundef %call2.i.lcssa) #10
  br label %while.cond1.preheader

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %2 = phi ptr [ %20, %while.body.if.then.i_crit_edge ], [ %1, %entry.if.then.i_crit_edge ]
  %call2.i40 = phi i32 [ %call2.i, %while.body.if.then.i_crit_edge ], [ %call2.i38, %entry.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -28
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.get_receive_buffer.exit_crit_edge

if.then.i.get_receive_buffer.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_receive_buffer.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %get_receive_buffer.exit

get_receive_buffer.exit:                          ; preds = %if.end.i.i.i, %if.then.i.get_receive_buffer.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %count_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count_receive_queue.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %count_receive_queue.i, align 4
  %13 = ptrtoint ptr %count_get_receive_buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_get_receive_buffer.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %count_get_receive_buffer.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %receive_queue_lock.i, i32 noundef %call2.i40) #10
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %get_receive_buffer.exit.while.cond1.preheader_crit_edge, label %while.body

get_receive_buffer.exit.while.cond1.preheader_crit_edge: ; preds = %get_receive_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %get_receive_buffer.exit.while.cond1.preheader_crit_edge, %get_receive_buffer.exit.thread
  %empty_packet_queue_lock.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 50
  %call2.i1127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %empty_packet_queue_lock.i) #10
  %empty_packet_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 48
  %15 = ptrtoint ptr %empty_packet_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %empty_packet_queue.i, align 4
  %cmp.i.not.i1228 = icmp eq ptr %16, %empty_packet_queue.i
  br i1 %cmp.i.not.i1228, label %while.cond1.preheader.get_empty_queue_buffer.exit.thread_crit_edge, label %if.then.i15.lr.ph

while.cond1.preheader.get_empty_queue_buffer.exit.thread_crit_edge: ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_empty_queue_buffer.exit.thread

if.then.i15.lr.ph:                                ; preds = %while.cond1.preheader
  %count_empty_packet_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 49
  br label %if.then.i15

while.body:                                       ; preds = %get_receive_buffer.exit
  %17 = ptrtoint ptr %response_mempool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %response_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %add.ptr.i, ptr noundef %18) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %receive_queue_lock.i) #10
  %19 = ptrtoint ptr %receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %receive_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %receive_queue.i
  br i1 %cmp.i.not.i, label %while.body.get_receive_buffer.exit.thread_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

while.body.get_receive_buffer.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_receive_buffer.exit.thread

get_empty_queue_buffer.exit.thread:               ; preds = %while.body4.get_empty_queue_buffer.exit.thread_crit_edge, %while.cond1.preheader.get_empty_queue_buffer.exit.thread_crit_edge
  %call2.i11.lcssa = phi i32 [ %call2.i1127, %while.cond1.preheader.get_empty_queue_buffer.exit.thread_crit_edge ], [ %call2.i11, %while.body4.get_empty_queue_buffer.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %empty_packet_queue_lock.i, i32 noundef %call2.i11.lcssa) #10
  br label %while.end6

if.then.i15:                                      ; preds = %while.body4.if.then.i15_crit_edge, %if.then.i15.lr.ph
  %21 = phi ptr [ %16, %if.then.i15.lr.ph ], [ %35, %while.body4.if.then.i15_crit_edge ]
  %call2.i1129 = phi i32 [ %call2.i1127, %if.then.i15.lr.ph ], [ %call2.i11, %while.body4.if.then.i15_crit_edge ]
  %add.ptr.i13 = getelementptr i8, ptr %21, i32 -28
  %call.i.i.i14 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #10
  br i1 %call.i.i.i14, label %if.end.i.i.i18, label %if.then.i15.get_empty_queue_buffer.exit_crit_edge

if.then.i15.get_empty_queue_buffer.exit_crit_edge: ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_empty_queue_buffer.exit

if.end.i.i.i18:                                   ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i16 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i16, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i17, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %get_empty_queue_buffer.exit

get_empty_queue_buffer.exit:                      ; preds = %if.end.i.i.i18, %if.then.i15.get_empty_queue_buffer.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i.i19 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i19, align 4
  %30 = ptrtoint ptr %count_empty_packet_queue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count_empty_packet_queue.i, align 4
  %dec.i20 = add i32 %31, -1
  store i32 %dec.i20, ptr %count_empty_packet_queue.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %empty_packet_queue_lock.i, i32 noundef %call2.i1129) #10
  %tobool3.not = icmp eq ptr %add.ptr.i13, null
  br i1 %tobool3.not, label %get_empty_queue_buffer.exit.while.end6_crit_edge, label %while.body4

get_empty_queue_buffer.exit.while.end6_crit_edge: ; preds = %get_empty_queue_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end6

while.body4:                                      ; preds = %get_empty_queue_buffer.exit
  %32 = ptrtoint ptr %response_mempool to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %response_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %add.ptr.i13, ptr noundef %33) #10
  %call2.i11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %empty_packet_queue_lock.i) #10
  %34 = ptrtoint ptr %empty_packet_queue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %empty_packet_queue.i, align 4
  %cmp.i.not.i12 = icmp eq ptr %35, %empty_packet_queue.i
  br i1 %cmp.i.not.i12, label %while.body4.get_empty_queue_buffer.exit.thread_crit_edge, label %while.body4.if.then.i15_crit_edge

while.body4.if.then.i15_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i15

while.body4.get_empty_queue_buffer.exit.thread_crit_edge: ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_empty_queue_buffer.exit.thread

while.end6:                                       ; preds = %get_empty_queue_buffer.exit.while.end6_crit_edge, %get_empty_queue_buffer.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_cq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smbd_reconnect(ptr noundef %server) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @smbd_logging_class, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end10_crit_edge, label %lor.lhs.false.do.body2_crit_edge

lor.lhs.false.do.body2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body2:                                         ; preds = %lor.lhs.false.do.body2_crit_edge, %entry.do.body2_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_reconnect._rs, ptr noundef nonnull @__func__.smbd_reconnect) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body2.do.end10_crit_edge, label %do.end

do.body2.do.end10_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.smbd_reconnect, i32 noundef 1416) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body2.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge
  %smbd_conn = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 58
  %2 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smbd_conn, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.body13, label %if.end33

do.body13:                                        ; preds = %do.end10
  %4 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14.not = icmp eq i32 %4, 0
  br i1 %cmp14.not, label %lor.lhs.false15, label %do.body13.do.body20_crit_edge

do.body13.do.body20_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

lor.lhs.false15:                                  ; preds = %do.body13
  %5 = load i32, ptr @smbd_logging_class, align 4
  %and16 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %lor.lhs.false15.do.body58_crit_edge, label %lor.lhs.false15.do.body20_crit_edge

lor.lhs.false15.do.body20_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

lor.lhs.false15.do.body58_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58

do.body20:                                        ; preds = %lor.lhs.false15.do.body20_crit_edge, %do.body13.do.body20_crit_edge
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_reconnect._rs.40, ptr noundef nonnull @__func__.smbd_reconnect) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.do.body58_crit_edge, label %do.end25

do.body20.do.body58_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.smbd_reconnect, i32 noundef 1419) #13
  br label %do.body58

if.end33:                                         ; preds = %do.end10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp35 = icmp eq i32 %7, 2
  br i1 %cmp35, label %do.body37, label %if.end33.do.body58_crit_edge

if.end33.do.body58_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58

do.body37:                                        ; preds = %if.end33
  %8 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp38.not = icmp eq i32 %8, 0
  br i1 %cmp38.not, label %lor.lhs.false39, label %do.body37.do.body44_crit_edge

do.body37.do.body44_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44

lor.lhs.false39:                                  ; preds = %do.body37
  %9 = load i32, ptr @smbd_logging_class, align 4
  %and40 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %lor.lhs.false39.do.end56_crit_edge, label %lor.lhs.false39.do.body44_crit_edge

lor.lhs.false39.do.body44_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44

lor.lhs.false39.do.end56_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.body44:                                        ; preds = %lor.lhs.false39.do.body44_crit_edge, %do.body37.do.body44_crit_edge
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_reconnect._rs.43, ptr noundef nonnull @__func__.smbd_reconnect) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body44.do.end56_crit_edge, label %do.end49

do.body44.do.end56_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.smbd_reconnect, i32 noundef 1428) #13
  br label %do.end56

do.end56:                                         ; preds = %do.end49, %do.body44.do.end56_crit_edge, %lor.lhs.false39.do.end56_crit_edge
  tail call void @smbd_destroy(ptr noundef %server)
  br label %do.body58

do.body58:                                        ; preds = %do.end56, %if.end33.do.body58_crit_edge, %do.end25, %do.body20.do.body58_crit_edge, %lor.lhs.false15.do.body58_crit_edge
  %10 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp59.not = icmp eq i32 %10, 0
  br i1 %cmp59.not, label %lor.lhs.false60, label %do.body58.do.body65_crit_edge

do.body58.do.body65_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

lor.lhs.false60:                                  ; preds = %do.body58
  %11 = load i32, ptr @smbd_logging_class, align 4
  %and61 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %lor.lhs.false60.do.end77_crit_edge, label %lor.lhs.false60.do.body65_crit_edge

lor.lhs.false60.do.body65_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

lor.lhs.false60.do.end77_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

do.body65:                                        ; preds = %lor.lhs.false60.do.body65_crit_edge, %do.body58.do.body65_crit_edge
  %call66 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_reconnect._rs.47, ptr noundef nonnull @__func__.smbd_reconnect) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %do.body65.do.end77_crit_edge, label %do.end70

do.body65.do.end77_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

do.end70:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.smbd_reconnect, i32 noundef 1433) #13
  br label %do.end77

do.end77:                                         ; preds = %do.end70, %do.body65.do.end77_crit_edge, %lor.lhs.false60.do.end77_crit_edge
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 10
  %call78 = tail call ptr @smbd_get_connection(ptr noundef %server, ptr noundef %dstaddr)
  %12 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call78, ptr %smbd_conn, align 4
  %tobool81.not = icmp eq ptr %call78, null
  br i1 %tobool81.not, label %do.end77.if.end95_crit_edge, label %do.body84

do.end77.if.end95_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

do.body84:                                        ; preds = %do.end77
  %call85 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_reconnect._rs.51, ptr noundef nonnull @__func__.smbd_reconnect) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.body84.if.end95_crit_edge, label %do.end89

do.body84.if.end95_crit_edge:                     ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

do.end89:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #13
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %do.body84.if.end95_crit_edge, %do.end77.if.end95_crit_edge
  %13 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smbd_conn, align 4
  %tobool97.not = icmp eq ptr %14, null
  %cond = select i1 %tobool97.not, i32 -2, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smbd_get_connection(ptr noundef %server, ptr noundef %dstaddr) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca [80 x i8], align 1
  %dummy.i.i.i = alloca ptr, align 4
  %send_wr.i.i = alloca %struct.ib_send_wr, align 8
  %conn_param.i = alloca %struct.rdma_conn_param, align 4
  %qp_attr.i = alloca %struct.ib_qp_init_attr, align 4
  %port_immutable.i = alloca %struct.ib_port_immutable, align 4
  %ird_ord_hdr.i = alloca [2 x i32], align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry649.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ib_port_immutable, ptr %port_immutable.i, i32 0, i32 2
  %1 = getelementptr inbounds [2 x i32], ptr %ird_ord_hdr.i, i32 0, i32 1
  %sin6_port.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %dstaddr, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %qp_attr.i, i32 16
  %qp_context.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 1
  %cap.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 6
  %max_recv_wr.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 6, i32 1
  %max_send_sge247.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 6, i32 2
  %max_recv_sge249.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 6, i32 3
  %sq_sig_type.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 7
  %qp_type.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 8
  %send_cq252.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 2
  %recv_cq254.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 3
  %port_num.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr.i, i32 0, i32 10
  %responder_resources.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 1
  %retry_count.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 5
  %rnr_retry_count.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 6
  %flow_control.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 4
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %dstaddr, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i.i, i32 0, i32 1
  %sg_list.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i.i, i32 0, i32 2
  %num_sge29.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i.i, i32 0, i32 3
  %opcode.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i.i, i32 0, i32 4
  %send_flags.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i.i, i32 0, i32 5
  br label %try_again

try_again:                                        ; preds = %_smbd_get_connection.exit.try_again_crit_edge, %entry
  %cmp = phi i1 [ false, %entry ], [ true, %_smbd_get_connection.exit.try_again_crit_edge ]
  %port.0 = phi i32 [ 5445, %entry ], [ 445, %_smbd_get_connection.exit.try_again_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param.i) #10
  %5 = call ptr @memset(ptr %conn_param.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp_attr.i) #10
  %6 = call ptr @memset(ptr %qp_attr.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %port_immutable.i) #10
  %7 = call ptr @memset(ptr %port_immutable.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ird_ord_hdr.i) #10
  %8 = ptrtoint ptr %ird_ord_hdr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ird_ord_hdr.i, align 4, !annotation !702
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %1, align 4, !annotation !702
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 1624) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %try_again._smbd_get_connection.exit_crit_edge, label %if.end.i

try_again._smbd_get_connection.exit_crit_edge:    ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #12
  br label %_smbd_get_connection.exit

if.end.i:                                         ; preds = %try_again
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call7.i.i.i, align 8
  %call.i.i813.i = call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @smbd_conn_upcall, ptr noundef nonnull %call7.i.i.i, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.66) #10
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i813.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.end18.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %call6.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_create_id._rs, ptr noundef nonnull @__func__.smbd_create_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.then.i.i.i.smbd_create_id.exit.i.i_crit_edge, label %do.end.i.i.i

if.then.i.i.i.smbd_create_id.exit.i.i_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbd_create_id.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call.i.i813.i to i32
  %call10.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.smbd_create_id, i32 noundef 555, i32 noundef %12) #13
  br label %smbd_create_id.exit.i.i

if.end18.i.i.i:                                   ; preds = %if.end.i
  %conv23.i.i.i = trunc i32 %port.0 to i16
  %13 = ptrtoint ptr %sin6_port.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv23.i.i.i, ptr %sin6_port.i.i.i, align 2
  %ri_done.i.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %ri_done.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ri_done.i.i.i, align 4
  %wait.i.i.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.390, ptr noundef nonnull @init_completion.__key) #10
  %ri_rc.i.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %ri_rc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -110, ptr %ri_rc.i.i.i, align 8
  %call24.i.i.i = call i32 @rdma_resolve_addr(ptr noundef %call.i.i813.i, ptr noundef null, ptr noundef %dstaddr, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %call24.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %if.end52.i.i.i, label %do.body35.i.i.i

do.body35.i.i.i:                                  ; preds = %if.end18.i.i.i
  %call36.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_create_id._rs.215, ptr noundef nonnull @__func__.smbd_create_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %do.body35.i.i.i.out.i.i.i_crit_edge, label %do.end41.i.i.i

do.body35.i.i.i.out.i.i.i_crit_edge:              ; preds = %do.body35.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

do.end41.i.i.i:                                   ; preds = %do.body35.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call43.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef nonnull @__func__.smbd_create_id, i32 noundef 572, i32 noundef %call24.i.i.i) #13
  br label %out.i.i.i

if.end52.i.i.i:                                   ; preds = %if.end18.i.i.i
  %call55.i.i.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ri_done.i.i.i, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %cmp56.i.i.i = icmp slt i32 %call55.i.i.i, 0
  br i1 %cmp56.i.i.i, label %do.body67.i.i.i, label %if.end84.i.i.i

do.body67.i.i.i:                                  ; preds = %if.end52.i.i.i
  %call68.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_create_id._rs.219, ptr noundef nonnull @__func__.smbd_create_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i.i)
  %tobool69.not.i.i.i = icmp eq i32 %call68.i.i.i, 0
  br i1 %tobool69.not.i.i.i, label %do.body67.i.i.i.out.i.i.i_crit_edge, label %do.end73.i.i.i

do.body67.i.i.i.out.i.i.i_crit_edge:              ; preds = %do.body67.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

do.end73.i.i.i:                                   ; preds = %do.body67.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call75.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.smbd_create_id, i32 noundef 579, i32 noundef %call55.i.i.i) #13
  br label %out.i.i.i

if.end84.i.i.i:                                   ; preds = %if.end52.i.i.i
  %16 = ptrtoint ptr %ri_rc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ri_rc.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool86.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool86.not.i.i.i, label %if.end113.i.i.i, label %do.body96.i.i.i

do.body96.i.i.i:                                  ; preds = %if.end84.i.i.i
  %call97.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_create_id._rs.223, ptr noundef nonnull @__func__.smbd_create_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i.i.i)
  %tobool98.not.i.i.i = icmp eq i32 %call97.i.i.i, 0
  br i1 %tobool98.not.i.i.i, label %do.body96.i.i.i.out.i.i.i_crit_edge, label %do.end102.i.i.i

do.body96.i.i.i.out.i.i.i_crit_edge:              ; preds = %do.body96.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

do.end102.i.i.i:                                  ; preds = %do.body96.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call104.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.smbd_create_id, i32 noundef 584, i32 noundef %17) #13
  br label %out.i.i.i

if.end113.i.i.i:                                  ; preds = %if.end84.i.i.i
  %18 = ptrtoint ptr %ri_rc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -110, ptr %ri_rc.i.i.i, align 8
  %call115.i.i.i = call i32 @rdma_resolve_route(ptr noundef %call.i.i813.i, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i.i.i)
  %tobool116.not.i.i.i = icmp eq i32 %call115.i.i.i, 0
  br i1 %tobool116.not.i.i.i, label %if.end143.i.i.i, label %do.body126.i.i.i

do.body126.i.i.i:                                 ; preds = %if.end113.i.i.i
  %call127.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_create_id._rs.227, ptr noundef nonnull @__func__.smbd_create_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i.i.i)
  %tobool128.not.i.i.i = icmp eq i32 %call127.i.i.i, 0
  br i1 %tobool128.not.i.i.i, label %do.body126.i.i.i.out.i.i.i_crit_edge, label %do.end132.i.i.i

do.body126.i.i.i.out.i.i.i_crit_edge:             ; preds = %do.body126.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

do.end132.i.i.i:                                  ; preds = %do.body126.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call134.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.smbd_create_id, i32 noundef 591, i32 noundef %call115.i.i.i) #13
  br label %out.i.i.i

if.end143.i.i.i:                                  ; preds = %if.end113.i.i.i
  %call146.i.i.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ri_done.i.i.i, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %cmp147.i.i.i = icmp slt i32 %call146.i.i.i, 0
  br i1 %cmp147.i.i.i, label %do.body158.i.i.i, label %if.end175.i.i.i

do.body158.i.i.i:                                 ; preds = %if.end143.i.i.i
  %call159.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_create_id._rs.231, ptr noundef nonnull @__func__.smbd_create_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159.i.i.i)
  %tobool160.not.i.i.i = icmp eq i32 %call159.i.i.i, 0
  br i1 %tobool160.not.i.i.i, label %do.body158.i.i.i.out.i.i.i_crit_edge, label %do.end164.i.i.i

do.body158.i.i.i.out.i.i.i_crit_edge:             ; preds = %do.body158.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

do.end164.i.i.i:                                  ; preds = %do.body158.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call166.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.smbd_create_id, i32 noundef 598, i32 noundef %call146.i.i.i) #13
  br label %out.i.i.i

if.end175.i.i.i:                                  ; preds = %if.end143.i.i.i
  %19 = ptrtoint ptr %ri_rc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ri_rc.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool177.not.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool177.not.i.i.i, label %if.end175.i.i.i.smbd_create_id.exit.i.i_crit_edge, label %do.body187.i.i.i

if.end175.i.i.i.smbd_create_id.exit.i.i_crit_edge: ; preds = %if.end175.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbd_create_id.exit.i.i

do.body187.i.i.i:                                 ; preds = %if.end175.i.i.i
  %call188.i.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_create_id._rs.234, ptr noundef nonnull @__func__.smbd_create_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188.i.i.i)
  %tobool189.not.i.i.i = icmp eq i32 %call188.i.i.i, 0
  br i1 %tobool189.not.i.i.i, label %do.body187.i.i.i.out.i.i.i_crit_edge, label %do.end193.i.i.i

do.body187.i.i.i.out.i.i.i_crit_edge:             ; preds = %do.body187.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

do.end193.i.i.i:                                  ; preds = %do.body187.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call195.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @__func__.smbd_create_id, i32 noundef 603, i32 noundef %20) #13
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %do.end193.i.i.i, %do.body187.i.i.i.out.i.i.i_crit_edge, %do.end164.i.i.i, %do.body158.i.i.i.out.i.i.i_crit_edge, %do.end132.i.i.i, %do.body126.i.i.i.out.i.i.i_crit_edge, %do.end102.i.i.i, %do.body96.i.i.i.out.i.i.i_crit_edge, %do.end73.i.i.i, %do.body67.i.i.i.out.i.i.i_crit_edge, %do.end41.i.i.i, %do.body35.i.i.i.out.i.i.i_crit_edge
  %rc.0.i.i.i = phi i32 [ %call24.i.i.i, %do.end41.i.i.i ], [ %call24.i.i.i, %do.body35.i.i.i.out.i.i.i_crit_edge ], [ %call55.i.i.i, %do.end73.i.i.i ], [ %call55.i.i.i, %do.body67.i.i.i.out.i.i.i_crit_edge ], [ %17, %do.end102.i.i.i ], [ %17, %do.body96.i.i.i.out.i.i.i_crit_edge ], [ %call115.i.i.i, %do.end132.i.i.i ], [ %call115.i.i.i, %do.body126.i.i.i.out.i.i.i_crit_edge ], [ %call146.i.i.i, %do.end164.i.i.i ], [ %call146.i.i.i, %do.body158.i.i.i.out.i.i.i_crit_edge ], [ %20, %do.end193.i.i.i ], [ %20, %do.body187.i.i.i.out.i.i.i_crit_edge ]
  call void @rdma_destroy_id(ptr noundef %call.i.i813.i) #10
  %21 = inttoptr i32 %rc.0.i.i.i to ptr
  br label %smbd_create_id.exit.i.i

smbd_create_id.exit.i.i:                          ; preds = %out.i.i.i, %if.end175.i.i.i.smbd_create_id.exit.i.i_crit_edge, %do.end.i.i.i, %if.then.i.i.i.smbd_create_id.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %21, %out.i.i.i ], [ %call.i.i813.i, %if.then.i.i.i.smbd_create_id.exit.i.i_crit_edge ], [ %call.i.i813.i, %do.end.i.i.i ], [ %call.i.i813.i, %if.end175.i.i.i.smbd_create_id.exit.i.i_crit_edge ]
  %id.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i.i.i, ptr %id.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %smbd_create_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %retval.0.i.i.i to i32
  br label %do.body.i

if.end.i.i:                                       ; preds = %smbd_create_id.exit.i.i
  %24 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %retval.0.i.i.i, align 4
  %device_cap_flags.i.i.i = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 22, i32 9
  %26 = ptrtoint ptr %device_cap_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %device_cap_flags.i.i.i, align 8
  %and.i.i.i = and i64 %27, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.do.body10.i.i_crit_edge, label %frwr_is_supported.exit.i.i

if.end.i.i.do.body10.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i

frwr_is_supported.exit.i.i:                       ; preds = %if.end.i.i
  %max_fast_reg_page_list_len.i.i.i = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 22, i32 36
  %28 = ptrtoint ptr %max_fast_reg_page_list_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_fast_reg_page_list_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i126.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i126.not.i.i, label %frwr_is_supported.exit.i.i.do.body10.i.i_crit_edge, label %if.end54.i.i

frwr_is_supported.exit.i.i.do.body10.i.i_crit_edge: ; preds = %frwr_is_supported.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i

do.body10.i.i:                                    ; preds = %frwr_is_supported.exit.i.i.do.body10.i.i_crit_edge, %if.end.i.i.do.body10.i.i_crit_edge
  %call11.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_ia_open._rs, ptr noundef nonnull @__func__.smbd_ia_open) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body10.i.i.do.body31.i.i_crit_edge, label %do.end.i.i

do.body10.i.i.do.body31.i.i_crit_edge:            ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31.i.i

do.end.i.i:                                       ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef nonnull @__func__.smbd_ia_open, i32 noundef 641) #13
  br label %do.body31.i.i

do.body31.i.i:                                    ; preds = %do.end.i.i, %do.body10.i.i.do.body31.i.i_crit_edge
  %call32.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_ia_open._rs.206, ptr noundef nonnull @__func__.smbd_ia_open) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %do.body31.i.i.out2.i.i_crit_edge, label %do.end37.i.i

do.body31.i.i.out2.i.i_crit_edge:                 ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2.i.i

do.end37.i.i:                                     ; preds = %do.body31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %id.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %device_cap_flags.i.i = getelementptr inbounds %struct.ib_device, ptr %33, i32 0, i32 22, i32 9
  %34 = ptrtoint ptr %device_cap_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %device_cap_flags.i.i, align 8
  %max_fast_reg_page_list_len.i.i = getelementptr inbounds %struct.ib_device, ptr %33, i32 0, i32 22, i32 36
  %36 = ptrtoint ptr %max_fast_reg_page_list_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_fast_reg_page_list_len.i.i, align 8
  %call45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef nonnull @__func__.smbd_ia_open, i32 noundef 644, i64 noundef %35, i32 noundef %37) #13
  br label %out2.i.i

if.end54.i.i:                                     ; preds = %frwr_is_supported.exit.i.i
  %38 = load i32, ptr @smbd_max_frmr_depth, align 4
  %39 = call i32 @llvm.smin.i32(i32 %38, i32 %29) #10
  %max_frmr_depth.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 32
  %40 = ptrtoint ptr %max_frmr_depth.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %max_frmr_depth.i.i, align 4
  %mr_type.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 34
  %41 = ptrtoint ptr %mr_type.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %mr_type.i.i, align 4
  %42 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %retval.0.i.i.i, align 4
  %device_cap_flags64.i.i = getelementptr inbounds %struct.ib_device, ptr %43, i32 0, i32 22, i32 9
  %44 = ptrtoint ptr %device_cap_flags64.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %device_cap_flags64.i.i, align 8
  %and65.i.i = lshr i64 %45, 32
  %46 = trunc i64 %and65.i.i to i32
  %47 = and i32 %46, 1
  store i32 %47, ptr %mr_type.i.i, align 4
  %48 = load ptr, ptr %retval.0.i.i.i, align 4
  %call72.i.i = call ptr @__ib_alloc_pd(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.66) #10
  %pd.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call72.i.i, ptr %pd.i.i, align 8
  %cmp.i128.i.i = icmp ugt ptr %call72.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.i.i, label %if.then75.i.i, label %if.end21.i

if.then75.i.i:                                    ; preds = %if.end54.i.i
  %50 = ptrtoint ptr %call72.i.i to i32
  %call86.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_ia_open._rs.210, ptr noundef nonnull @__func__.smbd_ia_open) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %tobool87.not.i.i = icmp eq i32 %call86.i.i, 0
  br i1 %tobool87.not.i.i, label %if.then75.i.i.out2.i.i_crit_edge, label %do.end91.i.i

if.then75.i.i.out2.i.i_crit_edge:                 ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2.i.i

do.end91.i.i:                                     ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call93.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.smbd_ia_open, i32 noundef 658, i32 noundef %50) #13
  br label %out2.i.i

out2.i.i:                                         ; preds = %do.end91.i.i, %if.then75.i.i.out2.i.i_crit_edge, %do.end37.i.i, %do.body31.i.i.out2.i.i_crit_edge
  %rc.0.i.i = phi i32 [ %50, %do.end91.i.i ], [ %50, %if.then75.i.i.out2.i.i_crit_edge ], [ -93, %do.body31.i.i.out2.i.i_crit_edge ], [ -93, %do.end37.i.i ]
  %51 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %id.i.i, align 4
  call void @rdma_destroy_id(ptr noundef %52) #10
  %53 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %id.i.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %out2.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %23, %if.then.i.i ], [ %rc.0.i.i, %out2.i.i ]
  %54 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i = icmp eq i32 %54, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %do.body.i.do.body7.i_crit_edge

do.body.i.do.body7.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %55 = load i32, ptr @smbd_logging_class, align 4
  %and.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.create_id_failed.i_crit_edge, label %lor.lhs.false.i.do.body7.i_crit_edge

lor.lhs.false.i.do.body7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

lor.lhs.false.i.create_id_failed.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_id_failed.i

do.body7.i:                                       ; preds = %lor.lhs.false.i.do.body7.i_crit_edge, %do.body.i.do.body7.i_crit_edge
  %call8.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.body7.i.create_id_failed.i_crit_edge, label %do.end.i

do.body7.i.create_id_failed.i_crit_edge:          ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_id_failed.i

do.end.i:                                         ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1536, i32 noundef %retval.0.i.i) #13
  br label %create_id_failed.i

if.end21.i:                                       ; preds = %if.end54.i.i
  %56 = load i32, ptr @smbd_send_credit_target, align 4
  %57 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %id.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %max_cqe.i = getelementptr inbounds %struct.ib_device, ptr %60, i32 0, i32 22, i32 14
  %61 = ptrtoint ptr %max_cqe.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_cqe.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %62)
  %cmp22.i = icmp sgt i32 %56, %62
  br i1 %cmp22.i, label %if.end21.i.do.body36.i_crit_edge, label %lor.lhs.false23.i

if.end21.i.do.body36.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36.i

lor.lhs.false23.i:                                ; preds = %if.end21.i
  %max_qp_wr.i = getelementptr inbounds %struct.ib_device, ptr %60, i32 0, i32 22, i32 8
  %63 = ptrtoint ptr %max_qp_wr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_qp_wr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %64)
  %cmp27.i = icmp sgt i32 %56, %64
  br i1 %cmp27.i, label %lor.lhs.false23.i.do.body36.i_crit_edge, label %if.end61.i

lor.lhs.false23.i.do.body36.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36.i

do.body36.i:                                      ; preds = %lor.lhs.false23.i.do.body36.i_crit_edge, %if.end21.i.do.body36.i_crit_edge
  %call37.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.124, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %do.body36.i.config_failed.i_crit_edge, label %do.end42.i

do.body36.i.config_failed.i_crit_edge:            ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_failed.i

do.end42.i:                                       ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = load i32, ptr @smbd_send_credit_target, align 4
  %66 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %id.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %max_cqe47.i = getelementptr inbounds %struct.ib_device, ptr %69, i32 0, i32 22, i32 14
  %70 = ptrtoint ptr %max_cqe47.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_cqe47.i, align 8
  %max_qp_wr51.i = getelementptr inbounds %struct.ib_device, ptr %69, i32 0, i32 22, i32 8
  %72 = ptrtoint ptr %max_qp_wr51.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_qp_wr51.i, align 8
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1545, i32 noundef %65, i32 noundef %71, i32 noundef %73) #13
  br label %config_failed.i

if.end61.i:                                       ; preds = %lor.lhs.false23.i
  %74 = load i32, ptr @smbd_receive_credit_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %62)
  %cmp66.i = icmp sgt i32 %74, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %64)
  %cmp72.i = icmp sgt i32 %74, %64
  %or.cond.i = select i1 %cmp66.i, i1 true, i1 %cmp72.i
  br i1 %or.cond.i, label %do.body81.i, label %if.end106.i

do.body81.i:                                      ; preds = %if.end61.i
  %call82.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.128, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %do.body81.i.config_failed.i_crit_edge, label %do.end87.i

do.body81.i.config_failed.i_crit_edge:            ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_failed.i

do.end87.i:                                       ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = load i32, ptr @smbd_receive_credit_max, align 4
  %76 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %id.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %max_cqe92.i = getelementptr inbounds %struct.ib_device, ptr %79, i32 0, i32 22, i32 14
  %80 = ptrtoint ptr %max_cqe92.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_cqe92.i, align 8
  %max_qp_wr96.i = getelementptr inbounds %struct.ib_device, ptr %79, i32 0, i32 22, i32 8
  %82 = ptrtoint ptr %max_qp_wr96.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_qp_wr96.i, align 8
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1554, i32 noundef %75, i32 noundef %81, i32 noundef %83) #13
  br label %config_failed.i

if.end106.i:                                      ; preds = %if.end61.i
  %receive_credit_max.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 17
  %84 = ptrtoint ptr %receive_credit_max.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %74, ptr %receive_credit_max.i, align 8
  %send_credit_target.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 18
  %85 = ptrtoint ptr %send_credit_target.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %56, ptr %send_credit_target.i, align 4
  %86 = load i32, ptr @smbd_max_send_size, align 4
  %max_send_size.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 19
  %87 = ptrtoint ptr %max_send_size.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %max_send_size.i, align 8
  %88 = load i32, ptr @smbd_max_fragmented_recv_size, align 4
  %max_fragmented_recv_size.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 20
  %89 = ptrtoint ptr %max_fragmented_recv_size.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %max_fragmented_recv_size.i, align 4
  %90 = load i32, ptr @smbd_max_receive_size, align 4
  %max_receive_size.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 22
  %91 = ptrtoint ptr %max_receive_size.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %max_receive_size.i, align 4
  %92 = load i32, ptr @smbd_keep_alive_interval, align 4
  %keep_alive_interval.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 23
  %93 = ptrtoint ptr %keep_alive_interval.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %keep_alive_interval.i, align 8
  %94 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %58, align 4
  %max_send_sge.i = getelementptr inbounds %struct.ib_device, ptr %95, i32 0, i32 22, i32 10
  %96 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_send_sge.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %97)
  %cmp110.i = icmp slt i32 %97, 16
  br i1 %cmp110.i, label %do.body119.i, label %if.end106.i.if.end164.i_crit_edge

if.end106.i.if.end164.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164.i

do.body119.i:                                     ; preds = %if.end106.i
  %call120.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.132, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %do.body119.i.do.body147.i_crit_edge, label %do.end125.i

do.body119.i.do.body147.i_crit_edge:              ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147.i

do.end125.i:                                      ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %id.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %max_send_sge130.i = getelementptr inbounds %struct.ib_device, ptr %101, i32 0, i32 22, i32 10
  %102 = ptrtoint ptr %max_send_sge130.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_send_sge130.i, align 8
  %call131.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1568, i32 noundef %103) #13
  br label %do.body147.i

do.body147.i:                                     ; preds = %do.end125.i, %do.body119.i.do.body147.i_crit_edge
  %call148.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.136, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool149.not.i = icmp eq i32 %call148.i, 0
  br i1 %tobool149.not.i, label %do.body147.i.if.end164.i_crit_edge, label %do.end153.i

do.body147.i.if.end164.i_crit_edge:               ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164.i

do.end153.i:                                      ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #12
  %call155.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1569) #13
  br label %if.end164.i

if.end164.i:                                      ; preds = %do.end153.i, %do.body147.i.if.end164.i_crit_edge, %if.end106.i.if.end164.i_crit_edge
  %104 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %id.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %max_recv_sge.i = getelementptr inbounds %struct.ib_device, ptr %107, i32 0, i32 22, i32 11
  %108 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_recv_sge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %109)
  %cmp168.i = icmp slt i32 %109, 16
  br i1 %cmp168.i, label %do.body177.i, label %if.end164.i.if.end222.i_crit_edge

if.end164.i.if.end222.i_crit_edge:                ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222.i

do.body177.i:                                     ; preds = %if.end164.i
  %call178.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.140, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178.i)
  %tobool179.not.i = icmp eq i32 %call178.i, 0
  br i1 %tobool179.not.i, label %do.body177.i.do.body205.i_crit_edge, label %do.end183.i

do.body177.i.do.body205.i_crit_edge:              ; preds = %do.body177.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body205.i

do.end183.i:                                      ; preds = %do.body177.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %id.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %max_recv_sge188.i = getelementptr inbounds %struct.ib_device, ptr %113, i32 0, i32 22, i32 11
  %114 = ptrtoint ptr %max_recv_sge188.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_recv_sge188.i, align 4
  %call189.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1574, i32 noundef %115) #13
  br label %do.body205.i

do.body205.i:                                     ; preds = %do.end183.i, %do.body177.i.do.body205.i_crit_edge
  %call206.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.144, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206.i)
  %tobool207.not.i = icmp eq i32 %call206.i, 0
  br i1 %tobool207.not.i, label %do.body205.i.if.end222.i_crit_edge, label %do.end211.i

do.body205.i.if.end222.i_crit_edge:               ; preds = %do.body205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222.i

do.end211.i:                                      ; preds = %do.body205.i
  call void @__sanitizer_cov_trace_pc() #12
  %call213.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1575) #13
  br label %if.end222.i

if.end222.i:                                      ; preds = %do.end211.i, %do.body205.i.if.end222.i_crit_edge, %if.end164.i.if.end222.i_crit_edge
  %send_cq.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 4
  %116 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %send_cq.i, align 4
  %recv_cq.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 5
  %117 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %recv_cq.i, align 8
  %118 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %id.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %122 = ptrtoint ptr %send_credit_target.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %send_credit_target.i, align 4
  %call.i.i = call ptr @__ib_alloc_cq_any(ptr noundef %121, ptr noundef nonnull %call7.i.i.i, i32 noundef %123, i32 noundef 0, ptr noundef nonnull @.str.66) #10
  %124 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i.i, ptr %send_cq.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %alloc_cq_failed.thread.i, label %if.end232.i

alloc_cq_failed.thread.i:                         ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %send_cq.i, align 4
  br label %if.end674.i

if.end232.i:                                      ; preds = %if.end222.i
  %126 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %id.i.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %130 = ptrtoint ptr %receive_credit_max.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %receive_credit_max.i, align 8
  %call.i814.i = call ptr @__ib_alloc_cq_any(ptr noundef %129, ptr noundef nonnull %call7.i.i.i, i32 noundef %131, i32 noundef 0, ptr noundef nonnull @.str.66) #10
  %132 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i814.i, ptr %recv_cq.i, align 8
  %cmp.i815.i = icmp ugt ptr %call.i814.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i815.i, label %if.then240.i, label %if.end242.i

if.then240.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %recv_cq.i, align 8
  br label %alloc_cq_failed.i

if.end242.i:                                      ; preds = %if.end232.i
  %134 = call ptr @memset(ptr %2, i32 0, i32 56)
  %135 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @smbd_qp_async_error_upcall, ptr %qp_attr.i, align 4
  %136 = ptrtoint ptr %qp_context.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call7.i.i.i, ptr %qp_context.i, align 4
  %137 = ptrtoint ptr %send_credit_target.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %send_credit_target.i, align 4
  %139 = ptrtoint ptr %cap.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %cap.i, align 4
  %140 = ptrtoint ptr %receive_credit_max.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %receive_credit_max.i, align 8
  %142 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %max_recv_wr.i, align 4
  %143 = ptrtoint ptr %max_send_sge247.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 16, ptr %max_send_sge247.i, align 4
  %144 = ptrtoint ptr %max_recv_sge249.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 16, ptr %max_recv_sge249.i, align 4
  %145 = ptrtoint ptr %sq_sig_type.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %sq_sig_type.i, align 4
  %146 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 2, ptr %qp_type.i, align 4
  %147 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %send_cq.i, align 4
  %149 = ptrtoint ptr %send_cq252.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %send_cq252.i, align 4
  %150 = ptrtoint ptr %recv_cq254.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call.i814.i, ptr %recv_cq254.i, align 4
  %151 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %port_num.i, align 4
  %152 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %id.i.i, align 4
  %154 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pd.i.i, align 8
  %call256.i = call i32 @rdma_create_qp(ptr noundef %153, ptr noundef %155, ptr noundef nonnull %qp_attr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256.i)
  %tobool257.not.i = icmp eq i32 %call256.i, 0
  br i1 %tobool257.not.i, label %if.end283.i, label %do.body266.i

do.body266.i:                                     ; preds = %if.end242.i
  %call267.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.147, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267.i)
  %tobool268.not.i = icmp eq i32 %call267.i, 0
  br i1 %tobool268.not.i, label %do.body266.i.alloc_cq_failed.i_crit_edge, label %do.end272.i

do.body266.i.alloc_cq_failed.i_crit_edge:         ; preds = %do.body266.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_cq_failed.i

do.end272.i:                                      ; preds = %do.body266.i
  call void @__sanitizer_cov_trace_pc() #12
  %call274.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1612, i32 noundef %call256.i) #13
  br label %alloc_cq_failed.i

if.end283.i:                                      ; preds = %if.end242.i
  %156 = call ptr @memset(ptr %conn_param.i, i32 0, i32 20)
  %157 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %id.i.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %max_qp_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %160, i32 0, i32 22, i32 17
  %161 = ptrtoint ptr %max_qp_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %max_qp_rd_atom.i, align 4
  %163 = call i32 @llvm.smin.i32(i32 %162, i32 32) #10
  %conv.i = trunc i32 %163 to i8
  %164 = ptrtoint ptr %responder_resources.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv.i, ptr %responder_resources.i, align 1
  %conv293.i = and i32 %163, 255
  %responder_resources294.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 31
  %165 = ptrtoint ptr %responder_resources294.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %conv293.i, ptr %responder_resources294.i, align 8
  %166 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp296.not.i = icmp eq i32 %166, 0
  br i1 %cmp296.not.i, label %lor.lhs.false298.i, label %if.end283.i.do.body303.i_crit_edge

if.end283.i.do.body303.i_crit_edge:               ; preds = %if.end283.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body303.i

lor.lhs.false298.i:                               ; preds = %if.end283.i
  %167 = load i32, ptr @smbd_logging_class, align 4
  %and299.i = and i32 %167, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299.i)
  %tobool300.not.i = icmp eq i32 %and299.i, 0
  br i1 %tobool300.not.i, label %lor.lhs.false298.i.do.end320.i_crit_edge, label %lor.lhs.false298.i.do.body303.i_crit_edge

lor.lhs.false298.i.do.body303.i_crit_edge:        ; preds = %lor.lhs.false298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body303.i

lor.lhs.false298.i.do.end320.i_crit_edge:         ; preds = %lor.lhs.false298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end320.i

do.body303.i:                                     ; preds = %lor.lhs.false298.i.do.body303.i_crit_edge, %if.end283.i.do.body303.i_crit_edge
  %call304.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.151, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304.i)
  %tobool305.not.i = icmp eq i32 %call304.i, 0
  br i1 %tobool305.not.i, label %do.body303.i.do.end320.i_crit_edge, label %do.end309.i

do.body303.i.do.end320.i_crit_edge:               ; preds = %do.body303.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end320.i

do.end309.i:                                      ; preds = %do.body303.i
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %responder_resources294.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %responder_resources294.i, align 8
  %call312.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1626, i32 noundef %169) #13
  br label %do.end320.i

do.end320.i:                                      ; preds = %do.end309.i, %do.body303.i.do.end320.i_crit_edge, %lor.lhs.false298.i.do.end320.i_crit_edge
  %170 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %id.i.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %get_port_immutable.i = getelementptr inbounds %struct.ib_device, ptr %173, i32 0, i32 1, i32 21
  %174 = ptrtoint ptr %get_port_immutable.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %get_port_immutable.i, align 4
  %port_num326.i = getelementptr inbounds %struct.rdma_cm_id, ptr %171, i32 0, i32 7
  %176 = ptrtoint ptr %port_num326.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port_num326.i, align 4
  %call327.i = call i32 %175(ptr noundef %173, i32 noundef %177, ptr noundef nonnull %port_immutable.i) #10
  %178 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %0, align 4
  %and328.i = and i32 %179, 4194312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328.i)
  %tobool329.not.i = icmp eq i32 %and328.i, 0
  br i1 %tobool329.not.i, label %do.end320.i.if.end335.i_crit_edge, label %if.then330.i

do.end320.i.if.end335.i_crit_edge:                ; preds = %do.end320.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end335.i

if.then330.i:                                     ; preds = %do.end320.i
  call void @__sanitizer_cov_trace_pc() #12
  %180 = ptrtoint ptr %responder_resources294.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %responder_resources294.i, align 8
  %182 = ptrtoint ptr %ird_ord_hdr.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %ird_ord_hdr.i, align 4
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %1, align 4
  br label %if.end335.i

if.end335.i:                                      ; preds = %if.then330.i, %do.end320.i.if.end335.i_crit_edge
  %storemerge.i = phi ptr [ %ird_ord_hdr.i, %if.then330.i ], [ null, %do.end320.i.if.end335.i_crit_edge ]
  %.sink.i = phi i8 [ 8, %if.then330.i ], [ 0, %do.end320.i.if.end335.i_crit_edge ]
  %184 = ptrtoint ptr %conn_param.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %storemerge.i, ptr %conn_param.i, align 4
  %185 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %.sink.i, ptr %3, align 4
  %186 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 6, ptr %retry_count.i, align 4
  %187 = ptrtoint ptr %rnr_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %rnr_retry_count.i, align 1
  %188 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %flow_control.i, align 1
  %189 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp337.not.i = icmp eq i32 %189, 0
  br i1 %cmp337.not.i, label %lor.lhs.false339.i, label %if.end335.i.do.body344.i_crit_edge

if.end335.i.do.body344.i_crit_edge:               ; preds = %if.end335.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body344.i

lor.lhs.false339.i:                               ; preds = %if.end335.i
  %190 = load i32, ptr @smbd_logging_class, align 4
  %and340.i = and i32 %190, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340.i)
  %tobool341.not.i = icmp eq i32 %and340.i, 0
  br i1 %tobool341.not.i, label %lor.lhs.false339.i.do.body361.i_crit_edge, label %lor.lhs.false339.i.do.body344.i_crit_edge

lor.lhs.false339.i.do.body344.i_crit_edge:        ; preds = %lor.lhs.false339.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body344.i

lor.lhs.false339.i.do.body361.i_crit_edge:        ; preds = %lor.lhs.false339.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body361.i

do.body344.i:                                     ; preds = %lor.lhs.false339.i.do.body344.i_crit_edge, %if.end335.i.do.body344.i_crit_edge
  %call345.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.155, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.i)
  %tobool346.not.i = icmp eq i32 %call345.i, 0
  br i1 %tobool346.not.i, label %do.body344.i.do.body361.i_crit_edge, label %do.end350.i

do.body344.i.do.body361.i_crit_edge:              ; preds = %do.body344.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body361.i

do.end350.i:                                      ; preds = %do.body344.i
  call void @__sanitizer_cov_trace_pc() #12
  %call352.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1646, ptr noundef %sin_addr.i, i32 noundef %port.0) #13
  br label %do.body361.i

do.body361.i:                                     ; preds = %do.end350.i, %do.body344.i.do.body361.i_crit_edge, %lor.lhs.false339.i.do.body361.i_crit_edge
  %conn_wait.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 9
  call void @__init_waitqueue_head(ptr noundef %conn_wait.i, ptr noundef nonnull @.str.159, ptr noundef nonnull @_smbd_get_connection.__key) #10
  %disconn_wait.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %disconn_wait.i, ptr noundef nonnull @.str.161, ptr noundef nonnull @_smbd_get_connection.__key.160) #10
  %wait_reassembly_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 54
  call void @__init_waitqueue_head(ptr noundef %wait_reassembly_queue.i, ptr noundef nonnull @.str.163, ptr noundef nonnull @_smbd_get_connection.__key.162) #10
  %191 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %id.i.i, align 4
  %call371.i = call i32 @rdma_connect(ptr noundef %192, ptr noundef nonnull %conn_param.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371.i)
  %tobool372.not.i = icmp eq i32 %call371.i, 0
  br i1 %tobool372.not.i, label %if.end399.i, label %do.body382.i

do.body382.i:                                     ; preds = %do.body361.i
  %call383.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.164, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383.i)
  %tobool384.not.i = icmp eq i32 %call383.i, 0
  br i1 %tobool384.not.i, label %do.body382.i.rdma_connect_failed.i_crit_edge, label %do.end388.i

do.body382.i.rdma_connect_failed.i_crit_edge:     ; preds = %do.body382.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_connect_failed.i

do.end388.i:                                      ; preds = %do.body382.i
  call void @__sanitizer_cov_trace_pc() #12
  %call390.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1653, i32 noundef %call371.i) #13
  br label %rdma_connect_failed.i

if.end399.i:                                      ; preds = %do.body361.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1658) #10
  %193 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %194)
  %cmp407.not.i = icmp eq i32 %194, 1
  br i1 %cmp407.not.i, label %if.then409.i, label %if.end399.i.if.end423.i_crit_edge

if.end399.i.if.end423.i_crit_edge:                ; preds = %if.end399.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end423.i

if.then409.i:                                     ; preds = %if.end399.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %195 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %call412832.i = call i32 @prepare_to_wait_event(ptr noundef %conn_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %196 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %197)
  %cmp414.not833.i = icmp eq i32 %197, 1
  br i1 %cmp414.not833.i, label %if.then409.i.if.end417.i_crit_edge, label %if.then409.i.for.end.i_crit_edge

if.then409.i.for.end.i_crit_edge:                 ; preds = %if.then409.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then409.i.if.end417.i_crit_edge:               ; preds = %if.then409.i
  br label %if.end417.i

if.end417.i:                                      ; preds = %cleanup.i.if.end417.i_crit_edge, %if.then409.i.if.end417.i_crit_edge
  %call412834.i = phi i32 [ %call412.i, %cleanup.i.if.end417.i_crit_edge ], [ %call412832.i, %if.then409.i.if.end417.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412834.i)
  %tobool418.not.i = icmp eq i32 %call412834.i, 0
  br i1 %tobool418.not.i, label %cleanup.i, label %if.end417.i.__out.i_crit_edge

if.end417.i.__out.i_crit_edge:                    ; preds = %if.end417.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out.i

cleanup.i:                                        ; preds = %if.end417.i
  call void @schedule() #10
  %call412.i = call i32 @prepare_to_wait_event(ptr noundef %conn_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %198 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %call7.i.i.i, align 8
  %cmp414.not.i = icmp eq i32 %199, 1
  br i1 %cmp414.not.i, label %cleanup.i.if.end417.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

cleanup.i.if.end417.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end417.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then409.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %conn_wait.i, ptr noundef nonnull %__wq_entry.i) #10
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end417.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %200 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %.pr.i = load i32, ptr %call7.i.i.i, align 8
  br label %if.end423.i

if.end423.i:                                      ; preds = %__out.i, %if.end399.i.if.end423.i_crit_edge
  %201 = phi i32 [ %.pr.i, %__out.i ], [ %194, %if.end399.i.if.end423.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %201)
  %cmp426.not.i = icmp eq i32 %201, 2
  br i1 %cmp426.not.i, label %do.body455.i, label %do.body437.i

do.body437.i:                                     ; preds = %if.end423.i
  %call438.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.168, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call438.i)
  %tobool439.not.i = icmp eq i32 %call438.i, 0
  br i1 %tobool439.not.i, label %do.body437.i.rdma_connect_failed.i_crit_edge, label %do.end443.i

do.body437.i.rdma_connect_failed.i_crit_edge:     ; preds = %do.body437.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_connect_failed.i

do.end443.i:                                      ; preds = %do.body437.i
  call void @__sanitizer_cov_trace_pc() #12
  %call445.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1661, i32 noundef %port.0) #13
  br label %rdma_connect_failed.i

do.body455.i:                                     ; preds = %if.end423.i
  %202 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp456.not.i = icmp eq i32 %202, 0
  br i1 %cmp456.not.i, label %lor.lhs.false458.i, label %do.body455.i.do.body463.i_crit_edge

do.body455.i.do.body463.i_crit_edge:              ; preds = %do.body455.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body463.i

lor.lhs.false458.i:                               ; preds = %do.body455.i
  %203 = load i32, ptr @smbd_logging_class, align 4
  %and459.i = and i32 %203, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and459.i)
  %tobool460.not.i = icmp eq i32 %and459.i, 0
  br i1 %tobool460.not.i, label %lor.lhs.false458.i.do.end479.i_crit_edge, label %lor.lhs.false458.i.do.body463.i_crit_edge

lor.lhs.false458.i.do.body463.i_crit_edge:        ; preds = %lor.lhs.false458.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body463.i

lor.lhs.false458.i.do.end479.i_crit_edge:         ; preds = %lor.lhs.false458.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end479.i

do.body463.i:                                     ; preds = %lor.lhs.false458.i.do.body463.i_crit_edge, %do.body455.i.do.body463.i_crit_edge
  %call464.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.172, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call464.i)
  %tobool465.not.i = icmp eq i32 %call464.i, 0
  br i1 %tobool465.not.i, label %do.body463.i.do.end479.i_crit_edge, label %do.end469.i

do.body463.i.do.end479.i_crit_edge:               ; preds = %do.body463.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end479.i

do.end469.i:                                      ; preds = %do.body463.i
  call void @__sanitizer_cov_trace_pc() #12
  %call471.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1665) #13
  br label %do.end479.i

do.end479.i:                                      ; preds = %do.end469.i, %do.body463.i.do.end479.i_crit_edge, %lor.lhs.false458.i.do.end479.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %name.i) #10
  %204 = call ptr @memset(ptr %name.i, i32 255, i32 80)
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name.i, i32 noundef 80, ptr noundef nonnull @.str.248, ptr noundef %call7.i.i.i) #10
  %call2.i = call ptr @kmem_cache_create(ptr noundef nonnull %name.i, i32 noundef 296, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  %request_cache.i41 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 63
  %205 = ptrtoint ptr %request_cache.i41 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call2.i, ptr %request_cache.i41, align 8
  %tobool.not.i42 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i42, label %do.end479.i.do.body491.i_crit_edge, label %if.end.i45

do.end479.i.do.body491.i_crit_edge:               ; preds = %do.end479.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body491.i

if.end.i45:                                       ; preds = %do.end479.i
  %206 = ptrtoint ptr %send_credit_target.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %send_credit_target.i, align 4
  %call5.i = call ptr @mempool_create(i32 noundef %207, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call2.i) #10
  %request_mempool.i44 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 64
  %208 = ptrtoint ptr %request_mempool.i44 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call5.i, ptr %request_mempool.i44, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end.i45.out1.i_crit_edge, label %if.end9.i

if.end.i45.out1.i_crit_edge:                      ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %out1.i

if.end9.i:                                        ; preds = %if.end.i45
  %call11.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name.i, i32 noundef 80, ptr noundef nonnull @.str.249, ptr noundef %call7.i.i.i) #10
  %209 = ptrtoint ptr %max_receive_size.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %max_receive_size.i, align 4
  %add.i = add i32 %210, 40
  %call13.i = call ptr @kmem_cache_create(ptr noundef nonnull %name.i, i32 noundef %add.i, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  %response_cache.i47 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 65
  %211 = ptrtoint ptr %response_cache.i47 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call13.i, ptr %response_cache.i47, align 8
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %if.end9.i.out2.i_crit_edge, label %if.end17.i

if.end9.i.out2.i_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2.i

if.end17.i:                                       ; preds = %if.end9.i
  %212 = ptrtoint ptr %receive_credit_max.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %receive_credit_max.i, align 8
  %call19.i = call ptr @mempool_create(i32 noundef %213, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call13.i) #10
  %response_mempool.i49 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 66
  %214 = ptrtoint ptr %response_mempool.i49 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call19.i, ptr %response_mempool.i49, align 4
  %tobool21.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool21.not.i, label %if.end17.i.out3.i_crit_edge, label %if.end23.i

if.end17.i.out3.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out3.i

if.end23.i:                                       ; preds = %if.end17.i
  %call25.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name.i, i32 noundef 80, ptr noundef nonnull @.str.250, ptr noundef %call7.i.i.i) #10
  %call27.i50 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.251, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull %name.i) #10
  %workqueue.i51 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 61
  %215 = ptrtoint ptr %workqueue.i51 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call27.i50, ptr %workqueue.i51, align 8
  %tobool29.not.i = icmp eq ptr %call27.i50, null
  br i1 %tobool29.not.i, label %if.end23.i.out4.i_crit_edge, label %if.end31.i

if.end23.i.out4.i_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out4.i

if.end31.i:                                       ; preds = %if.end23.i
  %216 = ptrtoint ptr %receive_credit_max.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %receive_credit_max.i, align 8
  %reassembly_queue.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 52
  %218 = ptrtoint ptr %reassembly_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %reassembly_queue.i.i, ptr %reassembly_queue.i.i, align 8
  %prev.i.i.i52 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 52, i32 1
  %219 = ptrtoint ptr %prev.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %reassembly_queue.i.i, ptr %prev.i.i.i52, align 4
  %reassembly_queue_lock.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 53
  call void @__raw_spin_lock_init(ptr noundef %reassembly_queue_lock.i.i, ptr noundef nonnull @.str.253, ptr noundef nonnull @allocate_receive_buffers.__key, i16 noundef signext 3) #10
  %reassembly_data_length.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 55
  %220 = ptrtoint ptr %reassembly_data_length.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %reassembly_data_length.i.i, align 8
  %reassembly_queue_length.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 56
  %221 = ptrtoint ptr %reassembly_queue_length.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %reassembly_queue_length.i.i, align 4
  %receive_queue.i.i53 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 45
  %222 = ptrtoint ptr %receive_queue.i.i53 to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %receive_queue.i.i53, ptr %receive_queue.i.i53, align 4
  %prev.i48.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 45, i32 1
  %223 = ptrtoint ptr %prev.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %receive_queue.i.i53, ptr %prev.i48.i.i, align 8
  %receive_queue_lock.i.i54 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 47
  call void @__raw_spin_lock_init(ptr noundef %receive_queue_lock.i.i54, ptr noundef nonnull @.str.255, ptr noundef nonnull @allocate_receive_buffers.__key.254, i16 noundef signext 3) #10
  %count_receive_queue.i.i55 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 46
  %224 = ptrtoint ptr %count_receive_queue.i.i55 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %count_receive_queue.i.i55, align 4
  %empty_packet_queue.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 48
  %225 = ptrtoint ptr %empty_packet_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %empty_packet_queue.i.i, ptr %empty_packet_queue.i.i, align 4
  %prev.i49.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 48, i32 1
  %226 = ptrtoint ptr %prev.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %empty_packet_queue.i.i, ptr %prev.i49.i.i, align 8
  %empty_packet_queue_lock.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 50
  call void @__raw_spin_lock_init(ptr noundef %empty_packet_queue_lock.i.i, ptr noundef nonnull @.str.257, ptr noundef nonnull @allocate_receive_buffers.__key.256, i16 noundef signext 3) #10
  %count_empty_packet_queue.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 49
  %227 = ptrtoint ptr %count_empty_packet_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %count_empty_packet_queue.i.i, align 4
  %wait_receive_queues.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 51
  call void @__init_waitqueue_head(ptr noundef %wait_receive_queues.i.i, ptr noundef nonnull @.str.259, ptr noundef nonnull @allocate_receive_buffers.__key.258) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp55.i.i = icmp sgt i32 %217, 0
  br i1 %cmp55.i.i, label %if.end31.i.for.body.i.i_crit_edge, label %if.end31.i.do.body509.i_crit_edge

if.end31.i.do.body509.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body509.i

if.end31.i.for.body.i.i_crit_edge:                ; preds = %if.end31.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %if.end31.i.for.body.i.i_crit_edge
  %i.056.i.i = phi i32 [ %inc16.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end31.i.for.body.i.i_crit_edge ]
  %228 = ptrtoint ptr %response_mempool.i49 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %response_mempool.i49, align 4
  %call12.i.i = call noalias ptr @mempool_alloc(ptr noundef %229, i32 noundef 3264) #10
  %tobool.not.i.i56 = icmp eq ptr %call12.i.i, null
  br i1 %tobool.not.i.i56, label %while.cond.preheader.i.i, label %if.end.i.i58

while.cond.preheader.i.i:                         ; preds = %for.body.i.i
  %230 = ptrtoint ptr %receive_queue.i.i53 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile ptr, ptr %receive_queue.i.i53, align 4
  %cmp.i.not57.i.i = icmp eq ptr %231, %receive_queue.i.i53
  br i1 %cmp.i.not57.i.i, label %while.cond.preheader.i.i.do.body39.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.do.body39.i_crit_edge:   ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

if.end.i.i58:                                     ; preds = %for.body.i.i
  %232 = ptrtoint ptr %call12.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call7.i.i.i, ptr %call12.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.smbd_response, ptr %call12.i.i, i32 0, i32 4
  %233 = ptrtoint ptr %prev.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %prev.i48.i.i, align 8
  %call.i.i.i.i57 = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %234, ptr noundef %receive_queue.i.i53) #10
  br i1 %call.i.i.i.i57, label %if.end.i.i.i.i59, label %if.end.i.i58.list_add_tail.exit.i.i_crit_edge

if.end.i.i58.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i59:                                 ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  %235 = ptrtoint ptr %prev.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %list.i.i, ptr %prev.i48.i.i, align 8
  %236 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %receive_queue.i.i53, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.smbd_response, ptr %call12.i.i, i32 0, i32 4, i32 1
  %237 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %234, ptr %prev3.i.i.i.i, align 4
  %238 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile ptr %list.i.i, ptr %234, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i59, %if.end.i.i58.list_add_tail.exit.i.i_crit_edge
  %239 = ptrtoint ptr %count_receive_queue.i.i55 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %count_receive_queue.i.i55, align 4
  %inc.i.i60 = add i32 %240, 1
  store i32 %inc.i.i60, ptr %count_receive_queue.i.i55, align 4
  %inc16.i.i = add nuw nsw i32 %i.056.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc16.i.i, %217
  br i1 %exitcond.not.i.i, label %list_add_tail.exit.i.i.do.body509.i_crit_edge, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_add_tail.exit.i.i.do.body509.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body509.i

while.body.i.i:                                   ; preds = %list_del.exit.i.i66.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %241 = phi ptr [ %255, %list_del.exit.i.i66.while.body.i.i_crit_edge ], [ %231, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i61 = getelementptr i8, ptr %241, i32 -28
  %call.i.i51.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %241) #10
  br i1 %call.i.i51.i.i, label %if.end.i.i52.i.i, label %while.body.i.i.list_del.exit.i.i66_crit_edge

while.body.i.i.list_del.exit.i.i66_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i66

if.end.i.i52.i.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i62 = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %prev.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %prev.i.i.i.i62, align 4
  %244 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %241, align 4
  %prev1.i.i.i.i.i63 = getelementptr inbounds %struct.list_head, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %prev1.i.i.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %243, ptr %prev1.i.i.i.i.i63, align 4
  %247 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile ptr %245, ptr %243, align 4
  br label %list_del.exit.i.i66

list_del.exit.i.i66:                              ; preds = %if.end.i.i52.i.i, %while.body.i.i.list_del.exit.i.i66_crit_edge
  %248 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr inttoptr (i32 256 to ptr), ptr %241, align 4
  %prev.i53.i.i = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %249 = ptrtoint ptr %prev.i53.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i53.i.i, align 4
  %250 = ptrtoint ptr %count_receive_queue.i.i55 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %count_receive_queue.i.i55, align 4
  %dec.i.i64 = add i32 %251, -1
  store i32 %dec.i.i64, ptr %count_receive_queue.i.i55, align 4
  %252 = ptrtoint ptr %response_mempool.i49 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %response_mempool.i49, align 4
  call void @mempool_free(ptr noundef %add.ptr.i.i61, ptr noundef %253) #10
  %254 = ptrtoint ptr %receive_queue.i.i53 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile ptr, ptr %receive_queue.i.i53, align 4
  %cmp.i.not.i.i65 = icmp eq ptr %255, %receive_queue.i.i53
  br i1 %cmp.i.not.i.i65, label %list_del.exit.i.i66.do.body39.i_crit_edge, label %list_del.exit.i.i66.while.body.i.i_crit_edge

list_del.exit.i.i66.while.body.i.i_crit_edge:     ; preds = %list_del.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

list_del.exit.i.i66.do.body39.i_crit_edge:        ; preds = %list_del.exit.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.i

do.body39.i:                                      ; preds = %list_del.exit.i.i66.do.body39.i_crit_edge, %while.cond.preheader.i.i.do.body39.i_crit_edge
  %call40.i = call i32 @___ratelimit(ptr noundef nonnull @allocate_caches_and_workqueue._rs, ptr noundef nonnull @__func__.allocate_caches_and_workqueue) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %do.body39.i.out5.i_crit_edge, label %do.end.i67

do.body39.i.out5.i_crit_edge:                     ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out5.i

do.end.i67:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull @__func__.allocate_caches_and_workqueue, i32 noundef 1498) #13
  br label %out5.i

out5.i:                                           ; preds = %do.end.i67, %do.body39.i.out5.i_crit_edge
  %256 = ptrtoint ptr %workqueue.i51 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %workqueue.i51, align 8
  call void @destroy_workqueue(ptr noundef %257) #10
  br label %out4.i

out4.i:                                           ; preds = %out5.i, %if.end23.i.out4.i_crit_edge
  %258 = ptrtoint ptr %response_mempool.i49 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %response_mempool.i49, align 4
  call void @mempool_destroy(ptr noundef %259) #10
  br label %out3.i

out3.i:                                           ; preds = %out4.i, %if.end17.i.out3.i_crit_edge
  %260 = ptrtoint ptr %response_cache.i47 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %response_cache.i47, align 8
  call void @kmem_cache_destroy(ptr noundef %261) #10
  br label %out2.i

out2.i:                                           ; preds = %out3.i, %if.end9.i.out2.i_crit_edge
  %262 = ptrtoint ptr %request_mempool.i44 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %request_mempool.i44, align 4
  call void @mempool_destroy(ptr noundef %263) #10
  br label %out1.i

out1.i:                                           ; preds = %out2.i, %if.end.i45.out1.i_crit_edge
  %264 = ptrtoint ptr %request_cache.i41 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %request_cache.i41, align 8
  call void @kmem_cache_destroy(ptr noundef %265) #10
  br label %do.body491.i

do.body491.i:                                     ; preds = %out1.i, %do.end479.i.do.body491.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %name.i) #10
  %call492.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.176, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call492.i)
  %tobool493.not.i = icmp eq i32 %call492.i, 0
  br i1 %tobool493.not.i, label %do.body491.i.rdma_connect_failed.i_crit_edge, label %do.end497.i

do.body491.i.rdma_connect_failed.i_crit_edge:     ; preds = %do.body491.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_connect_failed.i

do.end497.i:                                      ; preds = %do.body491.i
  call void @__sanitizer_cov_trace_pc() #12
  %call499.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1669) #13
  br label %rdma_connect_failed.i

do.body509.i:                                     ; preds = %list_add_tail.exit.i.i.do.body509.i_crit_edge, %if.end31.i.do.body509.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %name.i) #10
  %wait_send_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 59
  call void @__init_waitqueue_head(ptr noundef %wait_send_queue.i, ptr noundef nonnull @.str.181, ptr noundef nonnull @_smbd_get_connection.__key.180) #10
  %idle_timer_work.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 62
  call void @__init_work(ptr noundef %idle_timer_work.i, i32 noundef 0) #10
  %266 = ptrtoint ptr %idle_timer_work.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 -64, ptr %idle_timer_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 62, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.183, ptr noundef nonnull @_smbd_get_connection.__key.182, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry520.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 62, i32 0, i32 1
  %267 = ptrtoint ptr %entry520.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store volatile ptr %entry520.i, ptr %entry520.i, align 8
  %prev.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 62, i32 0, i32 1, i32 1
  %268 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %entry520.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 62, i32 0, i32 2
  %269 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @idle_connection_timer, ptr %func.i, align 8
  %timer.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 62, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.185, ptr noundef nonnull @_smbd_get_connection.__key.184) #10
  %270 = ptrtoint ptr %workqueue.i51 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %workqueue.i51, align 8
  %272 = ptrtoint ptr %keep_alive_interval.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %keep_alive_interval.i, align 8
  %mul.i = mul i32 %273, 100
  %call.i816.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %271, ptr noundef %idle_timer_work.i, i32 noundef %mul.i) #10
  %wait_send_pending.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 43
  call void @__init_waitqueue_head(ptr noundef %wait_send_pending.i, ptr noundef nonnull @.str.187, ptr noundef nonnull @_smbd_get_connection.__key.186) #10
  %send_pending.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 42
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %send_pending.i, i32 noundef 4) #10
  %274 = ptrtoint ptr %send_pending.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store volatile i32 0, ptr %send_pending.i, align 8
  %wait_post_send.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 44
  call void @__init_waitqueue_head(ptr noundef %wait_post_send.i, ptr noundef nonnull @.str.189, ptr noundef nonnull @_smbd_get_connection.__key.188) #10
  %disconnect_work.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 13
  call void @__init_work(ptr noundef %disconnect_work.i, i32 noundef 0) #10
  %275 = ptrtoint ptr %disconnect_work.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 -64, ptr %disconnect_work.i, align 8
  %lockdep_map546.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 13, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map546.i, ptr noundef nonnull @.str.191, ptr noundef nonnull @_smbd_get_connection.__key.190, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry548.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %276 = ptrtoint ptr %entry548.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store volatile ptr %entry548.i, ptr %entry548.i, align 4
  %prev.i817.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 13, i32 1, i32 1
  %277 = ptrtoint ptr %prev.i817.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %entry548.i, ptr %prev.i817.i, align 8
  %func550.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 13, i32 2
  %278 = ptrtoint ptr %func550.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr @smbd_disconnect_rdma_work, ptr %func550.i, align 4
  %post_send_credits_work.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 14
  call void @__init_work(ptr noundef %post_send_credits_work.i, i32 noundef 0) #10
  %279 = ptrtoint ptr %post_send_credits_work.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 -64, ptr %post_send_credits_work.i, align 4
  %lockdep_map559.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 14, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map559.i, ptr noundef nonnull @.str.193, ptr noundef nonnull @_smbd_get_connection.__key.192, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry561.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  %280 = ptrtoint ptr %entry561.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store volatile ptr %entry561.i, ptr %entry561.i, align 8
  %prev.i818.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 14, i32 1, i32 1
  %281 = ptrtoint ptr %prev.i818.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %entry561.i, ptr %prev.i818.i, align 4
  %func563.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 14, i32 2
  %282 = ptrtoint ptr %func563.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr @smbd_post_send_credits, ptr %func563.i, align 8
  %new_credits_offered.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 16
  %283 = ptrtoint ptr %new_credits_offered.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 0, ptr %new_credits_offered.i, align 4
  %lock_new_credits_offered.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 15
  call void @__raw_spin_lock_init(ptr noundef %lock_new_credits_offered.i, ptr noundef nonnull @.str.195, ptr noundef nonnull @_smbd_get_connection.__key.194, i16 noundef signext 3) #10
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %receive_queue_lock.i.i54) #10
  %284 = ptrtoint ptr %receive_queue.i.i53 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load volatile ptr, ptr %receive_queue.i.i53, align 4
  %cmp.i.not.i.i = icmp eq ptr %285, %receive_queue.i.i53
  br i1 %cmp.i.not.i.i, label %do.body509.i.get_receive_buffer.exit.i_crit_edge, label %if.then.i.i20

do.body509.i.get_receive_buffer.exit.i_crit_edge: ; preds = %do.body509.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_receive_buffer.exit.i

if.then.i.i20:                                    ; preds = %do.body509.i
  %add.ptr.i.i = getelementptr i8, ptr %285, i32 -28
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %285) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i21, label %if.then.i.i20.list_del.exit.i.i_crit_edge

if.then.i.i20.list_del.exit.i.i_crit_edge:        ; preds = %if.then.i.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i21:                                 ; preds = %if.then.i.i20
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %prev.i.i.i.i, align 4
  %288 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %285, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %287, ptr %prev1.i.i.i.i.i, align 4
  %291 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %291)
  store volatile ptr %289, ptr %287, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i21, %if.then.i.i20.list_del.exit.i.i_crit_edge
  %292 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr inttoptr (i32 256 to ptr), ptr %285, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %285, i32 0, i32 1
  %293 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %294 = ptrtoint ptr %count_receive_queue.i.i55 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %count_receive_queue.i.i55, align 4
  %dec.i.i = add i32 %295, -1
  store i32 %dec.i.i, ptr %count_receive_queue.i.i55, align 4
  %count_get_receive_buffer.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 67
  %296 = ptrtoint ptr %count_get_receive_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %count_get_receive_buffer.i.i, align 8
  %inc.i.i = add i32 %297, 1
  store i32 %inc.i.i, ptr %count_get_receive_buffer.i.i, align 8
  br label %get_receive_buffer.exit.i

get_receive_buffer.exit.i:                        ; preds = %list_del.exit.i.i, %do.body509.i.get_receive_buffer.exit.i_crit_edge
  %ret.0.i.i = phi ptr [ null, %do.body509.i.get_receive_buffer.exit.i_crit_edge ], [ %add.ptr.i.i, %list_del.exit.i.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %receive_queue_lock.i.i54, i32 noundef %call2.i.i) #10
  %type.i = getelementptr inbounds %struct.smbd_response, ptr %ret.0.i.i, i32 0, i32 3
  %298 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 0, ptr %type.i, align 8
  %call1.i = call fastcc i32 @smbd_post_recv(ptr noundef %call7.i.i.i, ptr noundef %ret.0.i.i) #10
  %299 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp.not.i22 = icmp eq i32 %299, 0
  br i1 %cmp.not.i22, label %lor.lhs.false.i25, label %get_receive_buffer.exit.i.do.body3.i_crit_edge

get_receive_buffer.exit.i.do.body3.i_crit_edge:   ; preds = %get_receive_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i

lor.lhs.false.i25:                                ; preds = %get_receive_buffer.exit.i
  %300 = load i32, ptr @smbd_logging_class, align 4
  %and.i23 = and i32 %300, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i24, label %lor.lhs.false.i25.do.end17.i_crit_edge, label %lor.lhs.false.i25.do.body3.i_crit_edge

lor.lhs.false.i25.do.body3.i_crit_edge:           ; preds = %lor.lhs.false.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i

lor.lhs.false.i25.do.end17.i_crit_edge:           ; preds = %lor.lhs.false.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17.i

do.body3.i:                                       ; preds = %lor.lhs.false.i25.do.body3.i_crit_edge, %get_receive_buffer.exit.i.do.body3.i_crit_edge
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_negotiate._rs, ptr noundef nonnull @__func__.smbd_negotiate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body3.i.do.end17.i_crit_edge, label %do.end.i26

do.body3.i.do.end17.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17.i

do.end.i26:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %sge.i = getelementptr inbounds %struct.smbd_response, ptr %ret.0.i.i, i32 0, i32 2
  %301 = ptrtoint ptr %sge.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %sge.i, align 8
  %length.i = getelementptr inbounds %struct.smbd_response, ptr %ret.0.i.i, i32 0, i32 2, i32 1
  %303 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %length.i, align 8
  %lkey.i = getelementptr inbounds %struct.smbd_response, ptr %ret.0.i.i, i32 0, i32 2, i32 2
  %305 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %lkey.i, align 4
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @__func__.smbd_negotiate, i32 noundef 1084, i32 noundef %call1.i, i64 noundef %302, i32 noundef %304, i32 noundef %306) #13
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i26, %do.body3.i.do.end17.i_crit_edge, %lor.lhs.false.i25.do.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool18.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %do.end17.i.do.body581.i_crit_edge

do.end17.i.do.body581.i_crit_edge:                ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body581.i

if.end20.i:                                       ; preds = %do.end17.i
  %negotiate_completion.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 11
  %307 = ptrtoint ptr %negotiate_completion.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 0, ptr %negotiate_completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.390, ptr noundef nonnull @init_completion.__key) #10
  %negotiate_done.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 12
  %308 = ptrtoint ptr %negotiate_done.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 0, ptr %negotiate_done.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %send_wr.i.i) #10
  %309 = call ptr @memset(ptr %send_wr.i.i, i32 255, i32 40)
  %310 = ptrtoint ptr %request_mempool.i44 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %request_mempool.i44, align 4
  %call.i.i27 = call noalias ptr @mempool_alloc(ptr noundef %311, i32 noundef 3264) #10
  %tobool.not.i.i28 = icmp eq ptr %call.i.i27, null
  br i1 %tobool.not.i.i28, label %if.end20.i.smbd_post_send_negotiate_req.exit.thread.i_crit_edge, label %if.end.i.i30

if.end20.i.smbd_post_send_negotiate_req.exit.thread.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbd_post_send_negotiate_req.exit.thread.i

if.end.i.i30:                                     ; preds = %if.end20.i
  %312 = ptrtoint ptr %call.i.i27 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %call7.i.i.i, ptr %call.i.i27, align 8
  %packet.i.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 0, i32 4
  %313 = ptrtoint ptr %packet.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %313, i32 2)
  store i16 1, ptr %packet.i.i.i, align 1
  %max_version.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 0, i32 4, i32 2
  %314 = ptrtoint ptr %max_version.i.i to i32
  call void @__asan_storeN_noabort(i32 %314, i32 2)
  store i16 1, ptr %max_version.i.i, align 1
  %reserved.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 1
  %315 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_storeN_noabort(i32 %315, i32 2)
  store i16 0, ptr %reserved.i.i, align 1
  %316 = ptrtoint ptr %send_credit_target.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %send_credit_target.i, align 4
  %conv.i.i = trunc i32 %317 to i16
  %318 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  %credits_requested.i.i = getelementptr inbounds %struct.smbd_negotiate_req, ptr %packet.i.i.i, i32 0, i32 3
  %319 = ptrtoint ptr %credits_requested.i.i to i32
  call void @__asan_storeN_noabort(i32 %319, i32 2)
  store i16 %318, ptr %credits_requested.i.i, align 1
  %320 = ptrtoint ptr %max_send_size.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %max_send_size.i, align 8
  %322 = call i32 @llvm.bswap.i32(i32 %321) #10
  %preferred_send_size.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 1, i32 1
  %323 = ptrtoint ptr %preferred_send_size.i.i to i32
  call void @__asan_storeN_noabort(i32 %323, i32 4)
  store i32 %322, ptr %preferred_send_size.i.i, align 1
  %324 = ptrtoint ptr %max_receive_size.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %max_receive_size.i, align 4
  %326 = call i32 @llvm.bswap.i32(i32 %325) #10
  %max_receive_size3.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 1, i32 2
  %327 = ptrtoint ptr %max_receive_size3.i.i to i32
  call void @__asan_storeN_noabort(i32 %327, i32 4)
  store i32 %326, ptr %max_receive_size3.i.i, align 1
  %328 = ptrtoint ptr %max_fragmented_recv_size.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %max_fragmented_recv_size.i, align 4
  %330 = call i32 @llvm.bswap.i32(i32 %329) #10
  %max_fragmented_size.i.i = getelementptr inbounds %struct.smbd_negotiate_req, ptr %packet.i.i.i, i32 0, i32 6
  %331 = ptrtoint ptr %max_fragmented_size.i.i to i32
  call void @__asan_storeN_noabort(i32 %331, i32 4)
  store i32 %330, ptr %max_fragmented_size.i.i, align 1
  %num_sge.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 0, i32 3
  %332 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 1, ptr %num_sge.i.i, align 8
  %333 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %id.i.i, align 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %334, align 4
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 8
  %call.i.i145.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %packet.i.i.i) #10
  br i1 %call.i.i145.i.i, label %land.rhs.i.i.i.i, label %if.end39.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i30
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.ib_dma_map_single.exit.i.i_crit_edge, label %if.then.i.i.i.i32, !prof !701

land.rhs.i.i.i.i.ib_dma_map_single.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dma_map_single.exit.i.i

if.then.i.i.i.i32:                                ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = call ptr @dev_driver_string(ptr noundef %338) #10
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %338, i32 0, i32 3
  %339 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i31 = icmp eq ptr %340, null
  br i1 %tobool.not.i.i.i.i.i31, label %if.end.i.i.i.i.i33, label %if.then.i.i.i.i32.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i.i.i32.dev_name.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i33:                               ; preds = %if.then.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  %341 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %338, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i33, %if.then.i.i.i.i32.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %342, %if.end.i.i.i.i.i33 ], [ %340, %if.then.i.i.i.i32.dev_name.exit.i.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.274, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.275, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #10
  br label %ib_dma_map_single.exit.i.i

if.end39.i.i.i.i:                                 ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #12
  call void @debug_dma_map_single(ptr noundef %338, ptr noundef %packet.i.i.i, i32 noundef 20) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %343 = load ptr, ptr @mem_map, align 4
  %344 = ptrtoint ptr %packet.i.i.i to i32
  %sub.i.i.i.i = add i32 %344, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %343, i32 %shr.i.i.i.i
  %and.i.i.i.i = and i32 %344, 4095
  %call41.i.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %338, ptr noundef %add.ptr.i.i.i.i, i32 noundef %and.i.i.i.i, i32 noundef 20, i32 noundef 1, i32 noundef 0) #10
  br label %ib_dma_map_single.exit.i.i

ib_dma_map_single.exit.i.i:                       ; preds = %if.end39.i.i.i.i, %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.ib_dma_map_single.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %call41.i.i.i.i, %if.end39.i.i.i.i ], [ -1, %dev_name.exit.i.i.i.i ], [ -1, %land.rhs.i.i.i.i.ib_dma_map_single.exit.i.i_crit_edge ]
  %conv2.i.i.i = zext i32 %retval.0.i.i.i.i to i64
  %sge.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 0, i32 2
  %345 = ptrtoint ptr %sge.i.i to i32
  call void @__asan_store8_noabort(i32 %345)
  store i64 %conv2.i.i.i, ptr %sge.i.i, align 8
  %346 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %id.i.i, align 4
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %347, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %349, align 8
  call void @debug_dma_mapping_error(ptr noundef %351, i32 noundef %retval.0.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i.i)
  %cmp.i.i.i.i34 = icmp eq i32 %retval.0.i.i.i.i, -1
  br i1 %cmp.i.i.i.i34, label %ib_dma_map_single.exit.i.i.dma_mapping_failed.i.i_crit_edge, label %if.end13.i.i

ib_dma_map_single.exit.i.i.dma_mapping_failed.i.i_crit_edge: ; preds = %ib_dma_map_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_mapping_failed.i.i

if.end13.i.i:                                     ; preds = %ib_dma_map_single.exit.i.i
  %length.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 0, i32 2, i32 0, i32 1
  %352 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 20, ptr %length.i.i, align 8
  %353 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %pd.i.i, align 8
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %354, align 4
  %lkey.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 0, i32 2, i32 0, i32 2
  %357 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %lkey.i.i, align 4
  %358 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %id.i.i, align 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %359, align 4
  %362 = ptrtoint ptr %sge.i.i to i32
  call void @__asan_load8_noabort(i32 %362)
  %363 = load i64, ptr %sge.i.i, align 8
  %364 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %361, align 8
  %conv.i.i.i = trunc i64 %363 to i32
  call void @dma_sync_single_for_device(ptr noundef %365, i32 noundef %conv.i.i.i, i32 noundef 20, i32 noundef 1) #10
  %cqe.i.i = getelementptr inbounds %struct.smbd_request, ptr %call.i.i27, i32 0, i32 1
  %366 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr @send_done, ptr %cqe.i.i, align 4
  %367 = ptrtoint ptr %send_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr null, ptr %send_wr.i.i, align 8
  %368 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %cqe.i.i, ptr %4, align 8
  %369 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %sge.i.i, ptr %sg_list.i.i, align 8
  %370 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %num_sge.i.i, align 8
  %372 = ptrtoint ptr %num_sge29.i.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %371, ptr %num_sge29.i.i, align 4
  %373 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 2, ptr %opcode.i.i, align 8
  %374 = ptrtoint ptr %send_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 2, ptr %send_flags.i.i, align 4
  %375 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %cmp.not.i.i = icmp eq i32 %375, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end13.i.i.do.body34.i.i_crit_edge

if.end13.i.i.do.body34.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i.i

lor.lhs.false.i.i:                                ; preds = %if.end13.i.i
  %376 = load i32, ptr @smbd_logging_class, align 4
  %and.i.i = and i32 %376, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool31.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool31.not.i.i, label %lor.lhs.false.i.i.do.end56.i.i_crit_edge, label %lor.lhs.false.i.i.do.body34.i.i_crit_edge

lor.lhs.false.i.i.do.body34.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i.i

lor.lhs.false.i.i.do.end56.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56.i.i

do.body34.i.i:                                    ; preds = %lor.lhs.false.i.i.do.body34.i.i_crit_edge, %if.end13.i.i.do.body34.i.i_crit_edge
  %call35.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send_negotiate_req._rs, ptr noundef nonnull @__func__.smbd_post_send_negotiate_req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %do.body34.i.i.do.end56.i.i_crit_edge, label %do.end.i.i36

do.body34.i.i.do.end56.i.i_crit_edge:             ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56.i.i

do.end.i.i36:                                     ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %377 = ptrtoint ptr %sge.i.i to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %sge.i.i, align 8
  %379 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %length.i.i, align 8
  %381 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %lkey.i.i, align 4
  %call48.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.336, ptr noundef nonnull @__func__.smbd_post_send_negotiate_req, i32 noundef 728, i64 noundef %378, i32 noundef %380, i32 noundef %382) #13
  br label %do.end56.i.i

do.end56.i.i:                                     ; preds = %do.end.i.i36, %do.body34.i.i.do.end56.i.i_crit_edge, %lor.lhs.false.i.i.do.end56.i.i_crit_edge
  %call.i.i.i83.i = call zeroext i1 @__kasan_check_write(ptr noundef %send_pending.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %send_pending.i, i32 1, i32 3, i32 1) #10
  %383 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending.i, ptr %send_pending.i, i32 1, ptr elementtype(i32) %send_pending.i) #10, !srcloc !703
  %384 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %id.i.i, align 4
  %qp.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %385, i32 0, i32 2
  %386 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %qp.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #10
  %388 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !702
  %389 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %387, align 4
  %post_send.i.i.i = getelementptr inbounds %struct.ib_device, ptr %390, i32 0, i32 1, i32 6
  %391 = ptrtoint ptr %post_send.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %post_send.i.i.i, align 4
  %call.i.i.i37 = call i32 %392(ptr noundef %387, ptr noundef nonnull %send_wr.i.i, ptr noundef nonnull %dummy.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i37)
  %tobool59.not.i.i = icmp eq i32 %call.i.i.i37, 0
  br i1 %tobool59.not.i.i, label %if.end24.i, label %do.body70.i.i

do.body70.i.i:                                    ; preds = %do.end56.i.i
  %call71.i.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send_negotiate_req._rs.337, ptr noundef nonnull @__func__.smbd_post_send_negotiate_req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool72.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool72.not.i.i, label %do.body70.i.i.do.end86.i.i_crit_edge, label %do.end76.i.i

do.body70.i.i.do.end86.i.i_crit_edge:             ; preds = %do.body70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i.i

do.end76.i.i:                                     ; preds = %do.body70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call78.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, ptr noundef nonnull @__func__.smbd_post_send_negotiate_req, i32 noundef 736, i32 noundef %call.i.i.i37) #13
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %do.end76.i.i, %do.body70.i.i.do.end86.i.i_crit_edge
  %call.i.i144.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %send_pending.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %send_pending.i, i32 1, i32 3, i32 1) #10
  %393 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending.i, ptr %send_pending.i, i32 1, ptr elementtype(i32) %send_pending.i) #10, !srcloc !704
  %394 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %id.i.i, align 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %395, align 4
  %398 = ptrtoint ptr %sge.i.i to i32
  call void @__asan_load8_noabort(i32 %398)
  %399 = load i64, ptr %sge.i.i, align 8
  %400 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %length.i.i, align 8
  %402 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %397, align 8
  %conv.i146.i.i = trunc i64 %399 to i32
  call void @dma_unmap_page_attrs(ptr noundef %403, i32 noundef %conv.i146.i.i, i32 noundef %401, i32 noundef 1, i32 noundef 0) #10
  %404 = ptrtoint ptr %workqueue.i51 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %workqueue.i51, align 8
  %call.i.i147.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %405, ptr noundef %disconnect_work.i) #10
  br label %dma_mapping_failed.i.i

dma_mapping_failed.i.i:                           ; preds = %do.end86.i.i, %ib_dma_map_single.exit.i.i.dma_mapping_failed.i.i_crit_edge
  %rc.0.i.i38 = phi i32 [ %call.i.i.i37, %do.end86.i.i ], [ -5, %ib_dma_map_single.exit.i.i.dma_mapping_failed.i.i_crit_edge ]
  %406 = ptrtoint ptr %request_mempool.i44 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %request_mempool.i44, align 4
  call void @mempool_free(ptr noundef nonnull %call.i.i27, ptr noundef %407) #10
  br label %smbd_post_send_negotiate_req.exit.thread.i

smbd_post_send_negotiate_req.exit.thread.i:       ; preds = %dma_mapping_failed.i.i, %if.end20.i.smbd_post_send_negotiate_req.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %if.end20.i.smbd_post_send_negotiate_req.exit.thread.i_crit_edge ], [ %rc.0.i.i38, %dma_mapping_failed.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %send_wr.i.i) #10
  br label %do.body581.i

if.end24.i:                                       ; preds = %do.end56.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %send_wr.i.i) #10
  %call26.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %negotiate_completion.i, i32 noundef 12000) #10
  %408 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %408)
  %cmp28.not.i = icmp eq i32 %408, 0
  br i1 %cmp28.not.i, label %lor.lhs.false29.i, label %if.end24.i.do.body34.i_crit_edge

if.end24.i.do.body34.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i

lor.lhs.false29.i:                                ; preds = %if.end24.i
  %409 = load i32, ptr @smbd_logging_class, align 4
  %and30.i = and i32 %409, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %lor.lhs.false29.i.do.end50.i_crit_edge, label %lor.lhs.false29.i.do.body34.i_crit_edge

lor.lhs.false29.i.do.body34.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i

lor.lhs.false29.i.do.end50.i_crit_edge:           ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50.i

do.body34.i:                                      ; preds = %lor.lhs.false29.i.do.body34.i_crit_edge, %if.end24.i.do.body34.i_crit_edge
  %call35.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_negotiate._rs.332, ptr noundef nonnull @__func__.smbd_negotiate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.do.end50.i_crit_edge, label %do.end40.i

do.body34.i.do.end50.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50.i

do.end40.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334, ptr noundef nonnull @__func__.smbd_negotiate, i32 noundef 1096, i32 noundef %call26.i) #13
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end40.i, %do.body34.i.do.end50.i_crit_edge, %lor.lhs.false29.i.do.end50.i_crit_edge
  %410 = ptrtoint ptr %negotiate_done.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %negotiate_done.i, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %411)
  %tobool52.not.i = icmp eq i8 %411, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end598.i

if.end54.i:                                       ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call26.i)
  %switch.selectcmp.i = icmp eq i32 %call26.i, -512
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -4, i32 -107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %switch.selectcmp81.i = icmp eq i32 %call26.i, 0
  %switch.select82.i = select i1 %switch.selectcmp81.i, i32 -110, i32 %switch.select.i
  br label %do.body581.i

do.body581.i:                                     ; preds = %if.end54.i, %smbd_post_send_negotiate_req.exit.thread.i, %do.end17.i.do.body581.i_crit_edge
  %retval.0.i39.ph = phi i32 [ %retval.0.i.ph.i, %smbd_post_send_negotiate_req.exit.thread.i ], [ %switch.select82.i, %if.end54.i ], [ %call1.i, %do.end17.i.do.body581.i_crit_edge ]
  %call582.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.196, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call582.i)
  %tobool583.not.i = icmp eq i32 %call582.i, 0
  br i1 %tobool583.not.i, label %do.body581.i.negotiation_failed.i_crit_edge, label %do.end587.i

do.body581.i.negotiation_failed.i_crit_edge:      ; preds = %do.body581.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %negotiation_failed.i

do.end587.i:                                      ; preds = %do.body581.i
  call void @__sanitizer_cov_trace_pc() #12
  %call589.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1690, i32 noundef %retval.0.i39.ph) #13
  br label %negotiation_failed.i

if.end598.i:                                      ; preds = %do.end50.i
  %mr_list.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 35
  %412 = ptrtoint ptr %mr_list.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store volatile ptr %mr_list.i, ptr %mr_list.i, align 8
  %prev.i.i4 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 35, i32 1
  %413 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %mr_list.i, ptr %prev.i.i4, align 4
  %wait_mr.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 39
  call void @__init_waitqueue_head(ptr noundef %wait_mr.i, ptr noundef nonnull @.str.340, ptr noundef nonnull @allocate_mr_list.__key) #10
  %mr_list_lock.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 36
  call void @__raw_spin_lock_init(ptr noundef %mr_list_lock.i, ptr noundef nonnull @.str.342, ptr noundef nonnull @allocate_mr_list.__key.341, i16 noundef signext 3) #10
  %mr_ready_count.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 37
  %call.i.i.i5 = call zeroext i1 @__kasan_check_write(ptr noundef %mr_ready_count.i, i32 noundef 4) #10
  %414 = ptrtoint ptr %mr_ready_count.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store volatile i32 0, ptr %mr_ready_count.i, align 4
  %mr_used_count.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 38
  %call.i.i142.i = call zeroext i1 @__kasan_check_write(ptr noundef %mr_used_count.i, i32 noundef 4) #10
  %415 = ptrtoint ptr %mr_used_count.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store volatile i32 0, ptr %mr_used_count.i, align 8
  %wait_for_mr_cleanup.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 41
  call void @__init_waitqueue_head(ptr noundef %wait_for_mr_cleanup.i, ptr noundef nonnull @.str.344, ptr noundef nonnull @allocate_mr_list.__key.343) #10
  %416 = ptrtoint ptr %responder_resources294.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %responder_resources294.i, align 8
  %mul171.i = shl i32 %417, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul171.i)
  %cmp172.i = icmp sgt i32 %mul171.i, 0
  br i1 %cmp172.i, label %if.end598.i.for.body.i_crit_edge, label %if.end598.i.allocate_mr_list.exit_crit_edge

if.end598.i.allocate_mr_list.exit_crit_edge:      ; preds = %if.end598.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_mr_list.exit

if.end598.i.for.body.i_crit_edge:                 ; preds = %if.end598.i
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end598.i.for.body.i_crit_edge
  %i.0173.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %if.end598.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %418 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i7 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %418, i32 noundef 3520, i32 noundef 152) #14
  %tobool.not.i8 = icmp eq ptr %call7.i.i.i7, null
  br i1 %tobool.not.i8, label %for.body.i.out.i_crit_edge, label %if.end.i11

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i11:                                       ; preds = %for.body.i
  %419 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %pd.i.i, align 8
  %421 = ptrtoint ptr %mr_type.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %mr_type.i.i, align 4
  %423 = ptrtoint ptr %max_frmr_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %max_frmr_depth.i.i, align 4
  %call8.i9 = call ptr @ib_alloc_mr(ptr noundef %420, i32 noundef %422, i32 noundef %424) #10
  %mr.i = getelementptr inbounds %struct.smbd_mr, ptr %call7.i.i.i7, i32 0, i32 3
  %425 = ptrtoint ptr %mr.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr %call8.i9, ptr %mr.i, align 8
  %cmp.i.i10 = icmp ugt ptr %call8.i9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i10, label %do.body17.i, label %if.end36.i

do.body17.i:                                      ; preds = %if.end.i11
  %call18.i = call i32 @___ratelimit(ptr noundef nonnull @allocate_mr_list._rs, ptr noundef nonnull @__func__.allocate_mr_list) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.body17.i.out.i_crit_edge, label %do.end23.i

do.body17.i.out.i_crit_edge:                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

do.end23.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  %426 = ptrtoint ptr %mr_type.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %mr_type.i.i, align 4
  %428 = ptrtoint ptr %max_frmr_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %max_frmr_depth.i.i, align 4
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef nonnull @__func__.allocate_mr_list, i32 noundef 2261, i32 noundef %427, i32 noundef %429) #13
  br label %out.i

if.end36.i:                                       ; preds = %if.end.i11
  %430 = ptrtoint ptr %max_frmr_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %max_frmr_depth.i.i, align 4
  %432 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %431, i32 20) #10
  %433 = extractvalue { i32, i1 } %432, 1
  br i1 %433, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !706

kcalloc.exit.thread.i:                            ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %sgl150.i = getelementptr inbounds %struct.smbd_mr, ptr %call7.i.i.i7, i32 0, i32 4
  %434 = ptrtoint ptr %sgl150.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr null, ptr %sgl150.i, align 4
  br label %do.body49.i

if.end7.i.i.i:                                    ; preds = %if.end36.i
  %435 = extractvalue { i32, i1 } %432, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %435, i32 noundef 3520) #15
  %sgl.i = getelementptr inbounds %struct.smbd_mr, ptr %call7.i.i.i7, i32 0, i32 4
  %436 = ptrtoint ptr %sgl.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr %call8.i.i.i, ptr %sgl.i, align 4
  %tobool40.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool40.not.i, label %if.end7.i.i.i.do.body49.i_crit_edge, label %if.end68.i

if.end7.i.i.i.do.body49.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49.i

do.body49.i:                                      ; preds = %if.end7.i.i.i.do.body49.i_crit_edge, %kcalloc.exit.thread.i
  %mr.i105 = getelementptr inbounds %struct.smbd_mr, ptr %call7.i.i.i7, i32 0, i32 3
  %call50.i = call i32 @___ratelimit(ptr noundef nonnull @allocate_mr_list._rs.346, ptr noundef nonnull @__func__.allocate_mr_list) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %do.body49.i.do.end65.i_crit_edge, label %do.end55.i

do.body49.i.do.end65.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i

do.end55.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #12
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.348, ptr noundef nonnull @__func__.allocate_mr_list, i32 noundef 2269) #13
  br label %do.end65.i

do.end65.i:                                       ; preds = %do.end55.i, %do.body49.i.do.end65.i_crit_edge
  %437 = ptrtoint ptr %mr.i105 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %mr.i105, align 8
  %call.i.i14 = call i32 @ib_dereg_mr_user(ptr noundef %438, ptr noundef null) #10
  br label %out.i

if.end68.i:                                       ; preds = %if.end7.i.i.i
  %state.i = getelementptr inbounds %struct.smbd_mr, ptr %call7.i.i.i7, i32 0, i32 2
  %439 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 0, ptr %state.i, align 4
  %440 = ptrtoint ptr %call7.i.i.i7 to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %call7.i.i.i, ptr %call7.i.i.i7, align 8
  %list.i = getelementptr inbounds %struct.smbd_mr, ptr %call7.i.i.i7, i32 0, i32 1
  %441 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %prev.i.i4, align 4
  %call.i.i145.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %442, ptr noundef %mr_list.i) #10
  br i1 %call.i.i145.i, label %if.end.i.i146.i, label %if.end68.i.list_add_tail.exit.i_crit_edge

if.end68.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i146.i:                                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #12
  %443 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %list.i, ptr %prev.i.i4, align 4
  %444 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %mr_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.smbd_mr, ptr %call7.i.i.i7, i32 0, i32 1, i32 1
  %445 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %442, ptr %prev3.i.i.i, align 8
  %446 = ptrtoint ptr %442 to i32
  call void @__asan_store4_noabort(i32 %446)
  store volatile ptr %list.i, ptr %442, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i146.i, %if.end68.i.list_add_tail.exit.i_crit_edge
  %call.i.i143.i = call zeroext i1 @__kasan_check_write(ptr noundef %mr_ready_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %mr_ready_count.i, i32 1, i32 3, i32 1) #10
  %447 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mr_ready_count.i, ptr %mr_ready_count.i, i32 1, ptr elementtype(i32) %mr_ready_count.i) #10, !srcloc !703
  %inc.i = add nuw nsw i32 %i.0173.i, 1
  %448 = ptrtoint ptr %responder_resources294.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %responder_resources294.i, align 8
  %mul.i15 = shl i32 %449, 1
  %cmp.i = icmp slt i32 %inc.i, %mul.i15
  br i1 %cmp.i, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.allocate_mr_list.exit_crit_edge

list_add_tail.exit.i.allocate_mr_list.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_mr_list.exit

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

out.i:                                            ; preds = %do.end65.i, %do.end23.i, %do.body17.i.out.i_crit_edge, %for.body.i.out.i_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i7) #10
  %450 = ptrtoint ptr %mr_list.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %mr_list.i, align 8
  %cmp89.not174.i = icmp eq ptr %451, %mr_list.i
  br i1 %cmp89.not174.i, label %out.i.do.body610.i_crit_edge, label %out.i.for.body90.i_crit_edge

out.i.for.body90.i_crit_edge:                     ; preds = %out.i
  br label %for.body90.i

out.i.do.body610.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body610.i

for.body90.i:                                     ; preds = %for.body90.i.for.body90.i_crit_edge, %out.i.for.body90.i_crit_edge
  %.pn.in175.i = phi ptr [ %.pn.i, %for.body90.i.for.body90.i_crit_edge ], [ %451, %out.i.for.body90.i_crit_edge ]
  %smbdirect_mr.0.i = getelementptr i8, ptr %.pn.in175.i, i32 -4
  %452 = ptrtoint ptr %.pn.in175.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %.pn.i = load ptr, ptr %.pn.in175.i, align 4
  %mr91.i = getelementptr i8, ptr %.pn.in175.i, i32 12
  %453 = ptrtoint ptr %mr91.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %mr91.i, align 8
  %call.i148.i = call i32 @ib_dereg_mr_user(ptr noundef %454, ptr noundef null) #10
  %sgl93.i = getelementptr i8, ptr %.pn.in175.i, i32 16
  %455 = ptrtoint ptr %sgl93.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %sgl93.i, align 4
  call void @kfree(ptr noundef %456) #10
  call void @kfree(ptr noundef %smbdirect_mr.0.i) #10
  %cmp89.not.i = icmp eq ptr %.pn.i, %mr_list.i
  br i1 %cmp89.not.i, label %for.body90.i.do.body610.i_crit_edge, label %for.body90.i.for.body90.i_crit_edge

for.body90.i.for.body90.i_crit_edge:              ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body90.i

for.body90.i.do.body610.i_crit_edge:              ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body610.i

allocate_mr_list.exit:                            ; preds = %list_add_tail.exit.i.allocate_mr_list.exit_crit_edge, %if.end598.i.allocate_mr_list.exit_crit_edge
  %mr_recovery_work.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 40
  call void @__init_work(ptr noundef %mr_recovery_work.i, i32 noundef 0) #10
  %457 = ptrtoint ptr %mr_recovery_work.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 -64, ptr %mr_recovery_work.i, align 8
  %lockdep_map.i16 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 40, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i16, ptr noundef nonnull @.str.351, ptr noundef nonnull @allocate_mr_list.__key.350, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry75.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 40, i32 1
  %458 = ptrtoint ptr %entry75.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store volatile ptr %entry75.i, ptr %entry75.i, align 4
  %prev.i147.i = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 40, i32 1, i32 1
  %459 = ptrtoint ptr %prev.i147.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %entry75.i, ptr %prev.i147.i, align 8
  %func.i17 = getelementptr inbounds %struct.smbd_connection, ptr %call7.i.i.i, i32 0, i32 40, i32 2
  %460 = ptrtoint ptr %func.i17 to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr @smbd_mr_recovery_work, ptr %func.i17, align 4
  br label %_smbd_get_connection.exit

do.body610.i:                                     ; preds = %for.body90.i.do.body610.i_crit_edge, %out.i.do.body610.i_crit_edge
  %call611.i = call i32 @___ratelimit(ptr noundef nonnull @_smbd_get_connection._rs.200, ptr noundef nonnull @__func__._smbd_get_connection) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call611.i)
  %tobool612.not.i = icmp eq i32 %call611.i, 0
  br i1 %tobool612.not.i, label %do.body610.i.allocate_mr_failed.i_crit_edge, label %do.end616.i

do.body610.i.allocate_mr_failed.i_crit_edge:      ; preds = %do.body610.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_mr_failed.i

do.end616.i:                                      ; preds = %do.body610.i
  call void @__sanitizer_cov_trace_pc() #12
  %call618.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @__func__._smbd_get_connection, i32 noundef 1696) #13
  br label %allocate_mr_failed.i

allocate_mr_failed.i:                             ; preds = %do.end616.i, %do.body610.i.allocate_mr_failed.i_crit_edge
  call void @smbd_destroy(ptr noundef %server) #10
  br label %_smbd_get_connection.exit

negotiation_failed.i:                             ; preds = %do.end587.i, %do.body581.i.negotiation_failed.i_crit_edge
  %call629.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_timer_work.i) #10
  call fastcc void @destroy_receive_buffers(ptr noundef %call7.i.i.i) #10
  %461 = ptrtoint ptr %workqueue.i51 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %workqueue.i51, align 8
  call void @destroy_workqueue(ptr noundef %462) #10
  %463 = ptrtoint ptr %response_mempool.i49 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %response_mempool.i49, align 4
  call void @mempool_destroy(ptr noundef %464) #10
  %465 = ptrtoint ptr %response_cache.i47 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %response_cache.i47, align 8
  call void @kmem_cache_destroy(ptr noundef %466) #10
  %467 = ptrtoint ptr %request_mempool.i44 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %request_mempool.i44, align 4
  call void @mempool_destroy(ptr noundef %468) #10
  %469 = ptrtoint ptr %request_cache.i41 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %request_cache.i41, align 8
  call void @kmem_cache_destroy(ptr noundef %470) #10
  %471 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 3, ptr %call7.i.i.i, align 8
  call void @__init_waitqueue_head(ptr noundef %conn_wait.i, ptr noundef nonnull @.str.159, ptr noundef nonnull @_smbd_get_connection.__key.204) #10
  %472 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %id.i.i, align 4
  %call636.i = call i32 @rdma_disconnect(ptr noundef %473) #10
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1714) #10
  %474 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %475)
  %cmp645.i = icmp eq i32 %475, 5
  br i1 %cmp645.i, label %negotiation_failed.i.rdma_connect_failed.i_crit_edge, label %if.end648.i

negotiation_failed.i.rdma_connect_failed.i_crit_edge: ; preds = %negotiation_failed.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_connect_failed.i

if.end648.i:                                      ; preds = %negotiation_failed.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry649.i) #10
  %476 = call ptr @memset(ptr %__wq_entry649.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry649.i, i32 noundef 0) #10
  %call654835.i = call i32 @prepare_to_wait_event(ptr noundef %conn_wait.i, ptr noundef nonnull %__wq_entry649.i, i32 noundef 2) #10
  %477 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %478)
  %cmp656836.i = icmp eq i32 %478, 5
  br i1 %cmp656836.i, label %if.end648.i.for.end663.i_crit_edge, label %if.end648.i.cleanup660.i_crit_edge

if.end648.i.cleanup660.i_crit_edge:               ; preds = %if.end648.i
  br label %cleanup660.i

if.end648.i.for.end663.i_crit_edge:               ; preds = %if.end648.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end663.i

cleanup660.i:                                     ; preds = %cleanup660.i.cleanup660.i_crit_edge, %if.end648.i.cleanup660.i_crit_edge
  call void @schedule() #10
  %call654.i = call i32 @prepare_to_wait_event(ptr noundef %conn_wait.i, ptr noundef nonnull %__wq_entry649.i, i32 noundef 2) #10
  %479 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %call7.i.i.i, align 8
  %cmp656.i = icmp eq i32 %480, 5
  br i1 %cmp656.i, label %cleanup660.i.for.end663.i_crit_edge, label %cleanup660.i.cleanup660.i_crit_edge

cleanup660.i.cleanup660.i_crit_edge:              ; preds = %cleanup660.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup660.i

cleanup660.i.for.end663.i_crit_edge:              ; preds = %cleanup660.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end663.i

for.end663.i:                                     ; preds = %cleanup660.i.for.end663.i_crit_edge, %if.end648.i.for.end663.i_crit_edge
  call void @finish_wait(ptr noundef %conn_wait.i, ptr noundef nonnull %__wq_entry649.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry649.i) #10
  br label %rdma_connect_failed.i

rdma_connect_failed.i:                            ; preds = %for.end663.i, %negotiation_failed.i.rdma_connect_failed.i_crit_edge, %do.end497.i, %do.body491.i.rdma_connect_failed.i_crit_edge, %do.end443.i, %do.body437.i.rdma_connect_failed.i_crit_edge, %do.end388.i, %do.body382.i.rdma_connect_failed.i_crit_edge
  %481 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %id.i.i, align 4
  call void @rdma_destroy_qp(ptr noundef %482) #10
  br label %alloc_cq_failed.i

alloc_cq_failed.i:                                ; preds = %rdma_connect_failed.i, %do.end272.i, %do.body266.i.alloc_cq_failed.i_crit_edge, %if.then240.i
  %483 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %.pr830.i = load ptr, ptr %send_cq.i, align 4
  %tobool671.not.i = icmp eq ptr %.pr830.i, null
  br i1 %tobool671.not.i, label %alloc_cq_failed.i.if.end674.i_crit_edge, label %if.then672.i

alloc_cq_failed.i.if.end674.i_crit_edge:          ; preds = %alloc_cq_failed.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end674.i

if.then672.i:                                     ; preds = %alloc_cq_failed.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ib_free_cq(ptr noundef nonnull %.pr830.i) #10
  br label %if.end674.i

if.end674.i:                                      ; preds = %if.then672.i, %alloc_cq_failed.i.if.end674.i_crit_edge, %alloc_cq_failed.thread.i
  %484 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %recv_cq.i, align 8
  %tobool676.not.i = icmp eq ptr %485, null
  br i1 %tobool676.not.i, label %if.end674.i.config_failed.i_crit_edge, label %if.then677.i

if.end674.i.config_failed.i_crit_edge:            ; preds = %if.end674.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_failed.i

if.then677.i:                                     ; preds = %if.end674.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ib_free_cq(ptr noundef nonnull %485) #10
  br label %config_failed.i

config_failed.i:                                  ; preds = %if.then677.i, %if.end674.i.config_failed.i_crit_edge, %do.end87.i, %do.body81.i.config_failed.i_crit_edge, %do.end42.i, %do.body36.i.config_failed.i_crit_edge
  %486 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %pd.i.i, align 8
  %call.i819.i = call i32 @ib_dealloc_pd_user(ptr noundef %487, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i819.i)
  %tobool.not.i.i = icmp eq i32 %call.i819.i, 0
  br i1 %tobool.not.i.i, label %config_failed.i.ib_dealloc_pd.exit.i_crit_edge, label %land.rhs.i.i

config_failed.i.ib_dealloc_pd.exit.i_crit_edge:   ; preds = %config_failed.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dealloc_pd.exit.i

land.rhs.i.i:                                     ; preds = %config_failed.i
  %.b38.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge, label %if.then.i820.i, !prof !701

land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dealloc_pd.exit.i

if.then.i820.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.122) #10
  br label %ib_dealloc_pd.exit.i

ib_dealloc_pd.exit.i:                             ; preds = %if.then.i820.i, %land.rhs.i.i.ib_dealloc_pd.exit.i_crit_edge, %config_failed.i.ib_dealloc_pd.exit.i_crit_edge
  %488 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %id.i.i, align 4
  call void @rdma_destroy_id(ptr noundef %489) #10
  br label %create_id_failed.i

create_id_failed.i:                               ; preds = %ib_dealloc_pd.exit.i, %do.end.i, %do.body7.i.create_id_failed.i_crit_edge, %lor.lhs.false.i.create_id_failed.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %_smbd_get_connection.exit

_smbd_get_connection.exit:                        ; preds = %create_id_failed.i, %allocate_mr_failed.i, %allocate_mr_list.exit, %try_again._smbd_get_connection.exit_crit_edge
  %retval.0.i = phi ptr [ null, %create_id_failed.i ], [ null, %allocate_mr_failed.i ], [ null, %try_again._smbd_get_connection.exit_crit_edge ], [ %call7.i.i.i, %allocate_mr_list.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ird_ord_hdr.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %port_immutable.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp_attr.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param.i) #10
  %tobool.not = icmp ne ptr %retval.0.i, null
  %brmerge = or i1 %cmp, %tobool.not
  br i1 %brmerge, label %if.end, label %_smbd_get_connection.exit.try_again_crit_edge

_smbd_get_connection.exit.try_again_crit_edge:    ; preds = %_smbd_get_connection.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again

if.end:                                           ; preds = %_smbd_get_connection.exit
  call void @__sanitizer_cov_trace_pc() #12
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smbd_recv(ptr noundef %info, ptr nocapture noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %data_source.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_source.i, align 2, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %do.body2, label %if.end14

do.body2:                                         ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_recv._rs, ptr noundef nonnull @__func__.smbd_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body2.if.end46_crit_edge, label %do.end

do.body2.if.end46_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data_source.i, align 2, !range !705
  %conv8 = zext i8 %3 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv8) #13
  br label %if.end46

if.end14:                                         ; preds = %entry
  %4 = ptrtoint ptr %msg_iter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_iter, align 8
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.body26 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %7 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iov_len, align 4
  %call19 = tail call fastcc i32 @smbd_recv_buf(ptr noundef %info, ptr noundef %11, i32 noundef %13)
  br label %out

sw.bb20:                                          ; preds = %if.end14
  %14 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %bv_offset = getelementptr inbounds %struct.bio_vec, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bv_offset, align 4
  %bv_len = getelementptr inbounds %struct.bio_vec, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %bv_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_len, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1914) #10
  %reassembly_data_length.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 55
  %23 = ptrtoint ptr %reassembly_data_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reassembly_data_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.not.i = icmp ult i32 %24, %22
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb20.if.end19.i_crit_edge

sw.bb20.if.end19.i_crit_edge:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

lor.lhs.false.i:                                  ; preds = %sw.bb20
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp4.not.i = icmp eq i32 %26, 2
  br i1 %cmp4.not.i, label %if.then.i, label %lor.lhs.false.i.if.end19.i_crit_edge

lor.lhs.false.i.if.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then.i:                                        ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %27 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %wait_reassembly_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 54
  %call83.i = call i32 @prepare_to_wait_event(ptr noundef %wait_reassembly_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %28 = ptrtoint ptr %reassembly_data_length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reassembly_data_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %22)
  %cmp7.not84.i = icmp ult i32 %29, %22
  br i1 %cmp7.not84.i, label %if.then.i.lor.lhs.false8.i_crit_edge, label %if.then.i.if.end15.thread78.i_crit_edge

if.then.i.if.end15.thread78.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread78.i

if.then.i.lor.lhs.false8.i_crit_edge:             ; preds = %if.then.i
  br label %lor.lhs.false8.i

lor.lhs.false8.i:                                 ; preds = %cleanup.i.lor.lhs.false8.i_crit_edge, %if.then.i.lor.lhs.false8.i_crit_edge
  %call85.i = phi i32 [ %call.i, %cleanup.i.lor.lhs.false8.i_crit_edge ], [ %call83.i, %if.then.i.lor.lhs.false8.i_crit_edge ]
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp10.not.i = icmp eq i32 %31, 2
  br i1 %cmp10.not.i, label %if.end.i, label %lor.lhs.false8.i.if.end15.thread78.i_crit_edge

lor.lhs.false8.i.if.end15.thread78.i_crit_edge:   ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread78.i

if.end.i:                                         ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.end15.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #10
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %wait_reassembly_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %32 = ptrtoint ptr %reassembly_data_length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reassembly_data_length.i, align 8
  %cmp7.not.i = icmp ult i32 %33, %22
  br i1 %cmp7.not.i, label %cleanup.i.lor.lhs.false8.i_crit_edge, label %cleanup.i.if.end15.thread78.i_crit_edge

cleanup.i.if.end15.thread78.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread78.i

cleanup.i.lor.lhs.false8.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false8.i

if.end15.thread78.i:                              ; preds = %cleanup.i.if.end15.thread78.i_crit_edge, %lor.lhs.false8.i.if.end15.thread78.i_crit_edge, %if.then.i.if.end15.thread78.i_crit_edge
  call void @finish_wait(ptr noundef %wait_reassembly_queue.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %if.end19.i

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %out

if.end19.i:                                       ; preds = %if.end15.thread78.i, %lor.lhs.false.i.if.end19.i_crit_edge, %sw.bb20.if.end19.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %34 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %34, 512
  %35 = call i32 @llvm.read_register.i32(metadata !691) #10
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !707
  %39 = call i32 @llvm.read_register.i32(metadata !691) #10
  %and.i.i.i1.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 213
  %43 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !708
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %18, i32 noundef %or.i.i) #10
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %20
  %45 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp22.not.i = icmp eq i32 %45, 0
  br i1 %cmp22.not.i, label %lor.lhs.false23.i, label %if.end19.i.do.body27.i_crit_edge

if.end19.i.do.body27.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.i

lor.lhs.false23.i:                                ; preds = %if.end19.i
  %46 = load i32, ptr @smbd_logging_class, align 4
  %and.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %lor.lhs.false23.i.do.end43.i_crit_edge, label %lor.lhs.false23.i.do.body27.i_crit_edge

lor.lhs.false23.i.do.body27.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.i

lor.lhs.false23.i.do.end43.i_crit_edge:           ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

do.body27.i:                                      ; preds = %lor.lhs.false23.i.do.body27.i_crit_edge, %if.end19.i.do.body27.i_crit_edge
  %call28.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_recv_page._rs, ptr noundef nonnull @__func__.smbd_recv_page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.do.end43.i_crit_edge, label %do.end33.i

do.body27.i.do.end43.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.381, ptr noundef nonnull @__func__.smbd_recv_page, i32 noundef 1923, ptr noundef %18, ptr noundef %add.ptr.i, i32 noundef %22) #13
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end33.i, %do.body27.i.do.end43.i_crit_edge, %lor.lhs.false23.i.do.end43.i_crit_edge
  %call44.i = call fastcc i32 @smbd_recv_buf(ptr noundef %info, ptr noundef %add.ptr.i, i32 noundef %22) #10
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !709
  %47 = call i32 @llvm.read_register.i32(metadata !691) #10
  %and.i.i.i1.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 213
  %51 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %52, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !710
  %53 = call i32 @llvm.read_register.i32(metadata !691) #10
  %and.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %out

do.body26:                                        ; preds = %if.end14
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_recv._rs.56, ptr noundef nonnull @__func__.smbd_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body26.if.end46_crit_edge, label %do.end32

do.body26.if.end46_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %msg_iter to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %msg_iter, align 8
  %conv.i60 = zext i8 %58 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv.i60) #13
  br label %if.end46

out:                                              ; preds = %do.end43.i, %if.end15.i, %sw.bb
  %rc.0 = phi i32 [ %call19, %sw.bb ], [ %call44.i, %do.end43.i ], [ %call85.i, %if.end15.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp42 = icmp sgt i32 %rc.0, 0
  br i1 %cmp42, label %if.then44, label %out.if.end46_crit_edge

out.if.end46_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %59 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %count, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %out.if.end46_crit_edge, %do.end32, %do.body26.if.end46_crit_edge, %do.end, %do.body2.if.end46_crit_edge
  %rc.063 = phi i32 [ %rc.0, %if.then44 ], [ %rc.0, %out.if.end46_crit_edge ], [ -22, %do.end ], [ -22, %do.body2.if.end46_crit_edge ], [ -22, %do.end32 ], [ -22, %do.body26.if.end46_crit_edge ]
  ret i32 %rc.063
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smbd_recv_buf(ptr noundef %info, ptr nocapture noundef writeonly %buf, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reassembly_data_length = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 55
  %wait_reassembly_queue = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 54
  br label %again

again:                                            ; preds = %if.end216.again_crit_edge, %entry
  %0 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %lor.lhs.false, label %again.do.body2_crit_edge

again.do.body2_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false:                                    ; preds = %again
  %1 = load i32, ptr @smbd_logging_class, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end13_crit_edge, label %lor.lhs.false.do.body2_crit_edge

lor.lhs.false.do.body2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.body2:                                         ; preds = %lor.lhs.false.do.body2_crit_edge, %again.do.body2_crit_edge
  %call = call i32 @___ratelimit(ptr noundef nonnull @smbd_recv_buf._rs, ptr noundef nonnull @__func__.smbd_recv_buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body2.do.end13_crit_edge, label %do.end

do.body2.do.end13_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reassembly_data_length, align 8
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.356, ptr noundef nonnull @__func__.smbd_recv_buf, i32 noundef 1782, i32 noundef %size, i32 noundef %3) #13
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body2.do.end13_crit_edge, %lor.lhs.false.do.end13_crit_edge
  %4 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reassembly_data_length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp15.not = icmp ult i32 %5, %size
  br i1 %cmp15.not, label %do.body161, label %if.then16

if.then16:                                        ; preds = %do.end13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !711
  %reassembly_queue_length = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 56
  %first_entry_offset = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 57
  %6 = ptrtoint ptr %first_entry_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_entry_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp23355.not = icmp eq i32 %size, 0
  br i1 %cmp23355.not, label %if.then16.while.end_crit_edge, label %while.body.lr.ph

if.then16.while.end_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then16
  %8 = ptrtoint ptr %reassembly_queue_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reassembly_queue_length, align 4
  %reassembly_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp30 = icmp eq i32 %size, 4
  %reassembly_queue_lock = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 53
  %count_reassembly_queue = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 69
  %count_dequeue_reassembly_queue = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 71
  br label %while.body

while.body:                                       ; preds = %do.end125.while.body_crit_edge, %while.body.lr.ph
  %to_read.0360 = phi i32 [ %size, %while.body.lr.ph ], [ %sub99, %do.end125.while.body_crit_edge ]
  %data_read.0359 = phi i32 [ 0, %while.body.lr.ph ], [ %add100, %do.end125.while.body_crit_edge ]
  %offset.0358 = phi i32 [ %7, %while.body.lr.ph ], [ %offset.1, %do.end125.while.body_crit_edge ]
  %queue_removed.0357 = phi i32 [ 0, %while.body.lr.ph ], [ %queue_removed.1, %do.end125.while.body_crit_edge ]
  %queue_length.0356 = phi i32 [ %9, %while.body.lr.ph ], [ %queue_length.1, %do.end125.while.body_crit_edge ]
  %10 = ptrtoint ptr %reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %reassembly_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %reassembly_queue.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 -28
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  %packet.i = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 6
  %data_length26 = getelementptr inbounds %struct.smbd_data_transfer, ptr %packet.i, i32 0, i32 6
  %12 = ptrtoint ptr %data_length26 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %data_length26, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %first_segment = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 5
  %15 = ptrtoint ptr %first_segment to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %first_segment, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp ne i8 %16, 0
  %or.cond = and i1 %cmp30, %tobool29.not
  br i1 %or.cond, label %if.then31, label %if.end57

if.then31:                                        ; preds = %while.body
  %first_segment.le = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 5
  %remaining_data_length27 = getelementptr inbounds %struct.smbd_data_transfer, ptr %packet.i, i32 0, i32 4
  %17 = ptrtoint ptr %remaining_data_length27 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %remaining_data_length27, align 1
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %add = add i32 %19, %14
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %buf, align 4
  %21 = ptrtoint ptr %first_segment.le to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %first_segment.le, align 4
  %22 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp34.not = icmp eq i32 %22, 0
  br i1 %cmp34.not, label %lor.lhs.false35, label %if.then31.do.body40_crit_edge

if.then31.do.body40_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

lor.lhs.false35:                                  ; preds = %if.then31
  %23 = load i32, ptr @smbd_logging_class, align 4
  %and36 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false35.cleanup245_crit_edge, label %lor.lhs.false35.do.body40_crit_edge

lor.lhs.false35.do.body40_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

lor.lhs.false35.cleanup245_crit_edge:             ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup245

do.body40:                                        ; preds = %lor.lhs.false35.do.body40_crit_edge, %if.then31.do.body40_crit_edge
  %call41 = call i32 @___ratelimit(ptr noundef nonnull @smbd_recv_buf._rs.357, ptr noundef nonnull @__func__.smbd_recv_buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body40.cleanup245_crit_edge, label %do.end46

do.body40.cleanup245_crit_edge:                   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup245

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.359, ptr noundef nonnull @__func__.smbd_recv_buf, i32 noundef 1823, i32 noundef %add) #13
  br label %cleanup245

if.end57:                                         ; preds = %while.body
  %data_offset28 = getelementptr inbounds %struct.smbd_data_transfer, ptr %packet.i, i32 0, i32 5
  %24 = ptrtoint ptr %data_offset28 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %data_offset28, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %sub = sub i32 %14, %offset.0358
  %27 = call i32 @llvm.smin.i32(i32 %sub, i32 %to_read.0360)
  %add.ptr = getelementptr i8, ptr %buf, i32 %data_read.0359
  %add.ptr60 = getelementptr i8, ptr %packet.i, i32 %26
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 %offset.0358
  %28 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr61, i32 %27)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %to_read.0360)
  %cmp63.not = icmp sgt i32 %sub, %to_read.0360
  br i1 %cmp63.not, label %if.else96, label %if.then64

if.then64:                                        ; preds = %if.end57
  %dec = add i32 %queue_length.0356, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool65.not = icmp eq i32 %dec, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.then64
  %list = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then66.list_del.exit_crit_edge

if.then66.list_del.exit_crit_edge:                ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then66.list_del.exit_crit_edge
  %35 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end69

if.else:                                          ; preds = %if.then64
  call void @_raw_spin_lock_irq(ptr noundef %reassembly_queue_lock) #10
  %list67 = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 4
  %call.i.i324 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list67) #10
  br i1 %call.i.i324, label %if.end.i.i327, label %if.else.list_del.exit329_crit_edge

if.else.list_del.exit329_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit329

if.end.i.i327:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i325 = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i.i325 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i325, align 4
  %39 = ptrtoint ptr %list67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %list67, align 4
  %prev1.i.i.i326 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i326 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i326, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit329

list_del.exit329:                                 ; preds = %if.end.i.i327, %if.else.list_del.exit329_crit_edge
  %43 = ptrtoint ptr %list67 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %list67, align 4
  %prev.i328 = getelementptr inbounds %struct.smbd_response, ptr %spec.select.i, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %prev.i328 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i328, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reassembly_queue_lock) #10
  br label %if.end69

if.end69:                                         ; preds = %list_del.exit329, %list_del.exit
  %inc = add i32 %queue_removed.0357, 1
  %45 = ptrtoint ptr %count_reassembly_queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_reassembly_queue, align 8
  %dec70 = add i32 %46, -1
  store i32 %dec70, ptr %count_reassembly_queue, align 8
  %47 = ptrtoint ptr %count_dequeue_reassembly_queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count_dequeue_reassembly_queue, align 8
  %inc71 = add i32 %48, 1
  store i32 %inc71, ptr %count_dequeue_reassembly_queue, align 8
  call fastcc void @put_receive_buffer(ptr noundef %info, ptr noundef %spec.select.i)
  %49 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp73.not = icmp eq i32 %49, 0
  br i1 %cmp73.not, label %lor.lhs.false74, label %if.end69.do.body79_crit_edge

if.end69.do.body79_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

lor.lhs.false74:                                  ; preds = %if.end69
  %50 = load i32, ptr @smbd_logging_class, align 4
  %and75 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %lor.lhs.false74.if.end98_crit_edge, label %lor.lhs.false74.do.body79_crit_edge

lor.lhs.false74.do.body79_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

lor.lhs.false74.if.end98_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.body79:                                        ; preds = %lor.lhs.false74.do.body79_crit_edge, %if.end69.do.body79_crit_edge
  %call80 = call i32 @___ratelimit(ptr noundef nonnull @smbd_recv_buf._rs.361, ptr noundef nonnull @__func__.smbd_recv_buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body79.if.end98_crit_edge, label %do.end85

do.body79.if.end98_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.363, ptr noundef nonnull @__func__.smbd_recv_buf, i32 noundef 1854) #13
  br label %if.end98

if.else96:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %add97 = add i32 %27, %offset.0358
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %do.end85, %do.body79.if.end98_crit_edge, %lor.lhs.false74.if.end98_crit_edge
  %queue_length.1 = phi i32 [ %dec, %do.end85 ], [ %dec, %do.body79.if.end98_crit_edge ], [ %dec, %lor.lhs.false74.if.end98_crit_edge ], [ %queue_length.0356, %if.else96 ]
  %queue_removed.1 = phi i32 [ %inc, %do.end85 ], [ %inc, %do.body79.if.end98_crit_edge ], [ %inc, %lor.lhs.false74.if.end98_crit_edge ], [ %queue_removed.0357, %if.else96 ]
  %offset.1 = phi i32 [ 0, %do.end85 ], [ 0, %do.body79.if.end98_crit_edge ], [ 0, %lor.lhs.false74.if.end98_crit_edge ], [ %add97, %if.else96 ]
  %sub99 = sub i32 %to_read.0360, %27
  %add100 = add i32 %27, %data_read.0359
  %51 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp102.not = icmp eq i32 %51, 0
  br i1 %cmp102.not, label %lor.lhs.false103, label %if.end98.do.body108_crit_edge

if.end98.do.body108_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body108

lor.lhs.false103:                                 ; preds = %if.end98
  %52 = load i32, ptr @smbd_logging_class, align 4
  %and104 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %lor.lhs.false103.do.end125_crit_edge, label %lor.lhs.false103.do.body108_crit_edge

lor.lhs.false103.do.body108_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body108

lor.lhs.false103.do.end125_crit_edge:             ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end125

do.body108:                                       ; preds = %lor.lhs.false103.do.body108_crit_edge, %if.end98.do.body108_crit_edge
  %call109 = call i32 @___ratelimit(ptr noundef nonnull @smbd_recv_buf._rs.365, ptr noundef nonnull @__func__.smbd_recv_buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %do.body108.do.end125_crit_edge, label %do.end114

do.body108.do.end125_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end125

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #12
  %sub116 = sub i32 %14, %offset.1
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.367, ptr noundef nonnull @__func__.smbd_recv_buf, i32 noundef 1863, i32 noundef %27, i32 noundef %sub116, i32 noundef %sub99, i32 noundef %add100, i32 noundef %offset.1) #13
  br label %do.end125

do.end125:                                        ; preds = %do.end114, %do.body108.do.end125_crit_edge, %lor.lhs.false103.do.end125_crit_edge
  %cmp23 = icmp ult i32 %add100, %size
  br i1 %cmp23, label %do.end125.while.body_crit_edge, label %do.end125.while.end_crit_edge

do.end125.while.end_crit_edge:                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end125.while.body_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %do.end125.while.end_crit_edge, %if.then16.while.end_crit_edge
  %queue_removed.0.lcssa = phi i32 [ 0, %if.then16.while.end_crit_edge ], [ %queue_removed.1, %do.end125.while.end_crit_edge ]
  %offset.0.lcssa = phi i32 [ %7, %if.then16.while.end_crit_edge ], [ %offset.1, %do.end125.while.end_crit_edge ]
  %data_read.0.lcssa = phi i32 [ 0, %if.then16.while.end_crit_edge ], [ %add100, %do.end125.while.end_crit_edge ]
  %reassembly_queue_lock126 = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 53
  call void @_raw_spin_lock_irq(ptr noundef %reassembly_queue_lock126) #10
  %53 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reassembly_data_length, align 8
  %sub128 = sub i32 %54, %data_read.0.lcssa
  store i32 %sub128, ptr %reassembly_data_length, align 8
  %55 = ptrtoint ptr %reassembly_queue_length to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reassembly_queue_length, align 4
  %sub130 = sub i32 %56, %queue_removed.0.lcssa
  store i32 %sub130, ptr %reassembly_queue_length, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reassembly_queue_lock126) #10
  %57 = ptrtoint ptr %first_entry_offset to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %offset.0.lcssa, ptr %first_entry_offset, align 8
  %58 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp134.not = icmp eq i32 %58, 0
  br i1 %cmp134.not, label %lor.lhs.false135, label %while.end.do.body140_crit_edge

while.end.do.body140_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body140

lor.lhs.false135:                                 ; preds = %while.end
  %59 = load i32, ptr @smbd_logging_class, align 4
  %and136 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %lor.lhs.false135.cleanup245_crit_edge, label %lor.lhs.false135.do.body140_crit_edge

lor.lhs.false135.do.body140_crit_edge:            ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body140

lor.lhs.false135.cleanup245_crit_edge:            ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup245

do.body140:                                       ; preds = %lor.lhs.false135.do.body140_crit_edge, %while.end.do.body140_crit_edge
  %call141 = call i32 @___ratelimit(ptr noundef nonnull @smbd_recv_buf._rs.369, ptr noundef nonnull @__func__.smbd_recv_buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %do.body140.cleanup245_crit_edge, label %do.end146

do.body140.cleanup245_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup245

do.end146:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reassembly_data_length, align 8
  %62 = ptrtoint ptr %first_entry_offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %first_entry_offset, align 8
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.371, ptr noundef nonnull @__func__.smbd_recv_buf, i32 noundef 1874, i32 noundef %data_read.0.lcssa, i32 noundef %61, i32 noundef %63) #13
  br label %cleanup245

do.body161:                                       ; preds = %do.end13
  %64 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp162.not = icmp eq i32 %64, 0
  br i1 %cmp162.not, label %lor.lhs.false163, label %do.body161.do.body168_crit_edge

do.body161.do.body168_crit_edge:                  ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body168

lor.lhs.false163:                                 ; preds = %do.body161
  %65 = load i32, ptr @smbd_logging_class, align 4
  %and164 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %lor.lhs.false163.do.end184_crit_edge, label %lor.lhs.false163.do.body168_crit_edge

lor.lhs.false163.do.body168_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body168

lor.lhs.false163.do.end184_crit_edge:             ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end184

do.body168:                                       ; preds = %lor.lhs.false163.do.body168_crit_edge, %do.body161.do.body168_crit_edge
  %call169 = call i32 @___ratelimit(ptr noundef nonnull @smbd_recv_buf._rs.373, ptr noundef nonnull @__func__.smbd_recv_buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %do.body168.do.end184_crit_edge, label %do.end174

do.body168.do.end184_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end184

do.end174:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #12
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, ptr noundef nonnull @__func__.smbd_recv_buf, i32 noundef 1879) #13
  br label %do.end184

do.end184:                                        ; preds = %do.end174, %do.body168.do.end184_crit_edge, %lor.lhs.false163.do.end184_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1883) #10
  %66 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reassembly_data_length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %size)
  %cmp192.not = icmp ult i32 %67, %size
  br i1 %cmp192.not, label %lor.lhs.false193, label %do.end184.if.end216_crit_edge

do.end184.if.end216_crit_edge:                    ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

lor.lhs.false193:                                 ; preds = %do.end184
  %68 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp194.not = icmp eq i32 %69, 2
  br i1 %cmp194.not, label %if.then195, label %lor.lhs.false193.do.body227_crit_edge

lor.lhs.false193.do.body227_crit_edge:            ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body227

if.then195:                                       ; preds = %lor.lhs.false193
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %70 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call197351 = call i32 @prepare_to_wait_event(ptr noundef %wait_reassembly_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %71 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reassembly_data_length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %size)
  %cmp199.not352 = icmp ult i32 %72, %size
  br i1 %cmp199.not352, label %if.then195.lor.lhs.false200_crit_edge, label %if.then195.if.end212.thread339_crit_edge

if.then195.if.end212.thread339_crit_edge:         ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212.thread339

if.then195.lor.lhs.false200_crit_edge:            ; preds = %if.then195
  br label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %cleanup208.lor.lhs.false200_crit_edge, %if.then195.lor.lhs.false200_crit_edge
  %call197353 = phi i32 [ %call197, %cleanup208.lor.lhs.false200_crit_edge ], [ %call197351, %if.then195.lor.lhs.false200_crit_edge ]
  %73 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp202.not = icmp eq i32 %74, 2
  br i1 %cmp202.not, label %if.end204, label %lor.lhs.false200.if.end212.thread339_crit_edge

lor.lhs.false200.if.end212.thread339_crit_edge:   ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212.thread339

if.end204:                                        ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197353)
  %tobool205.not = icmp eq i32 %call197353, 0
  br i1 %tobool205.not, label %cleanup208, label %if.end212

cleanup208:                                       ; preds = %if.end204
  call void @schedule() #10
  %call197 = call i32 @prepare_to_wait_event(ptr noundef %wait_reassembly_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %75 = ptrtoint ptr %reassembly_data_length to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reassembly_data_length, align 8
  %cmp199.not = icmp ult i32 %76, %size
  br i1 %cmp199.not, label %cleanup208.lor.lhs.false200_crit_edge, label %cleanup208.if.end212.thread339_crit_edge

cleanup208.if.end212.thread339_crit_edge:         ; preds = %cleanup208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212.thread339

cleanup208.lor.lhs.false200_crit_edge:            ; preds = %cleanup208
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false200

if.end212.thread339:                              ; preds = %cleanup208.if.end212.thread339_crit_edge, %lor.lhs.false200.if.end212.thread339_crit_edge, %if.then195.if.end212.thread339_crit_edge
  call void @finish_wait(ptr noundef %wait_reassembly_queue, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end216

if.end212:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup245

if.end216:                                        ; preds = %if.end212.thread339, %do.end184.if.end216_crit_edge
  %77 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %info, align 8
  %cmp218.not = icmp eq i32 %.pr, 2
  br i1 %cmp218.not, label %if.end216.again_crit_edge, label %if.end216.do.body227_crit_edge

if.end216.do.body227_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body227

if.end216.again_crit_edge:                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

do.body227:                                       ; preds = %if.end216.do.body227_crit_edge, %lor.lhs.false193.do.body227_crit_edge
  %call228 = call i32 @___ratelimit(ptr noundef nonnull @smbd_recv_buf._rs.377, ptr noundef nonnull @__func__.smbd_recv_buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %do.body227.cleanup245_crit_edge, label %do.end233

do.body227.cleanup245_crit_edge:                  ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup245

do.end233:                                        ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #12
  %call235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.379, ptr noundef nonnull @__func__.smbd_recv_buf, i32 noundef 1889) #13
  br label %cleanup245

cleanup245:                                       ; preds = %do.end233, %do.body227.cleanup245_crit_edge, %if.end212, %do.end146, %do.body140.cleanup245_crit_edge, %lor.lhs.false135.cleanup245_crit_edge, %do.end46, %do.body40.cleanup245_crit_edge, %lor.lhs.false35.cleanup245_crit_edge
  %retval.1 = phi i32 [ %data_read.0.lcssa, %do.end146 ], [ %data_read.0.lcssa, %do.body140.cleanup245_crit_edge ], [ %data_read.0.lcssa, %lor.lhs.false135.cleanup245_crit_edge ], [ 4, %do.body40.cleanup245_crit_edge ], [ 4, %do.end46 ], [ 4, %lor.lhs.false35.cleanup245_crit_edge ], [ %call197353, %if.end212 ], [ -103, %do.body227.cleanup245_crit_edge ], [ -103, %do.end233 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smbd_send(ptr noundef %server, i32 noundef %num_rqst, ptr noundef %rqst_array) local_unnamed_addr #0 align 64 {
entry:
  %sgl.i = alloca %struct.scatterlist, align 4
  %vec = alloca %struct.kvec, align 4
  %buflen = alloca i32, align 4
  %offset = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smbd_conn = getelementptr inbounds %struct.TCP_Server_Info, ptr %server, i32 0, i32 58
  %0 = ptrtoint ptr %smbd_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smbd_conn, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vec) #10
  %2 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %vec, align 4, !annotation !702
  %3 = getelementptr inbounds %struct.kvec, ptr %vec, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buflen) #10
  %4 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buflen, align 4, !annotation !702
  %max_send_size = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %max_send_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_send_size, align 8
  %sub = add i32 %6, -24
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %for.cond.preheader, label %entry.do.body380_crit_edge

entry.do.body380_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body380

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rqst)
  %cmp1582 = icmp sgt i32 %num_rqst, 0
  br i1 %cmp1582, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body23_crit_edge

for.cond.preheader.do.body23_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %remaining_data_length.0584 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0583 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smb_rqst, ptr %rqst_array, i32 %i.0583
  %call = tail call i32 @smb_rqst_len(ptr noundef %server, ptr noundef %arrayidx) #10
  %add = add i32 %call, %remaining_data_length.0584
  %inc = add nuw nsw i32 %i.0583, 1
  %exitcond.not = icmp eq i32 %inc, %num_rqst
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %max_fragmented_send_size = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %max_fragmented_send_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_fragmented_send_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp2 = icmp ugt i32 %add, %10
  br i1 %cmp2, label %do.body7, label %for.end.do.body23_crit_edge

for.end.do.body23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23

do.body7:                                         ; preds = %for.end
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body7.do.body380_crit_edge, label %do.end

do.body7.do.body380_crit_edge:                    ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body380

do.end:                                           ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %max_fragmented_send_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_fragmented_send_size, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2017, i32 noundef %add, i32 noundef %12) #13
  br label %do.body380

do.body23:                                        ; preds = %for.end.do.body23_crit_edge, %for.cond.preheader.do.body23_crit_edge
  %remaining_data_length.0.lcssa635 = phi i32 [ %add, %for.end.do.body23_crit_edge ], [ 0, %for.cond.preheader.do.body23_crit_edge ]
  %13 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24.not = icmp eq i32 %13, 0
  br i1 %cmp24.not, label %lor.lhs.false25, label %do.body23.do.body30_crit_edge

do.body23.do.body30_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

lor.lhs.false25:                                  ; preds = %do.body23
  %14 = load i32, ptr @smbd_logging_class, align 4
  %and26 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false25.do.end46_crit_edge, label %lor.lhs.false25.do.body30_crit_edge

lor.lhs.false25.do.body30_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

lor.lhs.false25.do.end46_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.body30:                                        ; preds = %lor.lhs.false25.do.body30_crit_edge, %do.body23.do.body30_crit_edge
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.61, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body30.do.end46_crit_edge, label %do.end36

do.body30.do.end46_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2023, i32 noundef %num_rqst, i32 noundef %remaining_data_length.0.lcssa635) #13
  br label %do.end46

do.end46:                                         ; preds = %do.end36, %do.body30.do.end46_crit_edge, %lor.lhs.false25.do.end46_crit_edge
  %add148 = add i32 %6, -25
  %15 = getelementptr inbounds %struct.scatterlist, ptr %sgl.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.scatterlist, ptr %sgl.i, i32 0, i32 1
  %smax = call i32 @llvm.smax.i32(i32 %num_rqst, i32 1)
  br label %next_rqst

next_rqst:                                        ; preds = %for.end374.next_rqst_crit_edge, %do.end46
  %rqst_idx.0 = phi i32 [ 0, %do.end46 ], [ %inc375, %for.end374.next_rqst_crit_edge ]
  %rc.0 = phi i32 [ -1, %do.end46 ], [ %rc.6.lcssa, %for.end374.next_rqst_crit_edge ]
  %remaining_data_length.1 = phi i32 [ %remaining_data_length.0.lcssa635, %do.end46 ], [ %remaining_data_length.7.lcssa, %for.end374.next_rqst_crit_edge ]
  %arrayidx47 = getelementptr %struct.smb_rqst, ptr %rqst_array, i32 %rqst_idx.0
  %17 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx47, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %19 = load i32, ptr @cifsFYI, align 4
  %and50 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %next_rqst.do.end70_crit_edge, label %do.body53

next_rqst.do.end70_crit_edge:                     ; preds = %next_rqst
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

do.body53:                                        ; preds = %next_rqst
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smbd_send.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smbd_send, %land.lhs.true)) #10
          to label %do.end70 [label %land.lhs.true], !srcloc !712

land.lhs.true:                                    ; preds = %do.body53
  %call59 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.65, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true.do.end70_crit_edge, label %if.then61

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = call i32 @smb_rqst_len(ptr noundef %server, ptr noundef %arrayidx47) #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smbd_send.descriptor, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.2, i32 noundef %rqst_idx.0, i32 noundef %call62) #10
  br label %do.end70

do.end70:                                         ; preds = %if.then61, %land.lhs.true.do.end70_crit_edge, %do.body53, %next_rqst.do.end70_crit_edge
  %rq_nvec = getelementptr %struct.smb_rqst, ptr %rqst_array, i32 %rqst_idx.0, i32 1
  %20 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rq_nvec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp72585.not = icmp eq i32 %21, 0
  br i1 %cmp72585.not, label %do.end70.do.body79_crit_edge, label %do.end70.for.body73_crit_edge

do.end70.for.body73_crit_edge:                    ; preds = %do.end70
  br label %for.body73

do.end70.do.body79_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %do.end70.for.body73_crit_edge
  %i.1586 = phi i32 [ %inc77, %for.body73.for.body73_crit_edge ], [ 0, %do.end70.for.body73_crit_edge ]
  %arrayidx74 = getelementptr %struct.kvec, ptr %18, i32 %i.1586
  %22 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx74, align 4
  %iov_len = getelementptr %struct.kvec, ptr %18, i32 %i.1586, i32 1
  %24 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iov_len, align 4
  call void @dump_smb(ptr noundef %23, i32 noundef %25) #10
  %inc77 = add nuw i32 %i.1586, 1
  %26 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rq_nvec, align 4
  %cmp72 = icmp ult i32 %inc77, %27
  br i1 %cmp72, label %for.body73.for.body73_crit_edge, label %for.body73.do.body79_crit_edge

for.body73.do.body79_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body73

do.body79:                                        ; preds = %for.body73.do.body79_crit_edge, %do.end70.do.body79_crit_edge
  %28 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp80.not = icmp eq i32 %28, 0
  br i1 %cmp80.not, label %lor.lhs.false81, label %do.body79.do.body86_crit_edge

do.body79.do.body86_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86

lor.lhs.false81:                                  ; preds = %do.body79
  %29 = load i32, ptr @smbd_logging_class, align 4
  %and82 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %lor.lhs.false81.do.end104_crit_edge, label %lor.lhs.false81.do.body86_crit_edge

lor.lhs.false81.do.body86_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86

lor.lhs.false81.do.end104_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

do.body86:                                        ; preds = %lor.lhs.false81.do.body86_crit_edge, %do.body79.do.body86_crit_edge
  %call87 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.68, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.body86.do.end104_crit_edge, label %do.end92

do.body86.do.end104_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

do.end92:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_nvec, align 4
  %rq_npages = getelementptr %struct.smb_rqst, ptr %rqst_array, i32 %rqst_idx.0, i32 4
  %32 = ptrtoint ptr %rq_npages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rq_npages, align 4
  %rq_pagesz = getelementptr %struct.smb_rqst, ptr %rqst_array, i32 %rqst_idx.0, i32 5
  %34 = ptrtoint ptr %rq_pagesz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq_pagesz, align 4
  %rq_tailsz = getelementptr %struct.smb_rqst, ptr %rqst_array, i32 %rqst_idx.0, i32 6
  %36 = ptrtoint ptr %rq_tailsz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rq_tailsz, align 4
  %call95 = call i32 @smb_rqst_len(ptr noundef %server, ptr noundef %arrayidx47) #10
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2038, i32 noundef %rqst_idx.0, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %call95) #13
  br label %do.end104

do.end104:                                        ; preds = %do.end92, %do.body86.do.end104_crit_edge, %lor.lhs.false81.do.end104_crit_edge
  %38 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %buflen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %do.end104
  %rc.1 = phi i32 [ %rc.0, %do.end104 ], [ %rc.4, %while.cond.backedge ]
  %i.2 = phi i32 [ 0, %do.end104 ], [ %i.4, %while.cond.backedge ]
  %start.0 = phi i32 [ 0, %do.end104 ], [ %start.1, %while.cond.backedge ]
  %remaining_data_length.2 = phi i32 [ %remaining_data_length.1, %do.end104 ], [ %remaining_data_length.5, %while.cond.backedge ]
  %iov_len106 = getelementptr %struct.kvec, ptr %18, i32 %i.2, i32 1
  %39 = ptrtoint ptr %iov_len106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iov_len106, align 4
  %41 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buflen, align 4
  %add107 = add i32 %42, %40
  store i32 %add107, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add107, i32 %sub)
  %cmp108 = icmp ugt i32 %add107, %sub
  br i1 %cmp108, label %if.then109, label %if.else232

if.then109:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %start.0)
  %cmp110 = icmp sgt i32 %i.2, %start.0
  br i1 %cmp110, label %if.then111, label %if.else147

if.then111:                                       ; preds = %if.then109
  %43 = ptrtoint ptr %iov_len106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iov_len106, align 4
  %sub114.neg = sub i32 %44, %add107
  %sub115 = add i32 %sub114.neg, %remaining_data_length.2
  %45 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp117.not = icmp eq i32 %45, 0
  br i1 %cmp117.not, label %lor.lhs.false118, label %if.then111.do.body123_crit_edge

if.then111.do.body123_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body123

lor.lhs.false118:                                 ; preds = %if.then111
  %46 = load i32, ptr @smbd_logging_class, align 4
  %and119 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %lor.lhs.false118.do.end140_crit_edge, label %lor.lhs.false118.do.body123_crit_edge

lor.lhs.false118.do.body123_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body123

lor.lhs.false118.do.end140_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end140

do.body123:                                       ; preds = %lor.lhs.false118.do.body123_crit_edge, %if.then111.do.body123_crit_edge
  %call124 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.72, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %do.body123.do.end140_crit_edge, label %do.end129

do.body123.do.end140_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end140

do.end129:                                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  %sub131 = sub i32 %i.2, %start.0
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2050, i32 noundef %start.0, i32 noundef %i.2, i32 noundef %sub131, i32 noundef %sub115) #13
  br label %do.end140

do.end140:                                        ; preds = %do.end129, %do.body123.do.end140_crit_edge, %lor.lhs.false118.do.end140_crit_edge
  %arrayidx141 = getelementptr %struct.kvec, ptr %18, i32 %start.0
  %sub142 = sub i32 %i.2, %start.0
  %call143 = call fastcc i32 @smbd_post_send_data(ptr noundef %1, ptr noundef %arrayidx141, i32 noundef %sub142, i32 noundef %sub115)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %do.end140.if.end231_crit_edge, label %do.end140.do.body380_crit_edge

do.end140.do.body380_crit_edge:                   ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body380

do.end140.if.end231_crit_edge:                    ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

if.else147:                                       ; preds = %if.then109
  %sub149 = add i32 %add148, %add107
  %div = udiv i32 %sub149, %sub
  %47 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp151.not = icmp eq i32 %47, 0
  br i1 %cmp151.not, label %lor.lhs.false152, label %if.else147.do.body157_crit_edge

if.else147.do.body157_crit_edge:                  ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body157

lor.lhs.false152:                                 ; preds = %if.else147
  %48 = load i32, ptr @smbd_logging_class, align 4
  %and153 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %lor.lhs.false152.do.end175_crit_edge, label %lor.lhs.false152.do.body157_crit_edge

lor.lhs.false152.do.body157_crit_edge:            ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body157

lor.lhs.false152.do.end175_crit_edge:             ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end175

do.body157:                                       ; preds = %lor.lhs.false152.do.body157_crit_edge, %if.else147.do.body157_crit_edge
  %call158 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.76, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %do.body157.do.end175_crit_edge, label %do.end163

do.body157.do.end175_crit_edge:                   ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end175

do.end163:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx165 = getelementptr %struct.kvec, ptr %18, i32 %start.0
  %49 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx165, align 4
  %51 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buflen, align 4
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2061, i32 noundef %start.0, ptr noundef %50, i32 noundef %52, i32 noundef %div) #13
  br label %do.end175

do.end175:                                        ; preds = %do.end163, %do.body157.do.end175_crit_edge, %lor.lhs.false152.do.end175_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp177588 = icmp sgt i32 %div, 0
  br i1 %cmp177588, label %for.body178.lr.ph, label %do.end175.for.end225_crit_edge

do.end175.for.end225_crit_edge:                   ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end225

for.body178.lr.ph:                                ; preds = %do.end175
  %arrayidx179 = getelementptr %struct.kvec, ptr %18, i32 %start.0
  %sub183 = add nsw i32 %div, -1
  %mul187 = mul i32 %sub183, %sub
  br label %for.body178

for.cond176:                                      ; preds = %do.end218
  %inc224 = add nuw nsw i32 %j.0589, 1
  %exitcond629.not = icmp eq i32 %inc224, %div
  br i1 %exitcond629.not, label %for.cond176.for.end225_crit_edge, label %for.cond176.for.body178_crit_edge

for.cond176.for.body178_crit_edge:                ; preds = %for.cond176
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body178

for.cond176.for.end225_crit_edge:                 ; preds = %for.cond176
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end225

for.body178:                                      ; preds = %for.cond176.for.body178_crit_edge, %for.body178.lr.ph
  %remaining_data_length.3591 = phi i32 [ %remaining_data_length.2, %for.body178.lr.ph ], [ %sub192, %for.cond176.for.body178_crit_edge ]
  %j.0589 = phi i32 [ 0, %for.body178.lr.ph ], [ %inc224, %for.cond176.for.body178_crit_edge ]
  %53 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx179, align 4
  %mul = mul i32 %j.0589, %sub
  %add.ptr = getelementptr i8, ptr %54, i32 %mul
  %55 = ptrtoint ptr %vec to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr, ptr %vec, align 4
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0589, i32 %sub183)
  %cmp184 = icmp eq i32 %j.0589, %sub183
  br i1 %cmp184, label %if.then185, label %for.body178.if.end190_crit_edge

for.body178.if.end190_crit_edge:                  ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end190

if.then185:                                       ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buflen, align 4
  %sub188 = sub i32 %58, %mul187
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub188, ptr %3, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %for.body178.if.end190_crit_edge
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %3, align 4
  %sub192 = sub i32 %remaining_data_length.3591, %61
  %62 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp194.not = icmp eq i32 %62, 0
  br i1 %cmp194.not, label %lor.lhs.false195, label %if.end190.do.body200_crit_edge

if.end190.do.body200_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body200

lor.lhs.false195:                                 ; preds = %if.end190
  %63 = load i32, ptr @smbd_logging_class, align 4
  %and196 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %lor.lhs.false195.do.end218_crit_edge, label %lor.lhs.false195.do.body200_crit_edge

lor.lhs.false195.do.body200_crit_edge:            ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body200

lor.lhs.false195.do.end218_crit_edge:             ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end218

do.body200:                                       ; preds = %lor.lhs.false195.do.body200_crit_edge, %if.end190.do.body200_crit_edge
  %call201 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.80, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %do.body200.do.end218_crit_edge, label %do.end206

do.body200.do.end218_crit_edge:                   ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end218

do.end206:                                        ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #12
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2075, i32 noundef %j.0589, ptr noundef %add.ptr, i32 noundef %61, i32 noundef %sub192) #13
  br label %do.end218

do.end218:                                        ; preds = %do.end206, %do.body200.do.end218_crit_edge, %lor.lhs.false195.do.end218_crit_edge
  %call219 = call fastcc i32 @smbd_post_send_data(ptr noundef %1, ptr noundef nonnull %vec, i32 noundef 1, i32 noundef %sub192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %for.cond176, label %do.end218.do.body380_crit_edge

do.end218.do.body380_crit_edge:                   ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body380

for.end225:                                       ; preds = %for.cond176.for.end225_crit_edge, %do.end175.for.end225_crit_edge
  %rc.2.lcssa = phi i32 [ %rc.1, %do.end175.for.end225_crit_edge ], [ 0, %for.cond176.for.end225_crit_edge ]
  %remaining_data_length.3.lcssa = phi i32 [ %remaining_data_length.2, %do.end175.for.end225_crit_edge ], [ %sub192, %for.cond176.for.end225_crit_edge ]
  %inc226 = add i32 %i.2, 1
  %64 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rq_nvec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc226, i32 %65)
  %cmp228 = icmp eq i32 %inc226, %65
  br i1 %cmp228, label %for.end225.while.end_crit_edge, label %for.end225.if.end231_crit_edge

for.end225.if.end231_crit_edge:                   ; preds = %for.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231

for.end225.while.end_crit_edge:                   ; preds = %for.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end231:                                        ; preds = %for.end225.if.end231_crit_edge, %do.end140.if.end231_crit_edge
  %rc.3 = phi i32 [ 0, %do.end140.if.end231_crit_edge ], [ %rc.2.lcssa, %for.end225.if.end231_crit_edge ]
  %i.3 = phi i32 [ %i.2, %do.end140.if.end231_crit_edge ], [ %inc226, %for.end225.if.end231_crit_edge ]
  %remaining_data_length.4 = phi i32 [ %sub115, %do.end140.if.end231_crit_edge ], [ %remaining_data_length.3.lcssa, %for.end225.if.end231_crit_edge ]
  %66 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %buflen, align 4
  br label %do.body271

if.else232:                                       ; preds = %while.cond
  %inc233 = add i32 %i.2, 1
  %67 = ptrtoint ptr %rq_nvec to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rq_nvec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc233, i32 %68)
  %cmp235 = icmp eq i32 %inc233, %68
  br i1 %cmp235, label %if.then236, label %if.else232.do.body271_crit_edge

if.else232.do.body271_crit_edge:                  ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body271

if.then236:                                       ; preds = %if.else232
  %sub237 = sub i32 %remaining_data_length.2, %add107
  %69 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp239.not = icmp eq i32 %69, 0
  br i1 %cmp239.not, label %lor.lhs.false240, label %if.then236.do.body245_crit_edge

if.then236.do.body245_crit_edge:                  ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body245

lor.lhs.false240:                                 ; preds = %if.then236
  %70 = load i32, ptr @smbd_logging_class, align 4
  %and241 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %lor.lhs.false240.do.end262_crit_edge, label %lor.lhs.false240.do.body245_crit_edge

lor.lhs.false240.do.body245_crit_edge:            ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body245

lor.lhs.false240.do.end262_crit_edge:             ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end262

do.body245:                                       ; preds = %lor.lhs.false240.do.body245_crit_edge, %if.then236.do.body245_crit_edge
  %call246 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.84, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %do.body245.do.end262_crit_edge, label %do.end251

do.body245.do.end262_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end262

do.end251:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #12
  %sub253 = sub i32 %inc233, %start.0
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2095, i32 noundef %start.0, i32 noundef %inc233, i32 noundef %sub253, i32 noundef %sub237) #13
  br label %do.end262

do.end262:                                        ; preds = %do.end251, %do.body245.do.end262_crit_edge, %lor.lhs.false240.do.end262_crit_edge
  %arrayidx263 = getelementptr %struct.kvec, ptr %18, i32 %start.0
  %sub264 = sub i32 %inc233, %start.0
  %call265 = call fastcc i32 @smbd_post_send_data(ptr noundef %1, ptr noundef %arrayidx263, i32 noundef %sub264, i32 noundef %sub237)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %do.end262.while.end_crit_edge, label %do.end262.do.body380_crit_edge

do.end262.do.body380_crit_edge:                   ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body380

do.end262.while.end_crit_edge:                    ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body271:                                       ; preds = %if.else232.do.body271_crit_edge, %if.end231
  %rc.4 = phi i32 [ %rc.3, %if.end231 ], [ %rc.1, %if.else232.do.body271_crit_edge ]
  %i.4 = phi i32 [ %i.3, %if.end231 ], [ %inc233, %if.else232.do.body271_crit_edge ]
  %start.1 = phi i32 [ %i.3, %if.end231 ], [ %start.0, %if.else232.do.body271_crit_edge ]
  %remaining_data_length.5 = phi i32 [ %remaining_data_length.4, %if.end231 ], [ %remaining_data_length.2, %if.else232.do.body271_crit_edge ]
  %71 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp272.not = icmp eq i32 %71, 0
  br i1 %cmp272.not, label %lor.lhs.false273, label %do.body271.do.body278_crit_edge

do.body271.do.body278_crit_edge:                  ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body278

lor.lhs.false273:                                 ; preds = %do.body271
  %72 = load i32, ptr @smbd_logging_class, align 4
  %and274 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %lor.lhs.false273.while.cond.backedge_crit_edge, label %lor.lhs.false273.do.body278_crit_edge

lor.lhs.false273.do.body278_crit_edge:            ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body278

lor.lhs.false273.while.cond.backedge_crit_edge:   ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

do.body278:                                       ; preds = %lor.lhs.false273.do.body278_crit_edge, %do.body271.do.body278_crit_edge
  %call279 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.87, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool280.not = icmp eq i32 %call279, 0
  br i1 %tobool280.not, label %do.body278.while.cond.backedge_crit_edge, label %do.end284

do.body278.while.cond.backedge_crit_edge:         ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end284, %do.body278.while.cond.backedge_crit_edge, %lor.lhs.false273.while.cond.backedge_crit_edge
  br label %while.cond

do.end284:                                        ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buflen, align 4
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2103, i32 noundef %i.4, i32 noundef %74) #13
  br label %while.cond.backedge

while.end:                                        ; preds = %do.end262.while.end_crit_edge, %for.end225.while.end_crit_edge
  %rc.5 = phi i32 [ 0, %do.end262.while.end_crit_edge ], [ %rc.2.lcssa, %for.end225.while.end_crit_edge ]
  %remaining_data_length.6 = phi i32 [ %sub237, %do.end262.while.end_crit_edge ], [ %remaining_data_length.3.lcssa, %for.end225.while.end_crit_edge ]
  %rq_npages296 = getelementptr %struct.smb_rqst, ptr %rqst_array, i32 %rqst_idx.0, i32 4
  %75 = ptrtoint ptr %rq_npages296 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rq_npages296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp297601.not = icmp eq i32 %76, 0
  br i1 %cmp297601.not, label %while.end.for.end374_crit_edge, label %for.body298.lr.ph

while.end.for.end374_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end374

for.body298.lr.ph:                                ; preds = %while.end
  %rq_pages = getelementptr %struct.smb_rqst, ptr %rqst_array, i32 %rqst_idx.0, i32 2
  br label %for.body298

for.body298:                                      ; preds = %for.inc372.for.body298_crit_edge, %for.body298.lr.ph
  %remaining_data_length.7605 = phi i32 [ %remaining_data_length.6, %for.body298.lr.ph ], [ %remaining_data_length.8.lcssa, %for.inc372.for.body298_crit_edge ]
  %i.5603 = phi i32 [ 0, %for.body298.lr.ph ], [ %inc373, %for.inc372.for.body298_crit_edge ]
  %rc.6602 = phi i32 [ %rc.5, %for.body298.lr.ph ], [ %rc.7.lcssa, %for.inc372.for.body298_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %offset, align 4, !annotation !702
  call void @rqst_page_get_length(ptr noundef %arrayidx47, i32 noundef %i.5603, ptr noundef nonnull %buflen, ptr noundef nonnull %offset) #10
  %78 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buflen, align 4
  %sub300 = add i32 %add148, %79
  %div301 = udiv i32 %sub300, %sub
  %80 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp303.not = icmp eq i32 %80, 0
  br i1 %cmp303.not, label %lor.lhs.false304, label %for.body298.do.body309_crit_edge

for.body298.do.body309_crit_edge:                 ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body309

lor.lhs.false304:                                 ; preds = %for.body298
  %81 = load i32, ptr @smbd_logging_class, align 4
  %and305 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %lor.lhs.false304.do.end325_crit_edge, label %lor.lhs.false304.do.body309_crit_edge

lor.lhs.false304.do.body309_crit_edge:            ; preds = %lor.lhs.false304
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body309

lor.lhs.false304.do.end325_crit_edge:             ; preds = %lor.lhs.false304
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end325

do.body309:                                       ; preds = %lor.lhs.false304.do.body309_crit_edge, %for.body298.do.body309_crit_edge
  %call310 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.91, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %do.body309.do.end325_crit_edge, label %do.end315

do.body309.do.end325_crit_edge:                   ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end325

do.end315:                                        ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buflen, align 4
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2113, i32 noundef %83, i32 noundef %div301) #13
  br label %do.end325

do.end325:                                        ; preds = %do.end315, %do.body309.do.end325_crit_edge, %lor.lhs.false304.do.end325_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div301)
  %cmp327594 = icmp sgt i32 %div301, 0
  br i1 %cmp327594, label %for.body328.lr.ph, label %do.end325.for.inc372_crit_edge

do.end325.for.inc372_crit_edge:                   ; preds = %do.end325
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc372

for.body328.lr.ph:                                ; preds = %do.end325
  %sub329 = add nsw i32 %div301, -1
  %mul332 = mul i32 %sub329, %sub
  br label %for.body328

for.cond326:                                      ; preds = %smbd_post_send_page.exit
  %inc370 = add nuw nsw i32 %j.1595, 1
  %exitcond630.not = icmp eq i32 %inc370, %div301
  br i1 %exitcond630.not, label %for.cond326.for.inc372_crit_edge, label %for.cond326.for.body328_crit_edge

for.cond326.for.body328_crit_edge:                ; preds = %for.cond326
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body328

for.cond326.for.inc372_crit_edge:                 ; preds = %for.cond326
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc372

for.body328:                                      ; preds = %for.cond326.for.body328_crit_edge, %for.body328.lr.ph
  %remaining_data_length.8598 = phi i32 [ %remaining_data_length.7605, %for.body328.lr.ph ], [ %sub335, %for.cond326.for.body328_crit_edge ]
  %j.1595 = phi i32 [ 0, %for.body328.lr.ph ], [ %inc370, %for.cond326.for.body328_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1595, i32 %sub329)
  %cmp330 = icmp eq i32 %j.1595, %sub329
  br i1 %cmp330, label %if.then331, label %for.body328.if.end334_crit_edge

for.body328.if.end334_crit_edge:                  ; preds = %for.body328
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end334

if.then331:                                       ; preds = %for.body328
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buflen, align 4
  %sub333 = sub i32 %85, %mul332
  br label %if.end334

if.end334:                                        ; preds = %if.then331, %for.body328.if.end334_crit_edge
  %size.0 = phi i32 [ %sub333, %if.then331 ], [ %sub, %for.body328.if.end334_crit_edge ]
  %sub335 = sub i32 %remaining_data_length.8598, %size.0
  %86 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp337.not = icmp eq i32 %86, 0
  br i1 %cmp337.not, label %lor.lhs.false338, label %if.end334.do.body343_crit_edge

if.end334.do.body343_crit_edge:                   ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body343

lor.lhs.false338:                                 ; preds = %if.end334
  %87 = load i32, ptr @smbd_logging_class, align 4
  %and339 = and i32 %87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  br i1 %tobool340.not, label %lor.lhs.false338.do.end361_crit_edge, label %lor.lhs.false338.do.body343_crit_edge

lor.lhs.false338.do.body343_crit_edge:            ; preds = %lor.lhs.false338
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body343

lor.lhs.false338.do.end361_crit_edge:             ; preds = %lor.lhs.false338
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end361

do.body343:                                       ; preds = %lor.lhs.false338.do.body343_crit_edge, %if.end334.do.body343_crit_edge
  %call344 = call i32 @___ratelimit(ptr noundef nonnull @smbd_send._rs.95, ptr noundef nonnull @__func__.smbd_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %do.body343.do.end361_crit_edge, label %do.end349

do.body343.do.end361_crit_edge:                   ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end361

do.end349:                                        ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #12
  %mul351 = mul i32 %j.1595, %sub
  %88 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset, align 4
  %add352 = add i32 %89, %mul351
  %call353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.smbd_send, i32 noundef 2121, i32 noundef %i.5603, i32 noundef %add352, i32 noundef %size.0, i32 noundef %sub335) #13
  br label %do.end361

do.end361:                                        ; preds = %do.end349, %do.body343.do.end361_crit_edge, %lor.lhs.false338.do.end361_crit_edge
  %90 = ptrtoint ptr %rq_pages to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rq_pages, align 4
  %arrayidx362 = getelementptr ptr, ptr %91, i32 %i.5603
  %92 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx362, align 4
  %mul363 = mul i32 %j.1595, %sub
  %94 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset, align 4
  %add364 = add i32 %95, %mul363
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sgl.i) #10
  %96 = call ptr @memset(ptr %sgl.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sgl.i, i32 noundef 1) #10
  %97 = ptrtoint ptr %sgl.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sgl.i, align 4
  %99 = ptrtoint ptr %93 to i32
  %and2.i.i.i = and i32 %99, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !701

do.body5.i.i.i:                                   ; preds = %do.end361
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !713
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end361
  %and.i.i.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %smbd_post_send_page.exit, label %do.body19.i.i.i, !prof !701

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !714
  unreachable

smbd_post_send_page.exit:                         ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %98, 3
  %or.i.i.i = or i32 %and.i.i.i, %99
  %100 = ptrtoint ptr %sgl.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or.i.i.i, ptr %sgl.i, align 4
  %101 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add364, ptr %16, align 4
  %102 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %size.0, ptr %15, align 4
  %call.i = call fastcc i32 @smbd_post_send_sgl(ptr noundef %1, ptr noundef nonnull %sgl.i, i32 noundef %size.0, i32 noundef %sub335) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sgl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool366.not = icmp eq i32 %call.i, 0
  br i1 %tobool366.not, label %for.cond326, label %cleanup

cleanup:                                          ; preds = %smbd_post_send_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  br label %do.body380

for.inc372:                                       ; preds = %for.cond326.for.inc372_crit_edge, %do.end325.for.inc372_crit_edge
  %rc.7.lcssa = phi i32 [ %rc.6602, %do.end325.for.inc372_crit_edge ], [ 0, %for.cond326.for.inc372_crit_edge ]
  %remaining_data_length.8.lcssa = phi i32 [ %remaining_data_length.7605, %do.end325.for.inc372_crit_edge ], [ %sub335, %for.cond326.for.inc372_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  %inc373 = add nuw i32 %i.5603, 1
  %103 = ptrtoint ptr %rq_npages296 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rq_npages296, align 4
  %cmp297 = icmp ult i32 %inc373, %104
  br i1 %cmp297, label %for.inc372.for.body298_crit_edge, label %for.inc372.for.end374_crit_edge

for.inc372.for.end374_crit_edge:                  ; preds = %for.inc372
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end374

for.inc372.for.body298_crit_edge:                 ; preds = %for.inc372
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body298

for.end374:                                       ; preds = %for.inc372.for.end374_crit_edge, %while.end.for.end374_crit_edge
  %rc.6.lcssa = phi i32 [ %rc.5, %while.end.for.end374_crit_edge ], [ %rc.7.lcssa, %for.inc372.for.end374_crit_edge ]
  %remaining_data_length.7.lcssa = phi i32 [ %remaining_data_length.6, %while.end.for.end374_crit_edge ], [ %remaining_data_length.8.lcssa, %for.inc372.for.end374_crit_edge ]
  %inc375 = add nuw nsw i32 %rqst_idx.0, 1
  %exitcond631.not = icmp eq i32 %inc375, %smax
  br i1 %exitcond631.not, label %for.end374.do.body380_crit_edge, label %for.end374.next_rqst_crit_edge

for.end374.next_rqst_crit_edge:                   ; preds = %for.end374
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_rqst

for.end374.do.body380_crit_edge:                  ; preds = %for.end374
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body380

do.body380:                                       ; preds = %for.end374.do.body380_crit_edge, %cleanup, %do.end262.do.body380_crit_edge, %do.end218.do.body380_crit_edge, %do.end140.do.body380_crit_edge, %do.end, %do.body7.do.body380_crit_edge, %entry.do.body380_crit_edge
  %rc.9 = phi i32 [ %call.i, %cleanup ], [ -11, %entry.do.body380_crit_edge ], [ -22, %do.body7.do.body380_crit_edge ], [ -22, %do.end ], [ %call219, %do.end218.do.body380_crit_edge ], [ %call143, %do.end140.do.body380_crit_edge ], [ %call265, %do.end262.do.body380_crit_edge ], [ %rc.6.lcssa, %for.end374.do.body380_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2144) #10
  %send_pending = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 42
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %105 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %send_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp387 = icmp eq i32 %106, 0
  br i1 %cmp387, label %do.body380.cleanup405_crit_edge, label %if.end389

do.body380.cleanup405_crit_edge:                  ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup405

if.end389:                                        ; preds = %do.body380
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %107 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_send_pending = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 43
  %call391608 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i547609 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %108 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %send_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp394610 = icmp eq i32 %109, 0
  br i1 %cmp394610, label %if.end389.for.end400_crit_edge, label %if.end389.cleanup397_crit_edge

if.end389.cleanup397_crit_edge:                   ; preds = %if.end389
  br label %cleanup397

if.end389.for.end400_crit_edge:                   ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end400

cleanup397:                                       ; preds = %cleanup397.cleanup397_crit_edge, %if.end389.cleanup397_crit_edge
  call void @schedule() #10
  %call391 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i547 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %110 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %send_pending, align 4
  %cmp394 = icmp eq i32 %111, 0
  br i1 %cmp394, label %cleanup397.for.end400_crit_edge, label %cleanup397.cleanup397_crit_edge

cleanup397.cleanup397_crit_edge:                  ; preds = %cleanup397
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup397

cleanup397.for.end400_crit_edge:                  ; preds = %cleanup397
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end400

for.end400:                                       ; preds = %cleanup397.for.end400_crit_edge, %if.end389.for.end400_crit_edge
  call void @finish_wait(ptr noundef %wait_send_pending, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup405

cleanup405:                                       ; preds = %for.end400, %do.body380.cleanup405_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buflen) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vec) #10
  ret i32 %rc.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smb_rqst_len(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_smb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smbd_post_send_data(ptr noundef %info, ptr nocapture noundef readonly %iov, i32 noundef %n_vec, i32 noundef %remaining_data_length) unnamed_addr #0 align 64 {
entry:
  %sgl = alloca [16 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %sgl) #10
  %0 = call ptr @memset(ptr %sgl, i32 255, i32 320)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %n_vec)
  %cmp = icmp sgt i32 %n_vec, 16
  br i1 %cmp, label %do.body1, label %if.end9

do.body1:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send_data._rs, ptr noundef nonnull @__func__.smbd_post_send_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1.cleanup_crit_edge, label %do.end

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.382, i32 noundef %n_vec) #13
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @sg_init_table(ptr noundef nonnull %sgl, i32 noundef %n_vec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_vec)
  %cmp1033 = icmp sgt i32 %n_vec, 0
  br i1 %cmp1033, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.body:                                         ; preds = %sg_set_buf.exit.for.body_crit_edge, %if.end9.for.body_crit_edge
  %data_length.035 = phi i32 [ %add, %sg_set_buf.exit.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %i.034 = phi i32 [ %inc, %sg_set_buf.exit.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvec, ptr %iov, i32 %i.034
  %iov_len = getelementptr %struct.kvec, ptr %iov, i32 %i.034, i32 1
  %1 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iov_len, align 4
  %add = add i32 %2, %data_length.035
  %arrayidx11 = getelementptr [16 x %struct.scatterlist], ptr %sgl, i32 0, i32 %i.034
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %4 to i32
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.do.body5.i_crit_edge, !prof !701

for.body.do.body5.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %6 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %6, %4
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !701

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %5, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %7, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !706

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %for.body.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !715
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !701

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !713
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !701

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !714
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %5, 4095
  %and.i.i.i = and i32 %10, 3
  %or.i.i.i = or i32 %and.i.i.i, %11
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i.i.i, ptr %arrayidx11, align 4
  %offset1.i.i = getelementptr [16 x %struct.scatterlist], ptr %sgl, i32 0, i32 %i.034, i32 1
  %13 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr [16 x %struct.scatterlist], ptr %sgl, i32 0, i32 %i.034, i32 2
  %14 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %2, ptr %length.i.i, align 4
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %n_vec
  br i1 %exitcond.not, label %sg_set_buf.exit.for.end_crit_edge, label %sg_set_buf.exit.for.body_crit_edge

sg_set_buf.exit.for.body_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

sg_set_buf.exit.for.end_crit_edge:                ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %sg_set_buf.exit.for.end_crit_edge, %if.end9.for.end_crit_edge
  %data_length.0.lcssa = phi i32 [ 0, %if.end9.for.end_crit_edge ], [ %add, %sg_set_buf.exit.for.end_crit_edge ]
  %call16 = call fastcc i32 @smbd_post_send_sgl(ptr noundef %info, ptr noundef nonnull %sgl, i32 noundef %data_length.0.lcssa, i32 noundef %remaining_data_length)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %do.body1.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %for.end ], [ -22, %do.end ], [ -22, %do.body1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %sgl) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rqst_page_get_length(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smbd_register_mr(ptr noundef %info, ptr nocapture noundef readonly %pages, i32 noundef %num_pages, i32 noundef %offset, i32 noundef %tailsz, i1 noundef zeroext %writing, i1 noundef zeroext %need_invalidate) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %need_invalidate to i8
  %max_frmr_depth = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 32
  %0 = ptrtoint ptr %max_frmr_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_frmr_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %num_pages)
  %cmp = icmp slt i32 %1, %num_pages
  br i1 %cmp, label %do.body5, label %if.end18

do.body5:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_register_mr._rs, ptr noundef nonnull @__func__.smbd_register_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body5.cleanup_crit_edge, label %do.end

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %max_frmr_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_frmr_depth, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @__func__.smbd_register_mr, i32 noundef 2359, i32 noundef %num_pages, i32 noundef %3) #13
  br label %cleanup

if.end18:                                         ; preds = %entry
  %mr_ready_count.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 37
  %wait_mr.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 39
  %mr_list_lock.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 36
  %mr_list.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 35
  br label %again.i

again.i:                                          ; preds = %for.end89.i, %if.end18
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2308) #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mr_ready_count.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %mr_ready_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mr_ready_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %again.i.if.end44.i_crit_edge

again.i.if.end44.i_crit_edge:                     ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

lor.lhs.false.i:                                  ; preds = %again.i
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.then.i, label %lor.lhs.false.i.do.body55.i_crit_edge

lor.lhs.false.i.do.body55.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55.i

if.then.i:                                        ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %8 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %call5134.i = call i32 @prepare_to_wait_event(ptr noundef %wait_mr.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %call.i.i113135.i = call zeroext i1 @__kasan_check_read(ptr noundef %mr_ready_count.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %mr_ready_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %mr_ready_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not136.i = icmp eq i32 %10, 0
  br i1 %tobool8.not136.i, label %if.then.i.lor.lhs.false9.i_crit_edge, label %if.then.i.if.end17.thread125.i_crit_edge

if.then.i.if.end17.thread125.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.thread125.i

if.then.i.lor.lhs.false9.i_crit_edge:             ; preds = %if.then.i
  br label %lor.lhs.false9.i

lor.lhs.false9.i:                                 ; preds = %cleanup.i.lor.lhs.false9.i_crit_edge, %if.then.i.lor.lhs.false9.i_crit_edge
  %call5137.i = phi i32 [ %call5.i, %cleanup.i.lor.lhs.false9.i_crit_edge ], [ %call5134.i, %if.then.i.lor.lhs.false9.i_crit_edge ]
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp11.not.i = icmp eq i32 %12, 2
  br i1 %cmp11.not.i, label %if.end.i, label %lor.lhs.false9.i.if.end17.thread125.i_crit_edge

lor.lhs.false9.i.if.end17.thread125.i_crit_edge:  ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.thread125.i

if.end.i:                                         ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5137.i)
  %tobool13.not.i = icmp eq i32 %call5137.i, 0
  br i1 %tobool13.not.i, label %cleanup.i, label %do.body27.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #10
  %call5.i = call i32 @prepare_to_wait_event(ptr noundef %wait_mr.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #10
  %call.i.i113.i = call zeroext i1 @__kasan_check_read(ptr noundef %mr_ready_count.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %mr_ready_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %mr_ready_count.i, align 4
  %tobool8.not.i = icmp eq i32 %14, 0
  br i1 %tobool8.not.i, label %cleanup.i.lor.lhs.false9.i_crit_edge, label %cleanup.i.if.end17.thread125.i_crit_edge

cleanup.i.if.end17.thread125.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.thread125.i

cleanup.i.lor.lhs.false9.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false9.i

if.end17.thread125.i:                             ; preds = %cleanup.i.if.end17.thread125.i_crit_edge, %lor.lhs.false9.i.if.end17.thread125.i_crit_edge, %if.then.i.if.end17.thread125.i_crit_edge
  call void @finish_wait(ptr noundef %wait_mr.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %if.end44.i

do.body27.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %call28.i = call i32 @___ratelimit(ptr noundef nonnull @get_mr._rs, ptr noundef nonnull @__func__.get_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.do.body29_crit_edge, label %do.end33.i

do.body27.i.do.body29_crit_edge:                  ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.383, ptr noundef nonnull @__func__.get_mr, i32 noundef 2310, i32 noundef %call5137.i) #13
  br label %do.body29

if.end44.i:                                       ; preds = %if.end17.thread125.i, %again.i.if.end44.i_crit_edge
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp46.not.i = icmp eq i32 %.pr.i, 2
  br i1 %cmp46.not.i, label %if.end73.i, label %if.end44.i.do.body55.i_crit_edge

if.end44.i.do.body55.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55.i

do.body55.i:                                      ; preds = %if.end44.i.do.body55.i_crit_edge, %lor.lhs.false.i.do.body55.i_crit_edge
  %call56.i = call i32 @___ratelimit(ptr noundef nonnull @get_mr._rs.384, ptr noundef nonnull @__func__.get_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %do.body55.i.do.body29_crit_edge, label %do.end61.i

do.body55.i.do.body29_crit_edge:                  ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.end61.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info, align 8
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386, ptr noundef nonnull @__func__.get_mr, i32 noundef 2316, i32 noundef %17) #13
  br label %do.body29

if.end73.i:                                       ; preds = %if.end44.i
  call void @_raw_spin_lock(ptr noundef %mr_list_lock.i) #10
  br label %for.cond75.i

for.cond75.i:                                     ; preds = %for.body.i.for.cond75.i_crit_edge, %if.end73.i
  %.pn.in.i = phi ptr [ %mr_list.i, %if.end73.i ], [ %.pn.i, %for.body.i.for.cond75.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp77.not.i = icmp eq ptr %.pn.i, %mr_list.i
  br i1 %cmp77.not.i, label %for.end89.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond75.i
  %state.i = getelementptr i8, ptr %.pn.i, i32 8
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  %cmp78.i = icmp eq i32 %20, 0
  br i1 %cmp78.i, label %get_mr.exit, label %for.body.i.for.cond75.i_crit_edge

for.body.i.for.cond75.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond75.i

for.end89.i:                                      ; preds = %for.cond75.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %mr_list_lock.i) #10
  br label %again.i

get_mr.exit:                                      ; preds = %for.body.i
  %state.i.le = getelementptr i8, ptr %.pn.i, i32 8
  %ret.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %21 = ptrtoint ptr %state.i.le to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state.i.le, align 4
  call void @_raw_spin_unlock(ptr noundef %mr_list_lock.i) #10
  %call.i.i114.i = call zeroext i1 @__kasan_check_write(ptr noundef %mr_ready_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %mr_ready_count.i, i32 1, i32 3, i32 1) #10
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mr_ready_count.i, ptr %mr_ready_count.i, i32 1, ptr elementtype(i32) %mr_ready_count.i) #10, !srcloc !704
  %mr_used_count.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 38
  %call.i.i115.i = call zeroext i1 @__kasan_check_write(ptr noundef %mr_used_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %mr_used_count.i, i32 1, i32 3, i32 1) #10
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mr_used_count.i, ptr %mr_used_count.i, i32 1, ptr elementtype(i32) %mr_used_count.i) #10, !srcloc !703
  %tobool20.not = icmp eq ptr %ret.0.le.i, null
  br i1 %tobool20.not, label %get_mr.exit.do.body29_crit_edge, label %if.end46

get_mr.exit.do.body29_crit_edge:                  ; preds = %get_mr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body29

do.body29:                                        ; preds = %get_mr.exit.do.body29_crit_edge, %do.end61.i, %do.body55.i.do.body29_crit_edge, %do.end33.i, %do.body27.i.do.body29_crit_edge
  %call30 = call i32 @___ratelimit(ptr noundef nonnull @smbd_register_mr._rs.100, ptr noundef nonnull @__func__.smbd_register_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %do.end35

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.smbd_register_mr, i32 noundef 2365) #13
  br label %cleanup

if.end46:                                         ; preds = %get_mr.exit
  %need_invalidate48 = getelementptr i8, ptr %.pn.i, i32 88
  %24 = ptrtoint ptr %need_invalidate48 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool1, ptr %need_invalidate48, align 4
  %sgl_count = getelementptr i8, ptr %.pn.i, i32 20
  %25 = ptrtoint ptr %sgl_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %num_pages, ptr %sgl_count, align 8
  %sgl = getelementptr i8, ptr %.pn.i, i32 16
  %26 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sgl, align 4
  call void @sg_init_table(ptr noundef %27, i32 noundef %num_pages) #10
  %28 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp51.not = icmp eq i32 %28, 0
  br i1 %cmp51.not, label %lor.lhs.false52, label %if.end46.do.body57_crit_edge

if.end46.do.body57_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

lor.lhs.false52:                                  ; preds = %if.end46
  %29 = load i32, ptr @smbd_logging_class, align 4
  %and53 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %lor.lhs.false52.do.end73_crit_edge, label %lor.lhs.false52.do.body57_crit_edge

lor.lhs.false52.do.body57_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

lor.lhs.false52.do.end73_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.body57:                                        ; preds = %lor.lhs.false52.do.body57_crit_edge, %if.end46.do.body57_crit_edge
  %call58 = call i32 @___ratelimit(ptr noundef nonnull @smbd_register_mr._rs.104, ptr noundef nonnull @__func__.smbd_register_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.body57.do.end73_crit_edge, label %do.end63

do.body57.do.end73_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.smbd_register_mr, i32 noundef 2373, i32 noundef %num_pages, i32 noundef %offset, i32 noundef %tailsz) #13
  br label %do.end73

do.end73:                                         ; preds = %do.end63, %do.body57.do.end73_crit_edge, %lor.lhs.false52.do.end73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_pages)
  %cmp74 = icmp eq i32 %num_pages, 1
  %30 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sgl, align 4
  %32 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pages, align 4
  br i1 %cmp74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %do.end73
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  %36 = ptrtoint ptr %33 to i32
  %and2.i.i = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !701

do.body5.i.i:                                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !713
  unreachable

do.body11.i.i:                                    ; preds = %if.then75
  %and.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !701

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !714
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %35, 3
  %or.i.i = or i32 %and.i.i, %36
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i, ptr %31, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 1
  %38 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %offset, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 2
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %tailsz, ptr %length.i, align 4
  br label %skip_multiple_pages

if.end78:                                         ; preds = %do.end73
  %sub = sub i32 4096, %offset
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %31, align 4
  %42 = ptrtoint ptr %33 to i32
  %and2.i.i282 = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i282)
  %tobool.not.i.i283 = icmp eq i32 %and2.i.i282, 0
  br i1 %tobool.not.i.i283, label %do.body11.i.i287, label %do.body5.i.i284, !prof !701

do.body5.i.i284:                                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !713
  unreachable

do.body11.i.i287:                                 ; preds = %if.end78
  %and.i.i.i285 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i285)
  %tobool.i.not.i.i286 = icmp eq i32 %and.i.i.i285, 0
  br i1 %tobool.i.not.i.i286, label %sg_set_page.exit293, label %do.body19.i.i288, !prof !701

do.body19.i.i288:                                 ; preds = %do.body11.i.i287
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !714
  unreachable

sg_set_page.exit293:                              ; preds = %do.body11.i.i287
  %and.i.i289 = and i32 %41, 3
  %or.i.i290 = or i32 %and.i.i289, %42
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i.i290, ptr %31, align 4
  %offset1.i291 = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 1
  %44 = ptrtoint ptr %offset1.i291 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %offset, ptr %offset1.i291, align 4
  %length.i292 = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 2
  %45 = ptrtoint ptr %length.i292 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub, ptr %length.i292, align 4
  %sub82 = add i32 %num_pages, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub82)
  %cmp83331 = icmp sgt i32 %sub82, 1
  br i1 %cmp83331, label %sg_set_page.exit293.while.body_crit_edge, label %sg_set_page.exit293.while.end_crit_edge

sg_set_page.exit293.while.end_crit_edge:          ; preds = %sg_set_page.exit293
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

sg_set_page.exit293.while.body_crit_edge:         ; preds = %sg_set_page.exit293
  br label %while.body

while.body:                                       ; preds = %sg_set_page.exit305.while.body_crit_edge, %sg_set_page.exit293.while.body_crit_edge
  %i.0332 = phi i32 [ %inc, %sg_set_page.exit305.while.body_crit_edge ], [ 1, %sg_set_page.exit293.while.body_crit_edge ]
  %46 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sgl, align 4
  %arrayidx85 = getelementptr %struct.scatterlist, ptr %47, i32 %i.0332
  %arrayidx86 = getelementptr ptr, ptr %pages, i32 %i.0332
  %48 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx86, align 4
  %50 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx85, align 4
  %52 = ptrtoint ptr %49 to i32
  %and2.i.i294 = and i32 %52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i294)
  %tobool.not.i.i295 = icmp eq i32 %and2.i.i294, 0
  br i1 %tobool.not.i.i295, label %do.body11.i.i299, label %do.body5.i.i296, !prof !701

do.body5.i.i296:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !713
  unreachable

do.body11.i.i299:                                 ; preds = %while.body
  %and.i.i.i297 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i297)
  %tobool.i.not.i.i298 = icmp eq i32 %and.i.i.i297, 0
  br i1 %tobool.i.not.i.i298, label %sg_set_page.exit305, label %do.body19.i.i300, !prof !701

do.body19.i.i300:                                 ; preds = %do.body11.i.i299
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !714
  unreachable

sg_set_page.exit305:                              ; preds = %do.body11.i.i299
  %and.i.i301 = and i32 %51, 3
  %or.i.i302 = or i32 %and.i.i301, %52
  %53 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i.i302, ptr %arrayidx85, align 4
  %offset1.i303 = getelementptr %struct.scatterlist, ptr %47, i32 %i.0332, i32 1
  %54 = ptrtoint ptr %offset1.i303 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %offset1.i303, align 4
  %length.i304 = getelementptr %struct.scatterlist, ptr %47, i32 %i.0332, i32 2
  %55 = ptrtoint ptr %length.i304 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4096, ptr %length.i304, align 4
  %inc = add nuw nsw i32 %i.0332, 1
  %exitcond.not = icmp eq i32 %inc, %sub82
  br i1 %exitcond.not, label %sg_set_page.exit305.while.end_crit_edge, label %sg_set_page.exit305.while.body_crit_edge

sg_set_page.exit305.while.body_crit_edge:         ; preds = %sg_set_page.exit305
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

sg_set_page.exit305.while.end_crit_edge:          ; preds = %sg_set_page.exit305
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %sg_set_page.exit305.while.end_crit_edge, %sg_set_page.exit293.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %sg_set_page.exit293.while.end_crit_edge ], [ %sub82, %sg_set_page.exit305.while.end_crit_edge ]
  %56 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sgl, align 4
  %arrayidx88 = getelementptr %struct.scatterlist, ptr %57, i32 %i.0.lcssa
  %arrayidx89 = getelementptr ptr, ptr %pages, i32 %i.0.lcssa
  %58 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tailsz)
  %tobool90.not = icmp eq i32 %tailsz, 0
  %spec.select = select i1 %tobool90.not, i32 4096, i32 %tailsz
  %60 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx88, align 4
  %62 = ptrtoint ptr %59 to i32
  %and2.i.i306 = and i32 %62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i306)
  %tobool.not.i.i307 = icmp eq i32 %and2.i.i306, 0
  br i1 %tobool.not.i.i307, label %do.body11.i.i311, label %do.body5.i.i308, !prof !701

do.body5.i.i308:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !713
  unreachable

do.body11.i.i311:                                 ; preds = %while.end
  %and.i.i.i309 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i309)
  %tobool.i.not.i.i310 = icmp eq i32 %and.i.i.i309, 0
  br i1 %tobool.i.not.i.i310, label %sg_set_page.exit317, label %do.body19.i.i312, !prof !701

do.body19.i.i312:                                 ; preds = %do.body11.i.i311
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !714
  unreachable

sg_set_page.exit317:                              ; preds = %do.body11.i.i311
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i313 = and i32 %61, 3
  %or.i.i314 = or i32 %and.i.i313, %62
  %63 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i.i314, ptr %arrayidx88, align 4
  %offset1.i315 = getelementptr %struct.scatterlist, ptr %57, i32 %i.0.lcssa, i32 1
  %64 = ptrtoint ptr %offset1.i315 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %offset1.i315, align 4
  %length.i316 = getelementptr %struct.scatterlist, ptr %57, i32 %i.0.lcssa, i32 2
  %65 = ptrtoint ptr %length.i316 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.select, ptr %length.i316, align 4
  br label %skip_multiple_pages

skip_multiple_pages:                              ; preds = %sg_set_page.exit317, %sg_set_page.exit
  %cond92 = select i1 %writing, i32 2, i32 1
  %dir93 = getelementptr i8, ptr %.pn.i, i32 24
  %66 = ptrtoint ptr %dir93 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond92, ptr %dir93, align 4
  %id = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 1
  %67 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %id, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sgl, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 8
  %call2.i.i = call i32 @dma_map_sg_attrs(ptr noundef %74, ptr noundef %72, i32 noundef %num_pages, i32 noundef %cond92, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool96.not = icmp eq i32 %call2.i.i, 0
  br i1 %tobool96.not, label %do.body105, label %if.end122

do.body105:                                       ; preds = %skip_multiple_pages
  %call106 = call i32 @___ratelimit(ptr noundef nonnull @smbd_register_mr._rs.108, ptr noundef nonnull @__func__.smbd_register_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.body105.dma_map_error_crit_edge, label %do.end111

do.body105.dma_map_error_crit_edge:               ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_error

do.end111:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.smbd_register_mr, i32 noundef 2397, i32 noundef %num_pages, i32 noundef %cond92, i32 noundef 0) #13
  br label %dma_map_error

if.end122:                                        ; preds = %skip_multiple_pages
  %mr = getelementptr i8, ptr %.pn.i, i32 12
  %75 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mr, align 8
  %77 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sgl, align 4
  %call124 = call i32 @ib_map_mr_sg(ptr noundef %76, ptr noundef %78, i32 noundef %num_pages, ptr noundef null, i32 noundef 4096) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call124, i32 %num_pages)
  %cmp125.not = icmp eq i32 %call124, %num_pages
  br i1 %cmp125.not, label %if.end151, label %do.body134

do.body134:                                       ; preds = %if.end122
  %call135 = call i32 @___ratelimit(ptr noundef nonnull @smbd_register_mr._rs.112, ptr noundef nonnull @__func__.smbd_register_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.body134.map_mr_error_crit_edge, label %do.end140

do.body134.map_mr_error_crit_edge:                ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_mr_error

do.end140:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #12
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__.smbd_register_mr, i32 noundef 2406, i32 noundef %call124, i32 noundef %num_pages) #13
  br label %map_mr_error

if.end151:                                        ; preds = %if.end122
  %79 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mr, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rkey, align 4
  %and1.i = and i32 %82, -256
  %conv = add i32 %82, 1
  %lkey.i = getelementptr inbounds %struct.ib_mr, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lkey.i, align 8
  %and.i318 = and i32 %84, -256
  %conv.i = and i32 %conv, 255
  %or.i319 = or i32 %and.i318, %conv.i
  store i32 %or.i319, ptr %lkey.i, align 8
  %or4.i = or i32 %conv.i, %and1.i
  store i32 %or4.i, ptr %rkey, align 4
  %85 = getelementptr i8, ptr %.pn.i, i32 28
  %opcode = getelementptr i8, ptr %.pn.i, i32 52
  %86 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 32, ptr %opcode, align 8
  %cqe = getelementptr i8, ptr %.pn.i, i32 84
  %87 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @register_mr_done, ptr %cqe, align 8
  %88 = getelementptr i8, ptr %.pn.i, i32 36
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %cqe, ptr %88, align 8
  %num_sge = getelementptr i8, ptr %.pn.i, i32 48
  %90 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %num_sge, align 4
  %send_flags = getelementptr i8, ptr %.pn.i, i32 56
  %91 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %send_flags, align 4
  %92 = load ptr, ptr %mr, align 8
  %mr160 = getelementptr i8, ptr %.pn.i, i32 68
  %93 = ptrtoint ptr %mr160 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %mr160, align 8
  %rkey162 = getelementptr inbounds %struct.ib_mr, ptr %92, i32 0, i32 3
  %94 = ptrtoint ptr %rkey162 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rkey162, align 4
  %key = getelementptr i8, ptr %.pn.i, i32 72
  %96 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %key, align 4
  %cond165 = select i1 %writing, i32 3, i32 4
  %access = getelementptr i8, ptr %.pn.i, i32 76
  %97 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cond165, ptr %access, align 8
  %98 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #10
  %102 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !702
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %101, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %104, i32 0, i32 1, i32 6
  %105 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %106(ptr noundef %101, ptr noundef %85, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool169.not = icmp eq i32 %call.i, 0
  br i1 %tobool169.not, label %if.end151.cleanup_crit_edge, label %do.body180

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body180:                                       ; preds = %if.end151
  %call181 = call i32 @___ratelimit(ptr noundef nonnull @smbd_register_mr._rs.116, ptr noundef nonnull @__func__.smbd_register_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %do.body180.map_mr_error_crit_edge, label %do.end186

do.body180.map_mr_error_crit_edge:                ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_mr_error

do.end186:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %key, align 4
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.smbd_register_mr, i32 noundef 2434, i32 noundef %call.i, i32 noundef %108) #13
  br label %map_mr_error

map_mr_error:                                     ; preds = %do.end186, %do.body180.map_mr_error_crit_edge, %do.end140, %do.body134.map_mr_error_crit_edge
  %109 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %id, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sgl, align 4
  %115 = ptrtoint ptr %sgl_count to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sgl_count, align 8
  %117 = ptrtoint ptr %dir93 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dir93, align 4
  %119 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %112, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %120, ptr noundef %114, i32 noundef %116, i32 noundef %118, i32 noundef 0) #10
  br label %dma_map_error

dma_map_error:                                    ; preds = %map_mr_error, %do.end111, %do.body105.dma_map_error_crit_edge
  %121 = ptrtoint ptr %state.i.le to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 3, ptr %state.i.le, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mr_used_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !716
  call void @llvm.prefetch.p0(ptr %mr_used_count.i, i32 1, i32 3, i32 1) #10
  %122 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mr_used_count.i, ptr %mr_used_count.i, i32 1, ptr elementtype(i32) %mr_used_count.i) #10, !srcloc !717
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %122, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !718
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then204, label %dma_map_error.if.end205_crit_edge

dma_map_error.if.end205_crit_edge:                ; preds = %dma_map_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

if.then204:                                       ; preds = %dma_map_error
  call void @__sanitizer_cov_trace_pc() #12
  %wait_for_mr_cleanup = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 41
  call void @__wake_up(ptr noundef %wait_for_mr_cleanup, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %dma_map_error.if.end205_crit_edge
  %workqueue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 61
  %123 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %workqueue.i, align 8
  %disconnect_work.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 13
  %call.i.i320 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %124, ptr noundef %disconnect_work.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.end151.cleanup_crit_edge, %do.end35, %do.body29.cleanup_crit_edge, %do.end, %do.body5.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end205 ], [ null, %do.body5.cleanup_crit_edge ], [ null, %do.end ], [ null, %do.body29.cleanup_crit_edge ], [ null, %do.end35 ], [ %ret.0.le.i, %if.end151.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @register_mr_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %do.body4

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.body4:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @register_mr_done._rs, ptr noundef nonnull @__func__.register_mr_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %do.body4.do.end16_crit_edge, label %do.end

do.body4.do.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end:                                           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388, ptr noundef nonnull @__func__.register_mr_done, i32 noundef 2155, i32 noundef %3) #13
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body4.do.end16_crit_edge
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -88
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %workqueue.i = getelementptr inbounds %struct.smbd_connection, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workqueue.i, align 8
  %disconnect_work.i = getelementptr inbounds %struct.smbd_connection, ptr %7, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %disconnect_work.i) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smbd_deregister_mr(ptr noundef %smbdirect_mr) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smbdirect_mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smbdirect_mr, align 8
  %need_invalidate = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 9
  %2 = ptrtoint ptr %need_invalidate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_invalidate, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 7
  %opcode = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 7, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %opcode, align 8
  %cqe = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 8
  %6 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @local_inv_done, ptr %cqe, align 8
  %7 = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 7, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cqe, ptr %7, align 8
  %num_sge = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 7, i32 0, i32 0, i32 3
  %9 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num_sge, align 4
  %mr = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 3
  %10 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mr, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rkey, align 4
  %ex = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 7, i32 0, i32 0, i32 6
  %14 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ex, align 8
  %send_flags = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 7, i32 0, i32 0, i32 5
  %15 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %send_flags, align 4
  %invalidate_done = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 10
  %16 = ptrtoint ptr %invalidate_done to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %invalidate_done, align 4
  %wait.i = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.390, ptr noundef nonnull @init_completion.__key) #10
  %id = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #10
  %21 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !702
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %20, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %23, i32 0, i32 1, i32 6
  %24 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %25(ptr noundef %20, ptr noundef %4, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end20, label %do.body7

do.body7:                                         ; preds = %if.then
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @smbd_deregister_mr._rs, ptr noundef nonnull @__func__.smbd_deregister_mr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body7.do.end19_crit_edge, label %do.end

do.body7.do.end19_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

do.end:                                           ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.smbd_deregister_mr, i32 noundef 2491, i32 noundef %call.i) #13
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body7.do.end19_crit_edge
  %workqueue.i = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 61
  %26 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %workqueue.i, align 8
  %disconnect_work.i = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 13
  %call.i.i70 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %disconnect_work.i) #10
  br label %done36

if.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_for_completion(ptr noundef %invalidate_done) #10
  %28 = ptrtoint ptr %need_invalidate to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %need_invalidate, align 4
  br label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 2
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %state, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end20
  %state24 = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 2
  %30 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp25 = icmp eq i32 %31, 2
  br i1 %cmp25, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.end23
  %id27 = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %id27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %id27, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %sgl = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 4
  %36 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sgl, align 4
  %sgl_count = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 5
  %38 = ptrtoint ptr %sgl_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sgl_count, align 8
  %dir = getelementptr inbounds %struct.smbd_mr, ptr %smbdirect_mr, i32 0, i32 6
  %40 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dir, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %35, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %43, ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 0) #10
  %44 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %state24, align 4
  %mr_ready_count = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 37
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mr_ready_count, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !719
  call void @llvm.prefetch.p0(ptr %mr_ready_count, i32 1, i32 3, i32 1) #10
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mr_ready_count, ptr %mr_ready_count, i32 1, ptr elementtype(i32) %mr_ready_count) #10, !srcloc !720
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !721
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp30 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp30, label %if.then31, label %if.then26.done36_crit_edge

if.then26.done36_crit_edge:                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %done36

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %wait_mr = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 39
  call void @__wake_up(ptr noundef %wait_mr, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %done36

if.else33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %workqueue = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 61
  %46 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %workqueue, align 8
  %mr_recovery_work = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 40
  %call.i71 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %mr_recovery_work) #10
  br label %done36

done36:                                           ; preds = %if.else33, %if.then31, %if.then26.done36_crit_edge, %do.end19
  %rc.1 = phi i32 [ %call.i, %do.end19 ], [ 0, %if.then31 ], [ 0, %if.then26.done36_crit_edge ], [ 0, %if.else33 ]
  %mr_used_count = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 38
  %call.i.i69 = call zeroext i1 @__kasan_check_write(ptr noundef %mr_used_count, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !716
  call void @llvm.prefetch.p0(ptr %mr_used_count, i32 1, i32 3, i32 1) #10
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mr_used_count, ptr %mr_used_count, i32 1, ptr elementtype(i32) %mr_used_count) #10, !srcloc !717
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !718
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then38, label %done36.if.end39_crit_edge

done36.if.end39_crit_edge:                        ; preds = %done36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %done36
  call void @__sanitizer_cov_trace_pc() #12
  %wait_for_mr_cleanup = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 41
  call void @__wake_up(ptr noundef %wait_for_mr_cleanup, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %done36.if.end39_crit_edge
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @local_inv_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %state = getelementptr i8, ptr %1, i32 -76
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %do.body4

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body4:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @local_inv_done._rs, ptr noundef nonnull @__func__.local_inv_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %do.body4.do.end17_crit_edge, label %do.end

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end:                                           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.389, ptr noundef nonnull @__func__.local_inv_done, i32 noundef 2460, i32 noundef %6) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body4.do.end17_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %state, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %entry.if.end19_crit_edge
  %invalidate_done = getelementptr i8, ptr %1, i32 8
  tail call void @complete(ptr noundef %invalidate_done) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smbd_qp_async_error_upcall(ptr nocapture noundef readonly %event, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_qp_async_error_upcall._rs, ptr noundef nonnull @__func__.smbd_qp_async_error_upcall) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %entry.do.end15_crit_edge, label %do.end

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %event6 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event6, align 4
  %call7 = tail call ptr @ib_event_msg(i32 noundef %1) #16
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %name = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 2
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @__func__.smbd_qp_async_error_upcall, i32 noundef 243, ptr noundef %call7, ptr noundef %name, ptr noundef %context) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end, %entry.do.end15_crit_edge
  %event16 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %4 = ptrtoint ptr %event16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %sw.bb, label %do.end15.sw.epilog_crit_edge

do.end15.sw.epilog_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %workqueue.i = getelementptr inbounds %struct.smbd_connection, ptr %context, i32 0, i32 61
  %6 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workqueue.i, align 8
  %disconnect_work.i = getelementptr inbounds %struct.smbd_connection, ptr %context, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %disconnect_work.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end15.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idle_connection_timer(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1484
  %keep_alive_requested = getelementptr i8, ptr %work, i32 -700
  %0 = ptrtoint ptr %keep_alive_requested to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %keep_alive_requested, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body19, label %do.body4

do.body4:                                         ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @idle_connection_timer._rs, ptr noundef nonnull @__func__.idle_connection_timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %do.body4.do.end17_crit_edge, label %do.end

do.body4.do.end17_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end:                                           ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %keep_alive_requested to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keep_alive_requested, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @__func__.idle_connection_timer, i32 noundef 1304, i32 noundef %3) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body4.do.end17_crit_edge
  %workqueue.i = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue.i, align 8
  %disconnect_work.i = getelementptr i8, ptr %work, i32 -868
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %disconnect_work.i) #10
  br label %cleanup

do.body19:                                        ; preds = %entry
  %6 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20.not = icmp eq i32 %6, 0
  br i1 %cmp20.not, label %lor.lhs.false21, label %do.body19.do.body26_crit_edge

do.body19.do.body26_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

lor.lhs.false21:                                  ; preds = %do.body19
  %7 = load i32, ptr @smbd_logging_class, align 4
  %and22 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false21.do.end42_crit_edge, label %lor.lhs.false21.do.body26_crit_edge

lor.lhs.false21.do.body26_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

lor.lhs.false21.do.end42_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

do.body26:                                        ; preds = %lor.lhs.false21.do.body26_crit_edge, %do.body19.do.body26_crit_edge
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @idle_connection_timer._rs.261, ptr noundef nonnull @__func__.idle_connection_timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body26.do.end42_crit_edge, label %do.end32

do.body26.do.end42_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263, ptr noundef nonnull @__func__.idle_connection_timer, i32 noundef 1309) #13
  br label %do.end42

do.end42:                                         ; preds = %do.end32, %do.body26.do.end42_crit_edge, %lor.lhs.false21.do.end42_crit_edge
  %count_send_empty.i = getelementptr i8, ptr %work, i32 136
  %8 = ptrtoint ptr %count_send_empty.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_send_empty.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %count_send_empty.i, align 4
  %call.i = tail call fastcc i32 @smbd_post_send_sgl(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %workqueue = getelementptr i8, ptr %work, i32 -4
  %10 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workqueue, align 8
  %keep_alive_interval = getelementptr i8, ptr %work, i32 -708
  %12 = ptrtoint ptr %keep_alive_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %keep_alive_interval, align 8
  %mul = mul i32 %13, 100
  %call.i51 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work, i32 noundef %mul) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.end17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smbd_disconnect_rdma_work(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -616
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %add.ptr, align 8
  %id = getelementptr i8, ptr %work, i32 -612
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id, align 4
  %call = tail call i32 @rdma_disconnect(ptr noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smbd_post_send_credits(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -660
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wait_receive_queues = getelementptr i8, ptr %work, i32 592
  tail call void @__wake_up(ptr noundef %wait_receive_queues, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %receive_credit_target = getelementptr i8, ptr %work, i32 140
  %2 = ptrtoint ptr %receive_credit_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %receive_credit_target, align 8
  %receive_credits = getelementptr i8, ptr %work, i32 136
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %receive_credits, i32 noundef 4) #10
  %4 = ptrtoint ptr %receive_credits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %receive_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1 = icmp sgt i32 %3, %5
  br i1 %cmp1, label %while.cond.preheader, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

while.cond.preheader:                             ; preds = %if.end
  %receive_queue_lock.i = getelementptr i8, ptr %work, i32 492
  %receive_queue.i = getelementptr i8, ptr %work, i32 480
  %count_receive_queue.i = getelementptr i8, ptr %work, i32 488
  %count_get_receive_buffer.i = getelementptr i8, ptr %work, i32 940
  %empty_packet_queue_lock.i = getelementptr i8, ptr %work, i32 548
  %empty_packet_queue.i = getelementptr i8, ptr %work, i32 536
  %count_empty_packet_queue.i = getelementptr i8, ptr %work, i32 544
  %call2.i155 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %receive_queue_lock.i) #10
  %6 = ptrtoint ptr %receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %receive_queue.i, align 4
  %cmp.i.not.i156 = icmp eq ptr %7, %receive_queue.i
  br i1 %cmp.i.not.i156, label %while.cond.preheader.if.end6.thread_crit_edge, label %while.cond.preheader.if.then.i_crit_edge

while.cond.preheader.if.then.i_crit_edge:         ; preds = %while.cond.preheader
  br label %if.then.i

while.cond.preheader.if.end6.thread_crit_edge:    ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end35.if.end6.thread_crit_edge, %while.cond.preheader.if.end6.thread_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %while.cond.preheader.if.end6.thread_crit_edge ], [ %inc, %if.end35.if.end6.thread_crit_edge ]
  %call2.i.lcssa = phi i32 [ %call2.i155, %while.cond.preheader.if.end6.thread_crit_edge ], [ %call2.i, %if.end35.if.end6.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %receive_queue_lock.i, i32 noundef %call2.i.lcssa) #10
  br label %if.then8

if.then.i:                                        ; preds = %if.end35.if.then.i_crit_edge, %while.cond.preheader.if.then.i_crit_edge
  %8 = phi ptr [ %41, %if.end35.if.then.i_crit_edge ], [ %7, %while.cond.preheader.if.then.i_crit_edge ]
  %call2.i158 = phi i32 [ %call2.i, %if.end35.if.then.i_crit_edge ], [ %call2.i155, %while.cond.preheader.if.then.i_crit_edge ]
  %ret.0157 = phi i32 [ %inc, %if.end35.if.then.i_crit_edge ], [ 0, %while.cond.preheader.if.then.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %8, i32 -28
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end6_crit_edge

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i.i, %if.then.i.if.end6_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %count_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count_receive_queue.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count_receive_queue.i, align 4
  %19 = ptrtoint ptr %count_get_receive_buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_get_receive_buffer.i, align 8
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %count_get_receive_buffer.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %receive_queue_lock.i, i32 noundef %call2.i158) #10
  %tobool7.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool7.not, label %if.end6.if.then8_crit_edge, label %if.end12

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %if.end6.thread
  %ret.0152 = phi i32 [ %ret.0.lcssa, %if.end6.thread ], [ %ret.0157, %if.end6.if.then8_crit_edge ]
  %call2.i103.1160 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %empty_packet_queue_lock.i) #10
  %21 = ptrtoint ptr %empty_packet_queue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %empty_packet_queue.i, align 4
  %cmp.i.not.i104.1161 = icmp eq ptr %22, %empty_packet_queue.i
  br i1 %cmp.i.not.i104.1161, label %if.then8.if.end6.1.thread_crit_edge, label %if.then8.if.then.i107.1_crit_edge

if.then8.if.then.i107.1_crit_edge:                ; preds = %if.then8
  br label %if.then.i107.1

if.then8.if.end6.1.thread_crit_edge:              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.1.thread

if.end6.1.thread:                                 ; preds = %if.end35.1.if.end6.1.thread_crit_edge, %if.then8.if.end6.1.thread_crit_edge
  %ret.0.1.lcssa = phi i32 [ %ret.0152, %if.then8.if.end6.1.thread_crit_edge ], [ %inc.1, %if.end35.1.if.end6.1.thread_crit_edge ]
  %call2.i103.1.lcssa = phi i32 [ %call2.i103.1160, %if.then8.if.end6.1.thread_crit_edge ], [ %call2.i103.1, %if.end35.1.if.end6.1.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %empty_packet_queue_lock.i, i32 noundef %call2.i103.1.lcssa) #10
  br label %if.end36

if.then.i107.1:                                   ; preds = %if.end35.1.if.then.i107.1_crit_edge, %if.then8.if.then.i107.1_crit_edge
  %23 = phi ptr [ %37, %if.end35.1.if.then.i107.1_crit_edge ], [ %22, %if.then8.if.then.i107.1_crit_edge ]
  %call2.i103.1163 = phi i32 [ %call2.i103.1, %if.end35.1.if.then.i107.1_crit_edge ], [ %call2.i103.1160, %if.then8.if.then.i107.1_crit_edge ]
  %ret.0.1162 = phi i32 [ %inc.1, %if.end35.1.if.then.i107.1_crit_edge ], [ %ret.0152, %if.then8.if.then.i107.1_crit_edge ]
  %add.ptr.i105.1 = getelementptr i8, ptr %23, i32 -28
  %call.i.i.i106.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #10
  br i1 %call.i.i.i106.1, label %if.end.i.i.i110.1, label %if.then.i107.1.if.end6.1_crit_edge

if.then.i107.1.if.end6.1_crit_edge:               ; preds = %if.then.i107.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.1

if.end.i.i.i110.1:                                ; preds = %if.then.i107.1
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i108.1 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i108.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i108.1, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i109.1 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i109.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i109.1, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %if.end6.1

if.end6.1:                                        ; preds = %if.end.i.i.i110.1, %if.then.i107.1.if.end6.1_crit_edge
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i.i111.1 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i111.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i111.1, align 4
  %32 = ptrtoint ptr %count_empty_packet_queue.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_empty_packet_queue.i, align 4
  %dec.i112.1 = add i32 %33, -1
  store i32 %dec.i112.1, ptr %count_empty_packet_queue.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %empty_packet_queue_lock.i, i32 noundef %call2.i103.1163) #10
  %tobool7.not.1 = icmp eq ptr %add.ptr.i105.1, null
  br i1 %tobool7.not.1, label %if.end6.1.if.end36_crit_edge, label %if.end12.1

if.end6.1.if.end36_crit_edge:                     ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end12.1:                                       ; preds = %if.end6.1
  %type.1 = getelementptr i8, ptr %23, i32 -4
  %34 = ptrtoint ptr %type.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type.1, align 8
  %first_segment.1 = getelementptr i8, ptr %23, i32 8
  %35 = ptrtoint ptr %first_segment.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %first_segment.1, align 4
  %call13.1 = tail call fastcc i32 @smbd_post_recv(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr.i105.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool14.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool14.not.1, label %if.end35.1, label %if.end12.1.do.body20_crit_edge

if.end12.1.do.body20_crit_edge:                   ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

if.end35.1:                                       ; preds = %if.end12.1
  %inc.1 = add i32 %ret.0.1162, 1
  %call2.i103.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %empty_packet_queue_lock.i) #10
  %36 = ptrtoint ptr %empty_packet_queue.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %empty_packet_queue.i, align 4
  %cmp.i.not.i104.1 = icmp eq ptr %37, %empty_packet_queue.i
  br i1 %cmp.i.not.i104.1, label %if.end35.1.if.end6.1.thread_crit_edge, label %if.end35.1.if.then.i107.1_crit_edge

if.end35.1.if.then.i107.1_crit_edge:              ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i107.1

if.end35.1.if.end6.1.thread_crit_edge:            ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.1.thread

if.end12:                                         ; preds = %if.end6
  %type = getelementptr i8, ptr %8, i32 -4
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %type, align 8
  %first_segment = getelementptr i8, ptr %8, i32 8
  %39 = ptrtoint ptr %first_segment to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %first_segment, align 4
  %call13 = tail call fastcc i32 @smbd_post_recv(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end35, label %if.end12.do.body20_crit_edge

if.end12.do.body20_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.body20:                                        ; preds = %if.end12.do.body20_crit_edge, %if.end12.1.do.body20_crit_edge
  %call13.lcssa = phi i32 [ %call13.1, %if.end12.1.do.body20_crit_edge ], [ %call13, %if.end12.do.body20_crit_edge ]
  %response.0.lcssa120 = phi ptr [ %add.ptr.i105.1, %if.end12.1.do.body20_crit_edge ], [ %add.ptr.i, %if.end12.do.body20_crit_edge ]
  %ret.0.lcssa119 = phi i32 [ %ret.0.1162, %if.end12.1.do.body20_crit_edge ], [ %ret.0157, %if.end12.do.body20_crit_edge ]
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send_credits._rs, ptr noundef nonnull @__func__.smbd_post_send_credits) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.do.end34_crit_edge, label %do.end

do.body20.do.end34_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

do.end:                                           ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef nonnull @__func__.smbd_post_send_credits, i32 noundef 417, i32 noundef %call13.lcssa) #13
  br label %do.end34

do.end34:                                         ; preds = %do.end, %do.body20.do.end34_crit_edge
  tail call fastcc void @put_receive_buffer(ptr noundef %add.ptr, ptr noundef nonnull %response.0.lcssa120)
  br label %if.end36

if.end35:                                         ; preds = %if.end12
  %inc = add i32 %ret.0157, 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %receive_queue_lock.i) #10
  %40 = ptrtoint ptr %receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %receive_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %41, %receive_queue.i
  br i1 %cmp.i.not.i, label %if.end35.if.end6.thread_crit_edge, label %if.end35.if.then.i_crit_edge

if.end35.if.then.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end35.if.end6.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.thread

if.end36:                                         ; preds = %do.end34, %if.end6.1.if.end36_crit_edge, %if.end6.1.thread, %if.end.if.end36_crit_edge
  %ret.1 = phi i32 [ %ret.0.lcssa119, %do.end34 ], [ 0, %if.end.if.end36_crit_edge ], [ %ret.0.1.lcssa, %if.end6.1.thread ], [ %ret.0.1162, %if.end6.1.if.end36_crit_edge ]
  %lock_new_credits_offered = getelementptr i8, ptr %work, i32 44
  tail call void @_raw_spin_lock(ptr noundef %lock_new_credits_offered) #10
  %new_credits_offered = getelementptr i8, ptr %work, i32 88
  %42 = ptrtoint ptr %new_credits_offered to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %new_credits_offered, align 4
  %add = add i32 %43, %ret.1
  store i32 %add, ptr %new_credits_offered, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock_new_credits_offered) #10
  %send_immediate = getelementptr i8, ptr %work, i32 760
  %44 = ptrtoint ptr %send_immediate to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %send_immediate, align 4
  %call.i.i102 = tail call zeroext i1 @__kasan_check_read(ptr noundef %receive_credits, i32 noundef 4) #10
  %45 = ptrtoint ptr %receive_credits to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %receive_credits, align 4
  %47 = ptrtoint ptr %receive_credit_target to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %receive_credit_target, align 8
  %sub = add i32 %48, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub)
  %cmp41 = icmp slt i32 %46, %sub
  br i1 %cmp41, label %if.then42, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %if.end36
  %keep_alive_requested = getelementptr i8, ptr %work, i32 124
  %49 = ptrtoint ptr %keep_alive_requested to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %keep_alive_requested, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp43 = icmp eq i32 %50, 1
  br i1 %cmp43, label %if.then42.do.body48_crit_edge, label %lor.lhs.false44

if.then42.do.body48_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body48

lor.lhs.false44:                                  ; preds = %if.then42
  %51 = ptrtoint ptr %send_immediate to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %send_immediate, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool46.not = icmp eq i8 %52, 0
  br i1 %tobool46.not, label %lor.lhs.false44.cleanup_crit_edge, label %lor.lhs.false44.do.body48_crit_edge

lor.lhs.false44.do.body48_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body48

lor.lhs.false44.cleanup_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body48:                                        ; preds = %lor.lhs.false44.do.body48_crit_edge, %if.then42.do.body48_crit_edge
  %53 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp49.not = icmp eq i32 %53, 0
  br i1 %cmp49.not, label %lor.lhs.false50, label %do.body48.do.body55_crit_edge

do.body48.do.body55_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

lor.lhs.false50:                                  ; preds = %do.body48
  %54 = load i32, ptr @smbd_logging_class, align 4
  %and51 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %lor.lhs.false50.do.end71_crit_edge, label %lor.lhs.false50.do.body55_crit_edge

lor.lhs.false50.do.body55_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

lor.lhs.false50.do.end71_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

do.body55:                                        ; preds = %lor.lhs.false50.do.body55_crit_edge, %do.body48.do.body55_crit_edge
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send_credits._rs.287, ptr noundef nonnull @__func__.smbd_post_send_credits) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body55.do.end71_crit_edge, label %do.end61

do.body55.do.end71_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289, ptr noundef nonnull @__func__.smbd_post_send_credits, i32 noundef 436) #13
  br label %do.end71

do.end71:                                         ; preds = %do.end61, %do.body55.do.end71_crit_edge, %lor.lhs.false50.do.end71_crit_edge
  %count_send_empty.i = getelementptr i8, ptr %work, i32 960
  %55 = ptrtoint ptr %count_send_empty.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count_send_empty.i, align 4
  %inc.i115 = add i32 %56, 1
  store i32 %inc.i115, ptr %count_send_empty.i, align 4
  %call.i = tail call fastcc i32 @smbd_post_send_sgl(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %lor.lhs.false44.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbd_conn_upcall(ptr nocapture noundef readonly %id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr @smbd_logging_class, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end14_crit_edge, label %lor.lhs.false.do.body2_crit_edge

lor.lhs.false.do.body2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.body2:                                         ; preds = %lor.lhs.false.do.body2_crit_edge, %entry.do.body2_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_conn_upcall._rs, ptr noundef nonnull @__func__.smbd_conn_upcall) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body2.do.end14_crit_edge, label %do.end

do.body2.do.end14_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 8
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @__func__.smbd_conn_upcall, i32 noundef 181, i32 noundef %5, i32 noundef %7) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body2.do.end14_crit_edge, %lor.lhs.false.do.end14_crit_edge
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.391)
  switch i32 %9, label %do.end14.sw.epilog_crit_edge [
    i32 0, label %do.end14.sw.bb_crit_edge
    i32 2, label %do.end14.sw.bb_crit_edge104
    i32 1, label %sw.bb16
    i32 3, label %sw.bb19
    i32 9, label %do.body23
    i32 6, label %do.end14.do.body49_crit_edge
    i32 7, label %do.end14.do.body49_crit_edge105
    i32 8, label %do.end14.do.body49_crit_edge106
    i32 11, label %do.end14.sw.bb76_crit_edge
    i32 10, label %do.end14.sw.bb76_crit_edge107
  ]

do.end14.sw.bb76_crit_edge107:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb76

do.end14.sw.bb76_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb76

do.end14.do.body49_crit_edge106:                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.end14.do.body49_crit_edge105:                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.end14.do.body49_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.end14.sw.bb_crit_edge104:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end14.sw.bb_crit_edge:                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end14.sw.epilog_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end14.sw.bb_crit_edge, %do.end14.sw.bb_crit_edge104
  %ri_rc = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %ri_rc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ri_rc, align 8
  %ri_done = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 8
  tail call void @complete(ptr noundef %ri_done) #10
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %ri_rc17 = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %ri_rc17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -113, ptr %ri_rc17, align 8
  %ri_done18 = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 8
  tail call void @complete(ptr noundef %ri_done18) #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %ri_rc20 = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %ri_rc20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -101, ptr %ri_rc20, align 8
  %ri_done21 = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 8
  tail call void @complete(ptr noundef %ri_done21) #10
  br label %sw.epilog

do.body23:                                        ; preds = %do.end14
  %14 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24.not = icmp eq i32 %14, 0
  br i1 %cmp24.not, label %lor.lhs.false25, label %do.body23.do.body30_crit_edge

do.body23.do.body30_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

lor.lhs.false25:                                  ; preds = %do.body23
  %15 = load i32, ptr @smbd_logging_class, align 4
  %and26 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false25.do.end47_crit_edge, label %lor.lhs.false25.do.body30_crit_edge

lor.lhs.false25.do.body30_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

lor.lhs.false25.do.end47_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.body30:                                        ; preds = %lor.lhs.false25.do.body30_crit_edge, %do.body23.do.body30_crit_edge
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_conn_upcall._rs.239, ptr noundef nonnull @__func__.smbd_conn_upcall) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body30.do.end47_crit_edge, label %do.end36

do.body30.do.end47_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event, align 8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef nonnull @__func__.smbd_conn_upcall, i32 noundef 201, i32 noundef %17) #13
  br label %do.end47

do.end47:                                         ; preds = %do.end36, %do.body30.do.end47_crit_edge, %lor.lhs.false25.do.end47_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %1, align 8
  %conn_wait = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %conn_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

do.body49:                                        ; preds = %do.end14.do.body49_crit_edge, %do.end14.do.body49_crit_edge105, %do.end14.do.body49_crit_edge106
  %19 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp50.not = icmp eq i32 %19, 0
  br i1 %cmp50.not, label %lor.lhs.false51, label %do.body49.do.body56_crit_edge

do.body49.do.body56_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

lor.lhs.false51:                                  ; preds = %do.body49
  %20 = load i32, ptr @smbd_logging_class, align 4
  %and52 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %lor.lhs.false51.do.end73_crit_edge, label %lor.lhs.false51.do.body56_crit_edge

lor.lhs.false51.do.body56_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

lor.lhs.false51.do.end73_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.body56:                                        ; preds = %lor.lhs.false51.do.body56_crit_edge, %do.body49.do.body56_crit_edge
  %call57 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_conn_upcall._rs.243, ptr noundef nonnull @__func__.smbd_conn_upcall) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body56.do.end73_crit_edge, label %do.end62

do.body56.do.end73_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end73

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %event, align 8
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @__func__.smbd_conn_upcall, i32 noundef 209, i32 noundef %22) #13
  br label %do.end73

do.end73:                                         ; preds = %do.end62, %do.body56.do.end73_crit_edge, %lor.lhs.false51.do.end73_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %1, align 8
  %conn_wait75 = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %conn_wait75, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

sw.bb76:                                          ; preds = %do.end14.sw.bb76_crit_edge, %do.end14.sw.bb76_crit_edge107
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp78 = icmp eq i32 %25, 3
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %1, align 8
  br i1 %cmp78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #12
  %conn_wait81 = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %conn_wait81, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %sw.epilog

if.end82:                                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #12
  %disconn_wait = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %disconn_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %wait_reassembly_queue = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 54
  tail call void @__wake_up(ptr noundef %wait_reassembly_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %wait_send_queue = getelementptr inbounds %struct.smbd_connection, ptr %1, i32 0, i32 59
  tail call void @__wake_up(ptr noundef %wait_send_queue, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end82, %if.then79, %do.end73, %do.end47, %sw.bb19, %sw.bb16, %sw.bb, %do.end14.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_route(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_cq_any(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_event_msg(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smbd_post_send_sgl(ptr noundef %info, ptr noundef %sgl, i32 noundef %data_length, i32 noundef %remaining_data_length) unnamed_addr #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %send_wr.i = alloca %struct.ib_send_wr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry72 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %send_credits = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 27
  %wait_send_queue = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 59
  br label %wait_credit

wait_credit:                                      ; preds = %if.then54, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 841) #10
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %send_credits, i32 noundef 4) #10
  %0 = ptrtoint ptr %send_credits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %send_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %wait_credit.if.end21_crit_edge, label %lor.lhs.false

wait_credit.if.end21_crit_edge:                   ; preds = %wait_credit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

lor.lhs.false:                                    ; preds = %wait_credit
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp4.not = icmp eq i32 %3, 2
  br i1 %cmp4.not, label %if.then, label %lor.lhs.false.do.body31_crit_edge

lor.lhs.false.do.body31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call6448 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call.i.i400449 = call zeroext i1 @__kasan_check_read(ptr noundef %send_credits, i32 noundef 4) #10
  %5 = ptrtoint ptr %send_credits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %send_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9450 = icmp sgt i32 %6, 0
  br i1 %cmp9450, label %if.then.if.end17.thread429_crit_edge, label %if.then.lor.lhs.false10_crit_edge

if.then.lor.lhs.false10_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false10

if.then.if.end17.thread429_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.thread429

lor.lhs.false10:                                  ; preds = %cleanup.lor.lhs.false10_crit_edge, %if.then.lor.lhs.false10_crit_edge
  %call6451 = phi i32 [ %call6, %cleanup.lor.lhs.false10_crit_edge ], [ %call6448, %if.then.lor.lhs.false10_crit_edge ]
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp12.not = icmp eq i32 %8, 2
  br i1 %cmp12.not, label %if.end, label %lor.lhs.false10.if.end17.thread429_crit_edge

lor.lhs.false10.if.end17.thread429_crit_edge:     ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.thread429

if.end:                                           ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6451)
  %tobool.not = icmp eq i32 %call6451, 0
  br i1 %tobool.not, label %cleanup, label %if.end17

cleanup:                                          ; preds = %if.end
  call void @schedule() #10
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %wait_send_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call.i.i400 = call zeroext i1 @__kasan_check_read(ptr noundef %send_credits, i32 noundef 4) #10
  %9 = ptrtoint ptr %send_credits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %send_credits, align 4
  %cmp9 = icmp sgt i32 %10, 0
  br i1 %cmp9, label %cleanup.if.end17.thread429_crit_edge, label %cleanup.lor.lhs.false10_crit_edge

cleanup.lor.lhs.false10_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false10

cleanup.if.end17.thread429_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.thread429

if.end17.thread429:                               ; preds = %cleanup.if.end17.thread429_crit_edge, %lor.lhs.false10.if.end17.thread429_crit_edge, %if.then.if.end17.thread429_crit_edge
  call void @finish_wait(ptr noundef %wait_send_queue, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end21

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup287

if.end21:                                         ; preds = %if.end17.thread429, %wait_credit.if.end21_crit_edge
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr440 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr440)
  %cmp23.not = icmp eq i32 %.pr440, 2
  br i1 %cmp23.not, label %if.end48, label %if.end21.do.body31_crit_edge

if.end21.do.body31_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

do.body31:                                        ; preds = %if.end21.do.body31_crit_edge, %lor.lhs.false.do.body31_crit_edge
  %call32 = call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send_sgl._rs, ptr noundef nonnull @__func__.smbd_post_send_sgl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body31.cleanup287_crit_edge, label %do.end37

do.body31.cleanup287_crit_edge:                   ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup287

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265, ptr noundef nonnull @__func__.smbd_post_send_sgl, i32 noundef 846) #13
  br label %cleanup287

if.end48:                                         ; preds = %if.end21
  %call.i.i401 = call zeroext i1 @__kasan_check_write(ptr noundef %send_credits, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !716
  call void @llvm.prefetch.p0(ptr %send_credits, i32 1, i32 3, i32 1) #10
  %12 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_credits, ptr %send_credits, i32 1, ptr elementtype(i32) %send_credits) #10, !srcloc !717
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !718
  %cmp51 = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp51, label %if.then54, label %wait_send_queue57.preheader, !prof !706

wait_send_queue57.preheader:                      ; preds = %if.end48
  %send_pending = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 42
  %send_credit_target = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 18
  %wait_post_send = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 44
  br label %wait_send_queue57

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i402 = call zeroext i1 @__kasan_check_write(ptr noundef %send_credits, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %send_credits, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_credits, ptr %send_credits, i32 1, ptr elementtype(i32) %send_credits) #10, !srcloc !703
  br label %wait_credit

wait_send_queue57:                                ; preds = %if.then133, %wait_send_queue57.preheader
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 858) #10
  %call.i.i403 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %14 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %send_pending, align 4
  %16 = ptrtoint ptr %send_credit_target to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %send_credit_target, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp66 = icmp slt i32 %15, %17
  br i1 %cmp66, label %wait_send_queue57.do.end94_crit_edge, label %lor.lhs.false67

wait_send_queue57.do.end94_crit_edge:             ; preds = %wait_send_queue57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end94

lor.lhs.false67:                                  ; preds = %wait_send_queue57
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp69.not = icmp eq i32 %19, 2
  br i1 %cmp69.not, label %if.end71, label %lor.lhs.false67.do.body105_crit_edge

lor.lhs.false67.do.body105_crit_edge:             ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

if.end71:                                         ; preds = %lor.lhs.false67
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry72) #10
  %20 = call ptr @memset(ptr %__wq_entry72, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry72, i32 noundef 0) #10
  %call76453 = call i32 @prepare_to_wait_event(ptr noundef %wait_post_send, ptr noundef nonnull %__wq_entry72, i32 noundef 2) #10
  %call.i.i404454 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %21 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %send_pending, align 4
  %23 = ptrtoint ptr %send_credit_target to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %send_credit_target, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp80455 = icmp slt i32 %22, %24
  br i1 %cmp80455, label %if.end71.for.end89_crit_edge, label %if.end71.lor.lhs.false81_crit_edge

if.end71.lor.lhs.false81_crit_edge:               ; preds = %if.end71
  br label %lor.lhs.false81

if.end71.for.end89_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

lor.lhs.false81:                                  ; preds = %cleanup86.lor.lhs.false81_crit_edge, %if.end71.lor.lhs.false81_crit_edge
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp83.not = icmp eq i32 %26, 2
  br i1 %cmp83.not, label %cleanup86, label %lor.lhs.false81.for.end89_crit_edge

lor.lhs.false81.for.end89_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

cleanup86:                                        ; preds = %lor.lhs.false81
  call void @schedule() #10
  %call76 = call i32 @prepare_to_wait_event(ptr noundef %wait_post_send, ptr noundef nonnull %__wq_entry72, i32 noundef 2) #10
  %call.i.i404 = call zeroext i1 @__kasan_check_read(ptr noundef %send_pending, i32 noundef 4) #10
  %27 = ptrtoint ptr %send_pending to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %send_pending, align 4
  %29 = ptrtoint ptr %send_credit_target to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %send_credit_target, align 4
  %cmp80 = icmp slt i32 %28, %30
  br i1 %cmp80, label %cleanup86.for.end89_crit_edge, label %cleanup86.lor.lhs.false81_crit_edge

cleanup86.lor.lhs.false81_crit_edge:              ; preds = %cleanup86
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false81

cleanup86.for.end89_crit_edge:                    ; preds = %cleanup86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

for.end89:                                        ; preds = %cleanup86.for.end89_crit_edge, %lor.lhs.false81.for.end89_crit_edge, %if.end71.for.end89_crit_edge
  call void @finish_wait(ptr noundef %wait_post_send, ptr noundef nonnull %__wq_entry72) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry72) #10
  br label %do.end94

do.end94:                                         ; preds = %for.end89, %wait_send_queue57.do.end94_crit_edge
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp96.not = icmp eq i32 %.pr, 2
  br i1 %cmp96.not, label %if.end122, label %do.end94.do.body105_crit_edge

do.end94.do.body105_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

do.body105:                                       ; preds = %do.end94.do.body105_crit_edge, %lor.lhs.false67.do.body105_crit_edge
  %call106 = call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send_sgl._rs.266, ptr noundef nonnull @__func__.smbd_post_send_sgl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.body105.err_wait_send_queue_crit_edge, label %do.end111

do.body105.err_wait_send_queue_crit_edge:         ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_wait_send_queue

do.end111:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, ptr noundef nonnull @__func__.smbd_post_send_sgl, i32 noundef 861) #13
  br label %err_wait_send_queue

if.end122:                                        ; preds = %do.end94
  %call.i.i405 = call zeroext i1 @__kasan_check_write(ptr noundef %send_pending, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !719
  call void @llvm.prefetch.p0(ptr %send_pending, i32 1, i32 3, i32 1) #10
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending, ptr %send_pending, i32 1, ptr elementtype(i32) %send_pending) #10, !srcloc !720
  %asmresult.i.i.i.i406 = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !721
  %33 = ptrtoint ptr %send_credit_target to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %send_credit_target, align 4
  %cmp126 = icmp sgt i32 %asmresult.i.i.i.i406, %34
  br i1 %cmp126, label %if.then133, label %if.end135, !prof !706

if.then133:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i407 = call zeroext i1 @__kasan_check_write(ptr noundef %send_pending, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %send_pending, i32 1, i32 3, i32 1) #10
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending, ptr %send_pending, i32 1, ptr elementtype(i32) %send_pending) #10, !srcloc !704
  br label %wait_send_queue57

if.end135:                                        ; preds = %if.end122
  %request_mempool = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 64
  %36 = ptrtoint ptr %request_mempool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %request_mempool, align 4
  %call136 = call noalias ptr @mempool_alloc(ptr noundef %37, i32 noundef 3264) #10
  %tobool137.not = icmp eq ptr %call136, null
  br i1 %tobool137.not, label %if.end135.err_alloc_crit_edge, label %if.end139

if.end135.err_alloc_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc

if.end139:                                        ; preds = %if.end135
  %38 = ptrtoint ptr %call136 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %info, ptr %call136, align 8
  %packet.i = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 0, i32 4
  %39 = ptrtoint ptr %send_credit_target to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %send_credit_target, align 4
  %conv = trunc i32 %40 to i16
  %41 = call i16 @llvm.bswap.i16(i16 %conv)
  %42 = ptrtoint ptr %packet.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %packet.i, align 1
  %lock_new_credits_offered.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %lock_new_credits_offered.i) #10
  %new_credits_offered.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 16
  %43 = ptrtoint ptr %new_credits_offered.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %new_credits_offered.i, align 4
  store i32 0, ptr %new_credits_offered.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock_new_credits_offered.i) #10
  %receive_credits = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 28
  %call.i.i408 = call zeroext i1 @__kasan_check_write(ptr noundef %receive_credits, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %receive_credits, i32 1, i32 3, i32 1) #10
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %receive_credits, ptr %receive_credits, i32 %44, ptr elementtype(i32) %receive_credits) #10, !srcloc !703
  %conv144 = trunc i32 %44 to i16
  %46 = call i16 @llvm.bswap.i16(i16 %conv144)
  %credits_granted = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %credits_granted to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %credits_granted, align 1
  %send_immediate = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 58
  %48 = ptrtoint ptr %send_immediate to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %send_immediate, align 4
  %flags = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 1
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 0, ptr %flags, align 1
  %keep_alive_requested.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 25
  %50 = ptrtoint ptr %keep_alive_requested.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %keep_alive_requested.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i = icmp eq i32 %51, 1
  br i1 %cmp.i, label %if.then147, label %if.end139.if.end151_crit_edge

if.end139.if.end151_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then147:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %keep_alive_requested.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %keep_alive_requested.i, align 8
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 256, ptr %flags, align 1
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %if.end139.if.end151_crit_edge
  %reserved = getelementptr inbounds %struct.smbd_data_transfer, ptr %packet.i, i32 0, i32 3
  %54 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 0, ptr %reserved, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_length)
  %tobool152.not = icmp eq i32 %data_length, 0
  %spec.select = select i1 %tobool152.not, i32 0, i32 402653184
  %55 = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 1, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %spec.select, ptr %55, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %data_length)
  %data_length156 = getelementptr inbounds %struct.smbd_data_transfer, ptr %packet.i, i32 0, i32 6
  %58 = ptrtoint ptr %data_length156 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %data_length156, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %remaining_data_length)
  %remaining_data_length157 = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 1, i32 1
  %60 = ptrtoint ptr %remaining_data_length157 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %remaining_data_length157, align 1
  %padding = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 1, i32 2, i32 0, i32 1
  %61 = ptrtoint ptr %padding to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 0, ptr %padding, align 1
  %62 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp159.not = icmp eq i32 %62, 0
  br i1 %cmp159.not, label %lor.lhs.false161, label %if.end151.do.body166_crit_edge

if.end151.do.body166_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body166

lor.lhs.false161:                                 ; preds = %if.end151
  %63 = load i32, ptr @smbd_logging_class, align 4
  %and162 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %lor.lhs.false161.do.end189_crit_edge, label %lor.lhs.false161.do.body166_crit_edge

lor.lhs.false161.do.body166_crit_edge:            ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body166

lor.lhs.false161.do.end189_crit_edge:             ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end189

do.body166:                                       ; preds = %lor.lhs.false161.do.body166_crit_edge, %if.end151.do.body166_crit_edge
  %call167 = call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send_sgl._rs.270, ptr noundef nonnull @__func__.smbd_post_send_sgl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %do.body166.do.end189_crit_edge, label %do.end172

do.body166.do.end189_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end189

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %packet.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %packet.i, align 1
  %66 = call i16 @llvm.bswap.i16(i16 %65)
  %conv175 = zext i16 %66 to i32
  %67 = ptrtoint ptr %credits_granted to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %credits_granted, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  %conv177 = zext i16 %69 to i32
  %70 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %55, align 1
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %data_length156 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %data_length156, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %remaining_data_length157 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %remaining_data_length157, align 1
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef nonnull @__func__.smbd_post_send_sgl, i32 noundef 908, i32 noundef %conv175, i32 noundef %conv177, i32 noundef %72, i32 noundef %75, i32 noundef %78) #13
  br label %do.end189

do.end189:                                        ; preds = %do.end172, %do.body166.do.end189_crit_edge, %lor.lhs.false161.do.end189_crit_edge
  %spec.store.select = select i1 %tobool152.not, i32 20, i32 24
  %num_sge = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 0, i32 3
  %79 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %num_sge, align 8
  %id = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 1
  %80 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %id, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %call.i.i412 = call zeroext i1 @is_vmalloc_addr(ptr noundef %packet.i) #10
  br i1 %call.i.i412, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %do.end189
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !701

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %85) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %89, %if.end.i.i.i ], [ %87, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.274, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.275, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #12
  call void @debug_dma_map_single(ptr noundef %85, ptr noundef %packet.i, i32 noundef %spec.store.select) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %90 = load ptr, ptr @mem_map, align 4
  %91 = ptrtoint ptr %packet.i to i32
  %sub.i.i = add i32 %91, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %90, i32 %shr.i.i
  %and.i.i = and i32 %91, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %85, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %spec.store.select, i32 noundef 1, i32 noundef 0) #10
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %sge = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 0, i32 2
  %92 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv2.i, ptr %sge, align 8
  %93 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %id, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  call void @debug_dma_mapping_error(ptr noundef %98, i32 noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i413 = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i413, label %if.then201, label %if.end205

if.then201:                                       ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 0, ptr %sge, align 8
  br label %err_dma

if.end205:                                        ; preds = %ib_dma_map_single.exit
  %length = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 0, i32 1
  %100 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %spec.store.select, ptr %length, align 8
  %pd = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 3
  %101 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pd, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %lkey = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 0, i32 2
  %105 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %lkey, align 4
  %tobool210.not = icmp eq ptr %sgl, null
  br i1 %tobool210.not, label %if.end205.for.end251_crit_edge, label %cond.end

if.end205.for.end251_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end251

cond.end:                                         ; preds = %if.end205
  %call211 = call i32 @sg_nents(ptr noundef nonnull %sgl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %cmp213457 = icmp sgt i32 %call211, 0
  br i1 %cmp213457, label %cond.end.for.body_crit_edge, label %cond.end.for.end251_crit_edge

cond.end.for.end251_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end251

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %if.end236.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.0459 = phi i32 [ %add, %if.end236.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %sg.0458 = phi ptr [ %call250, %if.end236.for.body_crit_edge ], [ %sgl, %cond.end.for.body_crit_edge ]
  %106 = ptrtoint ptr %sg.0458 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sg.0458, align 4
  %and.i.i414 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i414)
  %tobool.i.not.i = icmp eq i32 %and.i.i414, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !701

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !722
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %108 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %id, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %and.i = and i32 %107, -4
  %112 = inttoptr i32 %and.i to ptr
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0458, i32 0, i32 1
  %113 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %offset, align 4
  %length218 = getelementptr inbounds %struct.scatterlist, ptr %sg.0458, i32 0, i32 2
  %115 = ptrtoint ptr %length218 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %length218, align 4
  %117 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %111, align 8
  %call2.i = call i32 @dma_map_page_attrs(ptr noundef %118, ptr noundef %112, i32 noundef %114, i32 noundef %116, i32 noundef 1, i32 noundef 0) #10
  %conv3.i = zext i32 %call2.i to i64
  %add = add nuw nsw i32 %i.0459, 1
  %arrayidx221 = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %add
  %119 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv3.i, ptr %arrayidx221, align 8
  %120 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %id, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  call void @debug_dma_mapping_error(ptr noundef %125, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i.i415.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i.i415.not, label %if.then231, label %if.end236

if.then231:                                       ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 0, ptr %arrayidx221, align 8
  br label %err_dma

if.end236:                                        ; preds = %sg_page.exit
  %127 = ptrtoint ptr %length218 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %length218, align 4
  %length241 = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %add, i32 1
  %129 = ptrtoint ptr %length241 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %length241, align 8
  %130 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pd, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %lkey247 = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %add, i32 2
  %134 = ptrtoint ptr %lkey247 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %lkey247, align 4
  %135 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_sge, align 8
  %inc = add i32 %136, 1
  store i32 %inc, ptr %num_sge, align 8
  %call250 = call ptr @sg_next(ptr noundef %sg.0458) #10
  %exitcond.not = icmp eq i32 %add, %call211
  br i1 %exitcond.not, label %if.end236.for.end251_crit_edge, label %if.end236.for.body_crit_edge

if.end236.for.body_crit_edge:                     ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end236.for.end251_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end251

for.end251:                                       ; preds = %if.end236.for.end251_crit_edge, %cond.end.for.end251_crit_edge, %if.end205.for.end251_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %send_wr.i) #10
  %137 = call ptr @memset(ptr %send_wr.i, i32 255, i32 40)
  %138 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp79.i = icmp sgt i32 %139, 0
  br i1 %cmp79.i, label %for.end251.do.body.i_crit_edge, label %for.end251.for.end.i_crit_edge

for.end251.for.end.i_crit_edge:                   ; preds = %for.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end251.do.body.i_crit_edge:                   ; preds = %for.end251
  br label %do.body.i

do.body.i:                                        ; preds = %do.end16.i.do.body.i_crit_edge, %for.end251.do.body.i_crit_edge
  %i.080.i = phi i32 [ %inc.i, %do.end16.i.do.body.i_crit_edge ], [ 0, %for.end251.do.body.i_crit_edge ]
  %140 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp1.not.i = icmp eq i32 %140, 0
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %do.body.i.do.body3.i_crit_edge

do.body.i.do.body3.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %141 = load i32, ptr @smbd_logging_class, align 4
  %and.i417 = and i32 %141, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i417)
  %tobool.not.i = icmp eq i32 %and.i417, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.do.end16.i_crit_edge, label %lor.lhs.false.i.do.body3.i_crit_edge

lor.lhs.false.i.do.body3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i

lor.lhs.false.i.do.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

do.body3.i:                                       ; preds = %lor.lhs.false.i.do.body3.i_crit_edge, %do.body.i.do.body3.i_crit_edge
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send._rs, ptr noundef nonnull @__func__.smbd_post_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %do.body3.i.do.end16.i_crit_edge, label %do.end.i

do.body3.i.do.end16.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

do.end.i:                                         ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %i.080.i
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx.i, align 8
  %length.i = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %i.080.i, i32 1
  %144 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %length.i, align 8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef nonnull @__func__.smbd_post_send, i32 noundef 796, i32 noundef %i.080.i, i64 noundef %143, i32 noundef %145) #13
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %do.body3.i.do.end16.i_crit_edge, %lor.lhs.false.i.do.end16.i_crit_edge
  %146 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %id, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %arrayidx18.i = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %i.080.i
  %150 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx18.i, align 8
  %length22.i = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %i.080.i, i32 1
  %152 = ptrtoint ptr %length22.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %length22.i, align 8
  %154 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %149, align 8
  %conv.i.i = trunc i64 %151 to i32
  call void @dma_sync_single_for_device(ptr noundef %155, i32 noundef %conv.i.i, i32 noundef %153, i32 noundef 1) #10
  %inc.i = add nuw nsw i32 %i.080.i, 1
  %156 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %num_sge, align 8
  %cmp.i418 = icmp slt i32 %inc.i, %157
  br i1 %cmp.i418, label %do.end16.i.do.body.i_crit_edge, label %do.end16.i.for.end.i_crit_edge

do.end16.i.for.end.i_crit_edge:                   ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.end16.i.do.body.i_crit_edge:                   ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.end.i:                                        ; preds = %do.end16.i.for.end.i_crit_edge, %for.end251.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %139, %for.end251.for.end.i_crit_edge ], [ %157, %do.end16.i.for.end.i_crit_edge ]
  %cqe.i = getelementptr inbounds %struct.smbd_request, ptr %call136, i32 0, i32 1
  %158 = ptrtoint ptr %cqe.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @send_done, ptr %cqe.i, align 4
  %159 = ptrtoint ptr %send_wr.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %send_wr.i, align 8
  %160 = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 1
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %cqe.i, ptr %160, align 8
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 2
  %162 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %sge, ptr %sg_list.i, align 8
  %num_sge26.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 3
  %163 = ptrtoint ptr %num_sge26.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %.lcssa.i, ptr %num_sge26.i, align 4
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 4
  %164 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 2, ptr %opcode.i, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 5
  %165 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 2, ptr %send_flags.i, align 4
  %166 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %id, align 4
  %qp.i = getelementptr inbounds %struct.rdma_cm_id, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #10
  %170 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !702
  %171 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %169, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %172, i32 0, i32 1, i32 6
  %173 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i419 = call i32 %174(ptr noundef %169, ptr noundef nonnull %send_wr.i, ptr noundef nonnull %dummy.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i419)
  %tobool29.not.i = icmp eq i32 %call.i.i419, 0
  br i1 %tobool29.not.i, label %smbd_post_send.exit.thread, label %do.body38.i

do.body38.i:                                      ; preds = %for.end.i
  %call39.i = call i32 @___ratelimit(ptr noundef nonnull @smbd_post_send._rs.277, ptr noundef nonnull @__func__.smbd_post_send) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %do.body38.i.smbd_post_send.exit_crit_edge, label %do.end44.i

do.body38.i.smbd_post_send.exit_crit_edge:        ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smbd_post_send.exit

do.end44.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, ptr noundef nonnull @__func__.smbd_post_send, i32 noundef 815, i32 noundef %call.i.i419) #13
  br label %smbd_post_send.exit

smbd_post_send.exit.thread:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %workqueue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 61
  %175 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %workqueue.i, align 8
  %idle_timer_work.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 62
  %keep_alive_interval.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 23
  %177 = ptrtoint ptr %keep_alive_interval.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %keep_alive_interval.i, align 8
  %mul.i = mul i32 %178, 100
  %call.i78.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %176, ptr noundef %idle_timer_work.i, i32 noundef %mul.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %send_wr.i) #10
  br label %cleanup287

smbd_post_send.exit:                              ; preds = %do.end44.i, %do.body38.i.smbd_post_send.exit_crit_edge
  %workqueue.i.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 61
  %179 = ptrtoint ptr %workqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %workqueue.i.i, align 8
  %disconnect_work.i.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 13
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %180, ptr noundef %disconnect_work.i.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %send_wr.i) #10
  br label %err_dma

err_dma:                                          ; preds = %smbd_post_send.exit, %if.then231, %if.then201
  %rc.0 = phi i32 [ -5, %if.then201 ], [ -5, %if.then231 ], [ -11, %smbd_post_send.exit ]
  %181 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp258460 = icmp sgt i32 %182, 0
  br i1 %cmp258460, label %err_dma.for.body260_crit_edge, label %err_dma.for.end277_crit_edge

err_dma.for.end277_crit_edge:                     ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end277

err_dma.for.body260_crit_edge:                    ; preds = %err_dma
  br label %for.body260

for.body260:                                      ; preds = %for.inc275.for.body260_crit_edge, %err_dma.for.body260_crit_edge
  %i.1461 = phi i32 [ %inc276, %for.inc275.for.body260_crit_edge ], [ 0, %err_dma.for.body260_crit_edge ]
  %arrayidx262 = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %i.1461
  %183 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %arrayidx262, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %184)
  %tobool264.not = icmp eq i64 %184, 0
  br i1 %tobool264.not, label %for.body260.for.inc275_crit_edge, label %if.then265

for.body260.for.inc275_crit_edge:                 ; preds = %for.body260
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc275

if.then265:                                       ; preds = %for.body260
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %id, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %length273 = getelementptr %struct.smbd_request, ptr %call136, i32 0, i32 2, i32 %i.1461, i32 1
  %189 = ptrtoint ptr %length273 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %length273, align 8
  %191 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %188, align 8
  %conv.i = trunc i64 %184 to i32
  call void @dma_unmap_page_attrs(ptr noundef %192, i32 noundef %conv.i, i32 noundef %190, i32 noundef 1, i32 noundef 0) #10
  br label %for.inc275

for.inc275:                                       ; preds = %if.then265, %for.body260.for.inc275_crit_edge
  %inc276 = add nuw nsw i32 %i.1461, 1
  %193 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %num_sge, align 8
  %cmp258 = icmp slt i32 %inc276, %194
  br i1 %cmp258, label %for.inc275.for.body260_crit_edge, label %for.inc275.for.end277_crit_edge

for.inc275.for.end277_crit_edge:                  ; preds = %for.inc275
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end277

for.inc275.for.body260_crit_edge:                 ; preds = %for.inc275
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body260

for.end277:                                       ; preds = %for.inc275.for.end277_crit_edge, %err_dma.for.end277_crit_edge
  %195 = ptrtoint ptr %request_mempool to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %request_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call136, ptr noundef %196) #10
  call void @_raw_spin_lock(ptr noundef %lock_new_credits_offered.i) #10
  %197 = ptrtoint ptr %new_credits_offered.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %new_credits_offered.i, align 4
  %add279 = add i32 %198, %44
  store i32 %add279, ptr %new_credits_offered.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock_new_credits_offered.i) #10
  %call.i.i409 = call zeroext i1 @__kasan_check_write(ptr noundef %receive_credits, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %receive_credits, i32 1, i32 3, i32 1) #10
  %199 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %receive_credits, ptr %receive_credits, i32 %44, ptr elementtype(i32) %receive_credits) #10, !srcloc !704
  br label %err_alloc

err_alloc:                                        ; preds = %for.end277, %if.end135.err_alloc_crit_edge
  %rc.1 = phi i32 [ %rc.0, %for.end277 ], [ -12, %if.end135.err_alloc_crit_edge ]
  %call.i.i410 = call zeroext i1 @__kasan_check_write(ptr noundef %send_pending, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !716
  call void @llvm.prefetch.p0(ptr %send_pending, i32 1, i32 3, i32 1) #10
  %200 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending, ptr %send_pending, i32 1, ptr elementtype(i32) %send_pending) #10, !srcloc !717
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %200, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !718
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then284, label %err_alloc.err_wait_send_queue_crit_edge

err_alloc.err_wait_send_queue_crit_edge:          ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_wait_send_queue

if.then284:                                       ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #12
  %wait_send_pending = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 43
  call void @__wake_up(ptr noundef %wait_send_pending, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %err_wait_send_queue

err_wait_send_queue:                              ; preds = %if.then284, %err_alloc.err_wait_send_queue_crit_edge, %do.end111, %do.body105.err_wait_send_queue_crit_edge
  %rc.2 = phi i32 [ %rc.1, %if.then284 ], [ %rc.1, %err_alloc.err_wait_send_queue_crit_edge ], [ -11, %do.body105.err_wait_send_queue_crit_edge ], [ -11, %do.end111 ]
  %call.i.i411 = call zeroext i1 @__kasan_check_write(ptr noundef %send_credits, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %send_credits, i32 1, i32 3, i32 1) #10
  %201 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_credits, ptr %send_credits, i32 1, ptr elementtype(i32) %send_credits) #10, !srcloc !703
  br label %cleanup287

cleanup287:                                       ; preds = %err_wait_send_queue, %smbd_post_send.exit.thread, %do.end37, %do.body31.cleanup287_crit_edge, %if.end17
  %retval.0 = phi i32 [ %call6451, %if.end17 ], [ %rc.2, %err_wait_send_queue ], [ -11, %do.body31.cleanup287_crit_edge ], [ -11, %do.end37 ], [ 0, %smbd_post_send.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr @smbd_logging_class, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end14_crit_edge, label %lor.lhs.false.do.body2_crit_edge

lor.lhs.false.do.body2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.body2:                                         ; preds = %lor.lhs.false.do.body2_crit_edge, %entry.do.body2_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @send_done._rs, ptr noundef nonnull @__func__.send_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body2.do.end14_crit_edge, label %do.end

do.body2.do.end14_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, ptr noundef nonnull @__func__.send_done, i32 noundef 274, ptr noundef %add.ptr, i32 noundef %5) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body2.do.end14_crit_edge, %lor.lhs.false.do.end14_crit_edge
  %status15 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %6 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not = icmp eq i32 %7, 0
  br i1 %cmp16.not, label %lor.lhs.false17, label %do.end14.do.body27_crit_edge

do.end14.do.body27_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

lor.lhs.false17:                                  ; preds = %do.end14
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18.not = icmp eq i32 %9, 0
  br i1 %cmp18.not, label %lor.lhs.false17.if.end46_crit_edge, label %lor.lhs.false17.do.body27_crit_edge

lor.lhs.false17.do.body27_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27

lor.lhs.false17.if.end46_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body27:                                        ; preds = %lor.lhs.false17.do.body27_crit_edge, %do.end14.do.body27_crit_edge
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @send_done._rs.282, ptr noundef nonnull @__func__.send_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body27.do.end45_crit_edge, label %do.end33

do.body27.do.end45_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status15, align 8
  %opcode36 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %12 = ptrtoint ptr %opcode36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opcode36, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284, ptr noundef nonnull @__func__.send_done, i32 noundef 278, i32 noundef %11, i32 noundef %13) #13
  br label %do.end45

do.end45:                                         ; preds = %do.end33, %do.body27.do.end45_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %workqueue.i = getelementptr inbounds %struct.smbd_connection, ptr %15, i32 0, i32 61
  %16 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workqueue.i, align 8
  %disconnect_work.i = getelementptr inbounds %struct.smbd_connection, ptr %15, i32 0, i32 13
  %call.i.i76 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %disconnect_work.i) #10
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %lor.lhs.false17.if.end46_crit_edge
  %num_sge = getelementptr i8, ptr %1, i32 260
  %18 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4777 = icmp sgt i32 %19, 0
  br i1 %cmp4777, label %for.body.lr.ph, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end46
  %sge = getelementptr i8, ptr %1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %id = getelementptr inbounds %struct.smbd_connection, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %id, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %arrayidx = getelementptr [16 x %struct.ib_sge], ptr %sge, i32 0, i32 %i.078
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %arrayidx, i32 0, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length, align 8
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 8
  %conv.i = trunc i64 %27 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %conv.i, i32 noundef %29, i32 noundef 1, i32 noundef 0) #10
  %inc = add nuw nsw i32 %i.078, 1
  %32 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_sge, align 8
  %cmp47 = icmp slt i32 %inc, %33
  br i1 %cmp47, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end46.for.end_crit_edge
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 8
  %send_pending = getelementptr inbounds %struct.smbd_connection, ptr %35, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_pending, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !716
  tail call void @llvm.prefetch.p0(ptr %send_pending, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_pending, ptr %send_pending, i32 1, ptr elementtype(i32) %send_pending) #10, !srcloc !717
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !718
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then53, label %for.end.if.end55_crit_edge

for.end.if.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %wait_send_pending = getelementptr inbounds %struct.smbd_connection, ptr %38, i32 0, i32 43
  tail call void @__wake_up(ptr noundef %wait_send_pending, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %for.end.if.end55_crit_edge
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %wait_post_send = getelementptr inbounds %struct.smbd_connection, ptr %40, i32 0, i32 44
  tail call void @__wake_up(ptr noundef %wait_post_send, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %request_mempool = getelementptr inbounds %struct.smbd_connection, ptr %42, i32 0, i32 64
  %43 = ptrtoint ptr %request_mempool to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %request_mempool, align 4
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %44) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smbd_post_recv(ptr noundef %info, ptr noundef %response) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %recv_wr = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %recv_wr) #10
  %0 = call ptr @memset(ptr %recv_wr, i32 255, i32 16)
  %id = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %id, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %packet = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 6
  %max_receive_size = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 22
  %5 = ptrtoint ptr %max_receive_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_receive_size, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %packet) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !701

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %8) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %12, %if.end.i.i.i ], [ %10, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.274, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.275, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %8, ptr noundef %packet, i32 noundef %6) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %packet to i32
  %sub.i.i = add i32 %14, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %13, i32 %shr.i.i
  %and.i.i = and i32 %14, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %6, i32 noundef 2, i32 noundef 0) #10
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %sge = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 2
  %15 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv2.i, ptr %sge, align 8
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %id, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %ib_dma_map_single.exit.cleanup_crit_edge, label %if.end

ib_dma_map_single.exit.cleanup_crit_edge:         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ib_dma_map_single.exit
  %22 = ptrtoint ptr %max_receive_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_receive_size, align 4
  %length = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %length, align 8
  %pd = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 3
  %25 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pd, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %lkey = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %lkey, align 4
  %cqe = getelementptr inbounds %struct.smbd_response, ptr %response, i32 0, i32 1
  %30 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @recv_done, ptr %cqe, align 4
  %31 = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cqe, ptr %31, align 8
  %33 = ptrtoint ptr %recv_wr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %recv_wr, align 8
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr, i32 0, i32 2
  %34 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sge, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %recv_wr, i32 0, i32 3
  %35 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_sge, align 4
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #10
  %40 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !702
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %39, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %42, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %post_recv.i, align 4
  %call.i = call i32 %44(ptr noundef %39, ptr noundef nonnull %recv_wr, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %id, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sge, align 8
  %51 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length, align 8
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 8
  %conv.i = trunc i64 %50 to i32
  call void @dma_unmap_page_attrs(ptr noundef %54, i32 noundef %conv.i, i32 noundef %52, i32 noundef 2, i32 noundef 0) #10
  %workqueue.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 61
  %55 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %workqueue.i, align 8
  %disconnect_work.i = getelementptr inbounds %struct.smbd_connection, ptr %info, i32 0, i32 13
  %call.i.i59 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %disconnect_work.i) #10
  %call25 = call i32 @___ratelimit(ptr noundef nonnull @smbd_post_recv._rs, ptr noundef nonnull @__func__.smbd_post_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then14.cleanup_crit_edge, label %do.end

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef nonnull @__func__.smbd_post_recv, i32 noundef 1068, i32 noundef %call.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ib_dma_map_single.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i, %if.then14.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %ib_dma_map_single.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %recv_wr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr @smbd_logging_class, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end15_crit_edge, label %lor.lhs.false.do.body3_crit_edge

lor.lhs.false.do.body3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.body3:                                         ; preds = %lor.lhs.false.do.body3_crit_edge, %entry.do.body3_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @recv_done._rs, ptr noundef nonnull @__func__.recv_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.body3.do.end15_crit_edge, label %do.end

do.body3.do.end15_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end:                                           ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr i8, ptr %1, i32 20
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %10 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opcode, align 4
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %12 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %byte_len, align 4
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 10
  %14 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pkey_index, align 4
  %conv = zext i16 %15 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, ptr noundef nonnull @__func__.recv_done, i32 noundef 453, ptr noundef %add.ptr, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body3.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge
  %status16 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %16 = ptrtoint ptr %status16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp17.not = icmp eq i32 %17, 0
  br i1 %cmp17.not, label %lor.lhs.false19, label %do.end15.do.body24_crit_edge

do.end15.do.body24_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

lor.lhs.false19:                                  ; preds = %do.end15
  %opcode20 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %18 = ptrtoint ptr %opcode20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opcode20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %19)
  %cmp21.not = icmp eq i32 %19, 128
  br i1 %cmp21.not, label %if.end51, label %lor.lhs.false19.do.body24_crit_edge

lor.lhs.false19.do.body24_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

do.body24:                                        ; preds = %lor.lhs.false19.do.body24_crit_edge, %do.end15.do.body24_crit_edge
  %20 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp25.not = icmp eq i32 %20, 0
  br i1 %cmp25.not, label %lor.lhs.false27, label %do.body24.do.body32_crit_edge

do.body24.do.body32_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

lor.lhs.false27:                                  ; preds = %do.body24
  %21 = load i32, ptr @smbd_logging_class, align 4
  %and28 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false27.do.end50_crit_edge, label %lor.lhs.false27.do.body32_crit_edge

lor.lhs.false27.do.body32_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

lor.lhs.false27.do.end50_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.body32:                                        ; preds = %lor.lhs.false27.do.body32_crit_edge, %do.body24.do.body32_crit_edge
  %call33 = tail call i32 @___ratelimit(ptr noundef nonnull @recv_done._rs.293, ptr noundef nonnull @__func__.recv_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body32.do.end50_crit_edge, label %do.end38

do.body32.do.end50_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %status16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status16, align 8
  %opcode41 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %24 = ptrtoint ptr %opcode41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opcode41, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295, ptr noundef nonnull @__func__.recv_done, i32 noundef 457, i32 noundef %23, i32 noundef %25) #13
  br label %do.end50

do.end50:                                         ; preds = %do.end38, %do.body32.do.end50_crit_edge, %lor.lhs.false27.do.end50_crit_edge
  %workqueue.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 61
  %26 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %workqueue.i, align 8
  %disconnect_work.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 13
  %call.i.i198 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %disconnect_work.i) #10
  br label %error

if.end51:                                         ; preds = %lor.lhs.false19
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %28 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qp, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %sge = getelementptr i8, ptr %1, i32 4
  %32 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %sge, align 8
  %length = getelementptr i8, ptr %1, i32 12
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 8
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %31, align 8
  %conv.i = trunc i64 %33 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %37, i32 noundef %conv.i, i32 noundef %35, i32 noundef 2) #10
  %type53 = getelementptr i8, ptr %1, i32 20
  %38 = ptrtoint ptr %type53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type53, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.392)
  switch i32 %39, label %do.body125 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end51
  %packet.i = getelementptr i8, ptr %1, i32 33
  %41 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.do.body2.i_crit_edge

sw.bb.do.body2.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %42 = load i32, ptr @smbd_logging_class, align 4
  %and.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.dump_smbd_negotiate_resp.exit_crit_edge, label %lor.lhs.false.i.do.body2.i_crit_edge

lor.lhs.false.i.do.body2.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

lor.lhs.false.i.dump_smbd_negotiate_resp.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dump_smbd_negotiate_resp.exit

do.body2.i:                                       ; preds = %lor.lhs.false.i.do.body2.i_crit_edge, %sw.bb.do.body2.i_crit_edge
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @dump_smbd_negotiate_resp._rs, ptr noundef nonnull @__func__.dump_smbd_negotiate_resp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %do.body2.i.dump_smbd_negotiate_resp.exit_crit_edge, label %do.end.i

do.body2.i.dump_smbd_negotiate_resp.exit_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dump_smbd_negotiate_resp.exit

do.end.i:                                         ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %packet.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %packet.i, align 1
  %conv.i199 = zext i16 %44 to i32
  %max_version.i = getelementptr i8, ptr %1, i32 35
  %45 = ptrtoint ptr %max_version.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %max_version.i, align 1
  %conv6.i = zext i16 %46 to i32
  %negotiated_version.i = getelementptr i8, ptr %1, i32 37
  %47 = ptrtoint ptr %negotiated_version.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %negotiated_version.i, align 1
  %conv7.i = zext i16 %48 to i32
  %credits_requested.i = getelementptr i8, ptr %1, i32 41
  %49 = ptrtoint ptr %credits_requested.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %credits_requested.i, align 1
  %conv8.i = zext i16 %50 to i32
  %credits_granted.i = getelementptr i8, ptr %1, i32 43
  %51 = ptrtoint ptr %credits_granted.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %credits_granted.i, align 1
  %conv9.i = zext i16 %52 to i32
  %status.i = getelementptr i8, ptr %1, i32 45
  %53 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %status.i, align 1
  %max_readwrite_size.i = getelementptr i8, ptr %1, i32 49
  %55 = ptrtoint ptr %max_readwrite_size.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %max_readwrite_size.i, align 1
  %preferred_send_size.i = getelementptr i8, ptr %1, i32 53
  %57 = ptrtoint ptr %preferred_send_size.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %preferred_send_size.i, align 1
  %max_receive_size.i = getelementptr i8, ptr %1, i32 57
  %59 = ptrtoint ptr %max_receive_size.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %max_receive_size.i, align 1
  %max_fragmented_size.i = getelementptr i8, ptr %1, i32 61
  %61 = ptrtoint ptr %max_fragmented_size.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %max_fragmented_size.i, align 1
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.305, ptr noundef nonnull @__func__.dump_smbd_negotiate_resp, i32 noundef 303, i32 noundef %conv.i199, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #13
  br label %dump_smbd_negotiate_resp.exit

dump_smbd_negotiate_resp.exit:                    ; preds = %do.end.i, %do.body2.i.dump_smbd_negotiate_resp.exit_crit_edge, %lor.lhs.false.i.dump_smbd_negotiate_resp.exit_crit_edge
  %full_packet_received = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 60
  %63 = ptrtoint ptr %full_packet_received to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %full_packet_received, align 4
  %byte_len55 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %64 = ptrtoint ptr %byte_len55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %byte_len55, align 4
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %65)
  %cmp.i = icmp ult i32 %65, 32
  br i1 %cmp.i, label %do.body5.i, label %if.end18.i

do.body5.i:                                       ; preds = %dump_smbd_negotiate_resp.exit
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_negotiation_response._rs, ptr noundef nonnull @__func__.process_negotiation_response) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body5.i.process_negotiation_response.exit_crit_edge, label %do.end.i201

do.body5.i.process_negotiation_response.exit_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_negotiation_response.exit

do.end.i201:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef nonnull @__func__.process_negotiation_response, i32 noundef 319, i32 noundef %65) #13
  br label %process_negotiation_response.exit

if.end18.i:                                       ; preds = %dump_smbd_negotiate_resp.exit
  %negotiated_version.i202 = getelementptr i8, ptr %1, i32 37
  %68 = ptrtoint ptr %negotiated_version.i202 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %negotiated_version.i202, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %69)
  %cmp19.not.i = icmp eq i16 %69, 1
  br i1 %cmp19.not.i, label %if.end49.i, label %do.body30.i

do.body30.i:                                      ; preds = %if.end18.i
  %call31.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_negotiation_response._rs.307, ptr noundef nonnull @__func__.process_negotiation_response) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %do.body30.i.process_negotiation_response.exit_crit_edge, label %do.end36.i

do.body30.i.process_negotiation_response.exit_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_negotiation_response.exit

do.end36.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %negotiated_version.i202 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %negotiated_version.i202, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #10
  %conv39.i = zext i16 %72 to i32
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef nonnull @__func__.process_negotiation_response, i32 noundef 325, i32 noundef %conv39.i) #13
  br label %process_negotiation_response.exit

if.end49.i:                                       ; preds = %if.end18.i
  %protocol.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 26
  %73 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 256, ptr %protocol.i, align 4
  %credits_requested.i203 = getelementptr i8, ptr %1, i32 41
  %74 = ptrtoint ptr %credits_requested.i203 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %credits_requested.i203, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp53.i = icmp eq i16 %75, 0
  br i1 %cmp53.i, label %do.body64.i, label %if.end81.i

do.body64.i:                                      ; preds = %if.end49.i
  %call65.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_negotiation_response._rs.311, ptr noundef nonnull @__func__.process_negotiation_response) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %do.body64.i.process_negotiation_response.exit_crit_edge, label %do.end70.i

do.body64.i.process_negotiation_response.exit_crit_edge: ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_negotiation_response.exit

do.end70.i:                                       ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #12
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.313, ptr noundef nonnull @__func__.process_negotiation_response, i32 noundef 331) #13
  br label %process_negotiation_response.exit

if.end81.i:                                       ; preds = %if.end49.i
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #10
  %conv83.i = zext i16 %76 to i32
  %receive_credit_target.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 29
  %77 = ptrtoint ptr %receive_credit_target.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv83.i, ptr %receive_credit_target.i, align 8
  %credits_granted.i204 = getelementptr i8, ptr %1, i32 43
  %78 = ptrtoint ptr %credits_granted.i204 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %credits_granted.i204, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp85.i = icmp eq i16 %79, 0
  br i1 %cmp85.i, label %do.body96.i, label %if.end113.i

do.body96.i:                                      ; preds = %if.end81.i
  %call97.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_negotiation_response._rs.315, ptr noundef nonnull @__func__.process_negotiation_response) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %do.body96.i.process_negotiation_response.exit_crit_edge, label %do.end102.i

do.body96.i.process_negotiation_response.exit_crit_edge: ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_negotiation_response.exit

do.end102.i:                                      ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #12
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.317, ptr noundef nonnull @__func__.process_negotiation_response, i32 noundef 337) #13
  br label %process_negotiation_response.exit

if.end113.i:                                      ; preds = %if.end81.i
  %send_credits.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 27
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #10
  %conv115.i = zext i16 %80 to i32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_credits.i, i32 noundef 4) #10
  %81 = ptrtoint ptr %send_credits.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %conv115.i, ptr %send_credits.i, align 4
  %receive_credits.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 28
  %call.i.i278.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %receive_credits.i, i32 noundef 4) #10
  %82 = ptrtoint ptr %receive_credits.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %receive_credits.i, align 4
  %preferred_send_size.i205 = getelementptr i8, ptr %1, i32 53
  %83 = ptrtoint ptr %preferred_send_size.i205 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %preferred_send_size.i205, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #10
  %max_receive_size.i206 = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 22
  %86 = ptrtoint ptr %max_receive_size.i206 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_receive_size.i206, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp116.i = icmp ugt i32 %85, %87
  br i1 %cmp116.i, label %do.body127.i, label %if.end145.i

do.body127.i:                                     ; preds = %if.end113.i
  %call128.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_negotiation_response._rs.319, ptr noundef nonnull @__func__.process_negotiation_response) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool129.not.i, label %do.body127.i.process_negotiation_response.exit_crit_edge, label %do.end133.i

do.body127.i.process_negotiation_response.exit_crit_edge: ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_negotiation_response.exit

do.end133.i:                                      ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %preferred_send_size.i205 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %preferred_send_size.i205, align 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  %call136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.321, ptr noundef nonnull @__func__.process_negotiation_response, i32 noundef 346, i32 noundef %90) #13
  br label %process_negotiation_response.exit

if.end145.i:                                      ; preds = %if.end113.i
  %91 = ptrtoint ptr %max_receive_size.i206 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %85, ptr %max_receive_size.i206, align 4
  %max_receive_size148.i = getelementptr i8, ptr %1, i32 57
  %92 = ptrtoint ptr %max_receive_size148.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %max_receive_size148.i, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %94)
  %cmp149.i = icmp ult i32 %94, 128
  br i1 %cmp149.i, label %do.body160.i, label %if.end178.i

do.body160.i:                                     ; preds = %if.end145.i
  %call161.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_negotiation_response._rs.323, ptr noundef nonnull @__func__.process_negotiation_response) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %tobool162.not.i = icmp eq i32 %call161.i, 0
  br i1 %tobool162.not.i, label %do.body160.i.process_negotiation_response.exit_crit_edge, label %do.end166.i

do.body160.i.process_negotiation_response.exit_crit_edge: ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_negotiation_response.exit

do.end166.i:                                      ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %max_receive_size148.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %max_receive_size148.i, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  %call169.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.325, ptr noundef nonnull @__func__.process_negotiation_response, i32 noundef 353, i32 noundef %97) #13
  br label %process_negotiation_response.exit

if.end178.i:                                      ; preds = %if.end145.i
  %max_send_size.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 19
  %98 = ptrtoint ptr %max_send_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_send_size.i, align 8
  %100 = tail call i32 @llvm.smin.i32(i32 %99, i32 %94) #10
  %101 = ptrtoint ptr %max_send_size.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %max_send_size.i, align 8
  %max_fragmented_size.i207 = getelementptr i8, ptr %1, i32 61
  %102 = ptrtoint ptr %max_fragmented_size.i207 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %max_fragmented_size.i207, align 1
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %104)
  %cmp184.i = icmp ult i32 %104, 131072
  br i1 %cmp184.i, label %do.body195.i, label %if.end213.i

do.body195.i:                                     ; preds = %if.end178.i
  %call196.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_negotiation_response._rs.327, ptr noundef nonnull @__func__.process_negotiation_response) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196.i)
  %tobool197.not.i = icmp eq i32 %call196.i, 0
  br i1 %tobool197.not.i, label %do.body195.i.process_negotiation_response.exit_crit_edge, label %do.end201.i

do.body195.i.process_negotiation_response.exit_crit_edge: ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %process_negotiation_response.exit

do.end201.i:                                      ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %max_fragmented_size.i207 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %max_fragmented_size.i207, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #10
  %call204.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329, ptr noundef nonnull @__func__.process_negotiation_response, i32 noundef 362, i32 noundef %107) #13
  br label %process_negotiation_response.exit

if.end213.i:                                      ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_fragmented_send_size.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 21
  %108 = ptrtoint ptr %max_fragmented_send_size.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %104, ptr %max_fragmented_send_size.i, align 8
  %109 = load i32, ptr @rdma_readwrite_threshold, align 4
  %110 = tail call i32 @llvm.smin.i32(i32 %109, i32 %104) #10
  %rdma_readwrite_threshold.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 33
  %111 = ptrtoint ptr %rdma_readwrite_threshold.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %rdma_readwrite_threshold.i, align 8
  %max_readwrite_size.i208 = getelementptr i8, ptr %1, i32 49
  %112 = ptrtoint ptr %max_readwrite_size.i208 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %max_readwrite_size.i208, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #10
  %max_frmr_depth.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 32
  %115 = ptrtoint ptr %max_frmr_depth.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_frmr_depth.i, align 4
  %mul.i = shl i32 %116, 12
  %117 = tail call i32 @llvm.umin.i32(i32 %114, i32 %mul.i) #10
  %max_readwrite_size230.i = getelementptr inbounds %struct.smbd_connection, ptr %67, i32 0, i32 24
  %118 = ptrtoint ptr %max_readwrite_size230.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %max_readwrite_size230.i, align 4
  %div276.i = lshr i32 %117, 12
  %119 = ptrtoint ptr %max_frmr_depth.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %div276.i, ptr %max_frmr_depth.i, align 4
  br label %process_negotiation_response.exit

process_negotiation_response.exit:                ; preds = %if.end213.i, %do.end201.i, %do.body195.i.process_negotiation_response.exit_crit_edge, %do.end166.i, %do.body160.i.process_negotiation_response.exit_crit_edge, %do.end133.i, %do.body127.i.process_negotiation_response.exit_crit_edge, %do.end102.i, %do.body96.i.process_negotiation_response.exit_crit_edge, %do.end70.i, %do.body64.i.process_negotiation_response.exit_crit_edge, %do.end36.i, %do.body30.i.process_negotiation_response.exit_crit_edge, %do.end.i201, %do.body5.i.process_negotiation_response.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end213.i ], [ false, %do.body5.i.process_negotiation_response.exit_crit_edge ], [ false, %do.end.i201 ], [ false, %do.body30.i.process_negotiation_response.exit_crit_edge ], [ false, %do.end36.i ], [ false, %do.body64.i.process_negotiation_response.exit_crit_edge ], [ false, %do.end70.i ], [ false, %do.body96.i.process_negotiation_response.exit_crit_edge ], [ false, %do.end102.i ], [ false, %do.body127.i.process_negotiation_response.exit_crit_edge ], [ false, %do.end133.i ], [ false, %do.body160.i.process_negotiation_response.exit_crit_edge ], [ false, %do.end166.i ], [ false, %do.body195.i.process_negotiation_response.exit_crit_edge ], [ false, %do.end201.i ]
  %negotiate_done = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 12
  %frombool = zext i1 %retval.0.i to i8
  %120 = ptrtoint ptr %negotiate_done to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %frombool, ptr %negotiate_done, align 4
  %negotiate_completion = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 11
  tail call void @complete(ptr noundef %negotiate_completion) #10
  br label %error

sw.bb57:                                          ; preds = %if.end51
  %packet.i209 = getelementptr i8, ptr %1, i32 33
  %data_length59 = getelementptr i8, ptr %1, i32 49
  %121 = ptrtoint ptr %data_length59 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %data_length59, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool60.not = icmp eq i32 %122, 0
  br i1 %tobool60.not, label %if.else71, label %if.then61

if.then61:                                        ; preds = %sw.bb57
  %full_packet_received62 = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 60
  %124 = ptrtoint ptr %full_packet_received62 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %full_packet_received62, align 4, !range !705
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool63.not = icmp eq i8 %125, 0
  br i1 %tobool63.not, label %if.then61.if.end65_crit_edge, label %if.then64

if.then61.if.end65_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %first_segment = getelementptr i8, ptr %1, i32 32
  %126 = ptrtoint ptr %first_segment to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %first_segment, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then61.if.end65_crit_edge
  %remaining_data_length = getelementptr i8, ptr %1, i32 41
  %127 = ptrtoint ptr %remaining_data_length to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %remaining_data_length, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool66.not = icmp eq i32 %128, 0
  %. = zext i1 %tobool66.not to i8
  %129 = ptrtoint ptr %full_packet_received62 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %., ptr %full_packet_received62, align 4
  %reassembly_queue_lock.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %reassembly_queue_lock.i) #10
  %list.i = getelementptr i8, ptr %1, i32 24
  %reassembly_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 52
  %prev.i.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 52, i32 1
  %130 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i210 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %131, ptr noundef %reassembly_queue.i) #10
  br i1 %call.i.i.i210, label %if.end.i.i.i, label %if.end65.enqueue_reassembly.exit_crit_edge

if.end65.enqueue_reassembly.exit_crit_edge:       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %enqueue_reassembly.exit

if.end.i.i.i:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %list.i, ptr %prev.i.i, align 4
  %133 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %reassembly_queue.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %1, i32 28
  %134 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev3.i.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %list.i, ptr %131, align 4
  br label %enqueue_reassembly.exit

enqueue_reassembly.exit:                          ; preds = %if.end.i.i.i, %if.end65.enqueue_reassembly.exit_crit_edge
  %reassembly_queue_length.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 56
  %136 = ptrtoint ptr %reassembly_queue_length.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %reassembly_queue_length.i, align 4
  %inc.i = add i32 %137, 1
  store i32 %inc.i, ptr %reassembly_queue_length.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !723
  %reassembly_data_length.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 55
  %138 = ptrtoint ptr %reassembly_data_length.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %reassembly_data_length.i, align 8
  %add.i = add i32 %139, %123
  store i32 %add.i, ptr %reassembly_data_length.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %reassembly_queue_lock.i) #10
  %count_reassembly_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 69
  %140 = ptrtoint ptr %count_reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %count_reassembly_queue.i, align 8
  %inc4.i = add i32 %141, 1
  store i32 %inc4.i, ptr %count_reassembly_queue.i, align 8
  %count_enqueue_reassembly_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 70
  %142 = ptrtoint ptr %count_enqueue_reassembly_queue.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %count_enqueue_reassembly_queue.i, align 4
  %inc5.i = add i32 %143, 1
  store i32 %inc5.i, ptr %count_enqueue_reassembly_queue.i, align 4
  %wait_reassembly_queue = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 54
  tail call void @__wake_up(ptr noundef %wait_reassembly_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %if.end75

if.else71:                                        ; preds = %sw.bb57
  %empty_packet_queue_lock.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 50
  tail call void @_raw_spin_lock(ptr noundef %empty_packet_queue_lock.i) #10
  %list.i211 = getelementptr i8, ptr %1, i32 24
  %empty_packet_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 48
  %prev.i.i212 = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 48, i32 1
  %144 = ptrtoint ptr %prev.i.i212 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i.i212, align 4
  %call.i.i.i213 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i211, ptr noundef %145, ptr noundef %empty_packet_queue.i) #10
  br i1 %call.i.i.i213, label %if.end.i.i.i215, label %if.else71.put_empty_packet.exit_crit_edge

if.else71.put_empty_packet.exit_crit_edge:        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_empty_packet.exit

if.end.i.i.i215:                                  ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %prev.i.i212 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %list.i211, ptr %prev.i.i212, align 4
  %147 = ptrtoint ptr %list.i211 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %empty_packet_queue.i, ptr %list.i211, align 4
  %prev3.i.i.i214 = getelementptr i8, ptr %1, i32 28
  %148 = ptrtoint ptr %prev3.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev3.i.i.i214, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %list.i211, ptr %145, align 4
  br label %put_empty_packet.exit

put_empty_packet.exit:                            ; preds = %if.end.i.i.i215, %if.else71.put_empty_packet.exit_crit_edge
  %count_empty_packet_queue.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 49
  %150 = ptrtoint ptr %count_empty_packet_queue.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %count_empty_packet_queue.i, align 4
  %inc.i216 = add i32 %151, 1
  store i32 %inc.i216, ptr %count_empty_packet_queue.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %empty_packet_queue_lock.i) #10
  %workqueue.i217 = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 61
  %152 = ptrtoint ptr %workqueue.i217 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %workqueue.i217, align 8
  %post_send_credits_work.i = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 14
  %call.i.i218 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %153, ptr noundef %post_send_credits_work.i) #10
  br label %if.end75

if.end75:                                         ; preds = %put_empty_packet.exit, %enqueue_reassembly.exit
  %receive_credits = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %receive_credits, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %receive_credits, i32 1, i32 3, i32 1) #10
  %154 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %receive_credits, ptr %receive_credits, i32 1, ptr elementtype(i32) %receive_credits) #10, !srcloc !704
  %155 = ptrtoint ptr %packet.i209 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %packet.i209, align 1
  %157 = tail call i16 @llvm.bswap.i16(i16 %156)
  %conv76 = zext i16 %157 to i32
  %receive_credit_target = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 29
  %158 = ptrtoint ptr %receive_credit_target to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv76, ptr %receive_credit_target, align 8
  %credits_granted = getelementptr i8, ptr %1, i32 35
  %159 = ptrtoint ptr %credits_granted to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %credits_granted, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool77.not = icmp eq i16 %160, 0
  br i1 %tobool77.not, label %if.end75.do.body82_crit_edge, label %if.then78

if.end75.do.body82_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body82

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %161 = tail call i16 @llvm.bswap.i16(i16 %160)
  %conv80 = zext i16 %161 to i32
  %send_credits = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 27
  %call.i.i197 = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_credits, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %send_credits, i32 1, i32 3, i32 1) #10
  %162 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_credits, ptr %send_credits, i32 %conv80, ptr elementtype(i32) %send_credits) #10, !srcloc !703
  %wait_send_queue = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 59
  tail call void @__wake_up(ptr noundef %wait_send_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %do.body82

do.body82:                                        ; preds = %if.then78, %if.end75.do.body82_crit_edge
  %163 = load i32, ptr @smbd_logging_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp83.not = icmp eq i32 %163, 0
  br i1 %cmp83.not, label %lor.lhs.false85, label %do.body82.do.body90_crit_edge

do.body82.do.body90_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body90

lor.lhs.false85:                                  ; preds = %do.body82
  %164 = load i32, ptr @smbd_logging_class, align 4
  %and86 = and i32 %164, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %lor.lhs.false85.do.end109_crit_edge, label %lor.lhs.false85.do.body90_crit_edge

lor.lhs.false85.do.body90_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body90

lor.lhs.false85.do.end109_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end109

do.body90:                                        ; preds = %lor.lhs.false85.do.body90_crit_edge, %do.body82.do.body90_crit_edge
  %call91 = tail call i32 @___ratelimit(ptr noundef nonnull @recv_done._rs.297, ptr noundef nonnull @__func__.recv_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.body90.do.end109_crit_edge, label %do.end96

do.body90.do.end109_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end109

do.end96:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr i8, ptr %1, i32 37
  %165 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %flags, align 1
  %167 = tail call i16 @llvm.bswap.i16(i16 %166)
  %conv98 = zext i16 %167 to i32
  %data_offset = getelementptr i8, ptr %1, i32 45
  %168 = ptrtoint ptr %data_offset to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %data_offset, align 1
  %170 = tail call i32 @llvm.bswap.i32(i32 %169)
  %171 = ptrtoint ptr %data_length59 to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %data_length59, align 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %172)
  %remaining_data_length100 = getelementptr i8, ptr %1, i32 41
  %174 = ptrtoint ptr %remaining_data_length100 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %remaining_data_length100, align 1
  %176 = tail call i32 @llvm.bswap.i32(i32 %175)
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, ptr noundef nonnull @__func__.recv_done, i32 noundef 523, i32 noundef %conv98, i32 noundef %170, i32 noundef %173, i32 noundef %176) #13
  br label %do.end109

do.end109:                                        ; preds = %do.end96, %do.body90.do.end109_crit_edge, %lor.lhs.false85.do.end109_crit_edge
  %keep_alive_requested = getelementptr inbounds %struct.smbd_connection, ptr %3, i32 0, i32 25
  %177 = ptrtoint ptr %keep_alive_requested to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %keep_alive_requested, align 8
  %flags110 = getelementptr i8, ptr %1, i32 37
  %178 = ptrtoint ptr %flags110 to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %179 = load i16, ptr %flags110, align 1
  %180 = lshr i16 %179, 8
  %.lobit = and i16 %180, 1
  %181 = zext i16 %.lobit to i32
  store i32 %181, ptr %keep_alive_requested, align 8
  br label %cleanup

do.body125:                                       ; preds = %if.end51
  %call126 = tail call i32 @___ratelimit(ptr noundef nonnull @recv_done._rs.301, ptr noundef nonnull @__func__.recv_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body125.error_crit_edge, label %do.end131

do.body125.error_crit_edge:                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %type53 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %type53, align 8
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.303, ptr noundef nonnull @__func__.recv_done, i32 noundef 536, i32 noundef %183) #13
  br label %error

error:                                            ; preds = %do.end131, %do.body125.error_crit_edge, %process_negotiation_response.exit, %do.end50
  tail call fastcc void @put_receive_buffer(ptr noundef %3, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end109
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smbd_mr_recovery_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_list = getelementptr i8, ptr %work, i32 -112
  %0 = ptrtoint ptr %mr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn90 = load ptr, ptr %mr_list, align 4
  %cmp.not91 = icmp eq ptr %.pn90, %mr_list
  br i1 %cmp.not91, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %workqueue.i = getelementptr i8, ptr %work, i32 544
  %disconnect_work.i = getelementptr i8, ptr %work, i32 -320
  %pd = getelementptr i8, ptr %work, i32 -856
  %mr_type = getelementptr i8, ptr %work, i32 -116
  %max_frmr_depth = getelementptr i8, ptr %work, i32 -124
  %mr_ready_count = getelementptr i8, ptr %work, i32 -60
  %wait_mr = getelementptr i8, ptr %work, i32 -52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn92 = phi ptr [ %.pn90, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn92, i32 8
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp5 = icmp eq i32 %2, 3
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %mr = getelementptr i8, ptr %.pn92, i32 12
  %3 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mr, align 8
  %call.i = tail call i32 @ib_dereg_mr_user(ptr noundef %4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end25, label %do.body11

do.body11:                                        ; preds = %if.then
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_mr_recovery_work._rs, ptr noundef nonnull @__func__.smbd_mr_recovery_work) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.do.end24_crit_edge, label %do.end

do.body11.do.end24_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end:                                           ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.352, ptr noundef nonnull @__func__.smbd_mr_recovery_work, i32 noundef 2186, i32 noundef %call.i) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end, %do.body11.do.end24_crit_edge
  %5 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue.i, align 8
  %call.i.i86 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %disconnect_work.i) #10
  br label %for.inc

if.end25:                                         ; preds = %if.then
  %7 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd, align 8
  %9 = ptrtoint ptr %mr_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mr_type, align 4
  %11 = ptrtoint ptr %max_frmr_depth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_frmr_depth, align 4
  %call26 = tail call ptr @ib_alloc_mr(ptr noundef %8, i32 noundef %10, i32 noundef %12) #10
  %13 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %mr, align 8
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body38, label %if.end58

do.body38:                                        ; preds = %if.end25
  %call39 = tail call i32 @___ratelimit(ptr noundef nonnull @smbd_mr_recovery_work._rs.353, ptr noundef nonnull @__func__.smbd_mr_recovery_work) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.do.end56_crit_edge, label %do.end44

do.body38.do.end56_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %mr_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mr_type, align 4
  %16 = ptrtoint ptr %max_frmr_depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_frmr_depth, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef nonnull @__func__.smbd_mr_recovery_work, i32 noundef 2197, i32 noundef %15, i32 noundef %17) #13
  br label %do.end56

do.end56:                                         ; preds = %do.end44, %do.body38.do.end56_crit_edge
  %18 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %workqueue.i, align 8
  %call.i.i89 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %disconnect_work.i) #10
  br label %for.inc

if.end58:                                         ; preds = %if.end25
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mr_ready_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !719
  tail call void @llvm.prefetch.p0(ptr %mr_ready_count, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mr_ready_count, ptr %mr_ready_count, i32 1, ptr elementtype(i32) %mr_ready_count) #10, !srcloc !720
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !721
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp61 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp61, label %if.then62, label %if.end58.for.inc_crit_edge

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__wake_up(ptr noundef %wait_mr, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then62, %if.end58.for.inc_crit_edge, %do.end56, %do.end24, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp.not = icmp eq ptr %.pn, %mr_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 388)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 388)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !207, !209, !210, !211, !213, !215, !216, !217, !219, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !280, !281, !283, !284, !285, !286, !288, !289, !290, !291, !293, !294, !295, !296, !298, !299, !301, !302, !303, !304, !306, !307, !309, !310, !312, !313, !315, !316, !318, !319, !321, !322, !323, !324, !326, !327, !328, !329, !331, !333, !334, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !349, !350, !351, !352, !353, !355, !356, !357, !358, !360, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !373, !375, !376, !377, !379, !380, !381, !382, !384, !385, !386, !387, !388, !390, !391, !392, !393, !395, !396, !397, !398, !400, !401, !402, !403, !404, !406, !408, !410, !412, !414, !415, !416, !417, !418, !420, !421, !423, !424, !426, !427, !429, !430, !432, !433, !434, !435, !436, !438, !439, !440, !441, !443, !444, !445, !446, !447, !449, !450, !451, !452, !454, !455, !456, !457, !459, !460, !461, !463, !464, !465, !466, !467, !469, !470, !471, !472, !474, !475, !476, !477, !478, !480, !481, !482, !483, !485, !486, !487, !488, !489, !491, !492, !493, !494, !496, !497, !498, !499, !500, !502, !503, !504, !505, !506, !508, !509, !510, !511, !513, !514, !515, !516, !518, !519, !520, !521, !523, !524, !525, !526, !527, !529, !530, !531, !532, !533, !535, !536, !537, !538, !540, !541, !542, !543, !545, !546, !547, !548, !550, !551, !552, !553, !555, !556, !557, !558, !560, !561, !562, !563, !565, !566, !567, !568, !569, !571, !572, !573, !574, !576, !577, !578, !579, !580, !582, !583, !584, !586, !587, !589, !590, !592, !593, !595, !596, !597, !598, !599, !601, !602, !603, !604, !606, !607, !609, !610, !611, !612, !613, !615, !616, !617, !619, !620, !621, !622, !623, !625, !626, !627, !628, !630, !631, !632, !633, !635, !636, !637, !638, !640, !641, !642, !643, !645, !646, !647, !648, !650, !651, !652, !653, !655, !656, !657, !658, !659, !661, !662, !663, !664, !665, !667, !668, !669, !670, !671, !673, !674, !675, !676, !678, !679, !680, !681, !682, !684, !685, !686, !687, !688, !690}
!llvm.named.register.sp = !{!691}
!llvm.module.flags = !{!692, !693, !694, !695, !696, !697, !698, !699}
!llvm.ident = !{!700}

!0 = !{ptr @smbd_receive_credit_max, !1, !"smbd_receive_credit_max", i1 false, i1 false}
!1 = !{!"../fs/cifs/smbdirect.c", i32 81, i32 5}
!2 = !{ptr @smbd_send_credit_target, !3, !"smbd_send_credit_target", i1 false, i1 false}
!3 = !{!"../fs/cifs/smbdirect.c", i32 84, i32 5}
!4 = !{ptr @smbd_max_send_size, !5, !"smbd_max_send_size", i1 false, i1 false}
!5 = !{!"../fs/cifs/smbdirect.c", i32 87, i32 5}
!6 = !{ptr @smbd_max_fragmented_recv_size, !7, !"smbd_max_fragmented_recv_size", i1 false, i1 false}
!7 = !{!"../fs/cifs/smbdirect.c", i32 90, i32 5}
!8 = !{ptr @smbd_max_receive_size, !9, !"smbd_max_receive_size", i1 false, i1 false}
!9 = !{!"../fs/cifs/smbdirect.c", i32 93, i32 5}
!10 = !{ptr @smbd_keep_alive_interval, !11, !"smbd_keep_alive_interval", i1 false, i1 false}
!11 = !{!"../fs/cifs/smbdirect.c", i32 96, i32 5}
!12 = !{ptr @smbd_max_frmr_depth, !13, !"smbd_max_frmr_depth", i1 false, i1 false}
!13 = !{!"../fs/cifs/smbdirect.c", i32 103, i32 5}
!14 = !{ptr @rdma_readwrite_threshold, !15, !"rdma_readwrite_threshold", i1 false, i1 false}
!15 = !{!"../fs/cifs/smbdirect.c", i32 106, i32 5}
!16 = !{ptr @__param_smbd_logging_class, !17, !"__param_smbd_logging_class", i1 false, i1 false}
!17 = !{!"../fs/cifs/smbdirect.c", i32 124, i32 1}
!18 = !{ptr @__UNIQUE_ID_smbd_logging_classtype678, !17, !"__UNIQUE_ID_smbd_logging_classtype678", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_smbd_logging_class679, !20, !"__UNIQUE_ID_smbd_logging_class679", i1 false, i1 false}
!20 = !{!"../fs/cifs/smbdirect.c", i32 125, i32 1}
!21 = !{ptr @__param_smbd_logging_level, !22, !"__param_smbd_logging_level", i1 false, i1 false}
!22 = !{!"../fs/cifs/smbdirect.c", i32 131, i32 1}
!23 = !{ptr @__UNIQUE_ID_smbd_logging_leveltype680, !22, !"__UNIQUE_ID_smbd_logging_leveltype680", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_smbd_logging_level681, !25, !"__UNIQUE_ID_smbd_logging_level681", i1 false, i1 false}
!25 = !{!"../fs/cifs/smbdirect.c", i32 132, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/cifs/smbdirect.c", i32 1329, i32 3}
!28 = !{ptr @smbd_destroy._rs, !27, !"_rs", i1 false, i1 false}
!29 = !{ptr @__func__.smbd_destroy, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @smbd_destroy._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @smbd_destroy._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @smbd_destroy._rs.3, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../fs/cifs/smbdirect.c", i32 1333, i32 2}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @smbd_destroy._entry.4, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @smbd_destroy._entry_ptr.6, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @smbd_destroy._rs.7, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../fs/cifs/smbdirect.c", i32 1336, i32 3}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @smbd_destroy._entry.8, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @smbd_destroy._entry_ptr.10, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @smbd_destroy._rs.11, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../fs/cifs/smbdirect.c", i32 1342, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @smbd_destroy._entry.12, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @smbd_destroy._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @smbd_destroy._rs.15, !50, !"_rs", i1 false, i1 false}
!50 = !{!"../fs/cifs/smbdirect.c", i32 1346, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @smbd_destroy._entry.16, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @smbd_destroy._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @smbd_destroy._rs.19, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../fs/cifs/smbdirect.c", i32 1349, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @smbd_destroy._entry.20, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @smbd_destroy._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @smbd_destroy._rs.23, !60, !"_rs", i1 false, i1 false}
!60 = !{!"../fs/cifs/smbdirect.c", i32 1354, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @smbd_destroy._entry.24, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @smbd_destroy._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @smbd_destroy._rs.27, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../fs/cifs/smbdirect.c", i32 1369, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @smbd_destroy._entry.28, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @smbd_destroy._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @smbd_destroy._rs.31, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../fs/cifs/smbdirect.c", i32 1382, i32 2}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @smbd_destroy._entry.32, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @smbd_destroy._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @smbd_destroy._rs.35, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../fs/cifs/smbdirect.c", i32 1406, i32 2}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @smbd_destroy._entry.36, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @smbd_destroy._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @smbd_reconnect._rs, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../fs/cifs/smbdirect.c", i32 1416, i32 2}
!81 = !{ptr @__func__.smbd_reconnect, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @smbd_reconnect._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @smbd_reconnect._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @smbd_reconnect._rs.40, !86, !"_rs", i1 false, i1 false}
!86 = !{!"../fs/cifs/smbdirect.c", i32 1419, i32 3}
!87 = !{ptr @smbd_reconnect._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @smbd_reconnect._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @smbd_reconnect._rs.43, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../fs/cifs/smbdirect.c", i32 1428, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @smbd_reconnect._entry.44, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @smbd_reconnect._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @smbd_reconnect._rs.47, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../fs/cifs/smbdirect.c", i32 1433, i32 2}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @smbd_reconnect._entry.48, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @smbd_reconnect._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @smbd_reconnect._rs.51, !100, !"_rs", i1 false, i1 false}
!100 = !{!"../fs/cifs/smbdirect.c", i32 1438, i32 3}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @smbd_reconnect._entry.52, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @smbd_reconnect._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @smbd_recv._rs, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../fs/cifs/smbdirect.c", i32 1945, i32 3}
!106 = !{ptr @__func__.smbd_recv, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @smbd_recv._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @smbd_recv._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @smbd_recv._rs.56, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../fs/cifs/smbdirect.c", i32 1967, i32 3}
!112 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @smbd_recv._entry.57, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @smbd_recv._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @smbd_send._rs, !116, !"_rs", i1 false, i1 false}
!116 = !{!"../fs/cifs/smbdirect.c", i32 2016, i32 3}
!117 = !{ptr @__func__.smbd_send, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @smbd_send._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @smbd_send._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @smbd_send._rs.61, !122, !"_rs", i1 false, i1 false}
!122 = !{!"../fs/cifs/smbdirect.c", i32 2022, i32 2}
!123 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @smbd_send._entry.62, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @smbd_send._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @smbd_send._rs.65, !127, !"_rs", i1 false, i1 false}
!127 = !{!"../fs/cifs/smbdirect.c", i32 2030, i32 2}
!128 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @smbd_send.descriptor, !127, !"descriptor", i1 false, i1 false}
!131 = !{ptr @smbd_send._rs.68, !132, !"_rs", i1 false, i1 false}
!132 = !{!"../fs/cifs/smbdirect.c", i32 2036, i32 2}
!133 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @smbd_send._entry.69, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @smbd_send._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @smbd_send._rs.72, !137, !"_rs", i1 false, i1 false}
!137 = !{!"../fs/cifs/smbdirect.c", i32 2048, i32 5}
!138 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @smbd_send._entry.73, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @smbd_send._entry_ptr.75, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @smbd_send._rs.76, !142, !"_rs", i1 false, i1 false}
!142 = !{!"../fs/cifs/smbdirect.c", i32 2059, i32 5}
!143 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @smbd_send._entry.77, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @smbd_send._entry_ptr.79, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @smbd_send._rs.80, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../fs/cifs/smbdirect.c", i32 2072, i32 6}
!148 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @smbd_send._entry.81, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @smbd_send._entry_ptr.83, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @smbd_send._rs.84, !152, !"_rs", i1 false, i1 false}
!152 = !{!"../fs/cifs/smbdirect.c", i32 2093, i32 5}
!153 = !{ptr @smbd_send._entry.85, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @smbd_send._entry_ptr.86, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @smbd_send._rs.87, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../fs/cifs/smbdirect.c", i32 2103, i32 3}
!157 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @smbd_send._entry.88, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @smbd_send._entry_ptr.90, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @smbd_send._rs.91, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../fs/cifs/smbdirect.c", i32 2112, i32 3}
!162 = !{ptr @.str.93, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @smbd_send._entry.92, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @smbd_send._entry_ptr.94, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @smbd_send._rs.95, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../fs/cifs/smbdirect.c", i32 2119, i32 4}
!167 = !{ptr @.str.97, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @smbd_send._entry.96, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @smbd_send._entry_ptr.98, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @smbd_register_mr._rs, !171, !"_rs", i1 false, i1 false}
!171 = !{!"../fs/cifs/smbdirect.c", i32 2358, i32 3}
!172 = !{ptr @__func__.smbd_register_mr, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.99, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @smbd_register_mr._entry, !171, !"_entry", i1 false, i1 false}
!175 = !{ptr @smbd_register_mr._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @smbd_register_mr._rs.100, !177, !"_rs", i1 false, i1 false}
!177 = !{!"../fs/cifs/smbdirect.c", i32 2365, i32 3}
!178 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @smbd_register_mr._entry.101, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @smbd_register_mr._entry_ptr.103, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @smbd_register_mr._rs.104, !182, !"_rs", i1 false, i1 false}
!182 = !{!"../fs/cifs/smbdirect.c", i32 2372, i32 2}
!183 = !{ptr @.str.106, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @smbd_register_mr._entry.105, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @smbd_register_mr._entry_ptr.107, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @smbd_register_mr._rs.108, !187, !"_rs", i1 false, i1 false}
!187 = !{!"../fs/cifs/smbdirect.c", i32 2396, i32 3}
!188 = !{ptr @.str.110, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @smbd_register_mr._entry.109, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @smbd_register_mr._entry_ptr.111, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @smbd_register_mr._rs.112, !192, !"_rs", i1 false, i1 false}
!192 = !{!"../fs/cifs/smbdirect.c", i32 2404, i32 3}
!193 = !{ptr @.str.114, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @smbd_register_mr._entry.113, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @smbd_register_mr._entry_ptr.115, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @smbd_register_mr._rs.116, !197, !"_rs", i1 false, i1 false}
!197 = !{!"../fs/cifs/smbdirect.c", i32 2433, i32 2}
!198 = !{ptr @.str.118, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @smbd_register_mr._entry.117, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @smbd_register_mr._entry_ptr.119, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @smbd_deregister_mr._rs, !202, !"_rs", i1 false, i1 false}
!202 = !{!"../fs/cifs/smbdirect.c", i32 2491, i32 4}
!203 = !{ptr @__func__.smbd_deregister_mr, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.120, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @smbd_deregister_mr._entry, !202, !"_entry", i1 false, i1 false}
!206 = !{ptr @smbd_deregister_mr._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @smbd_logging_class, !208, !"smbd_logging_class", i1 false, i1 false}
!208 = !{!"../fs/cifs/smbdirect.c", i32 123, i32 21}
!209 = !{ptr @__param_str_smbd_logging_class, !17, !"__param_str_smbd_logging_class", i1 false, i1 false}
!210 = !{ptr @__param_str_smbd_logging_level, !22, !"__param_str_smbd_logging_level", i1 false, i1 false}
!211 = !{ptr @smbd_logging_level, !212, !"smbd_logging_level", i1 false, i1 false}
!212 = !{!"../fs/cifs/smbdirect.c", i32 130, i32 21}
!213 = distinct !{null, !214, !"__already_done", i1 false, i1 false}
!214 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!215 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @_smbd_get_connection._rs, !218, !"_rs", i1 false, i1 false}
!218 = !{!"../fs/cifs/smbdirect.c", i32 1536, i32 3}
!219 = !{ptr @__func__._smbd_get_connection, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.123, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @_smbd_get_connection._entry, !218, !"_entry", i1 false, i1 false}
!222 = !{ptr @_smbd_get_connection._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @_smbd_get_connection._rs.124, !224, !"_rs", i1 false, i1 false}
!224 = !{!"../fs/cifs/smbdirect.c", i32 1542, i32 3}
!225 = !{ptr @.str.126, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @_smbd_get_connection._entry.125, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @_smbd_get_connection._entry_ptr.127, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @_smbd_get_connection._rs.128, !229, !"_rs", i1 false, i1 false}
!229 = !{!"../fs/cifs/smbdirect.c", i32 1551, i32 3}
!230 = !{ptr @.str.130, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @_smbd_get_connection._entry.129, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @_smbd_get_connection._entry_ptr.131, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @_smbd_get_connection._rs.132, !234, !"_rs", i1 false, i1 false}
!234 = !{!"../fs/cifs/smbdirect.c", i32 1566, i32 3}
!235 = !{ptr @.str.134, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @_smbd_get_connection._entry.133, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @_smbd_get_connection._entry_ptr.135, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @_smbd_get_connection._rs.136, !239, !"_rs", i1 false, i1 false}
!239 = !{!"../fs/cifs/smbdirect.c", i32 1569, i32 3}
!240 = !{ptr @.str.138, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @_smbd_get_connection._entry.137, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @_smbd_get_connection._entry_ptr.139, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @_smbd_get_connection._rs.140, !244, !"_rs", i1 false, i1 false}
!244 = !{!"../fs/cifs/smbdirect.c", i32 1572, i32 3}
!245 = !{ptr @.str.142, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @_smbd_get_connection._entry.141, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @_smbd_get_connection._entry_ptr.143, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @_smbd_get_connection._rs.144, !249, !"_rs", i1 false, i1 false}
!249 = !{!"../fs/cifs/smbdirect.c", i32 1575, i32 3}
!250 = !{ptr @_smbd_get_connection._entry.145, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @_smbd_get_connection._entry_ptr.146, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @_smbd_get_connection._rs.147, !253, !"_rs", i1 false, i1 false}
!253 = !{!"../fs/cifs/smbdirect.c", i32 1612, i32 3}
!254 = !{ptr @.str.149, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @_smbd_get_connection._entry.148, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @_smbd_get_connection._entry_ptr.150, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @_smbd_get_connection._rs.151, !258, !"_rs", i1 false, i1 false}
!258 = !{!"../fs/cifs/smbdirect.c", i32 1625, i32 2}
!259 = !{ptr @.str.153, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @_smbd_get_connection._entry.152, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @_smbd_get_connection._entry_ptr.154, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @_smbd_get_connection._rs.155, !263, !"_rs", i1 false, i1 false}
!263 = !{!"../fs/cifs/smbdirect.c", i32 1645, i32 2}
!264 = !{ptr @.str.157, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @_smbd_get_connection._entry.156, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @_smbd_get_connection._entry_ptr.158, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @_smbd_get_connection.__key, !268, !"__key", i1 false, i1 false}
!268 = !{!"../fs/cifs/smbdirect.c", i32 1648, i32 2}
!269 = !{ptr @.str.159, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @_smbd_get_connection.__key.160, !271, !"__key", i1 false, i1 false}
!271 = !{!"../fs/cifs/smbdirect.c", i32 1649, i32 2}
!272 = !{ptr @.str.161, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @_smbd_get_connection.__key.162, !274, !"__key", i1 false, i1 false}
!274 = !{!"../fs/cifs/smbdirect.c", i32 1650, i32 2}
!275 = !{ptr @.str.163, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @_smbd_get_connection._rs.164, !277, !"_rs", i1 false, i1 false}
!277 = !{!"../fs/cifs/smbdirect.c", i32 1653, i32 3}
!278 = !{ptr @.str.166, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @_smbd_get_connection._entry.165, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @_smbd_get_connection._entry_ptr.167, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @_smbd_get_connection._rs.168, !282, !"_rs", i1 false, i1 false}
!282 = !{!"../fs/cifs/smbdirect.c", i32 1661, i32 3}
!283 = !{ptr @.str.170, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @_smbd_get_connection._entry.169, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @_smbd_get_connection._entry_ptr.171, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @_smbd_get_connection._rs.172, !287, !"_rs", i1 false, i1 false}
!287 = !{!"../fs/cifs/smbdirect.c", i32 1665, i32 2}
!288 = !{ptr @.str.174, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @_smbd_get_connection._entry.173, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @_smbd_get_connection._entry_ptr.175, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @_smbd_get_connection._rs.176, !292, !"_rs", i1 false, i1 false}
!292 = !{!"../fs/cifs/smbdirect.c", i32 1669, i32 3}
!293 = !{ptr @.str.178, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @_smbd_get_connection._entry.177, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @_smbd_get_connection._entry_ptr.179, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @_smbd_get_connection.__key.180, !297, !"__key", i1 false, i1 false}
!297 = !{!"../fs/cifs/smbdirect.c", i32 1673, i32 2}
!298 = !{ptr @.str.181, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @_smbd_get_connection.__key.182, !300, !"__key", i1 false, i1 false}
!300 = !{!"../fs/cifs/smbdirect.c", i32 1674, i32 2}
!301 = !{ptr @.str.183, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @_smbd_get_connection.__key.184, !300, !"__key", i1 false, i1 false}
!303 = !{ptr @.str.185, !300, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @_smbd_get_connection.__key.186, !305, !"__key", i1 false, i1 false}
!305 = !{!"../fs/cifs/smbdirect.c", i32 1678, i32 2}
!306 = !{ptr @.str.187, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @_smbd_get_connection.__key.188, !308, !"__key", i1 false, i1 false}
!308 = !{!"../fs/cifs/smbdirect.c", i32 1681, i32 2}
!309 = !{ptr @.str.189, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @_smbd_get_connection.__key.190, !311, !"__key", i1 false, i1 false}
!311 = !{!"../fs/cifs/smbdirect.c", i32 1683, i32 2}
!312 = !{ptr @.str.191, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @_smbd_get_connection.__key.192, !314, !"__key", i1 false, i1 false}
!314 = !{!"../fs/cifs/smbdirect.c", i32 1684, i32 2}
!315 = !{ptr @.str.193, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @_smbd_get_connection.__key.194, !317, !"__key", i1 false, i1 false}
!317 = !{!"../fs/cifs/smbdirect.c", i32 1686, i32 2}
!318 = !{ptr @.str.195, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @_smbd_get_connection._rs.196, !320, !"_rs", i1 false, i1 false}
!320 = !{!"../fs/cifs/smbdirect.c", i32 1690, i32 3}
!321 = !{ptr @.str.198, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @_smbd_get_connection._entry.197, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @_smbd_get_connection._entry_ptr.199, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @_smbd_get_connection._rs.200, !325, !"_rs", i1 false, i1 false}
!325 = !{!"../fs/cifs/smbdirect.c", i32 1696, i32 3}
!326 = !{ptr @.str.202, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @_smbd_get_connection._entry.201, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @_smbd_get_connection._entry_ptr.203, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @_smbd_get_connection.__key.204, !330, !"__key", i1 false, i1 false}
!330 = !{!"../fs/cifs/smbdirect.c", i32 1711, i32 2}
!331 = !{ptr @smbd_ia_open._rs, !332, !"_rs", i1 false, i1 false}
!332 = !{!"../fs/cifs/smbdirect.c", i32 641, i32 3}
!333 = !{ptr @__func__.smbd_ia_open, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.205, !332, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @smbd_ia_open._entry, !332, !"_entry", i1 false, i1 false}
!336 = !{ptr @smbd_ia_open._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @smbd_ia_open._rs.206, !338, !"_rs", i1 false, i1 false}
!338 = !{!"../fs/cifs/smbdirect.c", i32 642, i32 3}
!339 = !{ptr @.str.208, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @smbd_ia_open._entry.207, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @smbd_ia_open._entry_ptr.209, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @smbd_ia_open._rs.210, !343, !"_rs", i1 false, i1 false}
!343 = !{!"../fs/cifs/smbdirect.c", i32 658, i32 3}
!344 = !{ptr @.str.212, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @smbd_ia_open._entry.211, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @smbd_ia_open._entry_ptr.213, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @smbd_create_id._rs, !348, !"_rs", i1 false, i1 false}
!348 = !{!"../fs/cifs/smbdirect.c", i32 555, i32 3}
!349 = !{ptr @__func__.smbd_create_id, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.214, !348, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @smbd_create_id._entry, !348, !"_entry", i1 false, i1 false}
!352 = !{ptr @smbd_create_id._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @smbd_create_id._rs.215, !354, !"_rs", i1 false, i1 false}
!354 = !{!"../fs/cifs/smbdirect.c", i32 572, i32 3}
!355 = !{ptr @.str.217, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @smbd_create_id._entry.216, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @smbd_create_id._entry_ptr.218, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @smbd_create_id._rs.219, !359, !"_rs", i1 false, i1 false}
!359 = !{!"../fs/cifs/smbdirect.c", i32 579, i32 3}
!360 = !{ptr @.str.221, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @smbd_create_id._entry.220, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @smbd_create_id._entry_ptr.222, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @smbd_create_id._rs.223, !364, !"_rs", i1 false, i1 false}
!364 = !{!"../fs/cifs/smbdirect.c", i32 584, i32 3}
!365 = !{ptr @.str.225, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @smbd_create_id._entry.224, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @smbd_create_id._entry_ptr.226, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @smbd_create_id._rs.227, !369, !"_rs", i1 false, i1 false}
!369 = !{!"../fs/cifs/smbdirect.c", i32 591, i32 3}
!370 = !{ptr @.str.229, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @smbd_create_id._entry.228, !369, !"_entry", i1 false, i1 false}
!372 = !{ptr @smbd_create_id._entry_ptr.230, !369, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @smbd_create_id._rs.231, !374, !"_rs", i1 false, i1 false}
!374 = !{!"../fs/cifs/smbdirect.c", i32 598, i32 3}
!375 = !{ptr @smbd_create_id._entry.232, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @smbd_create_id._entry_ptr.233, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @smbd_create_id._rs.234, !378, !"_rs", i1 false, i1 false}
!378 = !{!"../fs/cifs/smbdirect.c", i32 603, i32 3}
!379 = !{ptr @.str.236, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @smbd_create_id._entry.235, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @smbd_create_id._entry_ptr.237, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @smbd_conn_upcall._rs, !383, !"_rs", i1 false, i1 false}
!383 = !{!"../fs/cifs/smbdirect.c", i32 180, i32 2}
!384 = !{ptr @__func__.smbd_conn_upcall, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.238, !383, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @smbd_conn_upcall._entry, !383, !"_entry", i1 false, i1 false}
!387 = !{ptr @smbd_conn_upcall._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @smbd_conn_upcall._rs.239, !389, !"_rs", i1 false, i1 false}
!389 = !{!"../fs/cifs/smbdirect.c", i32 201, i32 3}
!390 = !{ptr @.str.241, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @smbd_conn_upcall._entry.240, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @smbd_conn_upcall._entry_ptr.242, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @smbd_conn_upcall._rs.243, !394, !"_rs", i1 false, i1 false}
!394 = !{!"../fs/cifs/smbdirect.c", i32 209, i32 3}
!395 = !{ptr @.str.245, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @smbd_conn_upcall._entry.244, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @smbd_conn_upcall._entry_ptr.246, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @smbd_qp_async_error_upcall._rs, !399, !"_rs", i1 false, i1 false}
!399 = !{!"../fs/cifs/smbdirect.c", i32 242, i32 2}
!400 = !{ptr @__func__.smbd_qp_async_error_upcall, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.247, !399, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @smbd_qp_async_error_upcall._entry, !399, !"_entry", i1 false, i1 false}
!403 = !{ptr @smbd_qp_async_error_upcall._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.248, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../fs/cifs/smbdirect.c", i32 1459, i32 32}
!406 = !{ptr @.str.249, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/cifs/smbdirect.c", i32 1475, i32 32}
!408 = !{ptr @.str.250, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../fs/cifs/smbdirect.c", i32 1491, i32 32}
!410 = !{ptr @.str.251, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../fs/cifs/smbdirect.c", i32 1492, i32 20}
!412 = !{ptr @allocate_caches_and_workqueue._rs, !413, !"_rs", i1 false, i1 false}
!413 = !{!"../fs/cifs/smbdirect.c", i32 1498, i32 3}
!414 = !{ptr @__func__.allocate_caches_and_workqueue, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.252, !413, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @allocate_caches_and_workqueue._entry, !413, !"_entry", i1 false, i1 false}
!417 = !{ptr @allocate_caches_and_workqueue._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @allocate_receive_buffers.__key, !419, !"__key", i1 false, i1 false}
!419 = !{!"../fs/cifs/smbdirect.c", i32 1244, i32 2}
!420 = !{ptr @.str.253, !419, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @allocate_receive_buffers.__key.254, !422, !"__key", i1 false, i1 false}
!422 = !{!"../fs/cifs/smbdirect.c", i32 1249, i32 2}
!423 = !{ptr @.str.255, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @allocate_receive_buffers.__key.256, !425, !"__key", i1 false, i1 false}
!425 = !{!"../fs/cifs/smbdirect.c", i32 1253, i32 2}
!426 = !{ptr @.str.257, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @allocate_receive_buffers.__key.258, !428, !"__key", i1 false, i1 false}
!428 = !{!"../fs/cifs/smbdirect.c", i32 1256, i32 2}
!429 = !{ptr @.str.259, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @idle_connection_timer._rs, !431, !"_rs", i1 false, i1 false}
!431 = !{!"../fs/cifs/smbdirect.c", i32 1302, i32 3}
!432 = !{ptr @__func__.idle_connection_timer, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.260, !431, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @idle_connection_timer._entry, !431, !"_entry", i1 false, i1 false}
!435 = !{ptr @idle_connection_timer._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @idle_connection_timer._rs.261, !437, !"_rs", i1 false, i1 false}
!437 = !{!"../fs/cifs/smbdirect.c", i32 1309, i32 2}
!438 = !{ptr @.str.263, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @idle_connection_timer._entry.262, !437, !"_entry", i1 false, i1 false}
!440 = !{ptr @idle_connection_timer._entry_ptr.264, !437, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @smbd_post_send_sgl._rs, !442, !"_rs", i1 false, i1 false}
!442 = !{!"../fs/cifs/smbdirect.c", i32 846, i32 3}
!443 = !{ptr @__func__.smbd_post_send_sgl, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @.str.265, !442, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @smbd_post_send_sgl._entry, !442, !"_entry", i1 false, i1 false}
!446 = !{ptr @smbd_post_send_sgl._entry_ptr, !442, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @smbd_post_send_sgl._rs.266, !448, !"_rs", i1 false, i1 false}
!448 = !{!"../fs/cifs/smbdirect.c", i32 861, i32 3}
!449 = !{ptr @.str.268, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @smbd_post_send_sgl._entry.267, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @smbd_post_send_sgl._entry_ptr.269, !448, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @smbd_post_send_sgl._rs.270, !453, !"_rs", i1 false, i1 false}
!453 = !{!"../fs/cifs/smbdirect.c", i32 903, i32 2}
!454 = !{ptr @.str.272, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @smbd_post_send_sgl._entry.271, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @smbd_post_send_sgl._entry_ptr.273, !453, !"_entry_ptr", i1 false, i1 false}
!457 = distinct !{null, !458, !"__already_done", i1 false, i1 false}
!458 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!459 = !{ptr @.str.274, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @.str.275, !458, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @smbd_post_send._rs, !462, !"_rs", i1 false, i1 false}
!462 = !{!"../fs/cifs/smbdirect.c", i32 794, i32 3}
!463 = !{ptr @__func__.smbd_post_send, !462, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.276, !462, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @smbd_post_send._entry, !462, !"_entry", i1 false, i1 false}
!466 = !{ptr @smbd_post_send._entry_ptr, !462, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @smbd_post_send._rs.277, !468, !"_rs", i1 false, i1 false}
!468 = !{!"../fs/cifs/smbdirect.c", i32 815, i32 3}
!469 = !{ptr @.str.279, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @smbd_post_send._entry.278, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @smbd_post_send._entry_ptr.280, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @send_done._rs, !473, !"_rs", i1 false, i1 false}
!473 = !{!"../fs/cifs/smbdirect.c", i32 273, i32 2}
!474 = !{ptr @__func__.send_done, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @.str.281, !473, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @send_done._entry, !473, !"_entry", i1 false, i1 false}
!477 = !{ptr @send_done._entry_ptr, !473, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @send_done._rs.282, !479, !"_rs", i1 false, i1 false}
!479 = !{!"../fs/cifs/smbdirect.c", i32 277, i32 3}
!480 = !{ptr @.str.284, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @send_done._entry.283, !479, !"_entry", i1 false, i1 false}
!482 = !{ptr @send_done._entry_ptr.285, !479, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @smbd_post_send_credits._rs, !484, !"_rs", i1 false, i1 false}
!484 = !{!"../fs/cifs/smbdirect.c", i32 416, i32 5}
!485 = !{ptr @__func__.smbd_post_send_credits, !484, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @.str.286, !484, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @smbd_post_send_credits._entry, !484, !"_entry", i1 false, i1 false}
!488 = !{ptr @smbd_post_send_credits._entry_ptr, !484, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @smbd_post_send_credits._rs.287, !490, !"_rs", i1 false, i1 false}
!490 = !{!"../fs/cifs/smbdirect.c", i32 436, i32 4}
!491 = !{ptr @.str.289, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @smbd_post_send_credits._entry.288, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @smbd_post_send_credits._entry_ptr.290, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @smbd_post_recv._rs, !495, !"_rs", i1 false, i1 false}
!495 = !{!"../fs/cifs/smbdirect.c", i32 1068, i32 3}
!496 = !{ptr @__func__.smbd_post_recv, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.291, !495, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @smbd_post_recv._entry, !495, !"_entry", i1 false, i1 false}
!499 = !{ptr @smbd_post_recv._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @recv_done._rs, !501, !"_rs", i1 false, i1 false}
!501 = !{!"../fs/cifs/smbdirect.c", i32 451, i32 2}
!502 = !{ptr @__func__.recv_done, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.292, !501, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @recv_done._entry, !501, !"_entry", i1 false, i1 false}
!505 = !{ptr @recv_done._entry_ptr, !501, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @recv_done._rs.293, !507, !"_rs", i1 false, i1 false}
!507 = !{!"../fs/cifs/smbdirect.c", i32 456, i32 3}
!508 = !{ptr @.str.295, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @recv_done._entry.294, !507, !"_entry", i1 false, i1 false}
!510 = !{ptr @recv_done._entry_ptr.296, !507, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @recv_done._rs.297, !512, !"_rs", i1 false, i1 false}
!512 = !{!"../fs/cifs/smbdirect.c", i32 519, i32 3}
!513 = !{ptr @.str.299, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @recv_done._entry.298, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @recv_done._entry_ptr.300, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @recv_done._rs.301, !517, !"_rs", i1 false, i1 false}
!517 = !{!"../fs/cifs/smbdirect.c", i32 535, i32 3}
!518 = !{ptr @.str.303, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @recv_done._entry.302, !517, !"_entry", i1 false, i1 false}
!520 = !{ptr @recv_done._entry_ptr.304, !517, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @dump_smbd_negotiate_resp._rs, !522, !"_rs", i1 false, i1 false}
!522 = !{!"../fs/cifs/smbdirect.c", i32 298, i32 2}
!523 = !{ptr @__func__.dump_smbd_negotiate_resp, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @.str.305, !522, !"<string literal>", i1 false, i1 false}
!525 = !{ptr @dump_smbd_negotiate_resp._entry, !522, !"_entry", i1 false, i1 false}
!526 = !{ptr @dump_smbd_negotiate_resp._entry_ptr, !522, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @process_negotiation_response._rs, !528, !"_rs", i1 false, i1 false}
!528 = !{!"../fs/cifs/smbdirect.c", i32 318, i32 3}
!529 = !{ptr @__func__.process_negotiation_response, !528, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @.str.306, !528, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @process_negotiation_response._entry, !528, !"_entry", i1 false, i1 false}
!532 = !{ptr @process_negotiation_response._entry_ptr, !528, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @process_negotiation_response._rs.307, !534, !"_rs", i1 false, i1 false}
!534 = !{!"../fs/cifs/smbdirect.c", i32 324, i32 3}
!535 = !{ptr @.str.309, !534, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @process_negotiation_response._entry.308, !534, !"_entry", i1 false, i1 false}
!537 = !{ptr @process_negotiation_response._entry_ptr.310, !534, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @process_negotiation_response._rs.311, !539, !"_rs", i1 false, i1 false}
!539 = !{!"../fs/cifs/smbdirect.c", i32 331, i32 3}
!540 = !{ptr @.str.313, !539, !"<string literal>", i1 false, i1 false}
!541 = !{ptr @process_negotiation_response._entry.312, !539, !"_entry", i1 false, i1 false}
!542 = !{ptr @process_negotiation_response._entry_ptr.314, !539, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @process_negotiation_response._rs.315, !544, !"_rs", i1 false, i1 false}
!544 = !{!"../fs/cifs/smbdirect.c", i32 337, i32 3}
!545 = !{ptr @.str.317, !544, !"<string literal>", i1 false, i1 false}
!546 = !{ptr @process_negotiation_response._entry.316, !544, !"_entry", i1 false, i1 false}
!547 = !{ptr @process_negotiation_response._entry_ptr.318, !544, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @process_negotiation_response._rs.319, !549, !"_rs", i1 false, i1 false}
!549 = !{!"../fs/cifs/smbdirect.c", i32 345, i32 3}
!550 = !{ptr @.str.321, !549, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @process_negotiation_response._entry.320, !549, !"_entry", i1 false, i1 false}
!552 = !{ptr @process_negotiation_response._entry_ptr.322, !549, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @process_negotiation_response._rs.323, !554, !"_rs", i1 false, i1 false}
!554 = !{!"../fs/cifs/smbdirect.c", i32 352, i32 3}
!555 = !{ptr @.str.325, !554, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @process_negotiation_response._entry.324, !554, !"_entry", i1 false, i1 false}
!557 = !{ptr @process_negotiation_response._entry_ptr.326, !554, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @process_negotiation_response._rs.327, !559, !"_rs", i1 false, i1 false}
!559 = !{!"../fs/cifs/smbdirect.c", i32 361, i32 3}
!560 = !{ptr @.str.329, !559, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @process_negotiation_response._entry.328, !559, !"_entry", i1 false, i1 false}
!562 = !{ptr @process_negotiation_response._entry_ptr.330, !559, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @smbd_negotiate._rs, !564, !"_rs", i1 false, i1 false}
!564 = !{!"../fs/cifs/smbdirect.c", i32 1082, i32 2}
!565 = !{ptr @__func__.smbd_negotiate, !564, !"<string literal>", i1 false, i1 false}
!566 = !{ptr @.str.331, !564, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @smbd_negotiate._entry, !564, !"_entry", i1 false, i1 false}
!568 = !{ptr @smbd_negotiate._entry_ptr, !564, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @smbd_negotiate._rs.332, !570, !"_rs", i1 false, i1 false}
!570 = !{!"../fs/cifs/smbdirect.c", i32 1096, i32 2}
!571 = !{ptr @.str.334, !570, !"<string literal>", i1 false, i1 false}
!572 = !{ptr @smbd_negotiate._entry.333, !570, !"_entry", i1 false, i1 false}
!573 = !{ptr @smbd_negotiate._entry_ptr.335, !570, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @smbd_post_send_negotiate_req._rs, !575, !"_rs", i1 false, i1 false}
!575 = !{!"../fs/cifs/smbdirect.c", i32 726, i32 2}
!576 = !{ptr @__func__.smbd_post_send_negotiate_req, !575, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @.str.336, !575, !"<string literal>", i1 false, i1 false}
!578 = !{ptr @smbd_post_send_negotiate_req._entry, !575, !"_entry", i1 false, i1 false}
!579 = !{ptr @smbd_post_send_negotiate_req._entry_ptr, !575, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @smbd_post_send_negotiate_req._rs.337, !581, !"_rs", i1 false, i1 false}
!581 = !{!"../fs/cifs/smbdirect.c", i32 736, i32 2}
!582 = !{ptr @smbd_post_send_negotiate_req._entry.338, !581, !"_entry", i1 false, i1 false}
!583 = !{ptr @smbd_post_send_negotiate_req._entry_ptr.339, !581, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @allocate_mr_list.__key, !585, !"__key", i1 false, i1 false}
!585 = !{!"../fs/cifs/smbdirect.c", i32 2247, i32 2}
!586 = !{ptr @.str.340, !585, !"<string literal>", i1 false, i1 false}
!587 = !{ptr @allocate_mr_list.__key.341, !588, !"__key", i1 false, i1 false}
!588 = !{!"../fs/cifs/smbdirect.c", i32 2248, i32 2}
!589 = !{ptr @.str.342, !588, !"<string literal>", i1 false, i1 false}
!590 = !{ptr @allocate_mr_list.__key.343, !591, !"__key", i1 false, i1 false}
!591 = !{!"../fs/cifs/smbdirect.c", i32 2251, i32 2}
!592 = !{ptr @.str.344, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @allocate_mr_list._rs, !594, !"_rs", i1 false, i1 false}
!594 = !{!"../fs/cifs/smbdirect.c", i32 2260, i32 4}
!595 = !{ptr @__func__.allocate_mr_list, !594, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @.str.345, !594, !"<string literal>", i1 false, i1 false}
!597 = !{ptr @allocate_mr_list._entry, !594, !"_entry", i1 false, i1 false}
!598 = !{ptr @allocate_mr_list._entry_ptr, !594, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @allocate_mr_list._rs.346, !600, !"_rs", i1 false, i1 false}
!600 = !{!"../fs/cifs/smbdirect.c", i32 2269, i32 4}
!601 = !{ptr @.str.348, !600, !"<string literal>", i1 false, i1 false}
!602 = !{ptr @allocate_mr_list._entry.347, !600, !"_entry", i1 false, i1 false}
!603 = !{ptr @allocate_mr_list._entry_ptr.349, !600, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @allocate_mr_list.__key.350, !605, !"__key", i1 false, i1 false}
!605 = !{!"../fs/cifs/smbdirect.c", i32 2279, i32 2}
!606 = !{ptr @.str.351, !605, !"<string literal>", i1 false, i1 false}
!607 = !{ptr @smbd_mr_recovery_work._rs, !608, !"_rs", i1 false, i1 false}
!608 = !{!"../fs/cifs/smbdirect.c", i32 2184, i32 5}
!609 = !{ptr @__func__.smbd_mr_recovery_work, !608, !"<string literal>", i1 false, i1 false}
!610 = !{ptr @.str.352, !608, !"<string literal>", i1 false, i1 false}
!611 = !{ptr @smbd_mr_recovery_work._entry, !608, !"_entry", i1 false, i1 false}
!612 = !{ptr @smbd_mr_recovery_work._entry_ptr, !608, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @smbd_mr_recovery_work._rs.353, !614, !"_rs", i1 false, i1 false}
!614 = !{!"../fs/cifs/smbdirect.c", i32 2195, i32 5}
!615 = !{ptr @smbd_mr_recovery_work._entry.354, !614, !"_entry", i1 false, i1 false}
!616 = !{ptr @smbd_mr_recovery_work._entry_ptr.355, !614, !"_entry_ptr", i1 false, i1 false}
!617 = !{ptr @smbd_recv_buf._rs, !618, !"_rs", i1 false, i1 false}
!618 = !{!"../fs/cifs/smbdirect.c", i32 1781, i32 2}
!619 = !{ptr @__func__.smbd_recv_buf, !618, !"<string literal>", i1 false, i1 false}
!620 = !{ptr @.str.356, !618, !"<string literal>", i1 false, i1 false}
!621 = !{ptr @smbd_recv_buf._entry, !618, !"_entry", i1 false, i1 false}
!622 = !{ptr @smbd_recv_buf._entry_ptr, !618, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @smbd_recv_buf._rs.357, !624, !"_rs", i1 false, i1 false}
!624 = !{!"../fs/cifs/smbdirect.c", i32 1822, i32 5}
!625 = !{ptr @.str.359, !624, !"<string literal>", i1 false, i1 false}
!626 = !{ptr @smbd_recv_buf._entry.358, !624, !"_entry", i1 false, i1 false}
!627 = !{ptr @smbd_recv_buf._entry_ptr.360, !624, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @smbd_recv_buf._rs.361, !629, !"_rs", i1 false, i1 false}
!629 = !{!"../fs/cifs/smbdirect.c", i32 1854, i32 5}
!630 = !{ptr @.str.363, !629, !"<string literal>", i1 false, i1 false}
!631 = !{ptr @smbd_recv_buf._entry.362, !629, !"_entry", i1 false, i1 false}
!632 = !{ptr @smbd_recv_buf._entry_ptr.364, !629, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @smbd_recv_buf._rs.365, !634, !"_rs", i1 false, i1 false}
!634 = !{!"../fs/cifs/smbdirect.c", i32 1861, i32 4}
!635 = !{ptr @.str.367, !634, !"<string literal>", i1 false, i1 false}
!636 = !{ptr @smbd_recv_buf._entry.366, !634, !"_entry", i1 false, i1 false}
!637 = !{ptr @smbd_recv_buf._entry_ptr.368, !634, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @smbd_recv_buf._rs.369, !639, !"_rs", i1 false, i1 false}
!639 = !{!"../fs/cifs/smbdirect.c", i32 1872, i32 3}
!640 = !{ptr @.str.371, !639, !"<string literal>", i1 false, i1 false}
!641 = !{ptr @smbd_recv_buf._entry.370, !639, !"_entry", i1 false, i1 false}
!642 = !{ptr @smbd_recv_buf._entry_ptr.372, !639, !"_entry_ptr", i1 false, i1 false}
!643 = !{ptr @smbd_recv_buf._rs.373, !644, !"_rs", i1 false, i1 false}
!644 = !{!"../fs/cifs/smbdirect.c", i32 1879, i32 2}
!645 = !{ptr @.str.375, !644, !"<string literal>", i1 false, i1 false}
!646 = !{ptr @smbd_recv_buf._entry.374, !644, !"_entry", i1 false, i1 false}
!647 = !{ptr @smbd_recv_buf._entry_ptr.376, !644, !"_entry_ptr", i1 false, i1 false}
!648 = !{ptr @smbd_recv_buf._rs.377, !649, !"_rs", i1 false, i1 false}
!649 = !{!"../fs/cifs/smbdirect.c", i32 1889, i32 3}
!650 = !{ptr @.str.379, !649, !"<string literal>", i1 false, i1 false}
!651 = !{ptr @smbd_recv_buf._entry.378, !649, !"_entry", i1 false, i1 false}
!652 = !{ptr @smbd_recv_buf._entry_ptr.380, !649, !"_entry_ptr", i1 false, i1 false}
!653 = !{ptr @smbd_recv_page._rs, !654, !"_rs", i1 false, i1 false}
!654 = !{!"../fs/cifs/smbdirect.c", i32 1922, i32 2}
!655 = !{ptr @__func__.smbd_recv_page, !654, !"<string literal>", i1 false, i1 false}
!656 = !{ptr @.str.381, !654, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @smbd_recv_page._entry, !654, !"_entry", i1 false, i1 false}
!658 = !{ptr @smbd_recv_page._entry_ptr, !654, !"_entry_ptr", i1 false, i1 false}
!659 = !{ptr @smbd_post_send_data._rs, !660, !"_rs", i1 false, i1 false}
!660 = !{!"../fs/cifs/smbdirect.c", i32 1023, i32 3}
!661 = !{ptr @__func__.smbd_post_send_data, !660, !"<string literal>", i1 false, i1 false}
!662 = !{ptr @.str.382, !660, !"<string literal>", i1 false, i1 false}
!663 = !{ptr @smbd_post_send_data._entry, !660, !"_entry", i1 false, i1 false}
!664 = !{ptr @smbd_post_send_data._entry_ptr, !660, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @get_mr._rs, !666, !"_rs", i1 false, i1 false}
!666 = !{!"../fs/cifs/smbdirect.c", i32 2310, i32 3}
!667 = !{ptr @__func__.get_mr, !666, !"<string literal>", i1 false, i1 false}
!668 = !{ptr @.str.383, !666, !"<string literal>", i1 false, i1 false}
!669 = !{ptr @get_mr._entry, !666, !"_entry", i1 false, i1 false}
!670 = !{ptr @get_mr._entry_ptr, !666, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @get_mr._rs.384, !672, !"_rs", i1 false, i1 false}
!672 = !{!"../fs/cifs/smbdirect.c", i32 2315, i32 3}
!673 = !{ptr @.str.386, !672, !"<string literal>", i1 false, i1 false}
!674 = !{ptr @get_mr._entry.385, !672, !"_entry", i1 false, i1 false}
!675 = !{ptr @get_mr._entry_ptr.387, !672, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @register_mr_done._rs, !677, !"_rs", i1 false, i1 false}
!677 = !{!"../fs/cifs/smbdirect.c", i32 2155, i32 3}
!678 = !{ptr @__func__.register_mr_done, !677, !"<string literal>", i1 false, i1 false}
!679 = !{ptr @.str.388, !677, !"<string literal>", i1 false, i1 false}
!680 = !{ptr @register_mr_done._entry, !677, !"_entry", i1 false, i1 false}
!681 = !{ptr @register_mr_done._entry_ptr, !677, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @local_inv_done._rs, !683, !"_rs", i1 false, i1 false}
!683 = !{!"../fs/cifs/smbdirect.c", i32 2460, i32 3}
!684 = !{ptr @__func__.local_inv_done, !683, !"<string literal>", i1 false, i1 false}
!685 = !{ptr @.str.389, !683, !"<string literal>", i1 false, i1 false}
!686 = !{ptr @local_inv_done._entry, !683, !"_entry", i1 false, i1 false}
!687 = !{ptr @local_inv_done._entry_ptr, !683, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @init_completion.__key, !689, !"__key", i1 false, i1 false}
!689 = !{!"../include/linux/completion.h", i32 87, i32 2}
!690 = !{ptr @.str.390, !689, !"<string literal>", i1 false, i1 false}
!691 = !{!"sp"}
!692 = !{i32 1, !"wchar_size", i32 2}
!693 = !{i32 1, !"min_enum_size", i32 4}
!694 = !{i32 8, !"branch-target-enforcement", i32 0}
!695 = !{i32 8, !"sign-return-address", i32 0}
!696 = !{i32 8, !"sign-return-address-all", i32 0}
!697 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!698 = !{i32 7, !"uwtable", i32 1}
!699 = !{i32 7, !"frame-pointer", i32 2}
!700 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!701 = !{!"branch_weights", i32 2000, i32 1}
!702 = !{!"auto-init"}
!703 = !{i64 2148411435, i64 2148411461, i64 2148411490, i64 2148411524, i64 2148411555, i64 2148411578}
!704 = !{i64 2148413900, i64 2148413926, i64 2148413955, i64 2148413989, i64 2148414020, i64 2148414043}
!705 = !{i8 0, i8 2}
!706 = !{!"branch_weights", i32 1, i32 2000}
!707 = !{i64 2153828712}
!708 = !{i64 2152490545}
!709 = !{i64 2152490752}
!710 = !{i64 2153831483}
!711 = !{i64 2161708323}
!712 = !{i64 2149024812, i64 2149024817, i64 2149024830, i64 2149024874, i64 2149024908, i64 2149024929}
!713 = !{i64 2154717486, i64 2154717978, i64 2154717523, i64 2154717579, i64 2154717613, i64 2154717637, i64 2154717678, i64 2154717699, i64 2154717727, i64 2154717761}
!714 = !{i64 2154719096, i64 2154719588, i64 2154719133, i64 2154719189, i64 2154719223, i64 2154719247, i64 2154719288, i64 2154719309, i64 2154719337, i64 2154719371}
!715 = !{i64 2154723805, i64 2154724297, i64 2154723842, i64 2154723898, i64 2154723932, i64 2154723956, i64 2154723997, i64 2154724018, i64 2154724046, i64 2154724080}
!716 = !{i64 2148499911}
!717 = !{i64 2148414620, i64 2148414652, i64 2148414681, i64 2148414715, i64 2148414746, i64 2148414769}
!718 = !{i64 2148500140}
!719 = !{i64 2148496870}
!720 = !{i64 2148412155, i64 2148412187, i64 2148412216, i64 2148412250, i64 2148412281, i64 2148412304}
!721 = !{i64 2148497099}
!722 = !{i64 2154721044, i64 2154721536, i64 2154721081, i64 2154721137, i64 2154721171, i64 2154721195, i64 2154721236, i64 2154721257, i64 2154721285, i64 2154721319}
!723 = !{i64 2161070438}
