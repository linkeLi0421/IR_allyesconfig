; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/isert/ib_isert.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/isert/ib_isert.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
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
%struct.iscsit_transport = type { [16 x i8], i32, i8, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iscsi_np = type { i32, i32, i32, i32, i8, %struct.atomic_t, i32, i32, i32, %struct.spinlock, %struct.completion, ptr, %struct.__kernel_sockaddr_storage, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, [48 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.173 }
%union.anon.173 = type { ptr, [124 x i8] }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rdma_cm_event = type { i32, i32, %union.anon.172, %struct.rdma_ucm_ece }
%union.anon.172 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.isert_np = type { ptr, %struct.semaphore, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.isert_conn = type <{ i32, i32, i32, i8, [3 x i8], ptr, ptr, i32, [4 x i8], i64, ptr, [4 x i8], [128 x %struct.ib_recv_wr], ptr, %struct.list_head, %struct.completion, %struct.completion, %struct.iser_tx_desc, ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.kref, %struct.work_struct, i8, i8, [2 x i8], %struct.wait_queue_head, i8, [3 x i8] }>
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }
%struct.iser_tx_desc = type { %struct.iser_ctrl, %struct.iscsi_hdr, i32, i64, [2 x %struct.ib_sge], %struct.ib_cqe, i32, %struct.ib_send_wr }
%struct.iser_ctrl = type <{ i8, [3 x i8], i32, i64, i32, i64 }>
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_cqe = type { ptr }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.isert_device = type { i8, i32, ptr, ptr, ptr, i32, %struct.list_head }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.iser_rx_desc = type { [9216 x i8], i64, %struct.ib_sge, %struct.ib_cqe, i8 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.iser_cm_hdr = type { i8, [3 x i8] }
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
%struct.ib_event = type { ptr, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.ib_wc = type { %union.anon.155, i32, i32, i32, i32, ptr, %union.anon.156, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.155 = type { i64 }
%union.anon.156 = type { i32 }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.iscsi_login = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, i32, i32, i32, i16, i16, [48 x i8], [48 x i8], ptr, ptr, ptr, ptr, [108 x i8] }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.iscsi_cmd = type { i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [52 x i8], %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.timer_list, ptr, ptr, [5 x %struct.kvec], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, [98 x i8], i32, [4 x i8], ptr, i32, i32, i32, [124 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.isert_cmd = type <{ i32, i32, i64, i64, i32, [4 x i8], i64, i32, ptr, ptr, %struct.iser_tx_desc, ptr, %struct.rdma_rw_ctx, %struct.work_struct, %struct.scatterlist, i8, [7 x i8] }>
%struct.rdma_rw_ctx = type { i32, i8, %union.anon.176 }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type { %struct.ib_sge, %struct.ib_rdma_wr }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.rdma_rw_reg_ctx = type { %struct.ib_sge, %struct.ib_rdma_wr, %struct.ib_reg_wr, %struct.ib_send_wr, ptr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_sig_attrs = type { i8, %struct.ib_sig_domain, %struct.ib_sig_domain, i32 }
%struct.ib_sig_domain = type { i32, %union.anon.150 }
%union.anon.150 = type { %struct.ib_t10_dif_domain }
%struct.ib_t10_dif_domain = type { i32, i16, i16, i16, i32, i8, i8, i8, i16 }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.percpu_ref = type { i32, ptr }
%struct.ib_mr_status = type { i32, %struct.ib_sig_err }
%struct.ib_sig_err = type { i32, i32, i32, i64, i32 }

@__param_str_debug_level = internal constant [21 x i8] c"ib_isert.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@isert_debug_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @isert_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype502 = internal constant [34 x i8] c"ib_isert.parmtype=debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level503 = internal constant [66 x i8] c"ib_isert.parm=debug_level:Enable debug tracing if > 0 (default:0)\00", section ".modinfo", align 1
@__param_str_sg_tablesize = internal constant [22 x i8] c"ib_isert.sg_tablesize\00", align 1
@sg_tablesize_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @isert_sg_tablesize_set, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@isert_sg_tablesize = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_sg_tablesize = internal constant %struct.kernel_param { ptr @__param_str_sg_tablesize, ptr null, ptr @sg_tablesize_ops, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @isert_sg_tablesize } }, section "__param", align 4
@__UNIQUE_ID_sg_tablesize504 = internal constant [126 x i8] c"ib_isert.parm=sg_tablesize:Number of gather/scatter entries in a single scsi command, should >= 128 (default: 128, max: 4096)\00", section ".modinfo", align 1
@isert_setup_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017isert: %s: ksockaddr: %p, sa: %p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isert_setup_id\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/ulp/isert/ib_isert.c\00", [56 x i8] zeroinitializer }, align 32
@isert_setup_id._entry_ptr = internal global ptr @isert_setup_id._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ib_isert\00", [23 x i8] zeroinitializer }, align 32
@isert_setup_id._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 2228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013isert: %s: rdma_create_id() failed: %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@isert_setup_id._entry_ptr.6 = internal global ptr @isert_setup_id._entry.4, section ".printk_index", align 4
@isert_setup_id._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 2232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017isert: %s: id %p context %p\0A\00", [33 x i8] zeroinitializer }, align 32
@isert_setup_id._entry_ptr.9 = internal global ptr @isert_setup_id._entry.7, section ".printk_index", align 4
@isert_setup_id._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 2240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013isert: %s: rdma_set_afonly() failed: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@isert_setup_id._entry_ptr.12 = internal global ptr @isert_setup_id._entry.10, section ".printk_index", align 4
@isert_setup_id._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 2246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013isert: %s: rdma_bind_addr() failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@isert_setup_id._entry_ptr.15 = internal global ptr @isert_setup_id._entry.13, section ".printk_index", align 4
@isert_setup_id._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 2252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013isert: %s: rdma_listen() failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@isert_setup_id._entry_ptr.18 = internal global ptr @isert_setup_id._entry.16, section ".printk_index", align 4
@isert_release_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@isert_comp_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iser_target_transport = internal global { %struct.iscsit_transport, [44 x i8] } { %struct.iscsit_transport { [16 x i8] c"IB/iSER\00\00\00\00\00\00\00\00\00", i32 5, i8 1, i32 376, ptr null, %struct.list_head zeroinitializer, ptr @isert_setup_np, ptr @isert_accept_np, ptr @isert_free_np, ptr @isert_wait_conn, ptr @isert_free_conn, ptr @isert_get_login_rx, ptr @isert_put_login_tx, ptr @isert_immediate_queue, ptr @isert_response_queue, ptr @isert_get_dataout, ptr @isert_put_datain, ptr @isert_put_response, ptr @isert_aborted_task, ptr null, ptr null, ptr @isert_get_rx_pdu, ptr null, ptr null, ptr @isert_get_sup_prot_ops }, [44 x i8] zeroinitializer }, align 32
@isert_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 2643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016isert: %s: iSER_TARGET[0] - Released iser_target_transport\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isert_exit\00", [21 x i8] zeroinitializer }, align 32
@isert_exit._entry_ptr = internal global ptr @isert_exit._entry, section ".printk_index", align 4
@__UNIQUE_ID_description515 = internal constant [68 x i8] c"ib_isert.description=iSER-Target for mainline target infrastructure\00", section ".modinfo", align 1
@__UNIQUE_ID_author516 = internal constant [36 x i8] c"ib_isert.author=nab@Linux-iSCSI.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file517 = internal constant [52 x i8] c"ib_isert.file=drivers/infiniband/ulp/isert/ib_isert\00", section ".modinfo", align 1
@__UNIQUE_ID_license518 = internal constant [21 x i8] c"ib_isert.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ib_isert__519_2650_isert_init6 = internal global ptr @isert_init, section ".initcall6.init", align 4
@__exitcall_isert_exit = internal global ptr @isert_exit, section ".exitcall.exit", align 4
@isert_cma_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016isert: %s: %s (%d): status %d id %p np %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isert_cma_handler\00", [46 x i8] zeroinitializer }, align 32
@isert_cma_handler._entry_ptr = internal global ptr @isert_cma_handler._entry, section ".printk_index", align 4
@isert_cma_handler._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013isert: %s: failed handle connect request %d\0A\00", [49 x i8] zeroinitializer }, align 32
@isert_cma_handler._entry_ptr.25 = internal global ptr @isert_cma_handler._entry.23, section ".printk_index", align 4
@isert_cma_handler._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016isert: %s: Connection rejected: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@isert_cma_handler._entry_ptr.28 = internal global ptr @isert_cma_handler._entry.26, section ".printk_index", align 4
@isert_cma_handler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013isert: %s: Unhandled RDMA CMA event: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@isert_cma_handler._entry_ptr.31 = internal global ptr @isert_cma_handler._entry.29, section ".printk_index", align 4
@isert_np_cma_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017isert: %s: %s (%d): isert np %p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isert_np_cma_handler\00", [43 x i8] zeroinitializer }, align 32
@isert_np_cma_handler._entry_ptr = internal global ptr @isert_np_cma_handler._entry, section ".printk_index", align 4
@isert_np_cma_handler._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013isert: %s: isert np %p setup id failed: %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@isert_np_cma_handler._entry_ptr.36 = internal global ptr @isert_np_cma_handler._entry.34, section ".printk_index", align 4
@isert_np_cma_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013isert: %s: isert np %p Unexpected event %d\0A\00", [50 x i8] zeroinitializer }, align 32
@isert_np_cma_handler._entry_ptr.39 = internal global ptr @isert_np_cma_handler._entry.37, section ".printk_index", align 4
@isert_connect_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017isert: %s: iscsi_np is not enabled, reject connect request\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_connect_request\00", [42 x i8] zeroinitializer }, align 32
@isert_connect_request._entry_ptr = internal global ptr @isert_connect_request._entry, section ".printk_index", align 4
@isert_connect_request._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017isert: %s: cma_id: %p, portal: %p\0A\00", [59 x i8] zeroinitializer }, align 32
@isert_connect_request._entry_ptr.44 = internal global ptr @isert_connect_request._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@isert_init_conn.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&isert_conn->rem_wait\00", [42 x i8] zeroinitializer }, align 32
@isert_init_conn.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&isert_conn->mutex\00", [45 x i8] zeroinitializer }, align 32
@isert_init_conn.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&isert_conn->release_work)\00", [51 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@isert_release_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016isert: %s: Starting release conn %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isert_release_work\00", [45 x i8] zeroinitializer }, align 32
@isert_release_work._entry_ptr = internal global ptr @isert_release_work._entry, section ".printk_index", align 4
@isert_release_work._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 2485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016isert: %s: Destroying conn %p\0A\00", [63 x i8] zeroinitializer }, align 32
@isert_release_work._entry_ptr.55 = internal global ptr @isert_release_work._entry.53, section ".printk_index", align 4
@isert_release_kref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016isert: %s: conn %p final kref %s/%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isert_release_kref\00", [45 x i8] zeroinitializer }, align 32
@isert_release_kref._entry_ptr = internal global ptr @isert_release_kref._entry, section ".printk_index", align 4
@isert_connect_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017isert: %s: conn %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_connect_release\00", [42 x i8] zeroinitializer }, align 32
@isert_connect_release._entry_ptr = internal global ptr @isert_connect_release._entry, section ".printk_index", align 4
@device_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.65, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @device_list_mutex, i64 52), ptr getelementptr (i8, ptr @device_list_mutex, i64 52) }, ptr @device_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.66, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @device_list, ptr @device_list }, [24 x i8] zeroinitializer }, align 32
@isert_device_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016isert: %s: Found iser device %p refcount %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isert_device_get\00", [47 x i8] zeroinitializer }, align 32
@isert_device_get._entry_ptr = internal global ptr @isert_device_get._entry, section ".printk_index", align 4
@isert_device_get._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016isert: %s: Created a new iser device %p refcount %d\0A\00", [41 x i8] zeroinitializer }, align 32
@isert_device_get._entry_ptr.64 = internal global ptr @isert_device_get._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device_list_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_list_mutex\00", [46 x i8] zeroinitializer }, align 32
@isert_create_device_ib_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017isert: %s: devattr->max_send_sge: %d devattr->max_recv_sge %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isert_create_device_ib_res\00", [37 x i8] zeroinitializer }, align 32
@isert_create_device_ib_res._entry_ptr = internal global ptr @isert_create_device_ib_res._entry, section ".printk_index", align 4
@isert_create_device_ib_res._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017isert: %s: devattr->max_sge_rd: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@isert_create_device_ib_res._entry_ptr.71 = internal global ptr @isert_create_device_ib_res._entry.69, section ".printk_index", align 4
@isert_create_device_ib_res._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013isert: %s: failed to allocate pd, device %p, ret=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@isert_create_device_ib_res._entry_ptr.74 = internal global ptr @isert_create_device_ib_res._entry.72, section ".printk_index", align 4
@isert_alloc_login_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013isert: %s: login_desc dma mapping error: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_alloc_login_buf\00", [42 x i8] zeroinitializer }, align 32
@isert_alloc_login_buf._entry_ptr = internal global ptr @isert_alloc_login_buf._entry, section ".printk_index", align 4
@isert_alloc_login_buf._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013isert: %s: login_rsp_dma mapping error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@isert_alloc_login_buf._entry_ptr.79 = internal global ptr @isert_alloc_login_buf._entry.77, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@isert_set_nego_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017isert: %s: Using initiator_depth: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_set_nego_params\00", [42 x i8] zeroinitializer }, align 32
@isert_set_nego_params._entry_ptr = internal global ptr @isert_set_nego_params._entry, section ".printk_index", align 4
@isert_set_nego_params._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016isert: %s: Using remote invalidation\0A\00", [56 x i8] zeroinitializer }, align 32
@isert_set_nego_params._entry_ptr.86 = internal global ptr @isert_set_nego_params._entry.84, section ".printk_index", align 4
@isert_create_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013isert: %s: Unable to allocate cq\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_create_qp\00", [16 x i8] zeroinitializer }, align 32
@isert_create_qp._entry_ptr = internal global ptr @isert_create_qp._entry, section ".printk_index", align 4
@isert_create_qp._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013isert: %s: rdma_create_qp failed for cma_id %d\0A\00", [46 x i8] zeroinitializer }, align 32
@isert_create_qp._entry_ptr.91 = internal global ptr @isert_create_qp._entry.89, section ".printk_index", align 4
@isert_qp_event_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013isert: %s: %s (%d): conn %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"isert_qp_event_callback\00", [40 x i8] zeroinitializer }, align 32
@isert_qp_event_callback._entry_ptr = internal global ptr @isert_qp_event_callback._entry, section ".printk_index", align 4
@isert_qp_event_callback._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014isert: %s: Reached TX IB_EVENT_QP_LAST_WQE_REACHED\0A\00", [42 x i8] zeroinitializer }, align 32
@isert_qp_event_callback._entry_ptr.96 = internal global ptr @isert_qp_event_callback._entry.94, section ".printk_index", align 4
@isert_login_post_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017isert: %s: Setup sge: addr: %llx length: %d 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_login_post_recv\00", [42 x i8] zeroinitializer }, align 32
@isert_login_post_recv._entry_ptr = internal global ptr @isert_login_post_recv._entry, section ".printk_index", align 4
@isert_login_post_recv._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013isert: %s: ib_post_recv() failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@isert_login_post_recv._entry_ptr.101 = internal global ptr @isert_login_post_recv._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"login recv\00", [21 x i8] zeroinitializer }, align 32
@isert_print_wc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013isert: %s: %s failure: %s (%d) vend_err %x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isert_print_wc\00", [17 x i8] zeroinitializer }, align 32
@isert_print_wc._entry_ptr = internal global ptr @isert_print_wc._entry, section ".printk_index", align 4
@isert_print_wc._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017isert: %s: %s failure: %s (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@isert_print_wc._entry_ptr.107 = internal global ptr @isert_print_wc._entry.105, section ".printk_index", align 4
@isert_rx_login_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016isert: %s: conn %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isert_rx_login_req\00", [45 x i8] zeroinitializer }, align 32
@isert_rx_login_req._entry_ptr = internal global ptr @isert_rx_login_req._entry, section ".printk_index", align 4
@isert_rx_login_req.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@isert_rx_login_req._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\017isert: %s: Using login payload size: %d, rx_buflen: %d MAX_KEY_VALUE_PAIRS: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@isert_rx_login_req._entry_ptr.112 = internal global ptr @isert_rx_login_req._entry.110, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@isert_rdma_accept._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 2327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013isert: %s: rdma_accept() failed with: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isert_rdma_accept\00", [46 x i8] zeroinitializer }, align 32
@isert_rdma_accept._entry_ptr = internal global ptr @isert_rdma_accept._entry, section ".printk_index", align 4
@isert_device_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016isert: %s: device %p refcount %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isert_device_put\00", [47 x i8] zeroinitializer }, align 32
@isert_device_put._entry_ptr = internal global ptr @isert_device_put._entry, section ".printk_index", align 4
@isert_free_device_ib_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016isert: %s: device %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"isert_free_device_ib_res\00", [39 x i8] zeroinitializer }, align 32
@isert_free_device_ib_res._entry_ptr = internal global ptr @isert_free_device_ib_res._entry, section ".printk_index", align 4
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@isert_connected_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.122, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"isert_connected_handler\00", [40 x i8] zeroinitializer }, align 32
@isert_connected_handler._entry_ptr = internal global ptr @isert_connected_handler._entry, section ".printk_index", align 4
@isert_connected_handler._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016isert: %s: np %p: Allow accept_np to continue\0A\00", [47 x i8] zeroinitializer }, align 32
@isert_connected_handler._entry_ptr.125 = internal global ptr @isert_connected_handler._entry.123, section ".printk_index", align 4
@isert_disconnected_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014isert: %s: conn %p terminating in state %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isert_disconnected_handler\00", [37 x i8] zeroinitializer }, align 32
@isert_disconnected_handler._entry_ptr = internal global ptr @isert_disconnected_handler._entry, section ".printk_index", align 4
@isert_conn_terminate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016isert: %s: Terminating conn %p state %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isert_conn_terminate\00", [43 x i8] zeroinitializer }, align 32
@isert_conn_terminate._entry_ptr = internal global ptr @isert_conn_terminate._entry, section ".printk_index", align 4
@isert_conn_terminate._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014isert: %s: Failed rdma_disconnect isert_conn %p\0A\00", [45 x i8] zeroinitializer }, align 32
@isert_conn_terminate._entry_ptr.132 = internal global ptr @isert_conn_terminate._entry.130, section ".printk_index", align 4
@isert_setup_np.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&isert_np->mutex\00", [47 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@isert_accept_np._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 2399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017isert: %s: np_thread_state %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_accept_np\00", [16 x i8] zeroinitializer }, align 32
@isert_accept_np._entry_ptr = internal global ptr @isert_accept_np._entry, section ".printk_index", align 4
@isert_accept_np._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 2424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017isert: %s: Processing isert_conn: %p\0A\00", [56 x i8] zeroinitializer }, align 32
@isert_accept_np._entry_ptr.140 = internal global ptr @isert_accept_np._entry.138, section ".printk_index", align 4
@isert_free_np._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 2447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016isert: %s: Still have isert pending connections\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isert_free_np\00", [18 x i8] zeroinitializer }, align 32
@isert_free_np._entry_ptr = internal global ptr @isert_free_np._entry, section ".printk_index", align 4
@isert_free_np._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 2452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016isert: %s: cleaning isert_conn %p state (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@isert_free_np._entry_ptr.145 = internal global ptr @isert_free_np._entry.143, section ".printk_index", align 4
@isert_free_np._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.142, ptr @.str.2, i32 2458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016isert: %s: Still have isert accepted connections\0A\00", [44 x i8] zeroinitializer }, align 32
@isert_free_np._entry_ptr.148 = internal global ptr @isert_free_np._entry.146, section ".printk_index", align 4
@isert_free_np._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 2463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@isert_free_np._entry_ptr.150 = internal global ptr @isert_free_np._entry.149, section ".printk_index", align 4
@isert_wait_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 2553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016isert: %s: Starting conn %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_wait_conn\00", [16 x i8] zeroinitializer }, align 32
@isert_wait_conn._entry_ptr = internal global ptr @isert_wait_conn._entry, section ".printk_index", align 4
@isert_put_unsol_pending_cmds.drop_cmd_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @isert_put_unsol_pending_cmds.drop_cmd_list, ptr @isert_put_unsol_pending_cmds.drop_cmd_list }, [24 x i8] zeroinitializer }, align 32
@isert_put_unsol_pending_cmds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 2543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016isert: %s: conn %p dropping cmd %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"isert_put_unsol_pending_cmds\00", [35 x i8] zeroinitializer }, align 32
@isert_put_unsol_pending_cmds._entry_ptr = internal global ptr @isert_put_unsol_pending_cmds._entry, section ".printk_index", align 4
@isert_put_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017isert: %s: Cmd %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isert_put_cmd\00", [18 x i8] zeroinitializer }, align 32
@isert_put_cmd._entry_ptr = internal global ptr @isert_put_cmd._entry, section ".printk_index", align 4
@isert_put_cmd._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.2, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017isert: %s: Calling transport_generic_free_cmd for 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@isert_put_cmd._entry_ptr.159 = internal global ptr @isert_put_cmd._entry.157, section ".printk_index", align 4
@isert_wait4cmds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 2506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016isert: %s: iscsi_conn %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_wait4cmds\00", [16 x i8] zeroinitializer }, align 32
@isert_wait4cmds._entry_ptr = internal global ptr @isert_wait4cmds._entry, section ".printk_index", align 4
@isert_wait4logout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.162, ptr @.str.2, i32 2494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isert_wait4logout\00", [46 x i8] zeroinitializer }, align 32
@isert_wait4logout._entry_ptr = internal global ptr @isert_wait4logout._entry, section ".printk_index", align 4
@isert_wait4logout._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 2497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016isert: %s: conn %p wait for conn_logout_comp\0A\00", [48 x i8] zeroinitializer }, align 32
@isert_wait4logout._entry_ptr.165 = internal global ptr @isert_wait4logout._entry.163, section ".printk_index", align 4
@isert_get_login_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 2340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016isert: %s: before login_req comp conn: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isert_get_login_rx\00", [45 x i8] zeroinitializer }, align 32
@isert_get_login_rx._entry_ptr = internal global ptr @isert_get_login_rx._entry, section ".printk_index", align 4
@isert_get_login_rx._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.2, i32 2344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013isert: %s: isert_conn %p interrupted before got login req\0A\00", [35 x i8] zeroinitializer }, align 32
@isert_get_login_rx._entry_ptr.170 = internal global ptr @isert_get_login_rx._entry.168, section ".printk_index", align 4
@isert_get_login_rx._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.167, ptr @.str.2, i32 2360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016isert: %s: before login_comp conn: %p\0A\00", [55 x i8] zeroinitializer }, align 32
@isert_get_login_rx._entry_ptr.173 = internal global ptr @isert_get_login_rx._entry.171, section ".printk_index", align 4
@isert_get_login_rx._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.167, ptr @.str.2, i32 2365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016isert: %s: processing login->req: %p\0A\00", [56 x i8] zeroinitializer }, align 32
@isert_get_login_rx._entry_ptr.176 = internal global ptr @isert_get_login_rx._entry.174, section ".printk_index", align 4
@__isert_create_send_desc._entry = internal constant %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.2, i32 815, ptr null, ptr null }, align 1
@.str.177 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017isert: %s: tx_desc %p lkey mismatch, fixing\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__isert_create_send_desc\00", [39 x i8] zeroinitializer }, align 32
@__isert_create_send_desc._entry_ptr = internal global ptr @__isert_create_send_desc._entry, section ".printk_index", align 4
@isert_init_tx_hdrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013isert: %s: ib_dma_mapping_error() failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isert_init_tx_hdrs\00", [45 x i8] zeroinitializer }, align 32
@isert_init_tx_hdrs._entry_ptr = internal global ptr @isert_init_tx_hdrs._entry, section ".printk_index", align 4
@isert_init_tx_hdrs._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017isert: %s: Setup tx_sg[0].addr: 0x%llx length: %u lkey: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@isert_init_tx_hdrs._entry_ptr.183 = internal global ptr @isert_init_tx_hdrs._entry.181, section ".printk_index", align 4
@isert_alloc_rx_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013isert: %s: conn %p failed to allocate rx descriptors\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isert_alloc_rx_descriptors\00", [37 x i8] zeroinitializer }, align 32
@isert_alloc_rx_descriptors._entry_ptr = internal global ptr @isert_alloc_rx_descriptors._entry, section ".printk_index", align 4
@.str.186 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"recv\00", [27 x i8] zeroinitializer }, align 32
@isert_recv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.2, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\017isert: %s: DMA: 0x%llx, iSCSI opcode: 0x%02x, ITT: 0x%08x, flags: 0x%02x dlen: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_recv_done\00", [16 x i8] zeroinitializer }, align 32
@isert_recv_done._entry_ptr = internal global ptr @isert_recv_done._entry, section ".printk_index", align 4
@isert_recv_done._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.2, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017isert: %s: ISER_RSV: read_stag: 0x%x read_va: 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@isert_recv_done._entry_ptr.191 = internal global ptr @isert_recv_done._entry.189, section ".printk_index", align 4
@isert_recv_done._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.188, ptr @.str.2, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017isert: %s: ISER_WSV: write_stag: 0x%x write_va: 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@isert_recv_done._entry_ptr.194 = internal global ptr @isert_recv_done._entry.192, section ".printk_index", align 4
@isert_recv_done._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.188, ptr @.str.2, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017isert: %s: ISER ISCSI_CTRL PDU\0A\00", [62 x i8] zeroinitializer }, align 32
@isert_recv_done._entry_ptr.197 = internal global ptr @isert_recv_done._entry.195, section ".printk_index", align 4
@isert_recv_done._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.188, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013isert: %s: iSER Hello message\0A\00", [63 x i8] zeroinitializer }, align 32
@isert_recv_done._entry_ptr.200 = internal global ptr @isert_recv_done._entry.198, section ".printk_index", align 4
@isert_recv_done._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.188, ptr @.str.2, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014isert: %s: Unknown iSER hdr flags: 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@isert_recv_done._entry_ptr.203 = internal global ptr @isert_recv_done._entry.201, section ".printk_index", align 4
@isert_rx_opcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013isert: %s: Got illegal opcode: 0x%02x in SessionType=Discovery, ignoring\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_rx_opcode\00", [16 x i8] zeroinitializer }, align 32
@isert_rx_opcode._entry_ptr = internal global ptr @isert_rx_opcode._entry, section ".printk_index", align 4
@isert_rx_opcode._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.205, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013isert: %s: Got unknown iSCSI OpCode: 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@isert_rx_opcode._entry_ptr.208 = internal global ptr @isert_rx_opcode._entry.206, section ".printk_index", align 4
@isert_allocate_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013isert: %s: Unable to allocate iscsi_cmd + isert_cmd\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isert_allocate_cmd\00", [45 x i8] zeroinitializer }, align 32
@isert_allocate_cmd._entry_ptr = internal global ptr @isert_allocate_cmd._entry, section ".printk_index", align 4
@isert_handle_scsi_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017isert: %s: Copy Immediate sg_nents: %u imm_data_len: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_handle_scsi_cmd\00", [42 x i8] zeroinitializer }, align 32
@isert_handle_scsi_cmd._entry_ptr = internal global ptr @isert_handle_scsi_cmd._entry, section ".printk_index", align 4
@isert_handle_scsi_cmd._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017isert: %s: Transfer Immediate imm_data_len: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@isert_handle_scsi_cmd._entry_ptr.215 = internal global ptr @isert_handle_scsi_cmd._entry.213, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@isert_handle_iscsi_dataout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013isert: %s: Received unexpected solicited data payload\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isert_handle_iscsi_dataout\00", [37 x i8] zeroinitializer }, align 32
@isert_handle_iscsi_dataout._entry_ptr = internal global ptr @isert_handle_iscsi_dataout._entry, section ".printk_index", align 4
@isert_handle_iscsi_dataout._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.217, ptr @.str.2, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\017isert: %s: Unsolicited DataOut unsol_data_len: %u, write_data_done: %u, data_length: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@isert_handle_iscsi_dataout._entry_ptr.220 = internal global ptr @isert_handle_iscsi_dataout._entry.218, section ".printk_index", align 4
@isert_handle_iscsi_dataout._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.217, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013isert: %s: unexpected non-page aligned data payload\0A\00", [41 x i8] zeroinitializer }, align 32
@isert_handle_iscsi_dataout._entry_ptr.223 = internal global ptr @isert_handle_iscsi_dataout._entry.221, section ".printk_index", align 4
@isert_handle_iscsi_dataout._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.217, ptr @.str.2, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017isert: %s: Copying DataOut: sg_start: %p, sg_off: %u sg_nents: %u from %p %u\0A\00", [48 x i8] zeroinitializer }, align 32
@isert_handle_iscsi_dataout._entry_ptr.226 = internal global ptr @isert_handle_iscsi_dataout._entry.224, section ".printk_index", align 4
@isert_post_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013isert: %s: ib_post_recv() failed with ret: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_post_recv\00", [16 x i8] zeroinitializer }, align 32
@isert_post_recv._entry_ptr = internal global ptr @isert_post_recv._entry, section ".printk_index", align 4
@isert_post_recvm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.229, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isert_post_recvm\00", [47 x i8] zeroinitializer }, align 32
@isert_post_recvm._entry_ptr = internal global ptr @isert_post_recvm._entry, section ".printk_index", align 4
@isert_login_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013isert: %s: ib_post_send() failed, ret: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_login_post_send\00", [42 x i8] zeroinitializer }, align 32
@isert_login_post_send._entry_ptr = internal global ptr @isert_login_post_send._entry, section ".printk_index", align 4
@.str.232 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"login send\00", [21 x i8] zeroinitializer }, align 32
@isert_unmap_tx_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017isert: %s: unmap single for tx_desc->dma_addr\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isert_unmap_tx_desc\00", [44 x i8] zeroinitializer }, align 32
@isert_unmap_tx_desc._entry_ptr = internal global ptr @isert_unmap_tx_desc._entry, section ".printk_index", align 4
@isert_immediate_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.2, i32 2166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013isert: %s: Unknown immediate state: 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_immediate_queue\00", [42 x i8] zeroinitializer }, align 32
@isert_immediate_queue._entry_ptr = internal global ptr @isert_immediate_queue._entry, section ".printk_index", align 4
@isert_put_nopin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.2, i32 1859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017isert: %s: conn %p Posting NOPIN Response\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_put_nopin\00", [16 x i8] zeroinitializer }, align 32
@isert_put_nopin._entry_ptr = internal global ptr @isert_put_nopin._entry, section ".printk_index", align 4
@.str.239 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@isert_send_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.240, ptr @.str.2, i32 1721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isert_send_done\00", [16 x i8] zeroinitializer }, align 32
@isert_send_done._entry_ptr = internal global ptr @isert_send_done._entry, section ".printk_index", align 4
@isert_send_done.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.241 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&isert_cmd->comp_work)\00", [55 x i8] zeroinitializer }, align 32
@isert_completion_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.2, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017isert: %s: unmap single for isert_cmd->pdu_buf_dma\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isert_completion_put\00", [43 x i8] zeroinitializer }, align 32
@isert_completion_put._entry_ptr = internal global ptr @isert_completion_put._entry, section ".printk_index", align 4
@isert_do_control_comp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.245, ptr @.str.2, i32 1667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017isert: %s: Cmd %p i_state %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_do_control_comp\00", [42 x i8] zeroinitializer }, align 32
@isert_do_control_comp._entry_ptr = internal global ptr @isert_do_control_comp._entry, section ".printk_index", align 4
@isert_do_control_comp._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.245, ptr @.str.2, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013isert: %s: Unknown i_state %d\0A\00", [63 x i8] zeroinitializer }, align 32
@isert_do_control_comp._entry_ptr.248 = internal global ptr @isert_do_control_comp._entry.246, section ".printk_index", align 4
@isert_post_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.2, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013isert: %s: ib_post_send failed with %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isert_post_response\00", [44 x i8] zeroinitializer }, align 32
@isert_post_response._entry_ptr = internal global ptr @isert_post_response._entry, section ".printk_index", align 4
@isert_response_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.252, ptr @.str.2, i32 2206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013isert: %s: Unknown response state: 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isert_response_queue\00", [43 x i8] zeroinitializer }, align 32
@isert_response_queue._entry_ptr = internal global ptr @isert_response_queue._entry, section ".printk_index", align 4
@isert_put_logout_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.254, ptr @.str.2, i32 1877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017isert: %s: conn %p Posting Logout Response\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isert_put_logout_rsp\00", [43 x i8] zeroinitializer }, align 32
@isert_put_logout_rsp._entry_ptr = internal global ptr @isert_put_logout_rsp._entry, section ".printk_index", align 4
@isert_put_tm_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.2, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017isert: %s: conn %p Posting Task Management Response\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isert_put_tm_rsp\00", [47 x i8] zeroinitializer }, align 32
@isert_put_tm_rsp._entry_ptr = internal global ptr @isert_put_tm_rsp._entry, section ".printk_index", align 4
@isert_put_reject._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.2, i32 1930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017isert: %s: conn %p Posting Reject\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isert_put_reject\00", [47 x i8] zeroinitializer }, align 32
@isert_put_reject._entry_ptr = internal global ptr @isert_put_reject._entry, section ".printk_index", align 4
@isert_put_text_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.2, i32 1973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017isert: %s: conn %p Text Response\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isert_put_text_rsp\00", [45 x i8] zeroinitializer }, align 32
@isert_put_text_rsp._entry_ptr = internal global ptr @isert_put_text_rsp._entry, section ".printk_index", align 4
@isert_get_dataout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.2, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017isert: %s: Cmd: %p RDMA_READ data_length: %u write_data_done: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isert_get_dataout\00", [46 x i8] zeroinitializer }, align 32
@isert_get_dataout._entry_ptr = internal global ptr @isert_get_dataout._entry, section ".printk_index", align 4
@isert_get_dataout._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.262, ptr @.str.2, i32 2145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017isert: %s: Cmd: %p posted RDMA_READ memory for ISER Data WRITE rc: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@isert_get_dataout._entry_ptr.265 = internal global ptr @isert_get_dataout._entry.263, section ".printk_index", align 4
@.str.266 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rdma read\00", [22 x i8] zeroinitializer }, align 32
@isert_rdma_read_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.267, ptr @.str.2, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isert_rdma_read_done\00", [43 x i8] zeroinitializer }, align 32
@isert_rdma_read_done._entry_ptr = internal global ptr @isert_rdma_read_done._entry, section ".printk_index", align 4
@isert_rdma_read_done._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.267, ptr @.str.2, i32 1641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017isert: %s: Cmd: %p RDMA_READ comp calling execute_cmd\0A\00", [39 x i8] zeroinitializer }, align 32
@isert_rdma_read_done._entry_ptr.270 = internal global ptr @isert_rdma_read_done._entry.268, section ".printk_index", align 4
@isert_check_pi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.2, i32 1535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013isert: %s: ib_check_mr_status failed, ret %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_check_pi_status\00", [42 x i8] zeroinitializer }, align 32
@isert_check_pi_status._entry_ptr = internal global ptr @isert_check_pi_status._entry, section ".printk_index", align 4
@isert_check_pi_status._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.272, ptr @.str.2, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013isert: %s: PI error found type %d at sector 0x%llx expected 0x%x vs actual 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@isert_check_pi_status._entry_ptr.275 = internal global ptr @isert_check_pi_status._entry.273, section ".printk_index", align 4
@isert_rdma_rw_ctx_post.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@isert_rdma_rw_ctx_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.2, i32 2077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013isert: %s: Cmd: %p failed to prepare RDMA res\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isert_rdma_rw_ctx_post\00", [41 x i8] zeroinitializer }, align 32
@isert_rdma_rw_ctx_post._entry_ptr = internal global ptr @isert_rdma_rw_ctx_post._entry, section ".printk_index", align 4
@isert_rdma_rw_ctx_post._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.277, ptr @.str.2, i32 2086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013isert: %s: Cmd: %p failed to post RDMA res\0A\00", [50 x i8] zeroinitializer }, align 32
@isert_rdma_rw_ctx_post._entry_ptr.280 = internal global ptr @isert_rdma_rw_ctx_post._entry.278, section ".printk_index", align 4
@isert_set_sig_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.282, ptr @.str.2, i32 2020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013isert: %s: Unsupported PI operation %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isert_set_sig_attrs\00", [44 x i8] zeroinitializer }, align 32
@isert_set_sig_attrs._entry_ptr = internal global ptr @isert_set_sig_attrs._entry, section ".printk_index", align 4
@isert_put_datain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.284, ptr @.str.2, i32 2101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017isert: %s: Cmd: %p RDMA_WRITE data_length: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isert_put_datain\00", [47 x i8] zeroinitializer }, align 32
@isert_put_datain._entry_ptr = internal global ptr @isert_put_datain._entry, section ".printk_index", align 4
@isert_put_datain._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.284, ptr @.str.2, i32 2127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017isert: %s: Cmd: %p posted RDMA_WRITE for iSER Data READ rc: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@isert_put_datain._entry_ptr.287 = internal global ptr @isert_put_datain._entry.285, section ".printk_index", align 4
@.str.288 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rdma write\00", [21 x i8] zeroinitializer }, align 32
@isert_rdma_write_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.289, ptr @.str.2, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isert_rdma_write_done\00", [42 x i8] zeroinitializer }, align 32
@isert_rdma_write_done._entry_ptr = internal global ptr @isert_rdma_write_done._entry, section ".printk_index", align 4
@isert_rdma_write_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.290, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@isert_rdma_write_done._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.289, ptr @.str.2, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014isert_put_response() ret: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@isert_rdma_write_done._entry_ptr.293 = internal global ptr @isert_rdma_write_done._entry.291, section ".printk_index", align 4
@isert_put_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.295, ptr @.str.2, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017isert: %s: Posting SCSI Response\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isert_put_response\00", [45 x i8] zeroinitializer }, align 32
@isert_put_response._entry_ptr = internal global ptr @isert_put_response._entry, section ".printk_index", align 4
@isert_get_sup_prot_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.297, ptr @.str.2, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016isert: %s: conn %p PI offload enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"isert_get_sup_prot_ops\00", [41 x i8] zeroinitializer }, align 32
@isert_get_sup_prot_ops._entry_ptr = internal global ptr @isert_get_sup_prot_ops._entry, section ".printk_index", align 4
@isert_get_sup_prot_ops._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.297, ptr @.str.2, i32 1838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016isert: %s: conn %p PI offload disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@isert_get_sup_prot_ops._entry_ptr.300 = internal global ptr @isert_get_sup_prot_ops._entry.298, section ".printk_index", align 4
@.str.301 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isert_comp_wq\00", [18 x i8] zeroinitializer }, align 32
@isert_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.303, ptr @.str.2, i32 2614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013isert: %s: Unable to allocate isert_comp_wq\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isert_init\00", [21 x i8] zeroinitializer }, align 32
@isert_init._entry_ptr = internal global ptr @isert_init._entry, section ".printk_index", align 4
@.str.304 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isert_release_wq\00", [47 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@isert_init._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.303, ptr @.str.2, i32 2621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013isert: %s: Unable to allocate isert_release_wq\0A\00", [46 x i8] zeroinitializer }, align 32
@isert_init._entry_ptr.307 = internal global ptr @isert_init._entry.305, section ".printk_index", align 4
@isert_init._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.303, ptr @.str.2, i32 2627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016isert: %s: iSER_TARGET[0] - Loaded iser_target_transport\0A\00", [36 x i8] zeroinitializer }, align 32
@isert_init._entry_ptr.310 = internal global ptr @isert_init._entry.308, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@switch.table.isert_check_pi_status = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 21, i32 23, i32 22], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 14]
@__sancov_gen_cov_switch_values.311 = internal global [11 x i64] [i64 9, i64 32, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15]
@__sancov_gen_cov_switch_values.312 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.313 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 32, i64 38, i64 41]
@__sancov_gen_cov_switch_values.315 = internal global [8 x i64] [i64 6, i64 32, i64 15, i64 17, i64 19, i64 29, i64 34, i64 36]
@__sancov_gen_cov_switch_values.316 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 63]
@__sancov_gen_cov_switch_values.317 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.318 = internal global [8 x i64] [i64 6, i64 6, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.319 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 19, i64 34, i64 36]
@__sancov_gen_cov_switch_values.320 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 19, i64 34, i64 36]
@__sancov_gen_cov_switch_values.321 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.322 = private unnamed_addr constant [18 x i8] c"isert_debug_level\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 27, i32 12 }
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"sg_tablesize_ops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 33, i32 38 }
@___asan_gen_.328 = private unnamed_addr constant [19 x i8] c"isert_sg_tablesize\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 38, i32 12 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2223, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2225, i32 7 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2228, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2232, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2240, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2246, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2252, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"isert_release_wq\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 46, i32 33 }
@___asan_gen_.379 = private unnamed_addr constant [14 x i8] c"isert_comp_wq\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 45, i32 33 }
@___asan_gen_.382 = private unnamed_addr constant [22 x i8] c"iser_target_transport\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2584, i32 32 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2643, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 675, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 686, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 709, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 717, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 604, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 614, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 620, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 426, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 431, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 312, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 314, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 315, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 87, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2479, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2485, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 541, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 491, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [18 x i8] c"device_list_mutex\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 44, i32 8 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 273, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 298, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 43, i32 8 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 220, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 222, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 227, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 348, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 364, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.581, i32 326, i32 6 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 390, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 403, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 113, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 138, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 86, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 94, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 894, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 906, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1380, i32 22 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1306, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1310, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 983, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1011, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2327, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 254, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 244, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.707, i32 3498, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 520, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 531, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 647, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 591, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 596, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2276, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 33, i32 31 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 34, i32 28 }
@___asan_gen_.758 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 35, i32 39 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2398, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2424, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2447, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2451, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2458, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2462, i32 4 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2553, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [14 x i8] c"drop_cmd_list\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2527, i32 9 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2543, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1434, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1489, i32 4 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2506, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2494, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2497, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2340, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2343, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2360, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2365, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 815, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 844, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 853, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 190, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1326, i32 22 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1337, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1346, i32 4 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1352, i32 4 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1356, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1359, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1362, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1231, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1294, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1032, i32 3 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1080, i32 3 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1088, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1132, i32 3 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1137, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1150, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1154, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 772, i32 3 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 745, i32 3 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 798, i32 3 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1697, i32 22 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1505, i32 3 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2166, i32 3 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1859, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1714, i32 22 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1721, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1730, i32 3 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1517, i32 3 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1667, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1683, i32 3 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1751, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2206, i32 3 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1877, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1895, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1930, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1973, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2137, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2144, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1625, i32 22 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1632, i32 2 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1641, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1535, i32 3 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1558, i32 3 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2077, i32 3 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2086, i32 3 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2020, i32 3 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2100, i32 2 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2126, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1582, i32 22 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1589, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1609, i32 4 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1803, i32 2 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1832, i32 4 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 1838, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2611, i32 34 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2614, i32 3 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2618, i32 37 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2621, i32 3 }
@___asan_gen_.1318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1322 = private constant [43 x i8] c"../drivers/infiniband/ulp/isert/ib_isert.c\00", align 1
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1322, i32 2627, i32 2 }
@___asan_gen_.1324 = private unnamed_addr constant [35 x i8] c"switch.table.isert_check_pi_status\00", align 1
@llvm.compiler.used = appending global [466 x ptr] [ptr @__UNIQUE_ID_author516, ptr @__UNIQUE_ID_debug_level503, ptr @__UNIQUE_ID_debug_leveltype502, ptr @__UNIQUE_ID_description515, ptr @__UNIQUE_ID_file517, ptr @__UNIQUE_ID_license518, ptr @__UNIQUE_ID_sg_tablesize504, ptr @__exitcall_isert_exit, ptr @__initcall__kmod_ib_isert__519_2650_isert_init6, ptr @__isert_create_send_desc._entry, ptr @__isert_create_send_desc._entry_ptr, ptr @__param_debug_level, ptr @__param_sg_tablesize, ptr @isert_accept_np._entry, ptr @isert_accept_np._entry.138, ptr @isert_accept_np._entry_ptr, ptr @isert_accept_np._entry_ptr.140, ptr @isert_alloc_login_buf._entry, ptr @isert_alloc_login_buf._entry.77, ptr @isert_alloc_login_buf._entry_ptr, ptr @isert_alloc_login_buf._entry_ptr.79, ptr @isert_alloc_rx_descriptors._entry, ptr @isert_alloc_rx_descriptors._entry_ptr, ptr @isert_allocate_cmd._entry, ptr @isert_allocate_cmd._entry_ptr, ptr @isert_check_pi_status._entry, ptr @isert_check_pi_status._entry.273, ptr @isert_check_pi_status._entry_ptr, ptr @isert_check_pi_status._entry_ptr.275, ptr @isert_cma_handler._entry, ptr @isert_cma_handler._entry.23, ptr @isert_cma_handler._entry.26, ptr @isert_cma_handler._entry.29, ptr @isert_cma_handler._entry_ptr, ptr @isert_cma_handler._entry_ptr.25, ptr @isert_cma_handler._entry_ptr.28, ptr @isert_cma_handler._entry_ptr.31, ptr @isert_completion_put._entry, ptr @isert_completion_put._entry_ptr, ptr @isert_conn_terminate._entry, ptr @isert_conn_terminate._entry.130, ptr @isert_conn_terminate._entry_ptr, ptr @isert_conn_terminate._entry_ptr.132, ptr @isert_connect_release._entry, ptr @isert_connect_release._entry_ptr, ptr @isert_connect_request._entry, ptr @isert_connect_request._entry.42, ptr @isert_connect_request._entry_ptr, ptr @isert_connect_request._entry_ptr.44, ptr @isert_connected_handler._entry, ptr @isert_connected_handler._entry.123, ptr @isert_connected_handler._entry_ptr, ptr @isert_connected_handler._entry_ptr.125, ptr @isert_create_device_ib_res._entry, ptr @isert_create_device_ib_res._entry.69, ptr @isert_create_device_ib_res._entry.72, ptr @isert_create_device_ib_res._entry_ptr, ptr @isert_create_device_ib_res._entry_ptr.71, ptr @isert_create_device_ib_res._entry_ptr.74, ptr @isert_create_qp._entry, ptr @isert_create_qp._entry.89, ptr @isert_create_qp._entry_ptr, ptr @isert_create_qp._entry_ptr.91, ptr @isert_device_get._entry, ptr @isert_device_get._entry.62, ptr @isert_device_get._entry_ptr, ptr @isert_device_get._entry_ptr.64, ptr @isert_device_put._entry, ptr @isert_device_put._entry_ptr, ptr @isert_disconnected_handler._entry, ptr @isert_disconnected_handler._entry_ptr, ptr @isert_do_control_comp._entry, ptr @isert_do_control_comp._entry.246, ptr @isert_do_control_comp._entry_ptr, ptr @isert_do_control_comp._entry_ptr.248, ptr @isert_exit, ptr @isert_exit._entry, ptr @isert_exit._entry_ptr, ptr @isert_free_device_ib_res._entry, ptr @isert_free_device_ib_res._entry_ptr, ptr @isert_free_np._entry, ptr @isert_free_np._entry.143, ptr @isert_free_np._entry.146, ptr @isert_free_np._entry.149, ptr @isert_free_np._entry_ptr, ptr @isert_free_np._entry_ptr.145, ptr @isert_free_np._entry_ptr.148, ptr @isert_free_np._entry_ptr.150, ptr @isert_get_dataout._entry, ptr @isert_get_dataout._entry.263, ptr @isert_get_dataout._entry_ptr, ptr @isert_get_dataout._entry_ptr.265, ptr @isert_get_login_rx._entry, ptr @isert_get_login_rx._entry.168, ptr @isert_get_login_rx._entry.171, ptr @isert_get_login_rx._entry.174, ptr @isert_get_login_rx._entry_ptr, ptr @isert_get_login_rx._entry_ptr.170, ptr @isert_get_login_rx._entry_ptr.173, ptr @isert_get_login_rx._entry_ptr.176, ptr @isert_get_sup_prot_ops._entry, ptr @isert_get_sup_prot_ops._entry.298, ptr @isert_get_sup_prot_ops._entry_ptr, ptr @isert_get_sup_prot_ops._entry_ptr.300, ptr @isert_handle_iscsi_dataout._entry, ptr @isert_handle_iscsi_dataout._entry.218, ptr @isert_handle_iscsi_dataout._entry.221, ptr @isert_handle_iscsi_dataout._entry.224, ptr @isert_handle_iscsi_dataout._entry_ptr, ptr @isert_handle_iscsi_dataout._entry_ptr.220, ptr @isert_handle_iscsi_dataout._entry_ptr.223, ptr @isert_handle_iscsi_dataout._entry_ptr.226, ptr @isert_handle_scsi_cmd._entry, ptr @isert_handle_scsi_cmd._entry.213, ptr @isert_handle_scsi_cmd._entry_ptr, ptr @isert_handle_scsi_cmd._entry_ptr.215, ptr @isert_immediate_queue._entry, ptr @isert_immediate_queue._entry_ptr, ptr @isert_init._entry, ptr @isert_init._entry.305, ptr @isert_init._entry.308, ptr @isert_init._entry_ptr, ptr @isert_init._entry_ptr.307, ptr @isert_init._entry_ptr.310, ptr @isert_init_tx_hdrs._entry, ptr @isert_init_tx_hdrs._entry.181, ptr @isert_init_tx_hdrs._entry_ptr, ptr @isert_init_tx_hdrs._entry_ptr.183, ptr @isert_login_post_recv._entry, ptr @isert_login_post_recv._entry.99, ptr @isert_login_post_recv._entry_ptr, ptr @isert_login_post_recv._entry_ptr.101, ptr @isert_login_post_send._entry, ptr @isert_login_post_send._entry_ptr, ptr @isert_np_cma_handler._entry, ptr @isert_np_cma_handler._entry.34, ptr @isert_np_cma_handler._entry.37, ptr @isert_np_cma_handler._entry_ptr, ptr @isert_np_cma_handler._entry_ptr.36, ptr @isert_np_cma_handler._entry_ptr.39, ptr @isert_post_recv._entry, ptr @isert_post_recv._entry_ptr, ptr @isert_post_recvm._entry, ptr @isert_post_recvm._entry_ptr, ptr @isert_post_response._entry, ptr @isert_post_response._entry_ptr, ptr @isert_print_wc._entry, ptr @isert_print_wc._entry.105, ptr @isert_print_wc._entry_ptr, ptr @isert_print_wc._entry_ptr.107, ptr @isert_put_cmd._entry, ptr @isert_put_cmd._entry.157, ptr @isert_put_cmd._entry_ptr, ptr @isert_put_cmd._entry_ptr.159, ptr @isert_put_datain._entry, ptr @isert_put_datain._entry.285, ptr @isert_put_datain._entry_ptr, ptr @isert_put_datain._entry_ptr.287, ptr @isert_put_logout_rsp._entry, ptr @isert_put_logout_rsp._entry_ptr, ptr @isert_put_nopin._entry, ptr @isert_put_nopin._entry_ptr, ptr @isert_put_reject._entry, ptr @isert_put_reject._entry_ptr, ptr @isert_put_response._entry, ptr @isert_put_response._entry_ptr, ptr @isert_put_text_rsp._entry, ptr @isert_put_text_rsp._entry_ptr, ptr @isert_put_tm_rsp._entry, ptr @isert_put_tm_rsp._entry_ptr, ptr @isert_put_unsol_pending_cmds._entry, ptr @isert_put_unsol_pending_cmds._entry_ptr, ptr @isert_qp_event_callback._entry, ptr @isert_qp_event_callback._entry.94, ptr @isert_qp_event_callback._entry_ptr, ptr @isert_qp_event_callback._entry_ptr.96, ptr @isert_rdma_accept._entry, ptr @isert_rdma_accept._entry_ptr, ptr @isert_rdma_read_done._entry, ptr @isert_rdma_read_done._entry.268, ptr @isert_rdma_read_done._entry_ptr, ptr @isert_rdma_read_done._entry_ptr.270, ptr @isert_rdma_rw_ctx_post._entry, ptr @isert_rdma_rw_ctx_post._entry.278, ptr @isert_rdma_rw_ctx_post._entry_ptr, ptr @isert_rdma_rw_ctx_post._entry_ptr.280, ptr @isert_rdma_write_done._entry, ptr @isert_rdma_write_done._entry.291, ptr @isert_rdma_write_done._entry_ptr, ptr @isert_rdma_write_done._entry_ptr.293, ptr @isert_recv_done._entry, ptr @isert_recv_done._entry.189, ptr @isert_recv_done._entry.192, ptr @isert_recv_done._entry.195, ptr @isert_recv_done._entry.198, ptr @isert_recv_done._entry.201, ptr @isert_recv_done._entry_ptr, ptr @isert_recv_done._entry_ptr.191, ptr @isert_recv_done._entry_ptr.194, ptr @isert_recv_done._entry_ptr.197, ptr @isert_recv_done._entry_ptr.200, ptr @isert_recv_done._entry_ptr.203, ptr @isert_release_kref._entry, ptr @isert_release_kref._entry_ptr, ptr @isert_release_work._entry, ptr @isert_release_work._entry.53, ptr @isert_release_work._entry_ptr, ptr @isert_release_work._entry_ptr.55, ptr @isert_response_queue._entry, ptr @isert_response_queue._entry_ptr, ptr @isert_rx_login_req._entry, ptr @isert_rx_login_req._entry.110, ptr @isert_rx_login_req._entry_ptr, ptr @isert_rx_login_req._entry_ptr.112, ptr @isert_rx_opcode._entry, ptr @isert_rx_opcode._entry.206, ptr @isert_rx_opcode._entry_ptr, ptr @isert_rx_opcode._entry_ptr.208, ptr @isert_send_done._entry, ptr @isert_send_done._entry_ptr, ptr @isert_set_nego_params._entry, ptr @isert_set_nego_params._entry.84, ptr @isert_set_nego_params._entry_ptr, ptr @isert_set_nego_params._entry_ptr.86, ptr @isert_set_sig_attrs._entry, ptr @isert_set_sig_attrs._entry_ptr, ptr @isert_setup_id._entry, ptr @isert_setup_id._entry.10, ptr @isert_setup_id._entry.13, ptr @isert_setup_id._entry.16, ptr @isert_setup_id._entry.4, ptr @isert_setup_id._entry.7, ptr @isert_setup_id._entry_ptr, ptr @isert_setup_id._entry_ptr.12, ptr @isert_setup_id._entry_ptr.15, ptr @isert_setup_id._entry_ptr.18, ptr @isert_setup_id._entry_ptr.6, ptr @isert_setup_id._entry_ptr.9, ptr @isert_unmap_tx_desc._entry, ptr @isert_unmap_tx_desc._entry_ptr, ptr @isert_wait4cmds._entry, ptr @isert_wait4cmds._entry_ptr, ptr @isert_wait4logout._entry, ptr @isert_wait4logout._entry.163, ptr @isert_wait4logout._entry_ptr, ptr @isert_wait4logout._entry_ptr.165, ptr @isert_wait_conn._entry, ptr @isert_wait_conn._entry_ptr, ptr @isert_debug_level, ptr @sg_tablesize_ops, ptr @isert_sg_tablesize, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @isert_release_wq, ptr @isert_comp_wq, ptr @iser_target_transport, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @isert_init_conn.__key, ptr @.str.45, ptr @isert_init_conn.__key.46, ptr @.str.47, ptr @isert_init_conn.__key.48, ptr @.str.49, ptr @init_completion.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @device_list_mutex, ptr @device_list, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @isert_setup_np.__key, ptr @.str.133, ptr @sema_init.__key, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.151, ptr @.str.152, ptr @isert_put_unsol_pending_cmds.drop_cmd_list, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @isert_send_done.__key, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.247, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.264, ptr @.str.266, ptr @.str.267, ptr @.str.269, ptr @.str.271, ptr @.str.272, ptr @.str.274, ptr @.str.276, ptr @.str.277, ptr @.str.279, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.286, ptr @.str.288, ptr @.str.289, ptr @isert_rdma_write_done._rs, ptr @.str.290, ptr @.str.292, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.299, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.306, ptr @.str.309, ptr @switch.table.isert_check_pi_status], section "llvm.metadata"
@0 = internal global [335 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_tablesize_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_sg_tablesize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_setup_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_setup_id._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_setup_id._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_setup_id._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_setup_id._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_setup_id._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_release_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_comp_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_target_transport to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_cma_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_cma_handler._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_cma_handler._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_cma_handler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_np_cma_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_np_cma_handler._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_np_cma_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_connect_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_connect_request._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_init_conn.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_init_conn.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_init_conn.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_release_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_release_work._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_release_kref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_connect_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_device_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_device_get._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_create_device_ib_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_create_device_ib_res._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_create_device_ib_res._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_alloc_login_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_alloc_login_buf._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_set_nego_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_set_nego_params._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_create_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_create_qp._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_qp_event_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_qp_event_callback._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_login_post_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_login_post_recv._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_print_wc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_print_wc._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rx_login_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rx_login_req._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rdma_accept._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_device_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_free_device_ib_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_connected_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_connected_handler._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_disconnected_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_conn_terminate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_conn_terminate._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_setup_np.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_accept_np._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_accept_np._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_free_np._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_free_np._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_free_np._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_free_np._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_wait_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_unsol_pending_cmds.drop_cmd_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_unsol_pending_cmds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_cmd._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_wait4cmds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_wait4logout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_wait4logout._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_get_login_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_get_login_rx._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_get_login_rx._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_get_login_rx._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_init_tx_hdrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_init_tx_hdrs._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_alloc_rx_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_recv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_recv_done._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_recv_done._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_recv_done._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_recv_done._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_recv_done._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rx_opcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rx_opcode._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_allocate_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_handle_scsi_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_handle_scsi_cmd._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_handle_iscsi_dataout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_handle_iscsi_dataout._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_handle_iscsi_dataout._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_handle_iscsi_dataout._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_post_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_post_recvm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_login_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_unmap_tx_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_immediate_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_nopin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_send_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_send_done.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_completion_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_do_control_comp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_do_control_comp._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_post_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_response_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_logout_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_tm_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_reject._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_text_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_get_dataout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_get_dataout._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rdma_read_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rdma_read_done._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_check_pi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_check_pi_status._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rdma_rw_ctx_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rdma_rw_ctx_post._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_set_sig_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_datain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_datain._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rdma_write_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rdma_write_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_rdma_write_done._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_put_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_get_sup_prot_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_get_sup_prot_ops._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_init._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isert_init._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.isert_check_pi_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @isert_setup_id(ptr noundef %isert_np) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %isert_np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isert_np, align 4
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %1, i32 0, i32 12
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge, !prof !640

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %np_sockaddr, ptr noundef %np_sockaddr) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @isert_cma_handler, ptr noundef %isert_np, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.3) #11
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %do.body18

do.end12:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call7 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %3) #14
  br label %out

do.body18:                                        ; preds = %do.end6
  %4 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp19 = icmp sgt i32 %4, 2
  br i1 %cmp19, label %do.end29, label %do.body18.do.end34_crit_edge, !prof !640

do.body18.do.end34_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end29:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %call7, i32 0, i32 1
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef %call7, ptr noundef %6) #14
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body18.do.end34_crit_edge
  %call35 = tail call i32 @rdma_set_afonly(ptr noundef %call7, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef %call35) #14
  br label %out_id

if.end43:                                         ; preds = %do.end34
  %call44 = tail call i32 @rdma_bind_addr(ptr noundef %call7, ptr noundef %np_sockaddr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef %call44) #14
  br label %out_id

if.end52:                                         ; preds = %if.end43
  %call53 = tail call i32 @rdma_listen(ptr noundef %call7, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %do.end58

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %call53) #14
  br label %out_id

out_id:                                           ; preds = %do.end58, %do.end49, %do.end40
  %ret.0 = phi i32 [ %call35, %do.end40 ], [ %call44, %do.end49 ], [ %call53, %do.end58 ]
  tail call void @rdma_destroy_id(ptr noundef %call7) #11
  br label %out

out:                                              ; preds = %out_id, %do.end12
  %ret.1 = phi i32 [ %3, %do.end12 ], [ %ret.0, %out_id ]
  %7 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end52.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %out ], [ %call7, %if.end52.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_cma_handler(ptr noundef %cma_id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  %attr.i.i = alloca %struct.ib_qp_init_attr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge, !prof !640

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event, align 8
  %call = tail call ptr @rdma_event_msg(i32 noundef %4) #15
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef %call, i32 noundef %4, i32 noundef %6, ptr noundef %cma_id, ptr noundef %1) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %cm_id = getelementptr inbounds %struct.isert_np, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cm_id, align 4
  %cmp9 = icmp eq ptr %8, %cma_id
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %do.end8
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %11 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event, align 8
  %13 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp sgt i32 %13, 2
  br i1 %cmp.i, label %do.end.i, label %if.then10.do.end4.i_crit_edge, !prof !640

if.then10.do.end4.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @rdma_event_msg(i32 noundef %12) #15
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef %call.i, i32 noundef %12, ptr noundef %10) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then10.do.end4.i_crit_edge
  %14 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end20.i [
    i32 11, label %sw.bb.i
    i32 14, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i = getelementptr inbounds %struct.isert_np, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cm_id.i, align 4
  br label %cleanup81

sw.bb5.i:                                         ; preds = %do.end4.i
  %call6.i = tail call ptr @isert_setup_id(ptr noundef %10) #11
  %cm_id7.i = getelementptr inbounds %struct.isert_np, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %cm_id7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6.i, ptr %cm_id7.i, align 4
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end12.i, label %sw.bb5.i.cleanup81_crit_edge

sw.bb5.i.cleanup81_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup81

do.end12.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call6.i to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, ptr noundef %10, i32 noundef %17) #14
  %18 = ptrtoint ptr %cm_id7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cm_id7.i, align 4
  br label %cleanup81

do.end20.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, ptr noundef %10, i32 noundef %12) #14
  br label %cleanup81

if.end14:                                         ; preds = %do.end8
  %19 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %20, label %do.end77 [
    i32 4, label %sw.bb
    i32 9, label %sw.bb25
    i32 14, label %if.end14.sw.bb26_crit_edge
    i32 10, label %if.end14.sw.bb26_crit_edge158
    i32 15, label %if.end14.sw.bb26_crit_edge159
    i32 11, label %sw.bb29
    i32 8, label %do.body54
    i32 7, label %if.end14.sw.bb73_crit_edge
    i32 6, label %if.end14.sw.bb73_crit_edge160
  ]

if.end14.sw.bb73_crit_edge160:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb73

if.end14.sw.bb73_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb73

if.end14.sw.bb26_crit_edge159:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

if.end14.sw.bb26_crit_edge158:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

if.end14.sw.bb26_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb26

sw.bb:                                            ; preds = %if.end14
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %np_thread_lock.i = getelementptr inbounds %struct.iscsi_np, ptr %25, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock.i) #11
  %enabled.i = getelementptr inbounds %struct.iscsi_np, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled.i, align 16, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock.i) #11
  %28 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i112 = icmp sgt i32 %28, 2
  br i1 %tobool.not.i, label %if.then.i, label %if.end10.i

if.then.i:                                        ; preds = %sw.bb
  br i1 %cmp.i112, label %do.end.i114, label %if.then.i.do.end8.i_crit_edge, !prof !640

if.then.i.do.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

do.end.i114:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #14
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i114, %if.then.i.do.end8.i_crit_edge
  %call9.i = tail call i32 @rdma_reject(ptr noundef %cma_id, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 28) #11
  br label %isert_connect_request.exit

if.end10.i:                                       ; preds = %sw.bb
  br i1 %cmp.i112, label %do.end23.i, label %if.end10.i.do.end29.i_crit_edge, !prof !640

if.end10.i.do.end29.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29.i

do.end23.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %context, align 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, ptr noundef %cma_id, ptr noundef %30) #14
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end23.i, %if.end10.i.do.end29.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 3632) #16
  %tobool31.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool31.not.i, label %do.end29.i.do.end21_crit_edge, label %if.end33.i

do.end29.i.do.end21_crit_edge:                    ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.end33.i:                                       ; preds = %do.end29.i
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %call7.i.i.i, align 8
  %node.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 14
  %33 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %node.i.i, ptr %node.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %node.i.i, ptr %prev.i.i.i, align 8
  %login_comp.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 15
  %35 = ptrtoint ptr %login_comp.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %login_comp.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_completion.__key) #11
  %login_req_comp.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 16
  %36 = ptrtoint ptr %login_req_comp.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %login_req_comp.i.i, align 4
  %wait.i21.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i21.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_completion.__key) #11
  %rem_wait.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 29
  tail call void @__init_waitqueue_head(ptr noundef %rem_wait.i.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @isert_init_conn.__key) #11
  %kref.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #11
  %37 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %kref.i.i, align 4
  %mutex.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %mutex.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @isert_init_conn.__key.46) #11
  %release_work.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %release_work.i.i, i32 noundef 0) #11
  %38 = ptrtoint ptr %release_work.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %release_work.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @isert_init_conn.__key.48, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry7.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 25, i32 1
  %39 = ptrtoint ptr %entry7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry7.i.i, ptr %entry7.i.i, align 4
  %prev.i22.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 25, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry7.i.i, ptr %prev.i22.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 25, i32 2
  %41 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @isert_release_work, ptr %func.i.i, align 4
  %cm_id.i115 = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 18
  %42 = ptrtoint ptr %cm_id.i115 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %cma_id, ptr %cm_id.i115, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_mutex, i32 noundef 0) #11
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end33.i
  %.pn.in.i.i = phi ptr [ @device_list, %if.end33.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %43 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @device_list
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %ib_device.i.i = getelementptr i8, ptr %.pn.i.i, i32 -16
  %44 = ptrtoint ptr %ib_device.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ib_device.i.i, align 4
  %node_guid.i.i = getelementptr inbounds %struct.ib_device, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %node_guid.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %node_guid.i.i, align 8
  %48 = ptrtoint ptr %cma_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cma_id, align 4
  %node_guid2.i.i = getelementptr inbounds %struct.ib_device, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %node_guid2.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %node_guid2.i.i, align 8
  %cmp3.i.i = icmp eq i64 %47, %51
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %device.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -24
  %refcount.i.i = getelementptr i8, ptr %.pn.i.i, i32 -20
  %52 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %refcount.i.i, align 4
  %inc.i.i = add i32 %53, 1
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  %54 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp4.i.i = icmp sgt i32 %54, 1
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.then.i.i.isert_device_get.exit.i_crit_edge, !prof !640

if.then.i.i.isert_device_get.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_device_get.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef %device.0.le.i.i, i32 noundef %inc.i.i) #14
  br label %isert_device_get.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 32) #16
  %tobool19.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool19.not.i.i, label %isert_device_get.exit.thread.i, label %if.end22.i.i

isert_device_get.exit.thread.i:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  br label %if.then36.i

if.end22.i.i:                                     ; preds = %for.end.i.i
  %dev_node23.i.i = getelementptr inbounds %struct.isert_device, ptr %call7.i.i.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %dev_node23.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %dev_node23.i.i, ptr %dev_node23.i.i, align 8
  %prev.i.i101.i = getelementptr inbounds %struct.isert_device, ptr %call7.i.i.i.i, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %prev.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev_node23.i.i, ptr %prev.i.i101.i, align 4
  %58 = ptrtoint ptr %cma_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cma_id, align 4
  %ib_device25.i.i = getelementptr inbounds %struct.isert_device, ptr %call7.i.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %ib_device25.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %ib_device25.i.i, align 8
  %61 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp.i.i.i = icmp sgt i32 %61, 2
  br i1 %cmp.i.i.i, label %do.body6.i.i.i, label %if.end22.i.i.do.end23.i.i.i_crit_edge, !prof !640

if.end22.i.i.do.end23.i.i.i_crit_edge:            ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i.i.i

do.body6.i.i.i:                                   ; preds = %if.end22.i.i
  %max_send_sge.i.i.i = getelementptr inbounds %struct.ib_device, ptr %59, i32 0, i32 22, i32 10
  %62 = ptrtoint ptr %max_send_sge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_send_sge.i.i.i, align 8
  %max_recv_sge.i.i.i = getelementptr inbounds %struct.ib_device, ptr %59, i32 0, i32 22, i32 11
  %64 = ptrtoint ptr %max_recv_sge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_recv_sge.i.i.i, align 4
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef %63, i32 noundef %65) #14
  %.pr.i.i.i = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i.i)
  %cmp7.i.i.i = icmp sgt i32 %.pr.i.i.i, 2
  br i1 %cmp7.i.i.i, label %do.end17.i.i.i, label %do.body6.i.i.i.do.end23.i.i.i_crit_edge, !prof !640

do.body6.i.i.i.do.end23.i.i.i_crit_edge:          ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i.i.i

do.end17.i.i.i:                                   ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_sge_rd.i.i.i = getelementptr inbounds %struct.ib_device, ptr %59, i32 0, i32 22, i32 12
  %66 = ptrtoint ptr %max_sge_rd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_sge_rd.i.i.i, align 8
  %call20.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef %67) #14
  br label %do.end23.i.i.i

do.end23.i.i.i:                                   ; preds = %do.end17.i.i.i, %do.body6.i.i.i.do.end23.i.i.i_crit_edge, %if.end22.i.i.do.end23.i.i.i_crit_edge
  %call24.i.i.i = tail call ptr @__ib_alloc_pd(ptr noundef %59, i32 noundef 0, ptr noundef nonnull @.str.3) #11
  %pd.i.i.i = getelementptr inbounds %struct.isert_device, ptr %call7.i.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call24.i.i.i, ptr %pd.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call24.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %isert_create_device_ib_res.exit.i.i, label %isert_create_device_ib_res.exit.thread.i.i

isert_create_device_ib_res.exit.thread.i.i:       ; preds = %do.end23.i.i.i
  %device_cap_flags.i.i.i = getelementptr inbounds %struct.ib_device, ptr %59, i32 0, i32 22, i32 9
  %69 = ptrtoint ptr %device_cap_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %device_cap_flags.i.i.i, align 8
  %and.i.i.i = lshr i64 %70, 30
  %71 = trunc i64 %and.i.i.i to i8
  %72 = and i8 %71, 1
  %73 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %call7.i.i.i.i, align 8
  %refcount31.i.i = getelementptr inbounds %struct.isert_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %refcount31.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %refcount31.i.i, align 4
  %inc32.i.i = add i32 %75, 1
  store i32 %inc32.i.i, ptr %refcount31.i.i, align 4
  %76 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @device_list, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_node23.i.i, ptr noundef %76, ptr noundef nonnull @device_list) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %isert_create_device_ib_res.exit.thread.i.i.list_add_tail.exit.i.i_crit_edge

isert_create_device_ib_res.exit.thread.i.i.list_add_tail.exit.i.i_crit_edge: ; preds = %isert_create_device_ib_res.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i.i

isert_create_device_ib_res.exit.i.i:              ; preds = %do.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %call24.i.i.i to i32
  %call34.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %77) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %isert_device_get.exit.i

if.end.i.i.i.i:                                   ; preds = %isert_create_device_ib_res.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %dev_node23.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @device_list, i32 0, i32 1), align 4
  %78 = ptrtoint ptr %dev_node23.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @device_list, ptr %dev_node23.i.i, align 8
  %79 = ptrtoint ptr %prev.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev.i.i101.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %dev_node23.i.i, ptr %76, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %isert_create_device_ib_res.exit.thread.i.i.list_add_tail.exit.i.i_crit_edge
  %81 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp35.i.i = icmp sgt i32 %81, 1
  br i1 %cmp35.i.i, label %do.end45.i.i, label %list_add_tail.exit.i.i.isert_device_get.exit.i_crit_edge, !prof !640

list_add_tail.exit.i.i.isert_device_get.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_device_get.exit.i

do.end45.i.i:                                     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %refcount31.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %refcount31.i.i, align 4
  %call48.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %83) #14
  br label %isert_device_get.exit.i

isert_device_get.exit.i:                          ; preds = %do.end45.i.i, %list_add_tail.exit.i.i.isert_device_get.exit.i_crit_edge, %isert_create_device_ib_res.exit.i.i, %do.end.i.i, %if.then.i.i.isert_device_get.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call24.i.i.i, %isert_create_device_ib_res.exit.i.i ], [ %device.0.le.i.i, %do.end.i.i ], [ %device.0.le.i.i, %if.then.i.i.isert_device_get.exit.i_crit_edge ], [ %call7.i.i.i.i, %do.end45.i.i ], [ %call7.i.i.i.i, %list_add_tail.exit.i.i.isert_device_get.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  %cmp.i.i116 = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116, label %isert_device_get.exit.i.if.then36.i_crit_edge, label %if.end38.i

isert_device_get.exit.i.if.then36.i_crit_edge:    ; preds = %isert_device_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36.i

if.then36.i:                                      ; preds = %isert_device_get.exit.i.if.then36.i_crit_edge, %isert_device_get.exit.thread.i
  %retval.0.i131.i = phi ptr [ inttoptr (i32 -12 to ptr), %isert_device_get.exit.thread.i ], [ %retval.0.i.i, %isert_device_get.exit.i.if.then36.i_crit_edge ]
  %84 = ptrtoint ptr %retval.0.i131.i to i32
  br label %out.i

if.end38.i:                                       ; preds = %isert_device_get.exit.i
  %device39.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 22
  %85 = ptrtoint ptr %device39.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %retval.0.i.i, ptr %device39.i, align 4
  %86 = ptrtoint ptr %cma_id to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cma_id, align 4
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9248, i32 noundef 3520, i32 noundef 2) #17
  %login_desc.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %login_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call1.i.i.i.i.i, ptr %login_desc.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end38.i.out_conn_dev.i_crit_edge, label %if.end.i.i

if.end38.i.out_conn_dev.i_crit_edge:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_conn_dev.i

if.end.i.i:                                       ; preds = %if.end38.i
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %87, align 8
  %call.i.i.i102.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i.i.i.i) #11
  br i1 %call.i.i.i102.i, label %land.rhs.i.i.i.i, label %if.end39.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.ib_dma_map_single.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !642

land.rhs.i.i.i.i.ib_dma_map_single.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = tail call ptr @dev_driver_string(ptr noundef %90) #11
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %94, %if.end.i.i.i.i.i ], [ %92, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #11
  br label %ib_dma_map_single.exit.i.i

if.end39.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %90, ptr noundef nonnull %call1.i.i.i.i.i, i32 noundef 9216) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %95 = load ptr, ptr @mem_map, align 4
  %96 = ptrtoint ptr %call1.i.i.i.i.i to i32
  %sub.i.i.i.i = add i32 %96, 1073741824
  %shr.i.i.i.i = lshr exact i32 %sub.i.i.i.i, 12
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %95, i32 %shr.i.i.i.i
  %call41.i.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %90, ptr noundef %add.ptr.i.i.i.i, i32 noundef 0, i32 noundef 9216, i32 noundef 2, i32 noundef 0) #11
  br label %ib_dma_map_single.exit.i.i

ib_dma_map_single.exit.i.i:                       ; preds = %if.end39.i.i.i.i, %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.ib_dma_map_single.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %call41.i.i.i.i, %if.end39.i.i.i.i ], [ -1, %dev_name.exit.i.i.i.i ], [ -1, %land.rhs.i.i.i.i.ib_dma_map_single.exit.i.i_crit_edge ]
  %conv2.i.i.i = zext i32 %retval.0.i.i.i.i to i64
  %97 = ptrtoint ptr %login_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %login_desc.i.i, align 8
  %dma_addr.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv2.i.i.i, ptr %dma_addr.i.i, align 8
  %100 = load ptr, ptr %login_desc.i.i, align 8
  %dma_addr6.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %dma_addr6.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %dma_addr6.i.i, align 8
  %103 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %87, align 8
  %conv.i.i.i = trunc i64 %102 to i32
  tail call void @debug_dma_mapping_error(ptr noundef %104, i32 noundef %conv.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv.i.i.i)
  %cmp.i.i.i103.i = icmp eq i32 %conv.i.i.i, -1
  br i1 %cmp.i.i.i103.i, label %do.end.i104.i, label %if.end13.i.i

do.end.i104.i:                                    ; preds = %ib_dma_map_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, i32 noundef -12) #14
  %105 = ptrtoint ptr %login_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %login_desc.i.i, align 8
  %dma_addr12.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %dma_addr12.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 0, ptr %dma_addr12.i.i, align 8
  br label %out_free_login_desc.i.i

if.end13.i.i:                                     ; preds = %ib_dma_map_single.exit.i.i
  %call1.i.i.i59.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8268, i32 noundef 3520, i32 noundef 2) #17
  %login_rsp_buf.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 6
  %108 = ptrtoint ptr %login_rsp_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call1.i.i.i59.i.i, ptr %login_rsp_buf.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %call1.i.i.i59.i.i, null
  br i1 %tobool16.not.i.i, label %if.end13.i.i.out_unmap_login_desc.i.i_crit_edge, label %if.end18.i.i

if.end13.i.i.out_unmap_login_desc.i.i_crit_edge:  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unmap_login_desc.i.i

if.end18.i.i:                                     ; preds = %if.end13.i.i
  %109 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %87, align 8
  %call.i.i60.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i.i59.i.i) #11
  br i1 %call.i.i60.i.i, label %land.rhs.i.i62.i.i, label %if.end39.i.i75.i.i

land.rhs.i.i62.i.i:                               ; preds = %if.end18.i.i
  %.b1.i.i61.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i61.i.i, label %land.rhs.i.i62.i.i.ib_dma_map_single.exit78.i.i_crit_edge, label %if.then.i.i66.i.i, !prof !642

land.rhs.i.i62.i.i.ib_dma_map_single.exit78.i.i_crit_edge: ; preds = %land.rhs.i.i62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit78.i.i

if.then.i.i66.i.i:                                ; preds = %land.rhs.i.i62.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i63.i.i = tail call ptr @dev_driver_string(ptr noundef %110) #11
  %init_name.i.i.i64.i.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %init_name.i.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init_name.i.i.i64.i.i, align 8
  %tobool.not.i.i.i65.i.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i.i65.i.i, label %if.end.i.i.i67.i.i, label %if.then.i.i66.i.i.dev_name.exit.i.i69.i.i_crit_edge

if.then.i.i66.i.i.dev_name.exit.i.i69.i.i_crit_edge: ; preds = %if.then.i.i66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i69.i.i

if.end.i.i.i67.i.i:                               ; preds = %if.then.i.i66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %110, align 4
  br label %dev_name.exit.i.i69.i.i

dev_name.exit.i.i69.i.i:                          ; preds = %if.end.i.i.i67.i.i, %if.then.i.i66.i.i.dev_name.exit.i.i69.i.i_crit_edge
  %retval.0.i.i.i68.i.i = phi ptr [ %114, %if.end.i.i.i67.i.i ], [ %112, %if.then.i.i66.i.i.dev_name.exit.i.i69.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i63.i.i, ptr noundef %retval.0.i.i.i68.i.i) #11
  br label %ib_dma_map_single.exit78.i.i

if.end39.i.i75.i.i:                               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %110, ptr noundef nonnull %call1.i.i.i59.i.i, i32 noundef 8268) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %115 = load ptr, ptr @mem_map, align 4
  %116 = ptrtoint ptr %call1.i.i.i59.i.i to i32
  %sub.i.i70.i.i = add i32 %116, 1073741824
  %shr.i.i71.i.i = lshr exact i32 %sub.i.i70.i.i, 12
  %add.ptr.i.i72.i.i = getelementptr %struct.page, ptr %115, i32 %shr.i.i71.i.i
  %call41.i.i74.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %110, ptr noundef %add.ptr.i.i72.i.i, i32 noundef 0, i32 noundef 8268, i32 noundef 1, i32 noundef 0) #11
  br label %ib_dma_map_single.exit78.i.i

ib_dma_map_single.exit78.i.i:                     ; preds = %if.end39.i.i75.i.i, %dev_name.exit.i.i69.i.i, %land.rhs.i.i62.i.i.ib_dma_map_single.exit78.i.i_crit_edge
  %retval.0.i.i76.i.i = phi i32 [ %call41.i.i74.i.i, %if.end39.i.i75.i.i ], [ -1, %dev_name.exit.i.i69.i.i ], [ -1, %land.rhs.i.i62.i.i.ib_dma_map_single.exit78.i.i_crit_edge ]
  %conv2.i77.i.i = zext i32 %retval.0.i.i76.i.i to i64
  %login_rsp_dma.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 9
  %117 = ptrtoint ptr %login_rsp_dma.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv2.i77.i.i, ptr %login_rsp_dma.i.i, align 8
  %118 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %87, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %119, i32 noundef %retval.0.i.i76.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i76.i.i)
  %cmp.i.i79.i.i = icmp eq i32 %retval.0.i.i76.i.i, -1
  br i1 %cmp.i.i79.i.i, label %do.end27.i.i, label %if.end44.i

do.end27.i.i:                                     ; preds = %ib_dma_map_single.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, i32 noundef -12) #14
  %120 = ptrtoint ptr %login_rsp_dma.i.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 0, ptr %login_rsp_dma.i.i, align 8
  %121 = ptrtoint ptr %login_rsp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %login_rsp_buf.i.i, align 4
  tail call void @kfree(ptr noundef %122) #11
  br label %out_unmap_login_desc.i.i

out_unmap_login_desc.i.i:                         ; preds = %do.end27.i.i, %if.end13.i.i.out_unmap_login_desc.i.i_crit_edge
  %123 = ptrtoint ptr %login_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %login_desc.i.i, align 8
  %dma_addr34.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %dma_addr34.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %dma_addr34.i.i, align 8
  %127 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %87, align 8
  %conv.i81.i.i = trunc i64 %126 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %128, i32 noundef %conv.i81.i.i, i32 noundef 9216, i32 noundef 2, i32 noundef 0) #11
  br label %out_free_login_desc.i.i

out_free_login_desc.i.i:                          ; preds = %out_unmap_login_desc.i.i, %do.end.i104.i
  %129 = ptrtoint ptr %login_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %login_desc.i.i, align 8
  tail call void @kfree(ptr noundef %130) #11
  br label %out_conn_dev.i

if.end44.i:                                       ; preds = %ib_dma_map_single.exit78.i.i
  %param.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %131 = ptrtoint ptr %device39.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device39.i, align 4
  %ib_device.i106.i = getelementptr inbounds %struct.isert_device, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %ib_device.i106.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ib_device.i106.i, align 4
  %initiator_depth.i.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 3
  %135 = ptrtoint ptr %initiator_depth.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %initiator_depth.i.i, align 2
  %max_qp_init_rd_atom.i.i = getelementptr inbounds %struct.ib_device, ptr %134, i32 0, i32 22, i32 20
  %137 = ptrtoint ptr %max_qp_init_rd_atom.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_qp_init_rd_atom.i.i, align 8
  %conv1.i.i = zext i8 %136 to i32
  %conv2.i.i = and i32 %138, 255
  %139 = tail call i32 @llvm.umin.i32(i32 %conv2.i.i, i32 %conv1.i.i) #11
  %initiator_depth6.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 2
  %140 = ptrtoint ptr %initiator_depth6.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %initiator_depth6.i.i, align 8
  %141 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %141)
  %cmp7.i.i = icmp sgt i32 %141, 2
  br i1 %cmp7.i.i, label %do.end.i108.i, label %if.end44.i.do.end14.i.i_crit_edge, !prof !640

if.end44.i.do.end14.i.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14.i.i

do.end.i108.i:                                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef %139) #14
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end.i108.i, %if.end44.i.do.end14.i.i_crit_edge
  %142 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %param.i, align 4
  %tobool15.not.i.i = icmp eq ptr %143, null
  br i1 %tobool15.not.i.i, label %do.end14.i.i.isert_set_nego_params.exit.i_crit_edge, label %if.then16.i.i

do.end14.i.i.isert_set_nego_params.exit.i_crit_edge: ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_set_nego_params.exit.i

if.then16.i.i:                                    ; preds = %do.end14.i.i
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %143, align 1
  %146 = and i8 %145, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool19.not.i109.i = icmp eq i8 %146, 0
  br i1 %tobool19.not.i109.i, label %land.rhs.i.i, label %if.end43.critedge.i.i

land.rhs.i.i:                                     ; preds = %if.then16.i.i
  %device_cap_flags.i.i = getelementptr inbounds %struct.ib_device, ptr %134, i32 0, i32 22, i32 9
  %147 = ptrtoint ptr %device_cap_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %device_cap_flags.i.i, align 8
  %and20.i.i = and i64 %148, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20.i.i)
  %tobool21.not.i.i = icmp eq i64 %and20.i.i, 0
  %snd_w_inv.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 27
  %and20.lobit.i.i = lshr exact i64 %and20.i.i, 21
  %149 = trunc i64 %and20.lobit.i.i to i8
  %150 = ptrtoint ptr %snd_w_inv.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %snd_w_inv.i.i, align 1
  br i1 %tobool21.not.i.i, label %land.rhs.i.i.isert_set_nego_params.exit.i_crit_edge, label %do.body25.i.i

land.rhs.i.i.isert_set_nego_params.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_set_nego_params.exit.i

do.body25.i.i:                                    ; preds = %land.rhs.i.i
  %151 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp26.i.i = icmp sgt i32 %151, 1
  br i1 %cmp26.i.i, label %do.end37.i.i, label %do.body25.i.i.isert_set_nego_params.exit.i_crit_edge, !prof !640

do.body25.i.i.isert_set_nego_params.exit.i_crit_edge: ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_set_nego_params.exit.i

do.end37.i.i:                                     ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call39.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83) #14
  br label %isert_set_nego_params.exit.i

if.end43.critedge.i.i:                            ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %snd_w_inv.c.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 27
  %152 = ptrtoint ptr %snd_w_inv.c.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %snd_w_inv.c.i.i, align 1
  br label %isert_set_nego_params.exit.i

isert_set_nego_params.exit.i:                     ; preds = %if.end43.critedge.i.i, %do.end37.i.i, %do.body25.i.i.isert_set_nego_params.exit.i_crit_edge, %land.rhs.i.i.isert_set_nego_params.exit.i_crit_edge, %do.end14.i.i.isert_set_nego_params.exit.i_crit_edge
  %153 = ptrtoint ptr %device39.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device39.i, align 4
  %ib_device.i110.i = getelementptr inbounds %struct.isert_device, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %ib_device.i110.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ib_device.i110.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr.i.i) #11
  %call.i111.i = tail call ptr @ib_cq_pool_get(ptr noundef %156, i32 noundef 268, i32 noundef -1, i32 noundef 1) #11
  %cq.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 20
  %157 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i111.i, ptr %cq.i.i, align 4
  %cmp.i.i112.i = icmp ugt ptr %call.i111.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i112.i, label %do.end.i113.i, label %if.end.i115.i

do.end.i113.i:                                    ; preds = %isert_set_nego_params.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88) #14
  %158 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cq.i.i, align 4
  br label %isert_create_qp.exit.i

if.end.i115.i:                                    ; preds = %isert_set_nego_params.exit.i
  %cq_size8.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 21
  %160 = ptrtoint ptr %cq_size8.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 268, ptr %cq_size8.i.i, align 8
  %161 = getelementptr inbounds i8, ptr %attr.i.i, i32 16
  %162 = call ptr @memset(ptr %161, i32 0, i32 56)
  %163 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @isert_qp_event_callback, ptr %attr.i.i, align 4
  %qp_context.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 1
  %164 = ptrtoint ptr %qp_context.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call7.i.i.i, ptr %qp_context.i.i, align 4
  %send_cq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 2
  %165 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i111.i, ptr %send_cq.i.i, align 4
  %recv_cq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 3
  %166 = ptrtoint ptr %recv_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call.i111.i, ptr %recv_cq.i.i, align 4
  %cap.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6
  %167 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 139, ptr %cap.i.i, align 4
  %max_recv_wr.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 1
  %168 = ptrtoint ptr %max_recv_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 129, ptr %max_recv_wr.i.i, align 4
  %169 = ptrtoint ptr %ib_device.i110.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ib_device.i110.i, align 4
  %port_num.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 7
  %171 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port_num.i.i, align 4
  %173 = load i32, ptr @isert_sg_tablesize, align 4
  %call13.i.i = tail call i32 @rdma_rw_mr_factor(ptr noundef %170, i32 noundef %172, i32 noundef %173) #11
  %mul.i.i = shl i32 %call13.i.i, 7
  %max_rdma_ctxs.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 5
  %174 = ptrtoint ptr %max_rdma_ctxs.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %mul.i.i, ptr %max_rdma_ctxs.i.i, align 4
  %175 = ptrtoint ptr %ib_device.i110.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ib_device.i110.i, align 4
  %max_send_sge.i.i = getelementptr inbounds %struct.ib_device, ptr %176, i32 0, i32 22, i32 10
  %177 = ptrtoint ptr %max_send_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %max_send_sge.i.i, align 8
  %max_send_sge17.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 2
  %179 = ptrtoint ptr %max_send_sge17.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %max_send_sge17.i.i, align 4
  %max_recv_sge.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 6, i32 3
  %180 = ptrtoint ptr %max_recv_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %max_recv_sge.i.i, align 4
  %sq_sig_type.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 7
  %181 = ptrtoint ptr %sq_sig_type.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1, ptr %sq_sig_type.i.i, align 4
  %qp_type.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 8
  %182 = ptrtoint ptr %qp_type.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 2, ptr %qp_type.i.i, align 4
  %183 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %154, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i114.i = icmp eq i8 %184, 0
  br i1 %tobool.not.i114.i, label %if.end.i115.i.if.end20.i.i_crit_edge, label %if.then19.i.i

if.end.i115.i.if.end20.i.i_crit_edge:             ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i

if.then19.i.i:                                    ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #13
  %create_flags.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr.i.i, i32 0, i32 9
  %185 = ptrtoint ptr %create_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %create_flags.i.i, align 4
  %or.i.i = or i32 %186, 64
  store i32 %or.i.i, ptr %create_flags.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then19.i.i, %if.end.i115.i.if.end20.i.i_crit_edge
  %pd.i.i = getelementptr inbounds %struct.isert_device, ptr %154, i32 0, i32 3
  %187 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pd.i.i, align 4
  %call21.i.i = call i32 @rdma_create_qp(ptr noundef %cma_id, ptr noundef %188, ptr noundef nonnull %attr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end32.i.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88, i32 noundef %call21.i.i) #14
  %189 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cq.i.i, align 4
  %191 = ptrtoint ptr %cq_size8.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cq_size8.i.i, align 8
  call void @ib_cq_pool_put(ptr noundef %190, i32 noundef %192) #11
  %193 = inttoptr i32 %call21.i.i to ptr
  br label %isert_create_qp.exit.i

if.end32.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %qp.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 2
  %194 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %qp.i.i, align 4
  br label %isert_create_qp.exit.i

isert_create_qp.exit.i:                           ; preds = %if.end32.i.i, %do.end26.i.i, %do.end.i113.i
  %retval.0.i116.i = phi ptr [ %159, %do.end.i113.i ], [ %193, %do.end26.i.i ], [ %195, %if.end32.i.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr.i.i) #11
  %qp.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 19
  %196 = ptrtoint ptr %qp.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %retval.0.i116.i, ptr %qp.i, align 8
  %cmp.i117.i = icmp ugt ptr %retval.0.i116.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117.i, label %if.then48.i, label %if.end51.i

if.then48.i:                                      ; preds = %isert_create_qp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %retval.0.i116.i to i32
  br label %out_rsp_dma_map.i

if.end51.i:                                       ; preds = %isert_create_qp.exit.i
  %call52.i = call fastcc i32 @isert_login_post_recv(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end51.i.out_destroy_qp.i_crit_edge

if.end51.i.out_destroy_qp.i_crit_edge:            ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_destroy_qp.i

if.end55.i:                                       ; preds = %if.end51.i
  %call56.i = call fastcc i32 @isert_rdma_accept(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %if.end55.i.out_destroy_qp.i_crit_edge

if.end55.i.out_destroy_qp.i_crit_edge:            ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_destroy_qp.i

if.end59.i:                                       ; preds = %if.end55.i
  %mutex.i = getelementptr inbounds %struct.isert_np, ptr %23, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %accepted.i = getelementptr inbounds %struct.isert_np, ptr %23, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.isert_np, ptr %23, i32 0, i32 4, i32 1
  %198 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %prev.i.i, align 4
  %call.i.i118.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %199, ptr noundef %accepted.i) #11
  br i1 %call.i.i118.i, label %if.end.i.i.i, label %if.end59.i.isert_connect_request.exit.thread_crit_edge

if.end59.i.isert_connect_request.exit.thread_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_connect_request.exit.thread

if.end.i.i.i:                                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  %200 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %node.i.i, ptr %prev.i.i, align 4
  %201 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %accepted.i, ptr %node.i.i, align 4
  %202 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %199, ptr %prev.i.i.i, align 8
  %203 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %node.i.i, ptr %199, align 4
  br label %isert_connect_request.exit.thread

isert_connect_request.exit.thread:                ; preds = %if.end.i.i.i, %if.end59.i.isert_connect_request.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %cleanup81

out_destroy_qp.i:                                 ; preds = %if.end55.i.out_destroy_qp.i_crit_edge, %if.end51.i.out_destroy_qp.i_crit_edge
  %ret.0.i = phi i32 [ %call52.i, %if.end51.i.out_destroy_qp.i_crit_edge ], [ %call56.i, %if.end55.i.out_destroy_qp.i_crit_edge ]
  %204 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %qp.i, align 8
  %call.i.i120.i = call i32 @ib_destroy_qp_user(ptr noundef %205, ptr noundef null) #11
  %206 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cq.i.i, align 4
  %cq_size.i.i = getelementptr inbounds %struct.isert_conn, ptr %call7.i.i.i, i32 0, i32 21
  %208 = ptrtoint ptr %cq_size.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %cq_size.i.i, align 8
  call void @ib_cq_pool_put(ptr noundef %207, i32 noundef %209) #11
  br label %out_rsp_dma_map.i

out_rsp_dma_map.i:                                ; preds = %out_destroy_qp.i, %if.then48.i
  %ret.1.i = phi i32 [ %197, %if.then48.i ], [ %ret.0.i, %out_destroy_qp.i ]
  %210 = ptrtoint ptr %device39.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %device39.i, align 4
  %ib_device.i123.i = getelementptr inbounds %struct.isert_device, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %ib_device.i123.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ib_device.i123.i, align 4
  %214 = ptrtoint ptr %login_rsp_dma.i.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %login_rsp_dma.i.i, align 8
  %216 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %213, align 8
  %conv.i.i125.i = trunc i64 %215 to i32
  call void @dma_unmap_page_attrs(ptr noundef %217, i32 noundef %conv.i.i125.i, i32 noundef 8268, i32 noundef 1, i32 noundef 0) #11
  %218 = ptrtoint ptr %login_rsp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %login_rsp_buf.i.i, align 4
  call void @kfree(ptr noundef %219) #11
  %220 = ptrtoint ptr %login_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %login_desc.i.i, align 8
  %dma_addr.i128.i = getelementptr inbounds %struct.iser_rx_desc, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %dma_addr.i128.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %dma_addr.i128.i, align 8
  %224 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %213, align 8
  %conv.i7.i.i = trunc i64 %223 to i32
  call void @dma_unmap_page_attrs(ptr noundef %225, i32 noundef %conv.i7.i.i, i32 noundef 9216, i32 noundef 2, i32 noundef 0) #11
  %226 = ptrtoint ptr %login_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %login_desc.i.i, align 8
  call void @kfree(ptr noundef %227) #11
  br label %out_conn_dev.i

out_conn_dev.i:                                   ; preds = %out_rsp_dma_map.i, %out_free_login_desc.i.i, %if.end38.i.out_conn_dev.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %out_rsp_dma_map.i ], [ -12, %out_free_login_desc.i.i ], [ -12, %if.end38.i.out_conn_dev.i_crit_edge ]
  call fastcc void @isert_device_put(ptr noundef %retval.0.i.i) #11
  br label %out.i

out.i:                                            ; preds = %out_conn_dev.i, %if.then36.i
  %ret.3.i = phi i32 [ %84, %if.then36.i ], [ %ret.2.i, %out_conn_dev.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %call61.i = call i32 @rdma_reject(ptr noundef %cma_id, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 28) #11
  br label %isert_connect_request.exit

isert_connect_request.exit:                       ; preds = %out.i, %do.end8.i
  %retval.0.i = phi i32 [ %ret.3.i, %out.i ], [ %call9.i, %do.end8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool17.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool17.not, label %isert_connect_request.exit.cleanup81_crit_edge, label %isert_connect_request.exit.do.end21_crit_edge

isert_connect_request.exit.do.end21_crit_edge:    ; preds = %isert_connect_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

isert_connect_request.exit.cleanup81_crit_edge:   ; preds = %isert_connect_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup81

do.end21:                                         ; preds = %isert_connect_request.exit.do.end21_crit_edge, %do.end29.i.do.end21_crit_edge
  %retval.0.i142 = phi i32 [ %retval.0.i, %isert_connect_request.exit.do.end21_crit_edge ], [ -12, %do.end29.i.do.end21_crit_edge ]
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i142) #14
  br label %cleanup81

sw.bb25:                                          ; preds = %if.end14
  %qp.i117 = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 2
  %228 = ptrtoint ptr %qp.i117 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %qp.i117, align 4
  %qp_context.i = getelementptr inbounds %struct.ib_qp, ptr %229, i32 0, i32 16
  %230 = ptrtoint ptr %qp_context.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %qp_context.i, align 4
  %232 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %context, align 4
  %234 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %234)
  %cmp.i119 = icmp sgt i32 %234, 1
  br i1 %cmp.i119, label %do.end.i121, label %sw.bb25.do.end4.i123_crit_edge, !prof !640

sw.bb25.do.end4.i123_crit_edge:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i123

do.end.i121:                                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %call.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.122, ptr noundef %231) #14
  br label %do.end4.i123

do.end4.i123:                                     ; preds = %do.end.i121, %sw.bb25.do.end4.i123_crit_edge
  %mutex.i122 = getelementptr inbounds %struct.isert_conn, ptr %231, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %mutex.i122, i32 noundef 0) #11
  %235 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 1, ptr %231, align 8
  %kref.i = getelementptr inbounds %struct.isert_conn, ptr %231, i32 0, i32 24
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #11
  %236 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #11, !srcloc !643
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %236, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end4.i123.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !640

do.end4.i123.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end4.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end4.i123
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %237 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %237)
  %.not.i.i.i.i.i = icmp sgt i32 %237, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !642

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end4.i123.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end4.i123.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i122) #11
  %mutex6.i = getelementptr inbounds %struct.isert_np, ptr %233, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex6.i, i32 noundef 0) #11
  %node.i = getelementptr inbounds %struct.isert_conn, ptr %231, i32 0, i32 14
  %pending.i = getelementptr inbounds %struct.isert_np, ptr %233, i32 0, i32 5
  %call.i.i.i124 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #11
  br i1 %call.i.i.i124, label %if.end.i.i.i126, label %kref_get.exit.i.__list_del_entry.exit.i.i_crit_edge

kref_get.exit.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i126:                                  ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i125 = getelementptr inbounds %struct.isert_conn, ptr %231, i32 0, i32 14, i32 1
  %238 = ptrtoint ptr %prev.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %prev.i.i.i125, align 4
  %240 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %239, ptr %prev1.i.i.i.i, align 4
  %243 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %243)
  store volatile ptr %241, ptr %239, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i126, %kref_get.exit.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.isert_np, ptr %233, i32 0, i32 5, i32 1
  %244 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i127 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %245, ptr noundef %pending.i) #11
  br i1 %call.i.i.i.i127, label %if.end.i.i.i.i128, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit.i

if.end.i.i.i.i128:                                ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %246 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %node.i, ptr %prev.i2.i.i, align 4
  %247 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %pending.i, ptr %node.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.isert_conn, ptr %231, i32 0, i32 14, i32 1
  %248 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %245, ptr %prev3.i.i.i.i, align 4
  %249 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile ptr %node.i, ptr %245, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i128, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex6.i) #11
  %250 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %250)
  %cmp9.i = icmp sgt i32 %250, 1
  br i1 %cmp9.i, label %do.end19.i, label %list_move_tail.exit.i.isert_connected_handler.exit_crit_edge, !prof !640

list_move_tail.exit.i.isert_connected_handler.exit_crit_edge: ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_connected_handler.exit

do.end19.i:                                       ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.122, ptr noundef %233) #14
  br label %isert_connected_handler.exit

isert_connected_handler.exit:                     ; preds = %do.end19.i, %list_move_tail.exit.i.isert_connected_handler.exit_crit_edge
  %sem.i = getelementptr inbounds %struct.isert_np, ptr %233, i32 0, i32 1
  tail call void @up(ptr noundef %sem.i) #11
  br label %cleanup81

sw.bb26:                                          ; preds = %if.end14.sw.bb26_crit_edge, %if.end14.sw.bb26_crit_edge158, %if.end14.sw.bb26_crit_edge159
  tail call fastcc void @isert_disconnected_handler(ptr noundef %cma_id)
  br label %cleanup81

sw.bb29:                                          ; preds = %if.end14
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 2
  %251 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %qp, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %252, i32 0, i32 16
  %253 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %qp_context, align 4
  %dev_removed = getelementptr inbounds %struct.isert_conn, ptr %254, i32 0, i32 30
  %255 = ptrtoint ptr %dev_removed to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 1, ptr %dev_removed, align 4
  tail call fastcc void @isert_disconnected_handler(ptr noundef %cma_id)
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 701) #11
  %256 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %254, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %257)
  %cmp38 = icmp eq i32 %257, 5
  br i1 %cmp38, label %sw.bb29.if.end51_crit_edge, label %if.then39

sw.bb29.if.end51_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then39:                                        ; preds = %sw.bb29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %258 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %rem_wait = getelementptr inbounds %struct.isert_conn, ptr %254, i32 0, i32 29
  %call41150 = call i32 @prepare_to_wait_event(ptr noundef %rem_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %259 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %254, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %260)
  %cmp43151 = icmp eq i32 %260, 5
  br i1 %cmp43151, label %if.then39.for.end_crit_edge, label %if.then39.if.end45_crit_edge

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  br label %if.end45

if.then39.for.end_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end45:                                         ; preds = %cleanup.if.end45_crit_edge, %if.then39.if.end45_crit_edge
  %call41152 = phi i32 [ %call41, %cleanup.if.end45_crit_edge ], [ %call41150, %if.then39.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41152)
  %tobool46.not = icmp eq i32 %call41152, 0
  br i1 %tobool46.not, label %cleanup, label %if.end45.__out_crit_edge

if.end45.__out_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end45
  call void @schedule() #11
  %call41 = call i32 @prepare_to_wait_event(ptr noundef %rem_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %261 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %254, align 8
  %cmp43 = icmp eq i32 %262, 5
  br i1 %cmp43, label %cleanup.for.end_crit_edge, label %cleanup.if.end45_crit_edge

cleanup.if.end45_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then39.for.end_crit_edge
  call void @finish_wait(ptr noundef %rem_wait, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end45.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end51

if.end51:                                         ; preds = %__out, %sw.bb29.if.end51_crit_edge
  call void @kfree(ptr noundef %254) #11
  br label %cleanup81

do.body54:                                        ; preds = %if.end14
  %263 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %263)
  %cmp55 = icmp sgt i32 %263, 1
  br i1 %cmp55, label %do.end65, label %do.body54.sw.bb73_crit_edge, !prof !640

do.body54.sw.bb73_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb73

do.end65:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %status67 = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %264 = ptrtoint ptr %status67 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %status67, align 4
  %call68 = tail call ptr @rdma_reject_msg(ptr noundef %cma_id, i32 noundef %265) #15
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, ptr noundef %call68) #14
  br label %sw.bb73

sw.bb73:                                          ; preds = %do.end65, %do.body54.sw.bb73_crit_edge, %if.end14.sw.bb73_crit_edge, %if.end14.sw.bb73_crit_edge160
  %qp.i129 = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 2
  %266 = ptrtoint ptr %qp.i129 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %qp.i129, align 4
  %qp_context.i130 = getelementptr inbounds %struct.ib_qp, ptr %267, i32 0, i32 16
  %268 = ptrtoint ptr %qp_context.i130 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %qp_context.i130, align 4
  %qp1.i = getelementptr inbounds %struct.isert_conn, ptr %269, i32 0, i32 19
  %270 = ptrtoint ptr %qp1.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %qp1.i, align 8
  tail call void @ib_drain_qp(ptr noundef %271) #11
  %node.i131 = getelementptr inbounds %struct.isert_conn, ptr %269, i32 0, i32 14
  %call.i.i.i132 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i131) #11
  br i1 %call.i.i.i132, label %if.end.i.i.i135, label %sw.bb73.isert_connect_error.exit_crit_edge

sw.bb73.isert_connect_error.exit_crit_edge:       ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_connect_error.exit

if.end.i.i.i135:                                  ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i133 = getelementptr inbounds %struct.isert_conn, ptr %269, i32 0, i32 14, i32 1
  %272 = ptrtoint ptr %prev.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %prev.i.i.i133, align 4
  %274 = ptrtoint ptr %node.i131 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %node.i131, align 4
  %prev1.i.i.i.i134 = getelementptr inbounds %struct.list_head, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %prev1.i.i.i.i134 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %273, ptr %prev1.i.i.i.i134, align 4
  %277 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile ptr %275, ptr %273, align 4
  br label %isert_connect_error.exit

isert_connect_error.exit:                         ; preds = %if.end.i.i.i135, %sw.bb73.isert_connect_error.exit_crit_edge
  %278 = ptrtoint ptr %node.i131 to i32
  call void @__asan_store4_noabort(i32 %278)
  store volatile ptr %node.i131, ptr %node.i131, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.isert_conn, ptr %269, i32 0, i32 14, i32 1
  %279 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %node.i131, ptr %prev.i3.i.i, align 4
  %cm_id.i136 = getelementptr inbounds %struct.isert_conn, ptr %269, i32 0, i32 18
  %280 = ptrtoint ptr %cm_id.i136 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr null, ptr %cm_id.i136, align 4
  tail call fastcc void @isert_put_conn(ptr noundef %269) #11
  br label %cleanup81

do.end77:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22, i32 noundef %20) #14
  br label %cleanup81

cleanup81:                                        ; preds = %do.end77, %isert_connect_error.exit, %if.end51, %sw.bb26, %isert_connected_handler.exit, %do.end21, %isert_connect_request.exit.cleanup81_crit_edge, %isert_connect_request.exit.thread, %do.end20.i, %do.end12.i, %sw.bb5.i.cleanup81_crit_edge, %sw.bb.i
  %retval.0 = phi i32 [ 1, %if.end51 ], [ 0, %do.end77 ], [ -1, %isert_connect_error.exit ], [ 0, %sw.bb26 ], [ 0, %isert_connected_handler.exit ], [ %retval.0.i142, %do.end21 ], [ 0, %isert_connect_request.exit.cleanup81_crit_edge ], [ -1, %sw.bb.i ], [ -1, %sw.bb5.i.cleanup81_crit_edge ], [ -1, %do.end12.i ], [ -1, %do.end20.i ], [ 0, %isert_connect_request.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_afonly(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_listen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isert_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #11
  %1 = load ptr, ptr @isert_release_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #11
  %2 = load ptr, ptr @isert_comp_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #11
  tail call void @iscsit_unregister_transport(ptr noundef nonnull @iser_target_transport) #11
  %3 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge, !prof !640

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_unregister_transport(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.301, i32 noundef 18, i32 noundef 0) #11
  store ptr %call, ptr @isert_comp_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef nonnull @.str.303) #14
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #11
  %mul = shl i32 %call4.i.i, 2
  %1 = tail call i32 @llvm.smax.i32(i32 %mul, i32 512)
  %call4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.304, i32 noundef 2, i32 noundef %1) #11
  store ptr %call4, ptr @isert_release_wq, align 4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.303) #14
  %2 = load ptr, ptr @isert_comp_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i
  tail call void @iscsit_register_transport(ptr noundef nonnull @iser_target_transport) #11
  %3 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp14 = icmp sgt i32 %3, 1
  br i1 %cmp14, label %do.end20, label %if.end12.cleanup_crit_edge, !prof !640

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.303) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end12.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -12, %do.end9 ], [ -12, %do.end ], [ 0, %do.end20 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_sg_tablesize_set(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #11
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %n, align 4
  %call = call i32 @kstrtoint(ptr noundef %val, i32 noundef 10, ptr noundef nonnull %n) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  %3 = add i32 %2, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3969, i32 %3)
  %4 = icmp ult i32 %3, -3969
  br i1 %4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = call i32 @param_set_int(ptr noundef %val, ptr noundef %kp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_event_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_disconnected_handler(ptr nocapture noundef readonly %cma_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 2
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %mutex = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %5, label %do.body [
    i32 4, label %entry.sw.epilog_crit_edge
    i32 1, label %do.body.i
    i32 2, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge2
  ]

entry.sw.bb2_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body.i:                                        ; preds = %entry
  %7 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp sgt i32 %7, 1
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end8.i_crit_edge, !prof !640

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef %3, i32 noundef 1) #14
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.body.i.do.end8.i_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %3, align 8
  %cm_id.i = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cm_id.i, align 4
  %call10.i = tail call i32 @rdma_disconnect(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.end8.i.isert_conn_terminate.exit_crit_edge, label %do.body13.i

do.end8.i.isert_conn_terminate.exit_crit_edge:    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_conn_terminate.exit

do.body13.i:                                      ; preds = %do.end8.i
  %11 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14.i = icmp sgt i32 %11, 0
  br i1 %cmp14.i, label %do.end24.i, label %do.body13.i.isert_conn_terminate.exit_crit_edge, !prof !640

do.body13.i.isert_conn_terminate.exit_crit_edge:  ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_conn_terminate.exit

do.end24.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129, ptr noundef %3) #14
  br label %isert_conn_terminate.exit

isert_conn_terminate.exit:                        ; preds = %do.end24.i, %do.body13.i.isert_conn_terminate.exit_crit_edge, %do.end8.i.isert_conn_terminate.exit_crit_edge
  %qp1 = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %qp1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp1, align 8
  tail call void @ib_drain_qp(ptr noundef %13) #11
  %14 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cm_id.i, align 4
  %context.i = getelementptr inbounds %struct.rdma_cm_id, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context.i, align 4
  %mutex.i = getelementptr inbounds %struct.isert_np, ptr %17, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %node.i = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %node.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %node.i
  br i1 %cmp.i.not.i, label %isert_conn_terminate.exit.isert_handle_unbound_conn.exit_crit_edge, label %if.then.i

isert_conn_terminate.exit.isert_handle_unbound_conn.exit_crit_edge: ; preds = %isert_conn_terminate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_handle_unbound_conn.exit

if.then.i:                                        ; preds = %isert_conn_terminate.exit
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 14, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %26 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node.i, ptr %prev.i3.i.i, align 4
  tail call fastcc void @isert_put_conn(ptr noundef %3) #11
  %28 = load ptr, ptr @isert_release_wq, align 4
  %release_work.i = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %release_work.i) #11
  br label %isert_handle_unbound_conn.exit

isert_handle_unbound_conn.exit:                   ; preds = %list_del_init.exit.i, %isert_conn_terminate.exit.isert_handle_unbound_conn.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge2
  %conn = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %29 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conn, align 8
  tail call void @iscsit_cause_connection_reinstatement(ptr noundef %30, i32 noundef 0) #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %31 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp sgt i32 %31, 0
  br i1 %cmp, label %do.end, label %do.body.sw.epilog_crit_edge, !prof !640

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, ptr noundef %3, i32 noundef %5) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.body.sw.epilog_crit_edge, %sw.bb2, %isert_handle_unbound_conn.exit, %entry.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_reject_msg(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_reject(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isert_login_post_recv(ptr nocapture noundef readonly %isert_conn) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %rx_wr = alloca %struct.ib_recv_wr, align 8
  %sge = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sge) #11
  %0 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %login_desc = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 5
  %2 = ptrtoint ptr %login_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %login_desc, align 8
  %dma_addr = getelementptr inbounds %struct.iser_rx_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dma_addr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 76
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  %add.i.i = add i32 %6, 511
  %and.i.i = and i32 %add.i.i, -512
  %7 = inttoptr i32 %and.i.i to ptr
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 -76
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv = zext i32 %sub.ptr.sub.i to i64
  %add = add i64 %5, %conv
  %8 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %sge, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8268, ptr %0, align 8
  %device = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 22
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %pd = getelementptr inbounds %struct.isert_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %1, align 4
  %17 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp sgt i32 %17, 2
  br i1 %cmp, label %do.end, label %entry.do.end10_crit_edge, !prof !640

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i64 noundef %add, i32 noundef 8268, i32 noundef %15) #14
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %18 = ptrtoint ptr %login_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %login_desc, align 8
  %rx_cqe = getelementptr inbounds %struct.iser_rx_desc, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %rx_cqe to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @isert_login_recv_done, ptr %rx_cqe, align 8
  %21 = call ptr @memset(ptr %rx_wr, i32 0, i32 16)
  %22 = load ptr, ptr %login_desc, align 8
  %rx_cqe13 = getelementptr inbounds %struct.iser_rx_desc, ptr %22, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rx_cqe13, ptr %23, align 8
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr, i32 0, i32 2
  %25 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sge, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr, i32 0, i32 3
  %26 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %num_sge, align 4
  %qp = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 19
  %27 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #11
  %29 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !644
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %28, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %31, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %post_recv.i, align 4
  %call.i = call i32 %33(ptr noundef %28, ptr noundef nonnull %rx_wr, ptr noundef nonnull %dummy.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %do.end10.if.end22_crit_edge, label %do.end19

do.end10.if.end22_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end19:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef %call.i) #14
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %do.end10.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isert_rdma_accept(ptr nocapture noundef readonly %isert_conn) unnamed_addr #0 align 64 {
entry:
  %cp = alloca %struct.rdma_conn_param, align 4
  %rsp_hdr = alloca %struct.iser_cm_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_id1 = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 18
  %0 = ptrtoint ptr %cm_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_id1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cp) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp_hdr) #11
  %2 = getelementptr inbounds i8, ptr %cp, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %initiator_depth = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 2
  %4 = ptrtoint ptr %initiator_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initiator_depth, align 8
  %conv = trunc i32 %5 to i8
  %initiator_depth2 = getelementptr inbounds %struct.rdma_conn_param, ptr %cp, i32 0, i32 3
  %6 = ptrtoint ptr %initiator_depth2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %initiator_depth2, align 2
  %retry_count = getelementptr inbounds %struct.rdma_conn_param, ptr %cp, i32 0, i32 5
  %7 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 7, ptr %retry_count, align 4
  %rnr_retry_count = getelementptr inbounds %struct.rdma_conn_param, ptr %cp, i32 0, i32 6
  %8 = ptrtoint ptr %rnr_retry_count to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %rnr_retry_count, align 1
  %9 = ptrtoint ptr %rsp_hdr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483648, ptr %rsp_hdr, align 4
  %snd_w_inv = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 27
  %10 = ptrtoint ptr %snd_w_inv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %snd_w_inv, align 1, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %spec.store.select = select i1 %tobool.not, i8 -64, i8 -128
  %12 = ptrtoint ptr %rsp_hdr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.store.select, ptr %rsp_hdr, align 4
  %13 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rsp_hdr, ptr %cp, align 4
  %private_data_len = getelementptr inbounds %struct.rdma_conn_param, ptr %cp, i32 0, i32 1
  %14 = ptrtoint ptr %private_data_len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %private_data_len, align 4
  %call = call i32 @rdma_accept(ptr noundef %1, ptr noundef nonnull %cp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp_hdr) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cp) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_device_put(ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_mutex, i32 noundef 0) #11
  %refcount = getelementptr inbounds %struct.isert_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %refcount, align 4
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge, !prof !640

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, ptr noundef %device, i32 noundef %dec) #14
  %3 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %refcount, align 4
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %4 = phi i32 [ %dec, %entry.do.end4_crit_edge ], [ %.pr, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.then7, label %do.end4.if.end8_crit_edge

do.end4.if.end8_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %do.end4
  %5 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp sgt i32 %5, 1
  br i1 %cmp.i, label %do.end.i, label %if.then7.do.end3.i_crit_edge, !prof !640

if.then7.do.end3.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, ptr noundef %device) #14
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then7.do.end3.i_crit_edge
  %pd.i = getelementptr inbounds %struct.isert_device, ptr %device, i32 0, i32 3
  %6 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd.i, align 4
  %call.i.i = tail call i32 @ib_dealloc_pd_user(ptr noundef %7, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end3.i.isert_free_device_ib_res.exit_crit_edge, label %land.rhs.i.i

do.end3.i.isert_free_device_ib_res.exit_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_free_device_ib_res.exit

land.rhs.i.i:                                     ; preds = %do.end3.i
  %.b38.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.isert_free_device_ib_res.exit_crit_edge, label %if.then.i.i, !prof !642

land.rhs.i.i.isert_free_device_ib_res.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_free_device_ib_res.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.120, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.121) #11
  br label %isert_free_device_ib_res.exit

isert_free_device_ib_res.exit:                    ; preds = %if.then.i.i, %land.rhs.i.i.isert_free_device_ib_res.exit_crit_edge, %do.end3.i.isert_free_device_ib_res.exit_crit_edge
  %dev_node = getelementptr inbounds %struct.isert_device, ptr %device, i32 0, i32 6
  %call.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_node) #11
  br i1 %call.i.i15, label %if.end.i.i, label %isert_free_device_ib_res.exit.list_del.exit_crit_edge

isert_free_device_ib_res.exit.list_del.exit_crit_edge: ; preds = %isert_free_device_ib_res.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %isert_free_device_ib_res.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.isert_device, ptr %device, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %dev_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %isert_free_device_ib_res.exit.list_del.exit_crit_edge
  %14 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_node, align 4
  %prev.i = getelementptr inbounds %struct.isert_device, ptr %device, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %device) #11
  br label %if.end8

if.end8:                                          ; preds = %list_del.exit, %do.end4.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_release_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3528
  %0 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge, !prof !640

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %add.ptr) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %mutex = getelementptr i8, ptr %work, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %add.ptr, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp8 = icmp sgt i32 %2, 1
  br i1 %cmp8, label %do.end18, label %do.end5.do.end23_crit_edge, !prof !640

do.end5.do.end23_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end18:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, ptr noundef %add.ptr) #14
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.end5.do.end23_crit_edge
  tail call fastcc void @isert_put_conn(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_put_conn(ptr noundef %isert_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !645
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !646
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !642

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !647
  %1 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i = icmp sgt i32 %1, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.isert_release_kref.exit.i_crit_edge, !prof !640

if.then.i.isert_release_kref.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_release_kref.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !630) #11
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i.i, align 8
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef %isert_conn, ptr noundef %comm.i.i, i32 noundef %7) #14
  br label %isert_release_kref.exit.i

isert_release_kref.exit.i:                        ; preds = %do.end.i.i, %if.then.i.isert_release_kref.exit.i_crit_edge
  tail call fastcc void @isert_connect_release(ptr noundef %isert_conn) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %isert_release_kref.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_connect_release(ptr noundef %isert_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 22
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge, !prof !640

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %isert_conn) #14
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.body17, label %do.end25, !prof !640

do.body17:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/isert/ib_isert.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #11, !srcloc !648
  unreachable

do.end25:                                         ; preds = %do.body6
  %3 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device1, align 4
  %ib_device.i = getelementptr inbounds %struct.isert_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ib_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ib_device.i, align 4
  %rx_descs.i = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 10
  %7 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_descs.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.end25.isert_free_rx_descriptors.exit_crit_edge, label %do.end25.for.body.i_crit_edge

do.end25.for.body.i_crit_edge:                    ; preds = %do.end25
  br label %for.body.i

do.end25.isert_free_rx_descriptors.exit_crit_edge: ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_free_rx_descriptors.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end25.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end25.for.body.i_crit_edge ]
  %rx_desc.012.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %8, %do.end25.for.body.i_crit_edge ]
  %dma_addr.i = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.012.i, i32 0, i32 1
  %9 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dma_addr.i, align 8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 8
  %conv.i.i = trunc i64 %10 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %conv.i.i, i32 noundef 9216, i32 noundef 2, i32 noundef 0) #11
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %incdec.ptr.i = getelementptr %struct.iser_rx_desc, ptr %rx_desc.012.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_descs.i, align 8
  tail call void @kfree(ptr noundef %14) #11
  %15 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rx_descs.i, align 8
  br label %isert_free_rx_descriptors.exit

isert_free_rx_descriptors.exit:                   ; preds = %for.end.i, %do.end25.isert_free_rx_descriptors.exit_crit_edge
  %cm_id = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 18
  %16 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cm_id, align 4
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %isert_free_rx_descriptors.exit.if.end30_crit_edge, label %land.lhs.true

isert_free_rx_descriptors.exit.if.end30_crit_edge: ; preds = %isert_free_rx_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true:                                    ; preds = %isert_free_rx_descriptors.exit
  %dev_removed = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 30
  %18 = ptrtoint ptr %dev_removed to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dev_removed, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rdma_destroy_id(ptr noundef nonnull %17) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true.if.end30_crit_edge, %isert_free_rx_descriptors.exit.if.end30_crit_edge
  %qp = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 19
  %20 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp, align 8
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @ib_destroy_qp_user(ptr noundef nonnull %21, ptr noundef null) #11
  %cq.i = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 20
  %22 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cq.i, align 4
  %cq_size.i = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 21
  %24 = ptrtoint ptr %cq_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cq_size.i, align 8
  tail call void @ib_cq_pool_put(ptr noundef %23, i32 noundef %25) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %login_desc = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 5
  %26 = ptrtoint ptr %login_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %login_desc, align 8
  %tobool34.not = icmp eq ptr %27, null
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device1, align 4
  %ib_device.i55 = getelementptr inbounds %struct.isert_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ib_device.i55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ib_device.i55, align 4
  %login_rsp_dma.i = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 9
  %32 = ptrtoint ptr %login_rsp_dma.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %login_rsp_dma.i, align 8
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 8
  %conv.i.i56 = trunc i64 %33 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %conv.i.i56, i32 noundef 8268, i32 noundef 1, i32 noundef 0) #11
  %login_rsp_buf.i = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 6
  %36 = ptrtoint ptr %login_rsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %login_rsp_buf.i, align 4
  tail call void @kfree(ptr noundef %37) #11
  %38 = ptrtoint ptr %login_desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %login_desc, align 8
  %dma_addr.i57 = getelementptr inbounds %struct.iser_rx_desc, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dma_addr.i57 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dma_addr.i57, align 8
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %31, align 8
  %conv.i7.i = trunc i64 %41 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %43, i32 noundef %conv.i7.i, i32 noundef 9216, i32 noundef 2, i32 noundef 0) #11
  %44 = ptrtoint ptr %login_desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %login_desc, align 8
  tail call void @kfree(ptr noundef %45) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  tail call fastcc void @isert_device_put(ptr noundef nonnull %1)
  %dev_removed37 = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 30
  %46 = ptrtoint ptr %dev_removed37 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dev_removed37, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool38.not = icmp eq i8 %47, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %rem_wait = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %rem_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end40

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %isert_conn) #11
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then39
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_cq_pool_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_qp_event_callback(ptr nocapture noundef readonly %e, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.ib_event, ptr %e, i32 0, i32 2
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 4
  %call = tail call ptr @ib_event_msg(i32 noundef %1) #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef %call, i32 noundef %1, ptr noundef %context) #14
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 16, label %do.body6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id = getelementptr inbounds %struct.isert_conn, ptr %context, i32 0, i32 18
  %5 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cm_id, align 4
  %call4 = tail call i32 @rdma_notify(ptr noundef %6, i32 noundef 4) #11
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  %7 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %do.end10, label %do.body6.sw.epilog_crit_edge, !prof !640

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end10:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %do.body6.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_mr_factor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_cq_pool_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_event_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_notify(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_login_recv_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %device = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %ib_device = getelementptr inbounds %struct.isert_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ib_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ib_device, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !642

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @isert_print_wc(ptr noundef %wc, ptr noundef nonnull @.str.102)
  br label %cleanup

if.end:                                           ; preds = %entry
  %login_desc = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %login_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %login_desc, align 8
  %dma_addr = getelementptr inbounds %struct.iser_rx_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dma_addr, align 8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 8
  %conv.i = trunc i64 %13 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %15, i32 noundef %conv.i, i32 noundef 9216, i32 noundef 2) #11
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %16 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_len, align 4
  %sub = add i32 %17, -76
  %login_req_len = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %login_req_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %login_req_len, align 8
  %conn = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conn, align 8
  %tobool2.not = icmp eq ptr %20, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %conn_login = getelementptr inbounds %struct.iscsi_conn, ptr %20, i32 0, i32 60
  %21 = ptrtoint ptr %conn_login to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn_login, align 4
  %tobool5.not = icmp eq ptr %22, null
  br i1 %tobool5.not, label %if.then3.if.end9_crit_edge, label %land.lhs.true

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then3
  %first_request = getelementptr inbounds %struct.iscsi_login, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %first_request to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %first_request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool6.not = icmp eq i8 %24, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @isert_rx_login_req(ptr noundef %3)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true.if.end9_crit_edge, %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %mutex = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %login_req_comp = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 16
  tail call void @complete(ptr noundef %login_req_comp) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %25 = ptrtoint ptr %login_desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %login_desc, align 8
  %dma_addr12 = getelementptr inbounds %struct.iser_rx_desc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dma_addr12 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dma_addr12, align 8
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 8
  %conv.i29 = trunc i64 %28 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %30, i32 noundef %conv.i29, i32 noundef 9216, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_print_wc(ptr nocapture noundef readonly %wc, ptr noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.not = icmp eq i32 %1, 5
  br i1 %cmp.not, label %do.body4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %1) #15
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %2 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor_err, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef %type, ptr noundef %call, i32 noundef %1, i32 noundef %3) #14
  br label %if.end16

do.body4:                                         ; preds = %entry
  %4 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp5 = icmp sgt i32 %4, 2
  br i1 %cmp5, label %do.end9, label %do.body4.if.end16_crit_edge, !prof !640

do.body4.if.end16_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end9:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call ptr @ib_wc_status_msg(i32 noundef 5) #15
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104, ptr noundef %type, ptr noundef %call12, i32 noundef 5) #14
  br label %if.end16

if.end16:                                         ; preds = %do.end9, %do.body4.if.end16_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_rx_login_req(ptr noundef %isert_conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %login_desc = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 5
  %0 = ptrtoint ptr %login_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %login_desc, align 8
  %login_req_len = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 7
  %2 = ptrtoint ptr %login_req_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %login_req_len, align 8
  %conn1 = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 13
  %4 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn1, align 8
  %conn_login = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 60
  %6 = ptrtoint ptr %conn_login to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn_login, align 4
  %8 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge, !prof !640

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, ptr noundef %isert_conn) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.rhs, label %do.end5.if.end49_crit_edge

do.end5.if.end49_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.rhs:                                         ; preds = %do.end5
  %.b140 = load i1, ptr @isert_rx_login_req.__already_done, align 1
  br i1 %.b140, label %land.rhs.if.end49_crit_edge, label %if.then23, !prof !642

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @isert_rx_login_req.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 985, i32 noundef 9, ptr noundef null) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then23, %land.rhs.if.end49_crit_edge, %do.end5.if.end49_crit_edge
  %first_request = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %first_request to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %first_request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool57.not = icmp eq i8 %10, 0
  br i1 %tobool57.not, label %if.end49.if.end70_crit_edge, label %if.then58

if.end49.if.end70_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then58:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 76
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  %add.i.i = add i32 %11, 511
  %and.i.i = and i32 %add.i.i, -512
  %12 = inttoptr i32 %and.i.i to ptr
  %tsih = getelementptr i8, ptr %12, i32 -34
  %13 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tsih, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool60.not = icmp eq i16 %14, 0
  %conv = zext i1 %tobool60.not to i8
  %leading_connection = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %leading_connection to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %leading_connection, align 1
  %flags = getelementptr i8, ptr %12, i32 -47
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 1
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 3
  %current_stage = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %current_stage to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %current_stage, align 2
  %min_version = getelementptr i8, ptr %12, i32 -45
  %21 = ptrtoint ptr %min_version to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %min_version, align 1
  %version_min = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 5
  %23 = ptrtoint ptr %version_min to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %version_min, align 1
  %max_version = getelementptr i8, ptr %12, i32 -46
  %24 = ptrtoint ptr %max_version to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_version, align 2
  %version_max = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 6
  %26 = ptrtoint ptr %version_max to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %version_max, align 2
  %isid = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 10
  %isid65 = getelementptr i8, ptr %12, i32 -40
  %27 = call ptr @memcpy(ptr %isid, ptr %isid65, i32 6)
  %cmdsn = getelementptr i8, ptr %12, i32 -24
  %28 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmdsn, align 8
  %cmd_sn = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 11
  %30 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cmd_sn, align 16
  %itt = getelementptr i8, ptr %12, i32 -32
  %31 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %itt, align 32
  %init_task_tag = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 12
  %33 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %init_task_tag, align 4
  %exp_statsn = getelementptr i8, ptr %12, i32 -20
  %34 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %exp_statsn, align 4
  %initial_exp_statsn = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 13
  %36 = ptrtoint ptr %initial_exp_statsn to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %initial_exp_statsn, align 8
  %cid = getelementptr i8, ptr %12, i32 -28
  %37 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %cid, align 4
  %cid67 = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 15
  %39 = ptrtoint ptr %cid67 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %cid67, align 32
  %40 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tsih, align 2
  %tsih69 = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 16
  %42 = ptrtoint ptr %tsih69 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %tsih69, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.then58, %if.end49.if.end70_crit_edge
  %req = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 17
  %add.ptr.i.i141 = getelementptr i8, ptr %1, i32 76
  %43 = ptrtoint ptr %add.ptr.i.i141 to i32
  %add.i.i142 = add i32 %43, 511
  %and.i.i143 = and i32 %add.i.i142, -512
  %44 = inttoptr i32 %and.i.i143 to ptr
  %add.ptr.i144 = getelementptr i8, ptr %44, i32 -48
  %45 = call ptr @memcpy(ptr %req, ptr %add.ptr.i144, i32 48)
  %46 = tail call i32 @llvm.smin.i32(i32 %3, i32 8192)
  %47 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp77 = icmp sgt i32 %47, 2
  br i1 %cmp77, label %do.end88, label %if.end70.do.end93_crit_edge, !prof !640

if.end70.do.end93_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93

do.end88:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109, i32 noundef %46, i32 noundef %3, i32 noundef 8192) #14
  br label %do.end93

do.end93:                                         ; preds = %do.end88, %if.end70.do.end93_crit_edge
  %req_buf = getelementptr inbounds %struct.iscsi_login, ptr %7, i32 0, i32 19
  %48 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %req_buf, align 4
  %50 = call ptr @memcpy(ptr %49, ptr %44, i32 %46)
  %51 = ptrtoint ptr %first_request to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %first_request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool96.not = icmp eq i8 %52, 0
  br i1 %tobool96.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  %login_comp = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 15
  tail call void @complete(ptr noundef %login_comp) #11
  br label %cleanup

if.end98:                                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  %login_work = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %login_work, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_accept(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_qp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_cause_connection_reinstatement(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_setup_np(ptr noundef %np, ptr nocapture noundef readonly %ksockaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 172) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sem = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1
  %wait_list1.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %sem to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %5 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.134, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4, i32 5
  %9 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 14)
  %10 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %11 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 8
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %mutex = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.133, ptr noundef nonnull @isert_setup_np.__key) #11
  %accepted = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %accepted to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %accepted, ptr %accepted, align 4
  %prev.i = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %accepted, ptr %prev.i, align 8
  %pending = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i22 = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pending, ptr %prev.i22, align 8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %np, ptr %call7.i.i, align 8
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 12
  %17 = call ptr @memcpy(ptr %np_sockaddr, ptr %ksockaddr, i32 128)
  %call2 = tail call ptr @isert_setup_id(ptr noundef nonnull %call7.i.i)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %call2 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id = getelementptr inbounds %struct.isert_np, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2, ptr %cm_id, align 4
  %np_context = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 15
  %20 = ptrtoint ptr %np_context to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %np_context, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then4 ], [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_accept_np(ptr noundef %np, ptr noundef %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %np_context = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 15
  %0 = ptrtoint ptr %np_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np_context, align 64
  %sem = getelementptr inbounds %struct.isert_np, ptr %1, i32 0, i32 1
  %call64 = tail call i32 @down_interruptible(ptr noundef %sem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool.not65 = icmp eq i32 %call64, 0
  br i1 %tobool.not65, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %np_thread_lock = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 9
  %np_thread_state = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.isert_np, ptr %1, i32 0, i32 3
  %pending = getelementptr inbounds %struct.isert_np, ptr %1, i32 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.then17.if.end_crit_edge, %if.end.lr.ph
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #11
  %2 = ptrtoint ptr %np_thread_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %np_thread_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #11
  br i1 %cmp, label %if.then1, label %if.end13

if.then1:                                         ; preds = %if.end
  %4 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp sgt i32 %4, 2
  br i1 %cmp3, label %do.end, label %if.then1.cleanup_crit_edge, !prof !640

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %np_thread_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %np_thread_state, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef %6) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %8, %pending
  br i1 %cmp.i.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %call = tail call i32 @down_interruptible(ptr noundef %sem) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then17.if.end_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17.if.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end19:                                         ; preds = %if.end13
  %add.ptr = getelementptr i8, ptr %8, i32 -3124
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_del_init.exit_crit_edge

if.end19.list_del_init.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end19.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %17 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %context, align 4
  %conn23 = getelementptr i8, ptr %8, i32 -4
  %18 = ptrtoint ptr %conn23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %conn, ptr %conn23, align 8
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %add.ptr, align 8
  %cm_id1.i = getelementptr i8, ptr %8, i32 288
  %20 = ptrtoint ptr %cm_id1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cm_id1.i, align 4
  %route.i = getelementptr inbounds %struct.rdma_cm_id, ptr %21, i32 0, i32 4
  %np_sockaddr.i = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 12
  %22 = ptrtoint ptr %np_sockaddr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %np_sockaddr.i, align 4
  %conv.i61 = zext i16 %23 to i32
  %login_family.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 11
  %24 = ptrtoint ptr %login_family.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i61, ptr %login_family.i, align 4
  %login_sockaddr.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 17
  %dst_addr.i = getelementptr inbounds %struct.rdma_cm_id, ptr %21, i32 0, i32 4, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %login_sockaddr.i, ptr %dst_addr.i, i32 128)
  %local_sockaddr.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 18
  %26 = call ptr @memcpy(ptr %local_sockaddr.i, ptr %route.i, i32 128)
  %27 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp25 = icmp sgt i32 %27, 2
  br i1 %cmp25, label %do.end35, label %list_del_init.exit.cleanup_crit_edge, !prof !640

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end35:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, ptr noundef %add.ptr) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %list_del_init.exit.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %do.end, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %if.then1.cleanup_crit_edge ], [ 0, %do.end35 ], [ 0, %list_del_init.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_free_np(ptr nocapture noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %np_context = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 15
  %0 = ptrtoint ptr %np_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np_context, align 64
  %cm_id = getelementptr inbounds %struct.isert_np, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rdma_destroy_id(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.isert_np, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %pending = getelementptr inbounds %struct.isert_np, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %5, %pending
  br i1 %cmp.i.not, label %if.end.if.end45_crit_edge, label %do.body

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.body:                                          ; preds = %if.end
  %6 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.end, label %do.body.do.end11_crit_edge, !prof !640

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pending, align 4
  %cmp20.not141 = icmp eq ptr %8, %pending
  br i1 %cmp20.not141, label %do.end11.if.end45_crit_edge, label %do.end11.do.body23_crit_edge

do.end11.do.body23_crit_edge:                     ; preds = %do.end11
  br label %do.body23

do.end11.if.end45_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.body23:                                        ; preds = %do.end39.do.body23_crit_edge, %do.end11.do.body23_crit_edge
  %.pn144.in = phi ptr [ %.pn144, %do.end39.do.body23_crit_edge ], [ %8, %do.end11.do.body23_crit_edge ]
  %isert_conn.0142 = getelementptr i8, ptr %.pn144.in, i32 -3124
  %9 = ptrtoint ptr %.pn144.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn144 = load ptr, ptr %.pn144.in, align 4
  %10 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp24 = icmp sgt i32 %10, 1
  br i1 %cmp24, label %do.end34, label %do.body23.do.end39_crit_edge, !prof !640

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

do.end34:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %isert_conn.0142 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isert_conn.0142, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142, ptr noundef %isert_conn.0142, i32 noundef %12) #14
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body23.do.end39_crit_edge
  tail call fastcc void @isert_connect_release(ptr noundef %isert_conn.0142)
  %cmp20.not = icmp eq ptr %.pn144, %pending
  br i1 %cmp20.not, label %do.end39.if.end45_crit_edge, label %do.end39.do.body23_crit_edge

do.end39.do.body23_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

do.end39.if.end45_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end45:                                         ; preds = %do.end39.if.end45_crit_edge, %do.end11.if.end45_crit_edge, %if.end.if.end45_crit_edge
  %accepted = getelementptr inbounds %struct.isert_np, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %accepted to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %accepted, align 4
  %cmp.i137.not = icmp eq ptr %14, %accepted
  br i1 %cmp.i137.not, label %if.end45.if.end108_crit_edge, label %do.body49

if.end45.if.end108_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

do.body49:                                        ; preds = %if.end45
  %15 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp50 = icmp sgt i32 %15, 1
  br i1 %cmp50, label %do.end60, label %do.body49.do.end65_crit_edge, !prof !640

do.body49.do.end65_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

do.end60:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.142) #14
  br label %do.end65

do.end65:                                         ; preds = %do.end60, %do.body49.do.end65_crit_edge
  %16 = ptrtoint ptr %accepted to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %accepted, align 4
  %cmp79.not147 = icmp eq ptr %17, %accepted
  br i1 %cmp79.not147, label %do.end65.if.end108_crit_edge, label %do.end65.do.body83_crit_edge

do.end65.do.body83_crit_edge:                     ; preds = %do.end65
  br label %do.body83

do.end65.if.end108_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

do.body83:                                        ; preds = %do.end100.do.body83_crit_edge, %do.end65.do.body83_crit_edge
  %.pn134150.in = phi ptr [ %.pn134150, %do.end100.do.body83_crit_edge ], [ %17, %do.end65.do.body83_crit_edge ]
  %isert_conn.1148 = getelementptr i8, ptr %.pn134150.in, i32 -3124
  %18 = ptrtoint ptr %.pn134150.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn134150 = load ptr, ptr %.pn134150.in, align 4
  %19 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp84 = icmp sgt i32 %19, 1
  br i1 %cmp84, label %do.end94, label %do.body83.do.end100_crit_edge, !prof !640

do.body83.do.end100_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end100

do.end94:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %isert_conn.1148 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %isert_conn.1148, align 8
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142, ptr noundef %isert_conn.1148, i32 noundef %21) #14
  br label %do.end100

do.end100:                                        ; preds = %do.end94, %do.body83.do.end100_crit_edge
  tail call fastcc void @isert_connect_release(ptr noundef %isert_conn.1148)
  %cmp79.not = icmp eq ptr %.pn134150, %accepted
  br i1 %cmp79.not, label %do.end100.if.end108_crit_edge, label %do.end100.do.body83_crit_edge

do.end100.do.body83_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body83

do.end100.if.end108_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.end108:                                        ; preds = %do.end100.if.end108_crit_edge, %do.end65.if.end108_crit_edge, %if.end45.if.end108_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %22 = ptrtoint ptr %np_context to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %np_context, align 64
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_wait_conn(ptr noundef %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge, !prof !640

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %1) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mutex = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i = icmp ugt i32 %4, 3
  br i1 %cmp.i, label %do.end4.isert_conn_terminate.exit_crit_edge, label %do.body.i

do.end4.isert_conn_terminate.exit_crit_edge:      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_conn_terminate.exit

do.body.i:                                        ; preds = %do.end4
  %5 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp sgt i32 %5, 1
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end8.i_crit_edge, !prof !640

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef %1, i32 noundef %4) #14
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.body.i.do.end8.i_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %1, align 8
  %cm_id.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cm_id.i, align 4
  %call10.i = tail call i32 @rdma_disconnect(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.end8.i.isert_conn_terminate.exit_crit_edge, label %do.body13.i

do.end8.i.isert_conn_terminate.exit_crit_edge:    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_conn_terminate.exit

do.body13.i:                                      ; preds = %do.end8.i
  %9 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14.i = icmp sgt i32 %9, 0
  br i1 %cmp14.i, label %do.end24.i, label %do.body13.i.isert_conn_terminate.exit_crit_edge, !prof !640

do.body13.i.isert_conn_terminate.exit_crit_edge:  ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_conn_terminate.exit

do.end24.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129, ptr noundef %1) #14
  br label %isert_conn_terminate.exit

isert_conn_terminate.exit:                        ; preds = %do.end24.i, %do.body13.i.isert_conn_terminate.exit_crit_edge, %do.end8.i.isert_conn_terminate.exit_crit_edge, %do.end4.isert_conn_terminate.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  %qp = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qp, align 8
  tail call void @ib_drain_qp(ptr noundef %11) #11
  %cmd_lock.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock.i) #11
  %conn_cmd_list.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  %12 = ptrtoint ptr %conn_cmd_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conn_cmd_list.i, align 8
  %cmp.not83.i = icmp eq ptr %13, %conn_cmd_list.i
  br i1 %cmp.not83.i, label %isert_conn_terminate.exit.for.end.i_crit_edge, label %for.body.lr.ph.i

isert_conn_terminate.exit.for.end.i_crit_edge:    ; preds = %isert_conn_terminate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %isert_conn_terminate.exit
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in84.i = phi ptr [ %13, %for.body.lr.ph.i ], [ %.pn86.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in84.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn86.i = load ptr, ptr %.pn.in84.i, align 4
  %cmd_flags.i = getelementptr i8, ptr %.pn.in84.i, i32 -552
  %15 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_flags.i, align 4
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %write_data_done.i = getelementptr i8, ptr %.pn.in84.i, i32 -452
  %17 = ptrtoint ptr %write_data_done.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %write_data_done.i, align 128
  %19 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sess.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %20, i32 0, i32 47
  %21 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sess_ops.i, align 8
  %FirstBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %FirstBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %FirstBurstLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %24)
  %cmp8.i = icmp ult i32 %18, %24
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %data_length.i = getelementptr i8, ptr %.pn.in84.i, i32 64
  %25 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %26)
  %cmp11.i = icmp ult i32 %18, %26
  br i1 %cmp11.i, label %if.then.i, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in84.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.__list_del_entry.exit.i.i_crit_edge

if.then.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in84.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %.pn.in84.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn.in84.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i.__list_del_entry.exit.i.i_crit_edge
  %33 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @isert_put_unsol_pending_cmds.drop_cmd_list, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in84.i, ptr noundef %33, ptr noundef nonnull @isert_put_unsol_pending_cmds.drop_cmd_list) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %.pn.in84.i, ptr getelementptr inbounds (%struct.list_head, ptr @isert_put_unsol_pending_cmds.drop_cmd_list, i32 0, i32 1), align 4
  %34 = ptrtoint ptr %.pn.in84.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @isert_put_unsol_pending_cmds.drop_cmd_list, ptr %.pn.in84.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in84.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %prev3.i.i.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %.pn.in84.i, ptr %33, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge, %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn86.i, %conn_cmd_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %isert_conn_terminate.exit.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock.i) #11
  %37 = load ptr, ptr @isert_put_unsol_pending_cmds.drop_cmd_list, align 4
  %cmp29.not89.i = icmp eq ptr %37, @isert_put_unsol_pending_cmds.drop_cmd_list
  br i1 %cmp29.not89.i, label %for.end.i.isert_put_unsol_pending_cmds.exit_crit_edge, label %for.end.i.for.body31.i_crit_edge

for.end.i.for.body31.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body31.i

for.end.i.isert_put_unsol_pending_cmds.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_put_unsol_pending_cmds.exit

for.body31.i:                                     ; preds = %for.inc47.i.for.body31.i_crit_edge, %for.end.i.for.body31.i_crit_edge
  %.pn74.in90.i = phi ptr [ %.pn7492.i, %for.inc47.i.for.body31.i_crit_edge ], [ %37, %for.end.i.for.body31.i_crit_edge ]
  %cmd.191.i = getelementptr i8, ptr %.pn74.in90.i, i32 -580
  %38 = ptrtoint ptr %.pn74.in90.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn7492.i = load ptr, ptr %.pn74.in90.i, align 4
  %call.i.i77.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn74.in90.i) #11
  br i1 %call.i.i77.i, label %if.end.i.i80.i, label %for.body31.i.list_del_init.exit.i_crit_edge

for.body31.i.list_del_init.exit.i_crit_edge:      ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i80.i:                                   ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i78.i = getelementptr inbounds %struct.list_head, ptr %.pn74.in90.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i78.i, align 4
  %41 = ptrtoint ptr %.pn74.in90.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn74.in90.i, align 4
  %prev1.i.i.i79.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i79.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i80.i, %for.body31.i.list_del_init.exit.i_crit_edge
  %45 = ptrtoint ptr %.pn74.in90.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %.pn74.in90.i, ptr %.pn74.in90.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn74.in90.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn74.in90.i, ptr %prev.i3.i.i, align 4
  %i_state.i = getelementptr i8, ptr %.pn74.in90.i, i32 -568
  %47 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %48)
  %cmp33.not.i = icmp eq i32 %48, 41
  br i1 %cmp33.not.i, label %list_del_init.exit.i.for.inc47.i_crit_edge, label %if.then34.i

list_del_init.exit.i.for.inc47.i_crit_edge:       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47.i

if.then34.i:                                      ; preds = %list_del_init.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %.pn74.in90.i, i32 700
  %49 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp35.i = icmp sgt i32 %49, 1
  br i1 %cmp35.i, label %do.end.i15, label %if.then34.i.do.end45.i_crit_edge, !prof !640

if.then34.i.do.end45.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45.i

do.end.i15:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, ptr noundef %conn, ptr noundef %cmd.191.i) #14
  br label %do.end45.i

do.end45.i:                                       ; preds = %do.end.i15, %if.then34.i.do.end45.i_crit_edge
  tail call fastcc void @isert_put_cmd(ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #11
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %do.end45.i, %list_del_init.exit.i.for.inc47.i_crit_edge
  %cmp29.not.i = icmp eq ptr %.pn7492.i, @isert_put_unsol_pending_cmds.drop_cmd_list
  br i1 %cmp29.not.i, label %for.inc47.i.isert_put_unsol_pending_cmds.exit_crit_edge, label %for.inc47.i.for.body31.i_crit_edge

for.inc47.i.for.body31.i_crit_edge:               ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31.i

for.inc47.i.isert_put_unsol_pending_cmds.exit_crit_edge: ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_put_unsol_pending_cmds.exit

isert_put_unsol_pending_cmds.exit:                ; preds = %for.inc47.i.isert_put_unsol_pending_cmds.exit_crit_edge, %for.end.i.isert_put_unsol_pending_cmds.exit_crit_edge
  %50 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i16 = icmp sgt i32 %50, 1
  br i1 %cmp.i16, label %do.end.i18, label %isert_put_unsol_pending_cmds.exit.do.end3.i_crit_edge, !prof !640

isert_put_unsol_pending_cmds.exit.do.end3.i_crit_edge: ; preds = %isert_put_unsol_pending_cmds.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.i

do.end.i18:                                       ; preds = %isert_put_unsol_pending_cmds.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, ptr noundef %conn) #14
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i18, %isert_put_unsol_pending_cmds.exit.do.end3.i_crit_edge
  %sess.i19 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %51 = ptrtoint ptr %sess.i19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sess.i19, align 4
  %tobool4.not.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i, label %do.end3.i.isert_wait4cmds.exit_crit_edge, label %if.then5.i

do.end3.i.isert_wait4cmds.exit_crit_edge:         ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_wait4cmds.exit

if.then5.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %se_sess.i = getelementptr inbounds %struct.iscsi_session, ptr %52, i32 0, i32 48
  %53 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %se_sess.i, align 4
  tail call void @target_stop_session(ptr noundef %54) #11
  %55 = ptrtoint ptr %sess.i19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sess.i19, align 4
  %se_sess8.i = getelementptr inbounds %struct.iscsi_session, ptr %56, i32 0, i32 48
  %57 = ptrtoint ptr %se_sess8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %se_sess8.i, align 4
  tail call void @target_wait_for_sess_cmds(ptr noundef %58) #11
  br label %isert_wait4cmds.exit

isert_wait4cmds.exit:                             ; preds = %if.then5.i, %do.end3.i.isert_wait4cmds.exit_crit_edge
  %conn1.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 13
  %59 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %conn1.i, align 8
  %61 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i20 = icmp sgt i32 %61, 1
  br i1 %cmp.i20, label %do.end.i22, label %isert_wait4cmds.exit.do.end5.i_crit_edge, !prof !640

isert_wait4cmds.exit.do.end5.i_crit_edge:         ; preds = %isert_wait4cmds.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i22:                                       ; preds = %isert_wait4cmds.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.162, ptr noundef %1) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i22, %isert_wait4cmds.exit.do.end5.i_crit_edge
  %logout_posted.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 26
  %62 = ptrtoint ptr %logout_posted.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %logout_posted.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool6.not.i = icmp eq i8 %63, 0
  br i1 %tobool6.not.i, label %do.end5.i.isert_wait4logout.exit_crit_edge, label %do.body8.i

do.end5.i.isert_wait4logout.exit_crit_edge:       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_wait4logout.exit

do.body8.i:                                       ; preds = %do.end5.i
  %64 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp9.i = icmp sgt i32 %64, 1
  br i1 %cmp9.i, label %do.end19.i, label %do.body8.i.do.end24.i23_crit_edge, !prof !640

do.body8.i.do.end24.i23_crit_edge:                ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i23

do.end19.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.162, ptr noundef %1) #14
  br label %do.end24.i23

do.end24.i23:                                     ; preds = %do.end19.i, %do.body8.i.do.end24.i23_crit_edge
  %conn_logout_comp.i = getelementptr inbounds %struct.iscsi_conn, ptr %60, i32 0, i32 33
  %call25.i = tail call i32 @wait_for_completion_timeout(ptr noundef %conn_logout_comp.i, i32 noundef 1500) #11
  br label %isert_wait4logout.exit

isert_wait4logout.exit:                           ; preds = %do.end24.i23, %do.end5.i.isert_wait4logout.exit_crit_edge
  %65 = load ptr, ptr @isert_release_wq, align 4
  %release_work = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 25
  %call.i24 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %release_work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_free_conn(ptr nocapture noundef readonly %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %qp = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  tail call void @ib_drain_qp(ptr noundef %3) #11
  tail call fastcc void @isert_put_conn(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_get_login_rx(ptr noundef %conn, ptr noundef %login) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge, !prof !640

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167, ptr noundef %1) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %login_req_comp = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 16
  %call5 = tail call i32 @wait_for_completion_interruptible(ptr noundef %login_req_comp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.167, ptr noundef %1) #14
  br label %cleanup

if.end13:                                         ; preds = %do.end4
  %3 = ptrtoint ptr %login_req_comp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %login_req_comp, align 4
  %first_request = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 4
  %4 = ptrtoint ptr %first_request to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %first_request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  tail call fastcc void @isert_rx_login_req(ptr noundef %1)
  %6 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp19 = icmp sgt i32 %6, 1
  br i1 %cmp19, label %do.end29, label %if.end17.do.end34_crit_edge, !prof !640

if.end17.do.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end29:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.167, ptr noundef %conn) #14
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %if.end17.do.end34_crit_edge
  %login_comp = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 15
  %call35 = tail call i32 @wait_for_completion_interruptible(ptr noundef %login_comp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body39, label %do.end34.cleanup_crit_edge

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body39:                                        ; preds = %do.end34
  %7 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp40 = icmp sgt i32 %7, 1
  br i1 %cmp40, label %do.end50, label %do.body39.cleanup_crit_edge, !prof !640

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end50:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #13
  %req = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.167, ptr noundef %req) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.body39.cleanup_crit_edge, %do.end34.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end10
  %retval.0 = phi i32 [ %call5, %do.end10 ], [ 0, %if.end13.cleanup_crit_edge ], [ %call35, %do.end34.cleanup_crit_edge ], [ 0, %do.end50 ], [ 0, %do.body39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_put_login_tx(ptr nocapture noundef readonly %conn, ptr nocapture noundef readonly %login, i32 noundef %length) #0 align 64 {
entry:
  %dummy.i.i82 = alloca ptr, align 4
  %send_wr.i = alloca %struct.ib_send_wr, align 8
  %dummy.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %device1 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %ib_device = getelementptr inbounds %struct.isert_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ib_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ib_device, align 4
  %login_tx_desc = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 17
  %6 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 17, i32 0, i32 1
  %7 = call ptr @memset(ptr %6, i32 0, i32 27)
  %8 = ptrtoint ptr %login_tx_desc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %login_tx_desc, align 1
  %num_sge.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 17, i32 6
  %9 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 1, ptr %num_sge.i, align 1
  %lkey.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 17, i32 4, i32 0, i32 2
  %10 = ptrtoint ptr %lkey.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %lkey.i, align 1
  %pd.i = getelementptr inbounds %struct.isert_device, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp.not.i = icmp eq i32 %11, %15
  br i1 %cmp.not.i, label %entry.__isert_create_send_desc.exit_crit_edge, label %if.then.i

entry.__isert_create_send_desc.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__isert_create_send_desc.exit

if.then.i:                                        ; preds = %entry
  %16 = ptrtoint ptr %lkey.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %lkey.i, align 1
  %17 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp7.i = icmp sgt i32 %17, 2
  br i1 %cmp7.i, label %do.end.i, label %if.then.i.__isert_create_send_desc.exit_crit_edge, !prof !640

if.then.i.__isert_create_send_desc.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__isert_create_send_desc.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef %login_tx_desc) #14
  br label %__isert_create_send_desc.exit

__isert_create_send_desc.exit:                    ; preds = %do.end.i, %if.then.i.__isert_create_send_desc.exit_crit_edge, %entry.__isert_create_send_desc.exit_crit_edge
  %iscsi_header = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 17, i32 1
  %rsp = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18
  %18 = call ptr @memcpy(ptr %iscsi_header, ptr %rsp, i32 48)
  tail call fastcc void @isert_init_tx_hdrs(ptr noundef %1, ptr noundef %login_tx_desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp.not = icmp eq i32 %length, 0
  br i1 %cmp.not, label %__isert_create_send_desc.exit.if.end_crit_edge, label %if.then

__isert_create_send_desc.exit.if.end_crit_edge:   ; preds = %__isert_create_send_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %__isert_create_send_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx2 = getelementptr %struct.isert_conn, ptr %1, i32 0, i32 17, i32 4, i32 1
  %login_rsp_dma = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %login_rsp_dma to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %login_rsp_dma, align 8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  %conv.i = trunc i64 %20 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %22, i32 noundef %conv.i, i32 noundef %length, i32 noundef 1) #11
  %login_rsp_buf = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %login_rsp_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %login_rsp_buf, align 4
  %rsp_buf = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 20
  %25 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rsp_buf, align 8
  %27 = call ptr @memcpy(ptr %24, ptr %26, i32 %length)
  %28 = ptrtoint ptr %login_rsp_dma to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %login_rsp_dma, align 8
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 8
  %conv.i70 = trunc i64 %29 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %31, i32 noundef %conv.i70, i32 noundef %length, i32 noundef 1) #11
  %32 = ptrtoint ptr %login_rsp_dma to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %login_rsp_dma, align 8
  %34 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx2, align 8
  %length5 = getelementptr %struct.isert_conn, ptr %1, i32 0, i32 17, i32 4, i32 1, i32 1
  %35 = ptrtoint ptr %length5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %length, ptr %length5, align 8
  %36 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device1, align 4
  %pd = getelementptr inbounds %struct.isert_device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pd, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %lkey = getelementptr %struct.isert_conn, ptr %1, i32 0, i32 17, i32 4, i32 1, i32 2
  %42 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %lkey, align 4
  %43 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 2, ptr %num_sge.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %__isert_create_send_desc.exit.if.end_crit_edge
  %login_failed = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 8
  %44 = ptrtoint ptr %login_failed to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %login_failed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  br i1 %tobool.not, label %if.then7, label %if.end.post_send_crit_edge

if.end.post_send_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %post_send

if.then7:                                         ; preds = %if.end
  %login_complete = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 7
  %46 = ptrtoint ptr %login_complete to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %login_complete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool8.not = icmp eq i8 %47, 0
  br i1 %tobool8.not, label %if.end19, label %if.then9

if.then9:                                         ; preds = %if.then7
  %48 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device1, align 4
  %ib_device.i = getelementptr inbounds %struct.isert_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %ib_device.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ib_device.i, align 4
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 1183744, i32 noundef 3520, i32 noundef 9) #17
  %rx_descs.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 10
  %52 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call1.i.i.i.i.i, ptr %rx_descs.i, align 8
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %for.cond.preheader.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then9
  %pd.i71 = getelementptr inbounds %struct.isert_device, ptr %49, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.061.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  %rx_desc.060.i = phi ptr [ %call1.i.i.i.i.i, %for.cond.preheader.i ], [ %incdec.ptr.i, %if.end8.i.for.body.i_crit_edge ]
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %51, align 8
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %rx_desc.060.i) #11
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %ib_dma_map_single.exit.i

land.rhs.i.i.i:                                   ; preds = %for.body.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.thread.i_crit_edge, label %if.then.i.i.i, !prof !642

land.rhs.i.i.i.ib_dma_map_single.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit.thread.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %54) #11
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %58, %if.end.i.i.i.i ], [ %56, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #11
  br label %ib_dma_map_single.exit.thread.i

ib_dma_map_single.exit.thread.i:                  ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.thread.i_crit_edge
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %51, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %60, i32 noundef -1) #11
  br label %dma_map_fail.i

ib_dma_map_single.exit.i:                         ; preds = %for.body.i
  tail call void @debug_dma_map_single(ptr noundef %54, ptr noundef %rx_desc.060.i, i32 noundef 9216) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %61 = load ptr, ptr @mem_map, align 4
  %62 = ptrtoint ptr %rx_desc.060.i to i32
  %sub.i.i.i = add i32 %62, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %61, i32 %shr.i.i.i
  %and.i.i.i = and i32 %62, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %54, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 9216, i32 noundef 2, i32 noundef 0) #11
  %63 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %51, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %64, i32 noundef %call41.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %ib_dma_map_single.exit.i.dma_map_fail.i_crit_edge, label %if.end8.i

ib_dma_map_single.exit.i.dma_map_fail.i_crit_edge: ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_fail.i

if.end8.i:                                        ; preds = %ib_dma_map_single.exit.i
  %conv2.i.i = zext i32 %call41.i.i.i to i64
  %dma_addr9.i = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.060.i, i32 0, i32 1
  %65 = ptrtoint ptr %dma_addr9.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv2.i.i, ptr %dma_addr9.i, align 8
  %rx_sg10.i = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.060.i, i32 0, i32 2
  %add.ptr.i.i56.i = getelementptr i8, ptr %rx_desc.060.i, i32 76
  %66 = ptrtoint ptr %add.ptr.i.i56.i to i32
  %add.i.i.i = add i32 %66, 511
  %and.i.i57.i = and i32 %add.i.i.i, -512
  %67 = inttoptr i32 %and.i.i57.i to ptr
  %add.ptr1.i.i.i = getelementptr i8, ptr %67, i32 -76
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %62
  %conv.i72 = zext i32 %sub.ptr.sub.i.i to i64
  %add.i = add nuw nsw i64 %conv2.i.i, %conv.i72
  %68 = ptrtoint ptr %rx_sg10.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add.i, ptr %rx_sg10.i, align 8
  %length.i = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.060.i, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 8268, ptr %length.i, align 8
  %70 = ptrtoint ptr %pd.i71 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pd.i71, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %lkey.i73 = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.060.i, i32 0, i32 2, i32 2
  %74 = ptrtoint ptr %lkey.i73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %lkey.i73, align 4
  %rx_cqe.i = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.060.i, i32 0, i32 3
  %75 = ptrtoint ptr %rx_cqe.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @isert_recv_done, ptr %rx_cqe.i, align 8
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %incdec.ptr.i = getelementptr %struct.iser_rx_desc, ptr %rx_desc.060.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %if.end13, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

dma_map_fail.i:                                   ; preds = %ib_dma_map_single.exit.i.dma_map_fail.i_crit_edge, %ib_dma_map_single.exit.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.061.i)
  %cmp1562.not.i = icmp eq i32 %i.061.i, 0
  br i1 %cmp1562.not.i, label %dma_map_fail.i.for.end22.i_crit_edge, label %for.body17.preheader.i

dma_map_fail.i.for.end22.i_crit_edge:             ; preds = %dma_map_fail.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22.i

for.body17.preheader.i:                           ; preds = %dma_map_fail.i
  %76 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_descs.i, align 8
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.body17.preheader.i
  %j.064.i = phi i32 [ %inc20.i, %for.body17.i.for.body17.i_crit_edge ], [ 0, %for.body17.preheader.i ]
  %rx_desc.163.i = phi ptr [ %incdec.ptr21.i, %for.body17.i.for.body17.i_crit_edge ], [ %77, %for.body17.preheader.i ]
  %dma_addr18.i = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.163.i, i32 0, i32 1
  %78 = ptrtoint ptr %dma_addr18.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %dma_addr18.i, align 8
  %80 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %51, align 8
  %conv.i.i = trunc i64 %79 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %81, i32 noundef %conv.i.i, i32 noundef 9216, i32 noundef 2, i32 noundef 0) #11
  %inc20.i = add nuw nsw i32 %j.064.i, 1
  %incdec.ptr21.i = getelementptr %struct.iser_rx_desc, ptr %rx_desc.163.i, i32 1
  %exitcond66.not.i = icmp eq i32 %inc20.i, %i.061.i
  br i1 %exitcond66.not.i, label %for.body17.i.for.end22.i_crit_edge, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17.i

for.body17.i.for.end22.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22.i

for.end22.i:                                      ; preds = %for.body17.i.for.end22.i_crit_edge, %dma_map_fail.i.for.end22.i_crit_edge
  %82 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_descs.i, align 8
  tail call void @kfree(ptr noundef %83) #11
  %84 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %rx_descs.i, align 8
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.185, ptr noundef %1) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end8.i
  %rx_wr1.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 12
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.body.i79.for.body.i79_crit_edge, %if.end13
  %rx_wr.02.i = phi ptr [ %rx_wr1.i, %if.end13 ], [ %add.ptr.i, %for.body.i79.for.body.i79_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.end13 ], [ %inc.i77, %for.body.i79.for.body.i79_crit_edge ]
  %85 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rx_descs.i, align 8
  %rx_cqe.i75 = getelementptr %struct.iser_rx_desc, ptr %86, i32 %i.01.i, i32 3
  %87 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.02.i, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %rx_cqe.i75, ptr %87, align 8
  %rx_sg.i = getelementptr %struct.iser_rx_desc, ptr %86, i32 %i.01.i, i32 2
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.02.i, i32 0, i32 2
  %89 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %rx_sg.i, ptr %sg_list.i, align 8
  %num_sge.i76 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.02.i, i32 0, i32 3
  %90 = ptrtoint ptr %num_sge.i76 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %num_sge.i76, align 4
  %add.ptr.i = getelementptr %struct.ib_recv_wr, ptr %rx_wr.02.i, i32 1
  %91 = ptrtoint ptr %rx_wr.02.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i, ptr %rx_wr.02.i, align 8
  %in_use.i = getelementptr %struct.iser_rx_desc, ptr %86, i32 %i.01.i, i32 4
  %92 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %in_use.i, align 4
  %inc.i77 = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i78 = icmp eq i32 %inc.i77, 128
  br i1 %exitcond.not.i78, label %for.end.i, label %for.body.i79.for.body.i79_crit_edge

for.body.i79.for.body.i79_crit_edge:              ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i79

for.end.i:                                        ; preds = %for.body.i79
  %93 = ptrtoint ptr %rx_wr.02.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %rx_wr.02.i, align 8
  %qp.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %94 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %qp.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #11
  %96 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !644
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %95, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %98, i32 0, i32 1, i32 7
  %99 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %post_recv.i.i, align 4
  %call.i.i = call i32 %100(ptr noundef %95, ptr noundef %rx_wr1.i, ptr noundef nonnull %dummy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i80 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i80, label %if.end17, label %isert_post_recvm.exit

isert_post_recvm.exit:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.229, i32 noundef %call.i.i) #14
  br label %cleanup

if.end17:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mutex = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %1, align 8
  call void @mutex_unlock(ptr noundef %mutex) #11
  br label %post_send

if.end19:                                         ; preds = %if.then7
  %call20 = tail call fastcc i32 @isert_login_post_recv(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.post_send_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19.post_send_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %post_send

post_send:                                        ; preds = %if.end19.post_send_crit_edge, %if.end17, %if.end.post_send_crit_edge
  %cm_id.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 18
  %102 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cm_id.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %send_wr.i) #11
  %106 = call ptr @memset(ptr %send_wr.i, i32 255, i32 40)
  %dma_addr.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 17, i32 3
  %107 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 8)
  %108 = load i64, ptr %dma_addr.i, align 1
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %105, align 8
  %conv.i.i83 = trunc i64 %108 to i32
  call void @dma_sync_single_for_device(ptr noundef %110, i32 noundef %conv.i.i83, i32 noundef 76, i32 noundef 1) #11
  %tx_cqe.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 17, i32 5
  %111 = ptrtoint ptr %tx_cqe.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store ptr @isert_login_send_done, ptr %tx_cqe.i, align 1
  %112 = ptrtoint ptr %send_wr.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %send_wr.i, align 8
  %113 = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %tx_cqe.i, ptr %113, align 8
  %tx_sg.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 17, i32 4
  %sg_list.i84 = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 2
  %115 = ptrtoint ptr %sg_list.i84 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %tx_sg.i, ptr %sg_list.i84, align 8
  %116 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %num_sge.i, align 1
  %num_sge2.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 3
  %118 = ptrtoint ptr %num_sge2.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %num_sge2.i, align 4
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 4
  %119 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 2, ptr %opcode.i, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %send_wr.i, i32 0, i32 5
  %120 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %send_flags.i, align 4
  %qp.i86 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %121 = ptrtoint ptr %qp.i86 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %qp.i86, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i82) #11
  %123 = ptrtoint ptr %dummy.i.i82 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i82, align 4, !annotation !644
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %122, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %125, i32 0, i32 1, i32 6
  %126 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i87 = call i32 %127(ptr noundef %122, ptr noundef nonnull %send_wr.i, ptr noundef nonnull %dummy.i.i82) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i82) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %tobool.not.i88 = icmp eq i32 %call.i.i87, 0
  br i1 %tobool.not.i88, label %post_send.isert_login_post_send.exit_crit_edge, label %do.end.i89

post_send.isert_login_post_send.exit_crit_edge:   ; preds = %post_send
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_login_post_send.exit

do.end.i89:                                       ; preds = %post_send
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.231, i32 noundef %call.i.i87) #14
  br label %isert_login_post_send.exit

isert_login_post_send.exit:                       ; preds = %do.end.i89, %post_send.isert_login_post_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %send_wr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %isert_login_post_send.exit, %if.end19.cleanup_crit_edge, %isert_post_recvm.exit, %for.end22.i, %if.then9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %isert_post_recvm.exit ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call.i.i87, %isert_login_post_send.exit ], [ -12, %for.end22.i ], [ -12, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_immediate_queue(ptr noundef %conn, ptr noundef %cmd, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %state, label %do.end [
    i32 41, label %sw.bb
    i32 38, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #11
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_conn_node) #11
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb.list_del_init.exit_crit_edge

sw.bb.list_del_init.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_conn_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %sw.bb.list_del_init.exit_crit_edge
  %7 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %i_conn_node, ptr %i_conn_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i_conn_node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #11
  tail call fastcc void @isert_put_cmd(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call fastcc i32 @isert_put_nopin(ptr noundef %cmd, ptr noundef %conn, i1 noundef zeroext false)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236, i32 noundef %state) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %list_del_init.exit
  %ret.0 = phi i32 [ -22, %do.end ], [ %call3, %sw.bb2 ], [ 0, %list_del_init.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_response_queue(ptr noundef %conn, ptr noundef %cmd, i32 noundef %state) #0 align 64 {
entry:
  %dummy.i.i.i138 = alloca ptr, align 4
  %dummy.i.i.i.i139 = alloca ptr, align 4
  %rx_wr.i.i.i140 = alloca %struct.ib_recv_wr, align 8
  %dummy.i.i.i83 = alloca ptr, align 4
  %dummy.i.i.i.i84 = alloca ptr, align 4
  %rx_wr.i.i.i85 = alloca %struct.ib_recv_wr, align 8
  %dummy.i.i.i25 = alloca ptr, align 4
  %dummy.i.i.i.i26 = alloca ptr, align 4
  %rx_wr.i.i.i27 = alloca %struct.ib_recv_wr, align 8
  %dummy.i.i.i = alloca ptr, align 4
  %dummy.i.i.i.i = alloca ptr, align 4
  %rx_wr.i.i.i = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %state, label %do.end [
    i32 15, label %sw.bb
    i32 17, label %sw.bb1
    i32 34, label %sw.bb3
    i32 19, label %sw.bb5
    i32 36, label %sw.bb7
    i32 29, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %tx_desc.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 21
  %send_wr1.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 24
  %device1.i.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device1.i.i, align 4
  %ib_device.i.i = getelementptr inbounds %struct.isert_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ib_device.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ib_device.i.i, align 4
  %dma_addr.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 41
  %7 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %dma_addr.i.i, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %conv.i.i.i = trunc i64 %8 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %10, i32 noundef %conv.i.i.i, i32 noundef 76, i32 noundef 1) #11
  %11 = getelementptr inbounds i8, ptr %tx_desc.i, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 27)
  %13 = ptrtoint ptr %tx_desc.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %tx_desc.i, align 1
  %num_sge.i.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 20
  %14 = ptrtoint ptr %num_sge.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1, ptr %num_sge.i.i.i, align 1
  %lkey.i.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 46
  %15 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %lkey.i.i.i, align 1
  %pd.i.i.i = getelementptr inbounds %struct.isert_device, ptr %4, i32 0, i32 3
  %17 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp.not.i.i.i = icmp eq i32 %16, %20
  br i1 %cmp.not.i.i.i, label %sw.bb.isert_create_send_desc.exit.i_crit_edge, label %if.then.i.i.i

sw.bb.isert_create_send_desc.exit.i_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb
  %21 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %lkey.i.i.i, align 1
  %22 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp7.i.i.i = icmp sgt i32 %22, 2
  br i1 %cmp7.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.isert_create_send_desc.exit.i_crit_edge, !prof !640

if.then.i.i.i.isert_create_send_desc.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef %tx_desc.i) #14
  br label %isert_create_send_desc.exit.i

isert_create_send_desc.exit.i:                    ; preds = %do.end.i.i.i, %if.then.i.i.i.isert_create_send_desc.exit.i_crit_edge, %sw.bb.isert_create_send_desc.exit.i_crit_edge
  %iscsi_header.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 28
  %call4.i = tail call i32 @iscsit_build_logout_rsp(ptr noundef %cmd, ptr noundef %conn, ptr noundef %iscsi_header.i) #11
  tail call fastcc void @isert_init_tx_hdrs(ptr noundef %1, ptr noundef %tx_desc.i) #11
  %tx_cqe.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %23 = ptrtoint ptr %tx_cqe.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store ptr @isert_send_done, ptr %tx_cqe.i.i, align 1
  %24 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 32
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx_cqe.i.i, ptr %24, align 8
  %snd_w_inv.i.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 27
  %26 = ptrtoint ptr %snd_w_inv.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %snd_w_inv.i.i, align 1, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %isert_create_send_desc.exit.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

isert_create_send_desc.exit.i.if.else.i.i_crit_edge: ; preds = %isert_create_send_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %isert_create_send_desc.exit.i
  %inv_rkey.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 13
  %28 = ptrtoint ptr %inv_rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inv_rkey.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %opcode.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %30 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 9, ptr %opcode.i.i, align 8
  %ex.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 49
  %31 = ptrtoint ptr %ex.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %ex.i.i, align 8
  br label %isert_init_send_wr.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %isert_create_send_desc.exit.i.if.else.i.i_crit_edge
  %opcode5.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %32 = ptrtoint ptr %opcode5.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %opcode5.i.i, align 8
  br label %isert_init_send_wr.exit.i

isert_init_send_wr.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %tx_sg.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 43
  %sg_list.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 40
  %33 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tx_sg.i.i, ptr %sg_list.i.i, align 8
  %34 = ptrtoint ptr %num_sge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_sge.i.i.i, align 4
  %num_sge7.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 44
  %36 = ptrtoint ptr %num_sge7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %num_sge7.i.i, align 4
  %send_flags.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 48
  %37 = ptrtoint ptr %send_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %send_flags.i.i, align 4
  %38 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp.i = icmp sgt i32 %38, 2
  br i1 %cmp.i, label %do.end.i, label %isert_init_send_wr.exit.i.do.end11.i_crit_edge, !prof !640

isert_init_send_wr.exit.i.do.end11.i_crit_edge:   ; preds = %isert_init_send_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i

do.end.i:                                         ; preds = %isert_init_send_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.254, ptr noundef %1) #14
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %isert_init_send_wr.exit.i.do.end11.i_crit_edge
  %rx_desc.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 50, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %rx_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_desc.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr.i.i.i) #11
  %41 = call ptr @memset(ptr %rx_wr.i.i.i, i32 255, i32 16)
  %in_use.i.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %40, i32 0, i32 4
  %42 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %in_use.i.i.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i.i, label %do.end11.i.if.end.i.i_crit_edge, label %if.end.i.i.i

do.end11.i.if.end.i.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %do.end11.i
  %44 = ptrtoint ptr %in_use.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %in_use.i.i.i, align 4
  %rx_cqe.i.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %40, i32 0, i32 3
  %45 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %rx_cqe.i.i.i, ptr %45, align 8
  %rx_sg.i.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %40, i32 0, i32 2
  %sg_list.i.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %sg_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %rx_sg.i.i.i, ptr %sg_list.i.i.i, align 8
  %num_sge.i.i25.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %num_sge.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %num_sge.i.i25.i, align 4
  %49 = ptrtoint ptr %rx_wr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rx_wr.i.i.i, align 8
  %qp.i.i.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %50 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %qp.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i.i) #11
  %52 = ptrtoint ptr %dummy.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i.i, align 4, !annotation !644
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %51, align 4
  %post_recv.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %54, i32 0, i32 1, i32 7
  %55 = ptrtoint ptr %post_recv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %post_recv.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %56(ptr noundef %51, ptr noundef nonnull %rx_wr.i.i.i, ptr noundef nonnull %dummy.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge, label %isert_post_recv.exit.i.i

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

isert_post_recv.exit.i.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %call.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i) #11
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end.i.i.i.if.end.i.i_crit_edge, %do.end11.i.if.end.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i) #11
  %qp.i.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %57 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qp.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  %59 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !644
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %58, align 4
  %post_send.i.i.i = getelementptr inbounds %struct.ib_device, ptr %61, i32 0, i32 1, i32 6
  %62 = ptrtoint ptr %post_send.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %post_send.i.i.i, align 4
  %call.i.i26.i = call i32 %63(ptr noundef %58, ptr noundef %send_wr1.i, ptr noundef nonnull %dummy.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i26.i, 0
  br i1 %tobool2.not.i.i, label %if.then, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250, i32 noundef %call.i.i26.i) #14
  br label %sw.epilog

if.then:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %logout_posted = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 26
  %64 = ptrtoint ptr %logout_posted to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %logout_posted, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @isert_put_nopin(ptr noundef %cmd, ptr noundef %conn, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %tx_desc.i29 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 21
  %send_wr1.i30 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 24
  %device1.i.i31 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %65 = ptrtoint ptr %device1.i.i31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device1.i.i31, align 4
  %ib_device.i.i32 = getelementptr inbounds %struct.isert_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ib_device.i.i32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ib_device.i.i32, align 4
  %dma_addr.i.i33 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 41
  %69 = ptrtoint ptr %dma_addr.i.i33 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %dma_addr.i.i33, align 1
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 8
  %conv.i.i.i34 = trunc i64 %70 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %72, i32 noundef %conv.i.i.i34, i32 noundef 76, i32 noundef 1) #11
  %73 = getelementptr inbounds i8, ptr %tx_desc.i29, i32 1
  %74 = call ptr @memset(ptr %73, i32 0, i32 27)
  %75 = ptrtoint ptr %tx_desc.i29 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 16, ptr %tx_desc.i29, align 1
  %num_sge.i.i.i35 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 20
  %76 = ptrtoint ptr %num_sge.i.i.i35 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 1, ptr %num_sge.i.i.i35, align 1
  %lkey.i.i.i36 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 46
  %77 = ptrtoint ptr %lkey.i.i.i36 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %lkey.i.i.i36, align 1
  %pd.i.i.i37 = getelementptr inbounds %struct.isert_device, ptr %66, i32 0, i32 3
  %79 = ptrtoint ptr %pd.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pd.i.i.i37, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %82)
  %cmp.not.i.i.i38 = icmp eq i32 %78, %82
  br i1 %cmp.not.i.i.i38, label %sw.bb3.isert_create_send_desc.exit.i47_crit_edge, label %if.then.i.i.i40

sw.bb3.isert_create_send_desc.exit.i47_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit.i47

if.then.i.i.i40:                                  ; preds = %sw.bb3
  %83 = ptrtoint ptr %lkey.i.i.i36 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %lkey.i.i.i36, align 1
  %84 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp7.i.i.i39 = icmp sgt i32 %84, 2
  br i1 %cmp7.i.i.i39, label %do.end.i.i.i42, label %if.then.i.i.i40.isert_create_send_desc.exit.i47_crit_edge, !prof !640

if.then.i.i.i40.isert_create_send_desc.exit.i47_crit_edge: ; preds = %if.then.i.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit.i47

do.end.i.i.i42:                                   ; preds = %if.then.i.i.i40
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef %tx_desc.i29) #14
  br label %isert_create_send_desc.exit.i47

isert_create_send_desc.exit.i47:                  ; preds = %do.end.i.i.i42, %if.then.i.i.i40.isert_create_send_desc.exit.i47_crit_edge, %sw.bb3.isert_create_send_desc.exit.i47_crit_edge
  %iscsi_header.i43 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 28
  tail call void @iscsit_build_task_mgt_rsp(ptr noundef %cmd, ptr noundef %conn, ptr noundef %iscsi_header.i43) #11
  tail call fastcc void @isert_init_tx_hdrs(ptr noundef %1, ptr noundef %tx_desc.i29) #11
  %tx_cqe.i.i44 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %85 = ptrtoint ptr %tx_cqe.i.i44 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store ptr @isert_send_done, ptr %tx_cqe.i.i44, align 1
  %86 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 32
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %tx_cqe.i.i44, ptr %86, align 8
  %snd_w_inv.i.i45 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 27
  %88 = ptrtoint ptr %snd_w_inv.i.i45 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %snd_w_inv.i.i45, align 1, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i46 = icmp eq i8 %89, 0
  br i1 %tobool.not.i.i46, label %isert_create_send_desc.exit.i47.if.else.i.i55_crit_edge, label %land.lhs.true.i.i50

isert_create_send_desc.exit.i47.if.else.i.i55_crit_edge: ; preds = %isert_create_send_desc.exit.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i55

land.lhs.true.i.i50:                              ; preds = %isert_create_send_desc.exit.i47
  %inv_rkey.i.i48 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 13
  %90 = ptrtoint ptr %inv_rkey.i.i48 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %inv_rkey.i.i48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool3.not.i.i49 = icmp eq i32 %91, 0
  br i1 %tobool3.not.i.i49, label %land.lhs.true.i.i50.if.else.i.i55_crit_edge, label %if.then.i.i53

land.lhs.true.i.i50.if.else.i.i55_crit_edge:      ; preds = %land.lhs.true.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i55

if.then.i.i53:                                    ; preds = %land.lhs.true.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  %opcode.i.i51 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %92 = ptrtoint ptr %opcode.i.i51 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 9, ptr %opcode.i.i51, align 8
  %ex.i.i52 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 49
  %93 = ptrtoint ptr %ex.i.i52 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %91, ptr %ex.i.i52, align 8
  br label %isert_init_send_wr.exit.i61

if.else.i.i55:                                    ; preds = %land.lhs.true.i.i50.if.else.i.i55_crit_edge, %isert_create_send_desc.exit.i47.if.else.i.i55_crit_edge
  %opcode5.i.i54 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %94 = ptrtoint ptr %opcode5.i.i54 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %opcode5.i.i54, align 8
  br label %isert_init_send_wr.exit.i61

isert_init_send_wr.exit.i61:                      ; preds = %if.else.i.i55, %if.then.i.i53
  %tx_sg.i.i56 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 43
  %sg_list.i.i57 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 40
  %95 = ptrtoint ptr %sg_list.i.i57 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %tx_sg.i.i56, ptr %sg_list.i.i57, align 8
  %96 = ptrtoint ptr %num_sge.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_sge.i.i.i35, align 4
  %num_sge7.i.i58 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 44
  %98 = ptrtoint ptr %num_sge7.i.i58 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %num_sge7.i.i58, align 4
  %send_flags.i.i59 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 48
  %99 = ptrtoint ptr %send_flags.i.i59 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %send_flags.i.i59, align 4
  %100 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp.i60 = icmp sgt i32 %100, 2
  br i1 %cmp.i60, label %do.end.i62, label %isert_init_send_wr.exit.i61.do.end10.i_crit_edge, !prof !640

isert_init_send_wr.exit.i61.do.end10.i_crit_edge: ; preds = %isert_init_send_wr.exit.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

do.end.i62:                                       ; preds = %isert_init_send_wr.exit.i61
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.256, ptr noundef %1) #14
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i62, %isert_init_send_wr.exit.i61.do.end10.i_crit_edge
  %rx_desc.i.i63 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 50, i32 0, i32 0, i32 1
  %101 = ptrtoint ptr %rx_desc.i.i63 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_desc.i.i63, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr.i.i.i27) #11
  %103 = call ptr @memset(ptr %rx_wr.i.i.i27, i32 255, i32 16)
  %in_use.i.i.i64 = getelementptr inbounds %struct.iser_rx_desc, ptr %102, i32 0, i32 4
  %104 = ptrtoint ptr %in_use.i.i.i64 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %in_use.i.i.i64, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i.i.i65 = icmp eq i8 %105, 0
  br i1 %tobool.not.i.i.i65, label %do.end10.i.if.end.i.i79_crit_edge, label %if.end.i.i.i73

do.end10.i.if.end.i.i79_crit_edge:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i79

if.end.i.i.i73:                                   ; preds = %do.end10.i
  %106 = ptrtoint ptr %in_use.i.i.i64 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %in_use.i.i.i64, align 4
  %rx_cqe.i.i.i66 = getelementptr inbounds %struct.iser_rx_desc, ptr %102, i32 0, i32 3
  %107 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i27, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %rx_cqe.i.i.i66, ptr %107, align 8
  %rx_sg.i.i.i67 = getelementptr inbounds %struct.iser_rx_desc, ptr %102, i32 0, i32 2
  %sg_list.i.i.i68 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i27, i32 0, i32 2
  %109 = ptrtoint ptr %sg_list.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %rx_sg.i.i.i67, ptr %sg_list.i.i.i68, align 8
  %num_sge.i.i24.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i27, i32 0, i32 3
  %110 = ptrtoint ptr %num_sge.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %num_sge.i.i24.i, align 4
  %111 = ptrtoint ptr %rx_wr.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %rx_wr.i.i.i27, align 8
  %qp.i.i.i69 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %112 = ptrtoint ptr %qp.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %qp.i.i.i69, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i.i26) #11
  %114 = ptrtoint ptr %dummy.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i.i26, align 4, !annotation !644
  %115 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %113, align 4
  %post_recv.i.i.i.i70 = getelementptr inbounds %struct.ib_device, ptr %116, i32 0, i32 1, i32 7
  %117 = ptrtoint ptr %post_recv.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %post_recv.i.i.i.i70, align 4
  %call.i.i.i.i71 = call i32 %118(ptr noundef %113, ptr noundef nonnull %rx_wr.i.i.i27, ptr noundef nonnull %dummy.i.i.i.i26) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i.i26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i71)
  %tobool2.not.i.i.i72 = icmp eq i32 %call.i.i.i.i71, 0
  br i1 %tobool2.not.i.i.i72, label %if.end.i.i.i73.if.end.i.i79_crit_edge, label %isert_post_recv.exit.i.i75

if.end.i.i.i73.if.end.i.i79_crit_edge:            ; preds = %if.end.i.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i79

isert_post_recv.exit.i.i75:                       ; preds = %if.end.i.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %call.i.i.i.i71) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i27) #11
  br label %sw.epilog

if.end.i.i79:                                     ; preds = %if.end.i.i.i73.if.end.i.i79_crit_edge, %do.end10.i.if.end.i.i79_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i27) #11
  %qp.i.i76 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %119 = ptrtoint ptr %qp.i.i76 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %qp.i.i76, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i25) #11
  %121 = ptrtoint ptr %dummy.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i25, align 4, !annotation !644
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %120, align 4
  %post_send.i.i.i77 = getelementptr inbounds %struct.ib_device, ptr %123, i32 0, i32 1, i32 6
  %124 = ptrtoint ptr %post_send.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %post_send.i.i.i77, align 4
  %call.i.i25.i = call i32 %125(ptr noundef %120, ptr noundef %send_wr1.i30, ptr noundef nonnull %dummy.i.i.i25) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i)
  %tobool2.not.i.i78 = icmp eq i32 %call.i.i25.i, 0
  br i1 %tobool2.not.i.i78, label %if.end.i.i79.sw.epilog_crit_edge, label %do.end.i.i81

if.end.i.i79.sw.epilog_crit_edge:                 ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i.i81:                                     ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250, i32 noundef %call.i.i25.i) #14
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  %tx_desc.i87 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 21
  %device2.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %126 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %device2.i, align 4
  %ib_device.i = getelementptr inbounds %struct.isert_device, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %ib_device.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ib_device.i, align 4
  %iscsi_header.i88 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 28
  %dma_addr.i.i89 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 41
  %130 = ptrtoint ptr %dma_addr.i.i89 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 8)
  %131 = load i64, ptr %dma_addr.i.i89, align 1
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %129, align 8
  %conv.i.i.i90 = trunc i64 %131 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %133, i32 noundef %conv.i.i.i90, i32 noundef 76, i32 noundef 1) #11
  %134 = getelementptr inbounds i8, ptr %tx_desc.i87, i32 1
  %135 = call ptr @memset(ptr %134, i32 0, i32 27)
  %136 = ptrtoint ptr %tx_desc.i87 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 16, ptr %tx_desc.i87, align 1
  %num_sge.i.i.i91 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 20
  %137 = ptrtoint ptr %num_sge.i.i.i91 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 1, ptr %num_sge.i.i.i91, align 1
  %lkey.i.i.i92 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 46
  %138 = ptrtoint ptr %lkey.i.i.i92 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %lkey.i.i.i92, align 1
  %pd.i.i.i93 = getelementptr inbounds %struct.isert_device, ptr %127, i32 0, i32 3
  %140 = ptrtoint ptr %pd.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pd.i.i.i93, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %143)
  %cmp.not.i.i.i94 = icmp eq i32 %139, %143
  br i1 %cmp.not.i.i.i94, label %sw.bb5.isert_create_send_desc.exit.i99_crit_edge, label %if.then.i.i.i96

sw.bb5.isert_create_send_desc.exit.i99_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit.i99

if.then.i.i.i96:                                  ; preds = %sw.bb5
  %144 = ptrtoint ptr %lkey.i.i.i92 to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 %143, ptr %lkey.i.i.i92, align 1
  %145 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %145)
  %cmp7.i.i.i95 = icmp sgt i32 %145, 2
  br i1 %cmp7.i.i.i95, label %do.end.i.i.i98, label %if.then.i.i.i96.isert_create_send_desc.exit.i99_crit_edge, !prof !640

if.then.i.i.i96.isert_create_send_desc.exit.i99_crit_edge: ; preds = %if.then.i.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit.i99

do.end.i.i.i98:                                   ; preds = %if.then.i.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef %tx_desc.i87) #14
  br label %isert_create_send_desc.exit.i99

isert_create_send_desc.exit.i99:                  ; preds = %do.end.i.i.i98, %if.then.i.i.i96.isert_create_send_desc.exit.i99_crit_edge, %sw.bb5.isert_create_send_desc.exit.i99_crit_edge
  tail call void @iscsit_build_reject(ptr noundef %cmd, ptr noundef %conn, ptr noundef %iscsi_header.i88) #11
  tail call fastcc void @isert_init_tx_hdrs(ptr noundef %1, ptr noundef %tx_desc.i87) #11
  %dlength.i = getelementptr inbounds %struct.isert_cmd, ptr %add.ptr.i.i, i32 0, i32 10, i32 1, i32 4
  %146 = ptrtoint ptr %dlength.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %dlength.i, align 1
  %arrayidx10.i = getelementptr %struct.isert_cmd, ptr %add.ptr.i.i, i32 0, i32 10, i32 1, i32 4, i32 1
  %147 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr %struct.isert_cmd, ptr %add.ptr.i.i, i32 0, i32 10, i32 1, i32 4, i32 2
  %148 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 48, ptr %arrayidx12.i, align 1
  %buf_ptr.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 44
  %149 = ptrtoint ptr %buf_ptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %buf_ptr.i, align 16
  %151 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %129, align 8
  %call.i.i60.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %150) #11
  br i1 %call.i.i60.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %isert_create_send_desc.exit.i99
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i61.i, !prof !642

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit.i

if.then.i.i61.i:                                  ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %152) #11
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %154, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i61.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i61.i.dev_name.exit.i.i.i_crit_edge:    ; preds = %if.then.i.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %152, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i61.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %156, %if.end.i.i.i.i ], [ %154, %if.then.i.i61.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #11
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %isert_create_send_desc.exit.i99
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %152, ptr noundef %150, i32 noundef 48) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %157 = load ptr, ptr @mem_map, align 4
  %158 = ptrtoint ptr %150 to i32
  %sub.i.i.i = add i32 %158, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %157, i32 %shr.i.i.i
  %and.i.i.i = and i32 %158, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %152, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 48, i32 noundef 1, i32 noundef 0) #11
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %conv2.i.i = zext i32 %retval.0.i.i.i to i64
  %pdu_buf_dma.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 16
  %159 = ptrtoint ptr %pdu_buf_dma.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %conv2.i.i, ptr %pdu_buf_dma.i, align 8
  %160 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %129, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %161, i32 noundef %retval.0.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %ib_dma_map_single.exit.i.sw.epilog_crit_edge, label %if.end.i

ib_dma_map_single.exit.i.sw.epilog_crit_edge:     ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i:                                         ; preds = %ib_dma_map_single.exit.i
  %arrayidx.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47
  %send_wr1.i100 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 24
  %pdu_buf_len.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 18
  %162 = ptrtoint ptr %pdu_buf_len.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 48, ptr %pdu_buf_len.i, align 8
  %163 = ptrtoint ptr %pdu_buf_dma.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %pdu_buf_dma.i, align 8
  %165 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %arrayidx.i, align 8
  %length.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 8
  %166 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 48, ptr %length.i, align 8
  %167 = ptrtoint ptr %pd.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pd.i.i.i93, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %lkey.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 12
  %171 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %lkey.i, align 4
  %172 = ptrtoint ptr %num_sge.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 2, ptr %num_sge.i.i.i91, align 4
  %tx_cqe.i.i101 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %173 = ptrtoint ptr %tx_cqe.i.i101 to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store ptr @isert_send_done, ptr %tx_cqe.i.i101, align 1
  %174 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 32
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %tx_cqe.i.i101, ptr %174, align 8
  %snd_w_inv.i.i102 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 27
  %176 = ptrtoint ptr %snd_w_inv.i.i102 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %snd_w_inv.i.i102, align 1, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i.i103 = icmp eq i8 %177, 0
  br i1 %tobool.not.i.i103, label %if.end.i.if.else.i.i111_crit_edge, label %land.lhs.true.i.i106

if.end.i.if.else.i.i111_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i111

land.lhs.true.i.i106:                             ; preds = %if.end.i
  %inv_rkey.i.i104 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 13
  %178 = ptrtoint ptr %inv_rkey.i.i104 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %inv_rkey.i.i104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool3.not.i.i105 = icmp eq i32 %179, 0
  br i1 %tobool3.not.i.i105, label %land.lhs.true.i.i106.if.else.i.i111_crit_edge, label %if.then.i.i109

land.lhs.true.i.i106.if.else.i.i111_crit_edge:    ; preds = %land.lhs.true.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i111

if.then.i.i109:                                   ; preds = %land.lhs.true.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  %opcode.i.i107 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %180 = ptrtoint ptr %opcode.i.i107 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 9, ptr %opcode.i.i107, align 8
  %ex.i.i108 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 49
  %181 = ptrtoint ptr %ex.i.i108 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %179, ptr %ex.i.i108, align 8
  br label %isert_init_send_wr.exit.i117

if.else.i.i111:                                   ; preds = %land.lhs.true.i.i106.if.else.i.i111_crit_edge, %if.end.i.if.else.i.i111_crit_edge
  %opcode5.i.i110 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %182 = ptrtoint ptr %opcode5.i.i110 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 2, ptr %opcode5.i.i110, align 8
  br label %isert_init_send_wr.exit.i117

isert_init_send_wr.exit.i117:                     ; preds = %if.else.i.i111, %if.then.i.i109
  %tx_sg.i.i112 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 43
  %sg_list.i.i113 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 40
  %183 = ptrtoint ptr %sg_list.i.i113 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %tx_sg.i.i112, ptr %sg_list.i.i113, align 8
  %num_sge7.i.i114 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 44
  %184 = ptrtoint ptr %num_sge7.i.i114 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 2, ptr %num_sge7.i.i114, align 4
  %send_flags.i.i115 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 48
  %185 = ptrtoint ptr %send_flags.i.i115 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 2, ptr %send_flags.i.i115, align 4
  %186 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %186)
  %cmp.i116 = icmp sgt i32 %186, 2
  br i1 %cmp.i116, label %do.end.i118, label %isert_init_send_wr.exit.i117.do.end25.i_crit_edge, !prof !640

isert_init_send_wr.exit.i117.do.end25.i_crit_edge: ; preds = %isert_init_send_wr.exit.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25.i

do.end.i118:                                      ; preds = %isert_init_send_wr.exit.i117
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.258, ptr noundef %1) #14
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end.i118, %isert_init_send_wr.exit.i117.do.end25.i_crit_edge
  %rx_desc.i.i119 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 50, i32 0, i32 0, i32 1
  %187 = ptrtoint ptr %rx_desc.i.i119 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rx_desc.i.i119, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr.i.i.i85) #11
  %189 = call ptr @memset(ptr %rx_wr.i.i.i85, i32 255, i32 16)
  %in_use.i.i.i120 = getelementptr inbounds %struct.iser_rx_desc, ptr %188, i32 0, i32 4
  %190 = ptrtoint ptr %in_use.i.i.i120 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %in_use.i.i.i120, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i.i.i121 = icmp eq i8 %191, 0
  br i1 %tobool.not.i.i.i121, label %do.end25.i.if.end.i.i135_crit_edge, label %if.end.i.i.i129

do.end25.i.if.end.i.i135_crit_edge:               ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i135

if.end.i.i.i129:                                  ; preds = %do.end25.i
  %192 = ptrtoint ptr %in_use.i.i.i120 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %in_use.i.i.i120, align 4
  %rx_cqe.i.i.i122 = getelementptr inbounds %struct.iser_rx_desc, ptr %188, i32 0, i32 3
  %193 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i85, i32 0, i32 1
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %rx_cqe.i.i.i122, ptr %193, align 8
  %rx_sg.i.i.i123 = getelementptr inbounds %struct.iser_rx_desc, ptr %188, i32 0, i32 2
  %sg_list.i.i.i124 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i85, i32 0, i32 2
  %195 = ptrtoint ptr %sg_list.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %rx_sg.i.i.i123, ptr %sg_list.i.i.i124, align 8
  %num_sge.i.i62.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i85, i32 0, i32 3
  %196 = ptrtoint ptr %num_sge.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 1, ptr %num_sge.i.i62.i, align 4
  %197 = ptrtoint ptr %rx_wr.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr null, ptr %rx_wr.i.i.i85, align 8
  %qp.i.i.i125 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %198 = ptrtoint ptr %qp.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %qp.i.i.i125, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i.i84) #11
  %200 = ptrtoint ptr %dummy.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i.i84, align 4, !annotation !644
  %201 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %199, align 4
  %post_recv.i.i.i.i126 = getelementptr inbounds %struct.ib_device, ptr %202, i32 0, i32 1, i32 7
  %203 = ptrtoint ptr %post_recv.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %post_recv.i.i.i.i126, align 4
  %call.i.i.i.i127 = call i32 %204(ptr noundef %199, ptr noundef nonnull %rx_wr.i.i.i85, ptr noundef nonnull %dummy.i.i.i.i84) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i.i84) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i127)
  %tobool2.not.i.i.i128 = icmp eq i32 %call.i.i.i.i127, 0
  br i1 %tobool2.not.i.i.i128, label %if.end.i.i.i129.if.end.i.i135_crit_edge, label %isert_post_recv.exit.i.i131

if.end.i.i.i129.if.end.i.i135_crit_edge:          ; preds = %if.end.i.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i135

isert_post_recv.exit.i.i131:                      ; preds = %if.end.i.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %call.i.i.i.i127) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i85) #11
  br label %sw.epilog

if.end.i.i135:                                    ; preds = %if.end.i.i.i129.if.end.i.i135_crit_edge, %do.end25.i.if.end.i.i135_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i85) #11
  %qp.i.i132 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %205 = ptrtoint ptr %qp.i.i132 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %qp.i.i132, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i83) #11
  %207 = ptrtoint ptr %dummy.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i83, align 4, !annotation !644
  %208 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %206, align 4
  %post_send.i.i.i133 = getelementptr inbounds %struct.ib_device, ptr %209, i32 0, i32 1, i32 6
  %210 = ptrtoint ptr %post_send.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %post_send.i.i.i133, align 4
  %call.i.i63.i = call i32 %211(ptr noundef %206, ptr noundef %send_wr1.i100, ptr noundef nonnull %dummy.i.i.i83) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63.i)
  %tobool2.not.i.i134 = icmp eq i32 %call.i.i63.i, 0
  br i1 %tobool2.not.i.i134, label %if.end.i.i135.sw.epilog_crit_edge, label %do.end.i.i137

if.end.i.i135.sw.epilog_crit_edge:                ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i.i137:                                    ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250, i32 noundef %call.i.i63.i) #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %tx_desc.i142 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 21
  %send_wr1.i143 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 24
  %iscsi_header.i144 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 28
  %device1.i.i145 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %212 = ptrtoint ptr %device1.i.i145 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %device1.i.i145, align 4
  %ib_device.i.i146 = getelementptr inbounds %struct.isert_device, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %ib_device.i.i146 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ib_device.i.i146, align 4
  %dma_addr.i.i147 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 41
  %216 = ptrtoint ptr %dma_addr.i.i147 to i32
  call void @__asan_loadN_noabort(i32 %216, i32 8)
  %217 = load i64, ptr %dma_addr.i.i147, align 1
  %218 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %215, align 8
  %conv.i.i.i148 = trunc i64 %217 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %219, i32 noundef %conv.i.i.i148, i32 noundef 76, i32 noundef 1) #11
  %220 = getelementptr inbounds i8, ptr %tx_desc.i142, i32 1
  %221 = call ptr @memset(ptr %220, i32 0, i32 27)
  %222 = ptrtoint ptr %tx_desc.i142 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 16, ptr %tx_desc.i142, align 1
  %num_sge.i.i.i149 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 20
  %223 = ptrtoint ptr %num_sge.i.i.i149 to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 1, ptr %num_sge.i.i.i149, align 1
  %lkey.i.i.i150 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 46
  %224 = ptrtoint ptr %lkey.i.i.i150 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %lkey.i.i.i150, align 1
  %pd.i.i.i151 = getelementptr inbounds %struct.isert_device, ptr %213, i32 0, i32 3
  %226 = ptrtoint ptr %pd.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pd.i.i.i151, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %227, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %229)
  %cmp.not.i.i.i152 = icmp eq i32 %225, %229
  br i1 %cmp.not.i.i.i152, label %sw.bb7.isert_create_send_desc.exit.i159_crit_edge, label %if.then.i.i.i154

sw.bb7.isert_create_send_desc.exit.i159_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit.i159

if.then.i.i.i154:                                 ; preds = %sw.bb7
  %230 = ptrtoint ptr %lkey.i.i.i150 to i32
  call void @__asan_storeN_noabort(i32 %230, i32 4)
  store i32 %229, ptr %lkey.i.i.i150, align 1
  %231 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %231)
  %cmp7.i.i.i153 = icmp sgt i32 %231, 2
  br i1 %cmp7.i.i.i153, label %do.end.i.i.i156, label %if.then.i.i.i154.isert_create_send_desc.exit.i159_crit_edge, !prof !640

if.then.i.i.i154.isert_create_send_desc.exit.i159_crit_edge: ; preds = %if.then.i.i.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit.i159

do.end.i.i.i156:                                  ; preds = %if.then.i.i.i154
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef %tx_desc.i142) #14
  br label %isert_create_send_desc.exit.i159

isert_create_send_desc.exit.i159:                 ; preds = %do.end.i.i.i156, %if.then.i.i.i154.isert_create_send_desc.exit.i159_crit_edge, %sw.bb7.isert_create_send_desc.exit.i159_crit_edge
  %call4.i157 = tail call i32 @iscsit_build_text_rsp(ptr noundef %cmd, ptr noundef %conn, ptr noundef %iscsi_header.i144, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i157)
  %cmp.i158 = icmp slt i32 %call4.i157, 0
  br i1 %cmp.i158, label %isert_create_send_desc.exit.i159.sw.epilog_crit_edge, label %if.end.i160

isert_create_send_desc.exit.i159.sw.epilog_crit_edge: ; preds = %isert_create_send_desc.exit.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i160:                                      ; preds = %isert_create_send_desc.exit.i159
  tail call fastcc void @isert_init_tx_hdrs(ptr noundef %1, ptr noundef %tx_desc.i142) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i157)
  %tobool.not.i = icmp eq i32 %call4.i157, 0
  br i1 %tobool.not.i, label %if.end.i160.if.end21.i_crit_edge, label %if.then7.i

if.end.i160.if.end21.i_crit_edge:                 ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then7.i:                                       ; preds = %if.end.i160
  %232 = ptrtoint ptr %device1.i.i145 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %device1.i.i145, align 4
  %ib_device.i161 = getelementptr inbounds %struct.isert_device, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %ib_device.i161 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ib_device.i161, align 4
  %buf_ptr.i162 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 44
  %236 = ptrtoint ptr %buf_ptr.i162 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %buf_ptr.i162, align 16
  %238 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %235, align 8
  %call.i.i67.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %237) #11
  br i1 %call.i.i67.i, label %land.rhs.i.i.i164, label %if.end39.i.i.i176

land.rhs.i.i.i164:                                ; preds = %if.then7.i
  %.b1.i.i.i163 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i163, label %land.rhs.i.i.i164.ib_dma_map_single.exit.i181_crit_edge, label %if.then.i.i68.i, !prof !642

land.rhs.i.i.i164.ib_dma_map_single.exit.i181_crit_edge: ; preds = %land.rhs.i.i.i164
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit.i181

if.then.i.i68.i:                                  ; preds = %land.rhs.i.i.i164
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i165 = tail call ptr @dev_driver_string(ptr noundef %239) #11
  %init_name.i.i.i.i166 = getelementptr inbounds %struct.device, ptr %239, i32 0, i32 3
  %240 = ptrtoint ptr %init_name.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %init_name.i.i.i.i166, align 8
  %tobool.not.i.i.i.i167 = icmp eq ptr %241, null
  br i1 %tobool.not.i.i.i.i167, label %if.end.i.i.i.i168, label %if.then.i.i68.i.dev_name.exit.i.i.i170_crit_edge

if.then.i.i68.i.dev_name.exit.i.i.i170_crit_edge: ; preds = %if.then.i.i68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i.i170

if.end.i.i.i.i168:                                ; preds = %if.then.i.i68.i
  call void @__sanitizer_cov_trace_pc() #13
  %242 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %239, align 4
  br label %dev_name.exit.i.i.i170

dev_name.exit.i.i.i170:                           ; preds = %if.end.i.i.i.i168, %if.then.i.i68.i.dev_name.exit.i.i.i170_crit_edge
  %retval.0.i.i.i.i169 = phi ptr [ %243, %if.end.i.i.i.i168 ], [ %241, %if.then.i.i68.i.dev_name.exit.i.i.i170_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i.i165, ptr noundef %retval.0.i.i.i.i169) #11
  br label %ib_dma_map_single.exit.i181

if.end39.i.i.i176:                                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %239, ptr noundef %237, i32 noundef %call4.i157) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %244 = load ptr, ptr @mem_map, align 4
  %245 = ptrtoint ptr %237 to i32
  %sub.i.i.i171 = add i32 %245, 1073741824
  %shr.i.i.i172 = lshr i32 %sub.i.i.i171, 12
  %add.ptr.i.i.i173 = getelementptr %struct.page, ptr %244, i32 %shr.i.i.i172
  %and.i.i.i174 = and i32 %245, 4095
  %call41.i.i.i175 = tail call i32 @dma_map_page_attrs(ptr noundef %239, ptr noundef %add.ptr.i.i.i173, i32 noundef %and.i.i.i174, i32 noundef %call4.i157, i32 noundef 1, i32 noundef 0) #11
  br label %ib_dma_map_single.exit.i181

ib_dma_map_single.exit.i181:                      ; preds = %if.end39.i.i.i176, %dev_name.exit.i.i.i170, %land.rhs.i.i.i164.ib_dma_map_single.exit.i181_crit_edge
  %retval.0.i.i.i177 = phi i32 [ %call41.i.i.i175, %if.end39.i.i.i176 ], [ -1, %dev_name.exit.i.i.i170 ], [ -1, %land.rhs.i.i.i164.ib_dma_map_single.exit.i181_crit_edge ]
  %conv2.i.i178 = zext i32 %retval.0.i.i.i177 to i64
  %pdu_buf_dma.i179 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 16
  %246 = ptrtoint ptr %pdu_buf_dma.i179 to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %conv2.i.i178, ptr %pdu_buf_dma.i179, align 8
  %247 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %235, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %248, i32 noundef %retval.0.i.i.i177) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i177)
  %cmp.i.i.i180 = icmp eq i32 %retval.0.i.i.i177, -1
  br i1 %cmp.i.i.i180, label %ib_dma_map_single.exit.i181.sw.epilog_crit_edge, label %if.end15.i

ib_dma_map_single.exit.i181.sw.epilog_crit_edge:  ; preds = %ib_dma_map_single.exit.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end15.i:                                       ; preds = %ib_dma_map_single.exit.i181
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i182 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47
  %pdu_buf_len.i183 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 18
  %249 = ptrtoint ptr %pdu_buf_len.i183 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %call4.i157, ptr %pdu_buf_len.i183, align 8
  %250 = ptrtoint ptr %pdu_buf_dma.i179 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %pdu_buf_dma.i179, align 8
  %252 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %251, ptr %arrayidx.i182, align 8
  %length.i184 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 8
  %253 = ptrtoint ptr %length.i184 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %call4.i157, ptr %length.i184, align 8
  %pd.i = getelementptr inbounds %struct.isert_device, ptr %233, i32 0, i32 3
  %254 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %pd.i, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %255, align 4
  %lkey.i185 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 12
  %258 = ptrtoint ptr %lkey.i185 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %lkey.i185, align 4
  %259 = ptrtoint ptr %num_sge.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 2, ptr %num_sge.i.i.i149, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end15.i, %if.end.i160.if.end21.i_crit_edge
  %tx_cqe.i.i186 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %260 = ptrtoint ptr %tx_cqe.i.i186 to i32
  call void @__asan_storeN_noabort(i32 %260, i32 4)
  store ptr @isert_send_done, ptr %tx_cqe.i.i186, align 1
  %261 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 32
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %tx_cqe.i.i186, ptr %261, align 8
  %snd_w_inv.i.i187 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 27
  %263 = ptrtoint ptr %snd_w_inv.i.i187 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %snd_w_inv.i.i187, align 1, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i.i188 = icmp eq i8 %264, 0
  br i1 %tobool.not.i.i188, label %if.end21.i.if.else.i.i196_crit_edge, label %land.lhs.true.i.i191

if.end21.i.if.else.i.i196_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i196

land.lhs.true.i.i191:                             ; preds = %if.end21.i
  %inv_rkey.i.i189 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 13
  %265 = ptrtoint ptr %inv_rkey.i.i189 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %inv_rkey.i.i189, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool3.not.i.i190 = icmp eq i32 %266, 0
  br i1 %tobool3.not.i.i190, label %land.lhs.true.i.i191.if.else.i.i196_crit_edge, label %if.then.i.i194

land.lhs.true.i.i191.if.else.i.i196_crit_edge:    ; preds = %land.lhs.true.i.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i196

if.then.i.i194:                                   ; preds = %land.lhs.true.i.i191
  call void @__sanitizer_cov_trace_pc() #13
  %opcode.i.i192 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %267 = ptrtoint ptr %opcode.i.i192 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 9, ptr %opcode.i.i192, align 8
  %ex.i.i193 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 49
  %268 = ptrtoint ptr %ex.i.i193 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %266, ptr %ex.i.i193, align 8
  br label %isert_init_send_wr.exit.i201

if.else.i.i196:                                   ; preds = %land.lhs.true.i.i191.if.else.i.i196_crit_edge, %if.end21.i.if.else.i.i196_crit_edge
  %opcode5.i.i195 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %269 = ptrtoint ptr %opcode5.i.i195 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 2, ptr %opcode5.i.i195, align 8
  br label %isert_init_send_wr.exit.i201

isert_init_send_wr.exit.i201:                     ; preds = %if.else.i.i196, %if.then.i.i194
  %tx_sg.i.i197 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 43
  %sg_list.i.i198 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 40
  %270 = ptrtoint ptr %sg_list.i.i198 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %tx_sg.i.i197, ptr %sg_list.i.i198, align 8
  %271 = ptrtoint ptr %num_sge.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %num_sge.i.i.i149, align 4
  %num_sge7.i.i199 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 44
  %273 = ptrtoint ptr %num_sge7.i.i199 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %num_sge7.i.i199, align 4
  %send_flags.i.i200 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 48
  %274 = ptrtoint ptr %send_flags.i.i200 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 2, ptr %send_flags.i.i200, align 4
  %275 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %275)
  %cmp22.i = icmp sgt i32 %275, 2
  br i1 %cmp22.i, label %do.end.i202, label %isert_init_send_wr.exit.i201.do.end30.i_crit_edge, !prof !640

isert_init_send_wr.exit.i201.do.end30.i_crit_edge: ; preds = %isert_init_send_wr.exit.i201
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

do.end.i202:                                      ; preds = %isert_init_send_wr.exit.i201
  call void @__sanitizer_cov_trace_pc() #13
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.260, ptr noundef %1) #14
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end.i202, %isert_init_send_wr.exit.i201.do.end30.i_crit_edge
  %rx_desc.i.i203 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 50, i32 0, i32 0, i32 1
  %276 = ptrtoint ptr %rx_desc.i.i203 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %rx_desc.i.i203, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr.i.i.i140) #11
  %278 = call ptr @memset(ptr %rx_wr.i.i.i140, i32 255, i32 16)
  %in_use.i.i.i204 = getelementptr inbounds %struct.iser_rx_desc, ptr %277, i32 0, i32 4
  %279 = ptrtoint ptr %in_use.i.i.i204 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %in_use.i.i.i204, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool.not.i.i.i205 = icmp eq i8 %280, 0
  br i1 %tobool.not.i.i.i205, label %do.end30.i.if.end.i.i219_crit_edge, label %if.end.i.i.i213

do.end30.i.if.end.i.i219_crit_edge:               ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i219

if.end.i.i.i213:                                  ; preds = %do.end30.i
  %281 = ptrtoint ptr %in_use.i.i.i204 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 0, ptr %in_use.i.i.i204, align 4
  %rx_cqe.i.i.i206 = getelementptr inbounds %struct.iser_rx_desc, ptr %277, i32 0, i32 3
  %282 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i140, i32 0, i32 1
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %rx_cqe.i.i.i206, ptr %282, align 8
  %rx_sg.i.i.i207 = getelementptr inbounds %struct.iser_rx_desc, ptr %277, i32 0, i32 2
  %sg_list.i.i.i208 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i140, i32 0, i32 2
  %284 = ptrtoint ptr %sg_list.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %rx_sg.i.i.i207, ptr %sg_list.i.i.i208, align 8
  %num_sge.i.i69.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i140, i32 0, i32 3
  %285 = ptrtoint ptr %num_sge.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 1, ptr %num_sge.i.i69.i, align 4
  %286 = ptrtoint ptr %rx_wr.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr null, ptr %rx_wr.i.i.i140, align 8
  %qp.i.i.i209 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %287 = ptrtoint ptr %qp.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %qp.i.i.i209, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i.i139) #11
  %289 = ptrtoint ptr %dummy.i.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i.i139, align 4, !annotation !644
  %290 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %288, align 4
  %post_recv.i.i.i.i210 = getelementptr inbounds %struct.ib_device, ptr %291, i32 0, i32 1, i32 7
  %292 = ptrtoint ptr %post_recv.i.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %post_recv.i.i.i.i210, align 4
  %call.i.i.i.i211 = call i32 %293(ptr noundef %288, ptr noundef nonnull %rx_wr.i.i.i140, ptr noundef nonnull %dummy.i.i.i.i139) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i.i139) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i211)
  %tobool2.not.i.i.i212 = icmp eq i32 %call.i.i.i.i211, 0
  br i1 %tobool2.not.i.i.i212, label %if.end.i.i.i213.if.end.i.i219_crit_edge, label %isert_post_recv.exit.i.i215

if.end.i.i.i213.if.end.i.i219_crit_edge:          ; preds = %if.end.i.i.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i219

isert_post_recv.exit.i.i215:                      ; preds = %if.end.i.i.i213
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %call.i.i.i.i211) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i140) #11
  br label %sw.epilog

if.end.i.i219:                                    ; preds = %if.end.i.i.i213.if.end.i.i219_crit_edge, %do.end30.i.if.end.i.i219_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i140) #11
  %qp.i.i216 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %294 = ptrtoint ptr %qp.i.i216 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %qp.i.i216, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i138) #11
  %296 = ptrtoint ptr %dummy.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i138, align 4, !annotation !644
  %297 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %295, align 4
  %post_send.i.i.i217 = getelementptr inbounds %struct.ib_device, ptr %298, i32 0, i32 1, i32 6
  %299 = ptrtoint ptr %post_send.i.i.i217 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %post_send.i.i.i217, align 4
  %call.i.i70.i = call i32 %300(ptr noundef %295, ptr noundef %send_wr1.i143, ptr noundef nonnull %dummy.i.i.i138) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i138) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70.i)
  %tobool2.not.i.i218 = icmp eq i32 %call.i.i70.i, 0
  br i1 %tobool2.not.i.i218, label %if.end.i.i219.sw.epilog_crit_edge, label %do.end.i.i221

if.end.i.i219.sw.epilog_crit_edge:                ; preds = %if.end.i.i219
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.i.i221:                                    ; preds = %if.end.i.i219
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250, i32 noundef %call.i.i70.i) #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 @isert_put_response(ptr noundef %conn, ptr noundef %cmd)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252, i32 noundef %state) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb9, %do.end.i.i221, %if.end.i.i219.sw.epilog_crit_edge, %isert_post_recv.exit.i.i215, %ib_dma_map_single.exit.i181.sw.epilog_crit_edge, %isert_create_send_desc.exit.i159.sw.epilog_crit_edge, %do.end.i.i137, %if.end.i.i135.sw.epilog_crit_edge, %isert_post_recv.exit.i.i131, %ib_dma_map_single.exit.i.sw.epilog_crit_edge, %do.end.i.i81, %if.end.i.i79.sw.epilog_crit_edge, %isert_post_recv.exit.i.i75, %sw.bb1, %if.then, %do.end.i.i, %isert_post_recv.exit.i.i
  %ret.0 = phi i32 [ -22, %do.end ], [ %call10, %sw.bb9 ], [ %call2, %sw.bb1 ], [ 0, %if.then ], [ %call.i.i25.i, %do.end.i.i81 ], [ %call.i.i.i.i71, %isert_post_recv.exit.i.i75 ], [ 0, %if.end.i.i79.sw.epilog_crit_edge ], [ -12, %ib_dma_map_single.exit.i.sw.epilog_crit_edge ], [ %call.i.i63.i, %do.end.i.i137 ], [ %call.i.i.i.i127, %isert_post_recv.exit.i.i131 ], [ 0, %if.end.i.i135.sw.epilog_crit_edge ], [ %call4.i157, %isert_create_send_desc.exit.i159.sw.epilog_crit_edge ], [ -12, %ib_dma_map_single.exit.i181.sw.epilog_crit_edge ], [ %call.i.i70.i, %do.end.i.i221 ], [ %call.i.i.i.i211, %isert_post_recv.exit.i.i215 ], [ 0, %if.end.i.i219.sw.epilog_crit_edge ], [ %call.i.i.i.i, %isert_post_recv.exit.i.i ], [ %call.i.i26.i, %do.end.i.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_get_dataout(ptr nocapture noundef readonly %conn, ptr noundef %cmd, i1 noundef zeroext %recovery) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  %0 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge, !prof !640

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %1 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_length, align 4
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %3 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %write_data_done, align 128
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.262, ptr noundef %add.ptr.i, i32 noundef %2, i32 noundef %4) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tx_cqe = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %5 = ptrtoint ptr %tx_cqe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @isert_rdma_read_done, ptr %tx_cqe, align 4
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %call8 = tail call fastcc i32 @isert_rdma_rw_ctx_post(ptr noundef %add.ptr.i, ptr noundef %7, ptr noundef %tx_cqe, ptr noundef null)
  %8 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp10 = icmp sgt i32 %8, 2
  br i1 %cmp10, label %do.end20, label %do.end5.do.end25_crit_edge, !prof !640

do.end5.do.end25_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.end20:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.262, ptr noundef %add.ptr.i, i32 noundef %call8) #14
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %do.end5.do.end25_crit_edge
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_put_datain(ptr noundef %conn, ptr noundef %cmd) #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %rx_wr.i = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge, !prof !640

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %3 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_length, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.284, ptr noundef %add.ptr.i, i32 noundef %4) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %pi_support.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %pi_support.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pi_support.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %do.end6.if.else_crit_edge, label %isert_prot_cmd.exit

do.end6.if.else_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

isert_prot_cmd.exit:                              ; preds = %do.end6
  %prot_op.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 49
  %7 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prot_op.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %isert_prot_cmd.exit.if.else_crit_edge, label %if.then8

isert_prot_cmd.exit.if.else_crit_edge:            ; preds = %isert_prot_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then8:                                         ; preds = %isert_prot_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tx_cqe = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %9 = ptrtoint ptr %tx_cqe to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @isert_rdma_write_done, ptr %tx_cqe, align 4
  br label %if.end22

if.else:                                          ; preds = %isert_prot_cmd.exit.if.else_crit_edge, %do.end6.if.else_crit_edge
  %tx_desc11 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 21
  %device1.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device1.i, align 4
  %ib_device.i = getelementptr inbounds %struct.isert_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ib_device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ib_device.i, align 4
  %dma_addr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 41
  %14 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %dma_addr.i, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 8
  %conv.i.i = trunc i64 %15 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %17, i32 noundef %conv.i.i, i32 noundef 76, i32 noundef 1) #11
  %18 = getelementptr inbounds i8, ptr %tx_desc11, i32 1
  %19 = call ptr @memset(ptr %18, i32 0, i32 27)
  %20 = ptrtoint ptr %tx_desc11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %tx_desc11, align 1
  %num_sge.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 20
  %21 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 1, ptr %num_sge.i.i, align 1
  %lkey.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 46
  %22 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %lkey.i.i, align 1
  %pd.i.i = getelementptr inbounds %struct.isert_device, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp.not.i.i = icmp eq i32 %23, %27
  br i1 %cmp.not.i.i, label %if.else.isert_create_send_desc.exit_crit_edge, label %if.then.i.i

if.else.isert_create_send_desc.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit

if.then.i.i:                                      ; preds = %if.else
  %28 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %lkey.i.i, align 1
  %29 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp7.i.i = icmp sgt i32 %29, 2
  br i1 %cmp7.i.i, label %do.end.i.i, label %if.then.i.i.isert_create_send_desc.exit_crit_edge, !prof !640

if.then.i.i.isert_create_send_desc.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef %tx_desc11) #14
  br label %isert_create_send_desc.exit

isert_create_send_desc.exit:                      ; preds = %do.end.i.i, %if.then.i.i.isert_create_send_desc.exit_crit_edge, %if.else.isert_create_send_desc.exit_crit_edge
  %iscsi_header = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 28
  tail call void @iscsit_build_rsp_pdu(ptr noundef %cmd, ptr noundef %conn, i1 noundef zeroext true, ptr noundef %iscsi_header) #11
  tail call fastcc void @isert_init_tx_hdrs(ptr noundef %1, ptr noundef %tx_desc11)
  %send_wr = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 24
  %tx_cqe.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %30 = ptrtoint ptr %tx_cqe.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store ptr @isert_send_done, ptr %tx_cqe.i, align 1
  %31 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 32
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tx_cqe.i, ptr %31, align 8
  %snd_w_inv.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 27
  %33 = ptrtoint ptr %snd_w_inv.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %snd_w_inv.i, align 1, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i70 = icmp eq i8 %34, 0
  br i1 %tobool.not.i70, label %isert_create_send_desc.exit.if.else.i_crit_edge, label %land.lhs.true.i

isert_create_send_desc.exit.if.else.i_crit_edge:  ; preds = %isert_create_send_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %isert_create_send_desc.exit
  %inv_rkey.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 13
  %35 = ptrtoint ptr %inv_rkey.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inv_rkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool3.not.i = icmp eq i32 %36, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %opcode.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %37 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 9, ptr %opcode.i, align 8
  %ex.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 49
  %38 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %ex.i, align 8
  br label %isert_init_send_wr.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %isert_create_send_desc.exit.if.else.i_crit_edge
  %opcode5.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %39 = ptrtoint ptr %opcode5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %opcode5.i, align 8
  br label %isert_init_send_wr.exit

isert_init_send_wr.exit:                          ; preds = %if.else.i, %if.then.i
  %tx_sg.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 43
  %sg_list.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 40
  %40 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tx_sg.i, ptr %sg_list.i, align 8
  %41 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_sge.i.i, align 4
  %num_sge7.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 44
  %43 = ptrtoint ptr %num_sge7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %num_sge7.i, align 4
  %send_flags.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 48
  %44 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %send_flags.i, align 4
  %rx_desc = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 50, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_desc, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr.i) #11
  %47 = call ptr @memset(ptr %rx_wr.i, i32 255, i32 16)
  %in_use.i = getelementptr inbounds %struct.iser_rx_desc, ptr %46, i32 0, i32 4
  %48 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %in_use.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i71 = icmp eq i8 %49, 0
  br i1 %tobool.not.i71, label %isert_init_send_wr.exit.isert_post_recv.exit.thread_crit_edge, label %if.end.i

isert_init_send_wr.exit.isert_post_recv.exit.thread_crit_edge: ; preds = %isert_init_send_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_post_recv.exit.thread

if.end.i:                                         ; preds = %isert_init_send_wr.exit
  %50 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %in_use.i, align 4
  %rx_cqe.i = getelementptr inbounds %struct.iser_rx_desc, ptr %46, i32 0, i32 3
  %51 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rx_cqe.i, ptr %51, align 8
  %rx_sg.i = getelementptr inbounds %struct.iser_rx_desc, ptr %46, i32 0, i32 2
  %sg_list.i72 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i, i32 0, i32 2
  %53 = ptrtoint ptr %sg_list.i72 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %rx_sg.i, ptr %sg_list.i72, align 8
  %num_sge.i73 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i, i32 0, i32 3
  %54 = ptrtoint ptr %num_sge.i73 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %num_sge.i73, align 4
  %55 = ptrtoint ptr %rx_wr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %rx_wr.i, align 8
  %qp.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %qp.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #11
  %58 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !644
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %57, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %60, i32 0, i32 1, i32 7
  %61 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %post_recv.i.i, align 4
  %call.i.i74 = call i32 %62(ptr noundef %57, ptr noundef nonnull %rx_wr.i, ptr noundef nonnull %dummy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool2.not.i = icmp eq i32 %call.i.i74, 0
  br i1 %tobool2.not.i, label %if.end.i.isert_post_recv.exit.thread_crit_edge, label %isert_post_recv.exit

if.end.i.isert_post_recv.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_post_recv.exit.thread

isert_post_recv.exit.thread:                      ; preds = %if.end.i.isert_post_recv.exit.thread_crit_edge, %isert_init_send_wr.exit.isert_post_recv.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i) #11
  br label %if.end22

isert_post_recv.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %call.i.i74) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i) #11
  br label %cleanup

if.end22:                                         ; preds = %isert_post_recv.exit.thread, %if.then8
  %cqe.0 = phi ptr [ %tx_cqe, %if.then8 ], [ null, %isert_post_recv.exit.thread ]
  %chain_wr.0 = phi ptr [ null, %if.then8 ], [ %send_wr, %isert_post_recv.exit.thread ]
  %call23 = call fastcc i32 @isert_rdma_rw_ctx_post(ptr noundef %add.ptr.i, ptr noundef %1, ptr noundef %cqe.0, ptr noundef %chain_wr.0)
  %63 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp25 = icmp sgt i32 %63, 2
  br i1 %cmp25, label %do.end35, label %if.end22.cleanup_crit_edge, !prof !640

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end35:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.284, ptr noundef %add.ptr.i, i32 noundef %call23) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end22.cleanup_crit_edge, %isert_post_recv.exit
  %retval.0 = phi i32 [ %call.i.i74, %isert_post_recv.exit ], [ %call23, %do.end35 ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_put_response(ptr noundef %conn, ptr noundef %cmd) #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %dummy.i.i.i = alloca ptr, align 4
  %rx_wr.i.i = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tx_desc = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 21
  %send_wr1 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 24
  %iscsi_header = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 28
  %device1.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1.i, align 4
  %ib_device.i = getelementptr inbounds %struct.isert_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ib_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ib_device.i, align 4
  %dma_addr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 41
  %6 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %dma_addr.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %conv.i.i = trunc i64 %7 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %9, i32 noundef %conv.i.i, i32 noundef 76, i32 noundef 1) #11
  %10 = getelementptr inbounds i8, ptr %tx_desc, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 27)
  %12 = ptrtoint ptr %tx_desc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %tx_desc, align 1
  %num_sge.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 20
  %13 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 1, ptr %num_sge.i.i, align 1
  %lkey.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 46
  %14 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %lkey.i.i, align 1
  %pd.i.i = getelementptr inbounds %struct.isert_device, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pd.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp.not.i.i = icmp eq i32 %15, %19
  br i1 %cmp.not.i.i, label %entry.isert_create_send_desc.exit_crit_edge, label %if.then.i.i

entry.isert_create_send_desc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit

if.then.i.i:                                      ; preds = %entry
  %20 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %lkey.i.i, align 1
  %21 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp7.i.i = icmp sgt i32 %21, 2
  br i1 %cmp7.i.i, label %do.end.i.i, label %if.then.i.i.isert_create_send_desc.exit_crit_edge, !prof !640

if.then.i.i.isert_create_send_desc.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef %tx_desc) #14
  br label %isert_create_send_desc.exit

isert_create_send_desc.exit:                      ; preds = %do.end.i.i, %if.then.i.i.isert_create_send_desc.exit_crit_edge, %entry.isert_create_send_desc.exit_crit_edge
  tail call void @iscsit_build_rsp_pdu(ptr noundef %cmd, ptr noundef %conn, i1 noundef zeroext true, ptr noundef %iscsi_header) #11
  tail call fastcc void @isert_init_tx_hdrs(ptr noundef %1, ptr noundef %tx_desc)
  %sense_buffer = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 16
  %22 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sense_buffer, align 16
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %isert_create_send_desc.exit.if.end61_crit_edge, label %land.lhs.true

isert_create_send_desc.exit.if.end61_crit_edge:   ; preds = %isert_create_send_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true:                                    ; preds = %isert_create_send_desc.exit
  %se_cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 11
  %24 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %se_cmd_flags, align 16
  %26 = and i32 %25, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %land.lhs.true.if.end61_crit_edge, label %if.then

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then:                                          ; preds = %land.lhs.true
  %28 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device1.i, align 4
  %ib_device = getelementptr inbounds %struct.isert_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ib_device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ib_device, align 4
  %scsi_sense_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 2
  %32 = ptrtoint ptr %scsi_sense_length to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %scsi_sense_length, align 2
  %sense_buffer15 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 71
  %34 = ptrtoint ptr %sense_buffer15 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %sense_buffer15, align 1
  %add = add i16 %33, 2
  store i16 %add, ptr %scsi_sense_length, align 2
  %35 = sub i16 2, %33
  %36 = and i16 %35, 3
  %and22 = zext i16 %36 to i32
  %dlength = getelementptr inbounds %struct.isert_cmd, ptr %add.ptr.i, i32 0, i32 10, i32 1, i32 4
  %37 = ptrtoint ptr %dlength to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %dlength, align 1
  %38 = lshr i16 %add, 8
  %conv34 = trunc i16 %38 to i8
  %arrayidx36 = getelementptr %struct.isert_cmd, ptr %add.ptr.i, i32 0, i32 10, i32 1, i32 4, i32 1
  %39 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv34, ptr %arrayidx36, align 1
  %conv41 = trunc i16 %add to i8
  %arrayidx43 = getelementptr %struct.isert_cmd, ptr %add.ptr.i, i32 0, i32 10, i32 1, i32 4, i32 2
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv41, ptr %arrayidx43, align 1
  %conv46 = zext i16 %add to i32
  %add47 = add nuw nsw i32 %and22, %conv46
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %31, align 8
  %call.i.i115 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sense_buffer15) #11
  br i1 %call.i.i115, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i116, !prof !642

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit

if.then.i.i116:                                   ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %42) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i116.dev_name.exit.i.i_crit_edge

if.then.i.i116.dev_name.exit.i.i_crit_edge:       ; preds = %if.then.i.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i116
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i116.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %46, %if.end.i.i.i ], [ %44, %if.then.i.i116.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %42, ptr noundef %sense_buffer15, i32 noundef %add47) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %48 = ptrtoint ptr %sense_buffer15 to i32
  %sub.i.i = add i32 %48, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %47, i32 %shr.i.i
  %and.i.i = and i32 %48, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %42, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add47, i32 noundef 1, i32 noundef 0) #11
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %pdu_buf_dma = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 16
  %49 = ptrtoint ptr %pdu_buf_dma to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv2.i, ptr %pdu_buf_dma, align 8
  %50 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %31, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %51, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %ib_dma_map_single.exit.cleanup72_crit_edge, label %if.end

ib_dma_map_single.exit.cleanup72_crit_edge:       ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup72

if.end:                                           ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47
  %pdu_buf_len = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 18
  %52 = ptrtoint ptr %pdu_buf_len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add47, ptr %pdu_buf_len, align 8
  %53 = ptrtoint ptr %pdu_buf_dma to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %pdu_buf_dma, align 8
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx, align 8
  %length = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 8
  %56 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add47, ptr %length, align 8
  %pd = getelementptr inbounds %struct.isert_device, ptr %29, i32 0, i32 3
  %57 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pd, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %lkey = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 12
  %61 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %lkey, align 4
  %62 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %num_sge.i.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end, %land.lhs.true.if.end61_crit_edge, %isert_create_send_desc.exit.if.end61_crit_edge
  %tx_cqe.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %63 = ptrtoint ptr %tx_cqe.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store ptr @isert_send_done, ptr %tx_cqe.i, align 1
  %64 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 32
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %tx_cqe.i, ptr %64, align 8
  %snd_w_inv.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 27
  %66 = ptrtoint ptr %snd_w_inv.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %snd_w_inv.i, align 1, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i, label %if.end61.if.else.i_crit_edge, label %land.lhs.true.i

if.end61.if.else.i_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end61
  %inv_rkey.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 13
  %68 = ptrtoint ptr %inv_rkey.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %inv_rkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool3.not.i = icmp eq i32 %69, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %opcode.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %70 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 9, ptr %opcode.i, align 8
  %ex.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 49
  %71 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %69, ptr %ex.i, align 8
  br label %isert_init_send_wr.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end61.if.else.i_crit_edge
  %opcode5.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %72 = ptrtoint ptr %opcode5.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %opcode5.i, align 8
  br label %isert_init_send_wr.exit

isert_init_send_wr.exit:                          ; preds = %if.else.i, %if.then.i
  %tx_sg.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 43
  %sg_list.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 40
  %73 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %tx_sg.i, ptr %sg_list.i, align 8
  %74 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_sge.i.i, align 4
  %num_sge7.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 44
  %76 = ptrtoint ptr %num_sge7.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %num_sge7.i, align 4
  %send_flags.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 48
  %77 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %send_flags.i, align 4
  %78 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp = icmp sgt i32 %78, 2
  br i1 %cmp, label %do.end, label %isert_init_send_wr.exit.do.end70_crit_edge, !prof !640

isert_init_send_wr.exit.do.end70_crit_edge:       ; preds = %isert_init_send_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end70

do.end:                                           ; preds = %isert_init_send_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.295) #14
  br label %do.end70

do.end70:                                         ; preds = %do.end, %isert_init_send_wr.exit.do.end70_crit_edge
  %rx_desc.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 50, i32 0, i32 0, i32 1
  %79 = ptrtoint ptr %rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_desc.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr.i.i) #11
  %81 = call ptr @memset(ptr %rx_wr.i.i, i32 255, i32 16)
  %in_use.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %80, i32 0, i32 4
  %82 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %in_use.i.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i, label %do.end70.if.end.i_crit_edge, label %if.end.i.i

do.end70.if.end.i_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i.i:                                       ; preds = %do.end70
  %84 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %in_use.i.i, align 4
  %rx_cqe.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %80, i32 0, i32 3
  %85 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %rx_cqe.i.i, ptr %85, align 8
  %rx_sg.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %80, i32 0, i32 2
  %sg_list.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %rx_sg.i.i, ptr %sg_list.i.i, align 8
  %num_sge.i.i117 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %num_sge.i.i117 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %num_sge.i.i117, align 4
  %89 = ptrtoint ptr %rx_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %rx_wr.i.i, align 8
  %qp.i.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %90 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %qp.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  %92 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !644
  %93 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %91, align 4
  %post_recv.i.i.i = getelementptr inbounds %struct.ib_device, ptr %94, i32 0, i32 1, i32 7
  %95 = ptrtoint ptr %post_recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %post_recv.i.i.i, align 4
  %call.i.i.i = call i32 %96(ptr noundef %91, ptr noundef nonnull %rx_wr.i.i, ptr noundef nonnull %dummy.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %isert_post_recv.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

isert_post_recv.exit.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %call.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i) #11
  br label %cleanup72

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %do.end70.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i) #11
  %qp.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %97 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %qp.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #11
  %99 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !644
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %98, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %101, i32 0, i32 1, i32 6
  %102 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i118 = call i32 %103(ptr noundef %98, ptr noundef %send_wr1, ptr noundef nonnull %dummy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %tobool2.not.i = icmp eq i32 %call.i.i118, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup72_crit_edge, label %do.end.i

if.end.i.cleanup72_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup72

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250, i32 noundef %call.i.i118) #14
  br label %cleanup72

cleanup72:                                        ; preds = %do.end.i, %if.end.i.cleanup72_crit_edge, %isert_post_recv.exit.i, %ib_dma_map_single.exit.cleanup72_crit_edge
  %retval.1 = phi i32 [ -12, %ib_dma_map_single.exit.cleanup72_crit_edge ], [ %call.i.i118, %do.end.i ], [ %call.i.i.i, %isert_post_recv.exit.i ], [ 0, %if.end.i.cleanup72_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_aborted_task(ptr noundef %conn, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #11
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69
  %2 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %i_conn_node, align 4
  %cmp.i.not = icmp eq ptr %3, %i_conn_node
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_conn_node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_conn_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %i_conn_node, ptr %i_conn_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %i_conn_node, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #11
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 46
  %12 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iscsit_stop_dataout_timer(ptr noundef %cmd) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %add.ptr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1
  tail call fastcc void @isert_rdma_rw_ctx_destroy(ptr noundef %add.ptr.i, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_get_rx_pdu(ptr nocapture noundef readnone %conn) #0 align 64 {
entry:
  %comp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %comp) #11
  %0 = getelementptr inbounds i8, ptr %comp, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %comp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_completion.__key) #11
  %call = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %comp) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %comp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isert_get_sup_prot_ops(ptr nocapture noundef readonly %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tpg = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %2 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg, align 4
  %t10_pi = getelementptr inbounds %struct.iscsi_portal_group, ptr %3, i32 0, i32 12, i32 10
  %4 = ptrtoint ptr %t10_pi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %t10_pi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %if.then

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

if.then:                                          ; preds = %entry
  %device1 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.then.do.body12_crit_edge, label %do.body

if.then.do.body12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body:                                          ; preds = %if.then
  %10 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %do.body.cleanup.sink.split_crit_edge, label %do.body.cleanup_crit_edge, !prof !640

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.body12:                                        ; preds = %if.then.do.body12_crit_edge, %entry.do.body12_crit_edge
  %11 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp13 = icmp sgt i32 %11, 1
  br i1 %cmp13, label %do.body12.cleanup.sink.split_crit_edge, label %do.body12.cleanup_crit_edge, !prof !640

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body12.cleanup.sink.split_crit_edge:           ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body12.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.299.sink = phi ptr [ @.str.296, %do.body.cleanup.sink.split_crit_edge ], [ @.str.299, %do.body12.cleanup.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 1, %do.body.cleanup.sink.split_crit_edge ], [ 0, %do.body12.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 63, %do.body.cleanup.sink.split_crit_edge ], [ 0, %do.body12.cleanup.sink.split_crit_edge ]
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.299.sink, ptr noundef nonnull @.str.297, ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body12.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %.sink = phi i8 [ 1, %do.body.cleanup_crit_edge ], [ 0, %do.body12.cleanup_crit_edge ], [ %.sink.ph, %cleanup.sink.split ]
  %retval.0 = phi i32 [ 63, %do.body.cleanup_crit_edge ], [ 0, %do.body12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  %pi_support29 = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pi_support29 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %pi_support29, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_put_cmd(ptr noundef %isert_cmd, i1 noundef zeroext %comp_err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iscsi_cmd = getelementptr inbounds %struct.isert_cmd, ptr %isert_cmd, i32 0, i32 9
  %0 = ptrtoint ptr %iscsi_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iscsi_cmd, align 8
  %conn = getelementptr inbounds %struct.isert_cmd, ptr %isert_cmd, i32 0, i32 8
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %conn2 = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn2, align 8
  %6 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp sgt i32 %6, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge, !prof !640

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156, ptr noundef %isert_cmd) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %iscsi_opcode = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iscsi_opcode, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.316)
  switch i8 %8, label %do.end6.sw.default_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb28
    i8 63, label %do.end6.sw.bb39_crit_edge
    i8 0, label %do.end6.sw.bb39_crit_edge121
    i8 4, label %do.end6.sw.bb39_crit_edge122
  ]

do.end6.sw.bb39_crit_edge122:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

do.end6.sw.bb39_crit_edge121:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

do.end6.sw.bb39_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

do.end6.sw.default_crit_edge:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.bb:                                            ; preds = %do.end6
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #11
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69
  %10 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %i_conn_node, align 4
  %cmp.i.not = icmp eq ptr %11, %i_conn_node
  br i1 %cmp.i.not, label %sw.bb.if.end11_crit_edge, label %if.then9

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %sw.bb
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_conn_node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.list_del_init.exit_crit_edge

if.then9.list_del_init.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_conn_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then9.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %i_conn_node, ptr %i_conn_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %i_conn_node, ptr %prev.i3.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %list_del_init.exit, %sw.bb.if.end11_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #11
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 46
  %20 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp13 = icmp eq i32 %21, 1
  br i1 %cmp13, label %if.then15, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then15:                                        ; preds = %if.end11
  tail call void @iscsit_stop_dataout_timer(ptr noundef %1) #11
  br i1 %comp_err, label %land.lhs.true, label %if.then15.if.end25_crit_edge

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then15
  %t_state = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 10
  %22 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp18 = icmp eq i32 %23, 3
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %se_cmd = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70
  %call23 = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true.if.end25_crit_edge, %if.then15.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  tail call fastcc void @isert_rdma_rw_ctx_destroy(ptr noundef %isert_cmd, ptr noundef %3)
  %se_cmd26 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70
  %call27 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd26, i32 noundef 0) #11
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end6
  %cmd_lock29 = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock29) #11
  %i_conn_node30 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69
  %24 = ptrtoint ptr %i_conn_node30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %i_conn_node30, align 4
  %cmp.i105.not = icmp eq ptr %25, %i_conn_node30
  br i1 %cmp.i105.not, label %sw.bb28.if.end35_crit_edge, label %if.then33

sw.bb28.if.end35_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then33:                                        ; preds = %sw.bb28
  %call.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_conn_node30) #11
  br i1 %call.i.i107, label %if.end.i.i110, label %if.then33.list_del_init.exit112_crit_edge

if.then33.list_del_init.exit112_crit_edge:        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit112

if.end.i.i110:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i108 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69, i32 1
  %26 = ptrtoint ptr %prev.i.i108 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i108, align 4
  %28 = ptrtoint ptr %i_conn_node30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_conn_node30, align 4
  %prev1.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i109, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit112

list_del_init.exit112:                            ; preds = %if.end.i.i110, %if.then33.list_del_init.exit112_crit_edge
  %32 = ptrtoint ptr %i_conn_node30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %i_conn_node30, ptr %i_conn_node30, align 4
  %prev.i3.i111 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69, i32 1
  %33 = ptrtoint ptr %prev.i3.i111 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %i_conn_node30, ptr %prev.i3.i111, align 4
  br label %if.end35

if.end35:                                         ; preds = %list_del_init.exit112, %sw.bb28.if.end35_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock29) #11
  %se_cmd37 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70
  %call38 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd37, i32 noundef 0) #11
  br label %sw.epilog

sw.bb39:                                          ; preds = %do.end6.sw.bb39_crit_edge, %do.end6.sw.bb39_crit_edge121, %do.end6.sw.bb39_crit_edge122
  %flags = getelementptr inbounds %struct.isert_cmd, ptr %isert_cmd, i32 0, i32 10, i32 1, i32 1
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags, align 1
  %36 = and i8 %35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool41.not = icmp eq i8 %36, 0
  br i1 %tobool41.not, label %if.end43, label %sw.bb39.sw.epilog_crit_edge

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end43:                                         ; preds = %sw.bb39
  %cmd_lock44 = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock44) #11
  %i_conn_node45 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69
  %37 = ptrtoint ptr %i_conn_node45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %i_conn_node45, align 4
  %cmp.i113.not = icmp eq ptr %38, %i_conn_node45
  br i1 %cmp.i113.not, label %if.end43.if.end50_crit_edge, label %if.then48

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then48:                                        ; preds = %if.end43
  %call.i.i115 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_conn_node45) #11
  br i1 %call.i.i115, label %if.end.i.i118, label %if.then48.list_del_init.exit120_crit_edge

if.then48.list_del_init.exit120_crit_edge:        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit120

if.end.i.i118:                                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i116 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69, i32 1
  %39 = ptrtoint ptr %prev.i.i116 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i116, align 4
  %41 = ptrtoint ptr %i_conn_node45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_conn_node45, align 4
  %prev1.i.i.i117 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i117, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_init.exit120

list_del_init.exit120:                            ; preds = %if.end.i.i118, %if.then48.list_del_init.exit120_crit_edge
  %45 = ptrtoint ptr %i_conn_node45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %i_conn_node45, ptr %i_conn_node45, align 4
  %prev.i3.i119 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69, i32 1
  %46 = ptrtoint ptr %prev.i3.i119 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %i_conn_node45, ptr %prev.i3.i119, align 4
  br label %if.end50

if.end50:                                         ; preds = %list_del_init.exit120, %if.end43.if.end50_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock44) #11
  %se_cmd52 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70
  %se_tfo = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 26
  %47 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %se_tfo, align 16
  %cmp53.not = icmp eq ptr %48, null
  br i1 %cmp53.not, label %if.end50.sw.default_crit_edge, label %do.body56

if.end50.sw.default_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

do.body56:                                        ; preds = %if.end50
  %49 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp57 = icmp sgt i32 %49, 2
  br i1 %cmp57, label %do.end68, label %do.body56.do.end75_crit_edge, !prof !640

do.body56.do.end75_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

do.end68:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %iscsi_opcode, align 2
  %conv71 = zext i8 %51 to i32
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.156, i32 noundef %conv71) #14
  br label %do.end75

do.end75:                                         ; preds = %do.end68, %do.body56.do.end75_crit_edge
  %call77 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd52, i32 noundef 0) #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end50.sw.default_crit_edge, %do.end6.sw.default_crit_edge
  tail call void @iscsit_release_cmd(ptr noundef %1) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end75, %sw.bb39.sw.epilog_crit_edge, %if.end35, %if.end25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_stop_dataout_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_rdma_rw_ctx_destroy(ptr noundef %cmd, ptr nocapture noundef readonly %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iscsi_cmd = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 9
  %0 = ptrtoint ptr %iscsi_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iscsi_cmd, align 8
  %se_cmd_flags.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 11
  %2 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %se_cmd_flags.i, align 8
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.target_reverse_dma_direction.exit_crit_edge

entry.target_reverse_dma_direction.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %target_reverse_dma_direction.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data_direction.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 6
  %4 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.selectcmp.i = icmp eq i32 %5, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.selectcmp4.i = icmp eq i32 %5, 1
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 2, i32 %switch.select.i
  br label %target_reverse_dma_direction.exit

target_reverse_dma_direction.exit:                ; preds = %if.end.i, %entry.target_reverse_dma_direction.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.target_reverse_dma_direction.exit_crit_edge ], [ %switch.select5.i, %if.end.i ]
  %rw = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 12
  %6 = ptrtoint ptr %rw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %target_reverse_dma_direction.exit.cleanup_crit_edge, label %if.end

target_reverse_dma_direction.exit.cleanup_crit_edge: ; preds = %target_reverse_dma_direction.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %target_reverse_dma_direction.exit
  %pi_support.i = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 3
  %8 = ptrtoint ptr %pi_support.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pi_support.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i31 = icmp eq i8 %9, 0
  br i1 %tobool.not.i31, label %if.end.if.else_crit_edge, label %isert_prot_cmd.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

isert_prot_cmd.exit:                              ; preds = %if.end
  %prot_op.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 49
  %10 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prot_op.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %isert_prot_cmd.exit.if.else_crit_edge, label %if.then3

isert_prot_cmd.exit.if.else_crit_edge:            ; preds = %isert_prot_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then3:                                         ; preds = %isert_prot_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  %qp = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 19
  %12 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp, align 8
  %cm_id = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 18
  %14 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cm_id, align 4
  %port_num = getelementptr inbounds %struct.rdma_cm_id, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_num, align 4
  %t_data_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 39
  %18 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 41
  %20 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_data_nents, align 4
  %t_prot_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 55
  %22 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t_prot_sg, align 4
  %t_prot_nents = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 56
  %24 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_prot_nents, align 8
  tail call void @rdma_rw_ctx_destroy_signature(ptr noundef %rw, ptr noundef %13, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef %retval.0.i) #11
  br label %if.end11

if.else:                                          ; preds = %isert_prot_cmd.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %qp6 = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 19
  %26 = ptrtoint ptr %qp6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qp6, align 8
  %cm_id7 = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 18
  %28 = ptrtoint ptr %cm_id7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cm_id7, align 4
  %port_num8 = getelementptr inbounds %struct.rdma_cm_id, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %port_num8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_num8, align 4
  %t_data_sg9 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 39
  %32 = ptrtoint ptr %t_data_sg9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t_data_sg9, align 4
  %t_data_nents10 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 41
  %34 = ptrtoint ptr %t_data_nents10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t_data_nents10, align 4
  tail call void @rdma_rw_ctx_destroy(ptr noundef %rw, ptr noundef %27, i32 noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef %retval.0.i) #11
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %36 = ptrtoint ptr %rw to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rw, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %target_reverse_dma_direction.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_release_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_ctx_destroy_signature(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_ctx_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_stop_session(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_wait_for_sess_cmds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_init_tx_hdrs(ptr nocapture noundef readonly %isert_conn, ptr noundef %tx_desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.isert_conn, ptr %isert_conn, i32 0, i32 22
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %ib_device = getelementptr inbounds %struct.isert_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ib_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %tx_desc) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !642

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %5) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %9, %if.end.i.i.i ], [ %7, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef %tx_desc, i32 noundef 76) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %tx_desc to i32
  %sub.i.i = add i32 %11, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %shr.i.i
  %and.i.i = and i32 %11, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 76, i32 noundef 1, i32 noundef 0) #11
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %13, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180) #14
  br label %cleanup

if.end:                                           ; preds = %ib_dma_map_single.exit
  %dma_addr4 = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 3
  %14 = ptrtoint ptr %dma_addr4 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %conv2.i, ptr %dma_addr4, align 1
  %tx_sg = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 4
  %15 = ptrtoint ptr %tx_sg to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %conv2.i, ptr %tx_sg, align 1
  %length = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 76, ptr %length, align 1
  %pd = getelementptr inbounds %struct.isert_device, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %lkey = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 4, i32 0, i32 2
  %21 = ptrtoint ptr %lkey to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %lkey, align 1
  %22 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp = icmp sgt i32 %22, 2
  br i1 %cmp, label %do.end16, label %if.end.cleanup_crit_edge, !prof !640

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.180, i64 noundef %conv2.i, i32 noundef 76, i32 noundef %20) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_recv_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  %dummy.i.i.i.i = alloca ptr, align 4
  %rx_wr.i.i.i = alloca %struct.ib_recv_wr, align 8
  %cmd.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %cm_id = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_id, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wc, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -9240
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -9164
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  %add.i.i = add i32 %10, 511
  %and.i.i = and i32 %add.i.i, -512
  %11 = inttoptr i32 %and.i.i to ptr
  %add.ptr.i158 = getelementptr i8, ptr %11, i32 -48
  %add.ptr1.i = getelementptr i8, ptr %11, i32 -76
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end7, label %if.then, !prof !642

if.then:                                          ; preds = %entry
  tail call fastcc void @isert_print_wc(ptr noundef %wc, ptr noundef nonnull @.str.186)
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp5.not = icmp eq i32 %15, 5
  br i1 %cmp5.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conn = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn, align 8
  tail call void @iscsit_cause_connection_reinstatement(ptr noundef %17, i32 noundef 0) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %in_use = getelementptr i8, ptr %9, i32 4
  %18 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %in_use, align 4
  %dma_addr = getelementptr i8, ptr %9, i32 -24
  %19 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %dma_addr, align 8
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 8
  %conv.i = trunc i64 %20 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %22, i32 noundef %conv.i, i32 noundef 9216, i32 noundef 2) #11
  %23 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp8 = icmp sgt i32 %23, 2
  br i1 %cmp8, label %do.end, label %if.end7.do.end22_crit_edge, !prof !640

if.end7.do.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dma_addr, align 8
  %26 = ptrtoint ptr %add.ptr.i158 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i158, align 16
  %conv = zext i8 %27 to i32
  %itt = getelementptr i8, ptr %11, i32 -32
  %28 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %itt, align 32
  %flags = getelementptr i8, ptr %11, i32 -47
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags, align 1
  %conv18 = zext i8 %31 to i32
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %32 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %byte_len, align 4
  %sub = add i32 %33, -76
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.188, i64 noundef %25, i32 noundef %conv, i32 noundef %29, i32 noundef %conv18, i32 noundef %sub) #14
  br label %do.end22

do.end22:                                         ; preds = %do.end, %if.end7.do.end22_crit_edge
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr1.i, align 4
  %conv24 = zext i8 %35 to i32
  %and = and i8 %35, -16
  %36 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.317)
  switch i8 %and, label %do.body101 [
    i8 16, label %sw.bb
    i8 32, label %do.end98
  ]

sw.bb:                                            ; preds = %do.end22
  %and27 = and i32 %conv24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %sw.bb.if.end50_crit_edge, label %if.then29

sw.bb.if.end50_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then29:                                        ; preds = %sw.bb
  %read_stag30 = getelementptr i8, ptr %11, i32 -60
  %37 = ptrtoint ptr %read_stag30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %read_stag30, align 4
  %read_va31 = getelementptr i8, ptr %11, i32 -56
  %39 = ptrtoint ptr %read_va31 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %read_va31, align 8
  %41 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp33 = icmp sgt i32 %41, 2
  br i1 %cmp33, label %do.end44, label %if.then29.if.end50_crit_edge, !prof !640

if.then29.if.end50_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.end44:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.188, i32 noundef %38, i64 noundef %40) #14
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.then29.if.end50_crit_edge, %sw.bb.if.end50_crit_edge
  %read_stag.0 = phi i32 [ %38, %do.end44 ], [ %38, %if.then29.if.end50_crit_edge ], [ 0, %sw.bb.if.end50_crit_edge ]
  %read_va.0 = phi i64 [ %40, %do.end44 ], [ %40, %if.then29.if.end50_crit_edge ], [ 0, %sw.bb.if.end50_crit_edge ]
  %42 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr1.i, align 4
  %44 = and i8 %43, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool54.not = icmp eq i8 %44, 0
  br i1 %tobool54.not, label %if.end50.do.body77_crit_edge, label %if.then55

if.end50.do.body77_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

if.then55:                                        ; preds = %if.end50
  %write_stag56 = getelementptr i8, ptr %11, i32 -72
  %45 = ptrtoint ptr %write_stag56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %write_stag56, align 8
  %write_va57 = getelementptr i8, ptr %11, i32 -68
  %47 = ptrtoint ptr %write_va57 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %write_va57, align 4
  %49 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp59 = icmp sgt i32 %49, 2
  br i1 %cmp59, label %do.end70, label %if.then55.sw.epilog_crit_edge, !prof !640

if.then55.sw.epilog_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end70:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.188, i32 noundef %46, i64 noundef %48) #14
  br label %do.body77

do.body77:                                        ; preds = %do.end70, %if.end50.do.body77_crit_edge
  %write_va.0.ph = phi i64 [ 0, %if.end50.do.body77_crit_edge ], [ %48, %do.end70 ]
  %write_stag.0.ph = phi i32 [ 0, %if.end50.do.body77_crit_edge ], [ %46, %do.end70 ]
  %.pr = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp78 = icmp sgt i32 %.pr, 2
  br i1 %cmp78, label %do.end89, label %do.body77.sw.epilog_crit_edge, !prof !640

do.body77.sw.epilog_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end89:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.188) #14
  br label %sw.epilog

do.end98:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.188) #14
  br label %sw.epilog

do.body101:                                       ; preds = %do.end22
  %50 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp102 = icmp sgt i32 %50, 0
  br i1 %cmp102, label %do.end113, label %do.body101.sw.epilog_crit_edge, !prof !640

do.body101.sw.epilog_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end113:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.188, i32 noundef %conv24) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end113, %do.body101.sw.epilog_crit_edge, %do.end98, %do.end89, %do.body77.sw.epilog_crit_edge, %if.then55.sw.epilog_crit_edge
  %write_va.1 = phi i64 [ 0, %do.end113 ], [ 0, %do.body101.sw.epilog_crit_edge ], [ 0, %do.end98 ], [ %write_va.0.ph, %do.end89 ], [ %write_va.0.ph, %do.body77.sw.epilog_crit_edge ], [ %48, %if.then55.sw.epilog_crit_edge ]
  %read_stag.1 = phi i32 [ 0, %do.end113 ], [ 0, %do.body101.sw.epilog_crit_edge ], [ 0, %do.end98 ], [ %read_stag.0, %do.end89 ], [ %read_stag.0, %do.body77.sw.epilog_crit_edge ], [ %read_stag.0, %if.then55.sw.epilog_crit_edge ]
  %write_stag.1 = phi i32 [ 0, %do.end113 ], [ 0, %do.body101.sw.epilog_crit_edge ], [ 0, %do.end98 ], [ %write_stag.0.ph, %do.end89 ], [ %write_stag.0.ph, %do.body77.sw.epilog_crit_edge ], [ %46, %if.then55.sw.epilog_crit_edge ]
  %read_va.1 = phi i64 [ 0, %do.end113 ], [ 0, %do.body101.sw.epilog_crit_edge ], [ 0, %do.end98 ], [ %read_va.0, %do.end89 ], [ %read_va.0, %do.body77.sw.epilog_crit_edge ], [ %read_va.0, %if.then55.sw.epilog_crit_edge ]
  %conn1.i = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %51 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %conn1.i, align 8
  %53 = ptrtoint ptr %add.ptr.i158 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr.i158, align 16
  %55 = and i8 %54, 63
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %52, i32 0, i32 68
  %56 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sess.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %57, i32 0, i32 47
  %58 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sess_ops.i, align 8
  %SessionType.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %SessionType.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %SessionType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i = icmp ne i8 %61, 0
  %.pre.i = zext i8 %55 to i32
  %and6.i = and i32 %.pre.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool7.not.i, i1 false
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef %.pre.i) #14
  br label %isert_rx_opcode.exit

if.end.i:                                         ; preds = %sw.epilog
  %trunc.i = trunc i8 %54 to i6
  %62 = zext i6 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.318)
  switch i6 %trunc.i, label %do.end59.i [
    i6 1, label %sw.bb.i
    i6 0, label %sw.bb25.i
    i6 5, label %sw.bb32.i
    i6 2, label %sw.bb34.i
    i6 6, label %sw.bb40.i
    i6 4, label %sw.bb46.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %context.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %52, i32 0, i32 64
  %63 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %context.i.i, align 4
  %call.i.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %52, i32 noundef 1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %isert_allocate_cmd.exit.thread.i, label %if.end17.i

isert_allocate_cmd.exit.thread.i:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210) #14
  br label %isert_rx_opcode.exit

if.end17.i:                                       ; preds = %sw.bb.i
  %conn3.i.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 19
  %65 = ptrtoint ptr %conn3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %conn3.i.i, align 4
  %iscsi_cmd.i.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 20
  %66 = ptrtoint ptr %iscsi_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i.i, ptr %iscsi_cmd.i.i, align 8
  %rx_desc4.i.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 50, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %rx_desc4.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i, ptr %rx_desc4.i.i, align 4
  %add.ptr.i1.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1
  %68 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %read_stag.1, ptr %add.ptr.i1.i, align 8
  %read_va20.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 3
  %69 = ptrtoint ptr %read_va20.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %read_va.1, ptr %read_va20.i, align 8
  %write_stag21.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 1
  %70 = ptrtoint ptr %write_stag21.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %write_stag.1, ptr %write_stag21.i, align 4
  %write_va22.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 5
  %71 = ptrtoint ptr %write_va22.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %write_va.1, ptr %write_va22.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_stag.1)
  %tobool23.not.i = icmp eq i32 %read_stag.1, 0
  %write_stag.read_stag.i = select i1 %tobool23.not.i, i32 %write_stag.1, i32 %read_stag.1
  %inv_rkey.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 13
  %72 = ptrtoint ptr %inv_rkey.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %write_stag.read_stag.i, ptr %inv_rkey.i, align 8
  %73 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %conn1.i, align 8
  %call.i2.i = tail call i32 @iscsit_setup_scsi_cmd(ptr noundef %74, ptr noundef nonnull %call.i.i, ptr noundef %add.ptr.i158) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i.i, label %if.end17.i.isert_rx_opcode.exit_crit_edge, label %if.end.i4.i

if.end17.i.isert_rx_opcode.exit_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_rx_opcode.exit

if.end.i4.i:                                      ; preds = %if.end17.i
  %immediate_data.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %immediate_data.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %immediate_data.i.i, align 1
  %first_burst_len.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 41
  %77 = ptrtoint ptr %first_burst_len.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %first_burst_len.i.i, align 4
  %unsolicited_data.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 12
  %79 = ptrtoint ptr %unsolicited_data.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %unsolicited_data.i.i, align 1
  %se_cmd.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 70
  %data_length.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 70, i32 12
  %81 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i3.i = icmp eq i8 %76, 0
  %tobool.not.not.i.i = xor i1 %tobool.not.i3.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %82)
  %cmp3.i.i = icmp eq i32 %78, %82
  %or.cond.i.i = select i1 %tobool.not.not.i.i, i1 %cmp3.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then5.i.i, label %if.end.i4.i.if.end7.i.i_crit_edge

if.end.i4.i.if.end7.i.i_crit_edge:                ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #13
  %se_cmd_flags.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 70, i32 11
  %83 = ptrtoint ptr %se_cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %se_cmd_flags.i.i, align 16
  %or.i.i = or i32 %84, 4096
  store i32 %or.i.i, ptr %se_cmd_flags.i.i, align 16
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.end.i4.i.if.end7.i.i_crit_edge
  %call8.i.i = tail call i32 @iscsit_process_scsi_cmd(ptr noundef %74, ptr noundef nonnull %call.i.i, ptr noundef %add.ptr.i158) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end7.i.i.isert_rx_opcode.exit_crit_edge, label %if.else.i.i

if.end7.i.i.isert_rx_opcode.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_rx_opcode.exit

if.else.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp12.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %cmp12.not.i.i, label %if.end16.i.i, label %if.else.i.i.sequence_cmd.i.i_crit_edge

if.else.i.i.sequence_cmd.i.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sequence_cmd.i.i

if.end16.i.i:                                     ; preds = %if.else.i.i
  br i1 %tobool.not.i3.i, label %if.end16.i.i.isert_rx_opcode.exit_crit_edge, label %if.end19.i.i

if.end16.i.i.isert_rx_opcode.exit_crit_edge:      ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_rx_opcode.exit

if.end19.i.i:                                     ; preds = %if.end16.i.i
  br i1 %cmp3.i.i, label %if.else39.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.end19.i.i
  %sub.i.i = add i32 %78, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i.i)
  %cmp23.i.i = icmp ult i32 %sub.i.i, 4096
  %div145.i.i = lshr i32 %sub.i.i, 12
  %cond.i.i = select i1 %cmp23.i.i, i32 1, i32 %div145.i.i
  %t_data_sg.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 70, i32 39
  %85 = ptrtoint ptr %t_data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %t_data_sg.i.i, align 4
  %call27.i.i = tail call i32 @sg_copy_from_buffer(ptr noundef %86, i32 noundef %cond.i.i, ptr noundef %11, i32 noundef %78) #11
  %87 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp28.i.i = icmp sgt i32 %87, 2
  br i1 %cmp28.i.i, label %do.end.i5.i, label %if.then22.i.i.if.end64.i.i_crit_edge, !prof !640

if.then22.i.i.if.end64.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i.i

do.end.i5.i:                                      ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call35.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.212, i32 noundef %cond.i.i, i32 noundef %78) #14
  br label %if.end64.i.i

if.else39.i.i:                                    ; preds = %if.end19.i.i
  %sg.i.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 53
  tail call void @sg_init_table(ptr noundef %sg.i.i, i32 noundef 1) #11
  %t_data_sg42.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 70, i32 39
  %88 = ptrtoint ptr %t_data_sg42.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %sg.i.i, ptr %t_data_sg42.i.i, align 4
  %t_data_nents.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 70, i32 41
  %89 = ptrtoint ptr %t_data_nents.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %t_data_nents.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %11, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.else39.i.i.do.body5.i.i.i_crit_edge, !prof !642

if.else39.i.i.do.body5.i.i.i_crit_edge:           ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else39.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %90 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i = icmp ugt ptr %90, %11
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, !prof !642

land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %sub.i.i.i = add i32 %and.i.i, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %91 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i6.i = add i32 %91, %shr.i.i.i
  %call.i.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, label %do.end8.i.i.i, !prof !640

land.rhs.i.i.i.do.body5.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i.i.i

do.body5.i.i.i:                                   ; preds = %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, %if.else39.i.i.do.body5.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #11, !srcloc !649
  unreachable

do.end8.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %92 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i7.i = getelementptr %struct.page, ptr %92, i32 %shr.i.i.i
  %93 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sg.i.i, align 4
  %95 = ptrtoint ptr %add.ptr.i.i7.i to i32
  %and2.i.i.i.i.i = and i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body11.i.i.i.i.i, label %do.body5.i.i.i.i.i, !prof !642

do.body5.i.i.i.i.i:                               ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !650
  unreachable

do.body11.i.i.i.i.i:                              ; preds = %do.end8.i.i.i
  %and.i.i.i.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_set_buf.exit.i.i, label %do.body19.i.i.i.i.i, !prof !642

do.body19.i.i.i.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !651
  unreachable

sg_set_buf.exit.i.i:                              ; preds = %do.body11.i.i.i.i.i
  %and.i.i8.i = and i32 %add.i.i, 3584
  %and.i.i.i.i.i = and i32 %94, 3
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %95
  %96 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.i.i.i.i.i, ptr %sg.i.i, align 4
  %offset1.i.i.i.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 53, i32 0, i32 0, i32 1
  %97 = ptrtoint ptr %offset1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and.i.i8.i, ptr %offset1.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr %struct.iscsi_cmd, ptr %call.i.i, i32 1, i32 53, i32 0, i32 0, i32 2
  %98 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %78, ptr %length.i.i.i.i, align 4
  %99 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp47.i.i = icmp sgt i32 %99, 2
  br i1 %cmp47.i.i, label %do.end58.i.i, label %sg_set_buf.exit.i.i.if.end64.i.i_crit_edge, !prof !640

sg_set_buf.exit.i.i.if.end64.i.i_crit_edge:       ; preds = %sg_set_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i.i

do.end58.i.i:                                     ; preds = %sg_set_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call60.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.212, i32 noundef %78) #14
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %do.end58.i.i, %sg_set_buf.exit.i.i.if.end64.i.i_crit_edge, %do.end.i5.i, %if.then22.i.i.if.end64.i.i_crit_edge
  %write_data_done.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 40
  %100 = ptrtoint ptr %write_data_done.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %write_data_done.i.i, align 128
  %add65.i.i = add i32 %101, %78
  store i32 %add65.i.i, ptr %write_data_done.i.i, align 128
  %102 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add65.i.i, i32 %103)
  %cmp69.i.i = icmp eq i32 %add65.i.i, %103
  br i1 %cmp69.i.i, label %if.then71.i.i, label %if.end64.i.i.sequence_cmd.i.i_crit_edge

if.end64.i.i.sequence_cmd.i.i_crit_edge:          ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sequence_cmd.i.i

if.then71.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %istate_lock.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %istate_lock.i.i) #11
  %cmd_flags.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 15
  %104 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cmd_flags.i.i, align 4
  %or72.i.i = or i32 %105, 1
  store i32 %or72.i.i, ptr %cmd_flags.i.i, align 4
  %i_state.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i.i, i32 0, i32 4
  %106 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 6, ptr %i_state.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock.i.i) #11
  br label %sequence_cmd.i.i

sequence_cmd.i.i:                                 ; preds = %if.then71.i.i, %if.end64.i.i.sequence_cmd.i.i_crit_edge, %if.else.i.i.sequence_cmd.i.i_crit_edge
  %cmdsn.i.i = getelementptr i8, ptr %11, i32 -24
  %107 = ptrtoint ptr %cmdsn.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cmdsn.i.i, align 8
  %call75.i.i = tail call i32 @iscsit_sequence_cmd(ptr noundef %74, ptr noundef nonnull %call.i.i, ptr noundef %add.ptr.i158, i32 noundef %108) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i.i)
  %tobool76.not.i.i = icmp ne i32 %call75.i.i, 0
  %cmp12.not.not.i.i = xor i1 %cmp12.not.i.i, true
  %brmerge.i.i = select i1 %tobool76.not.i.i, i1 true, i1 %cmp12.not.not.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool80.not.i.i = icmp eq i8 %80, 0
  %or.cond146.i.i = select i1 %brmerge.i.i, i1 true, i1 %tobool80.not.i.i
  br i1 %or.cond146.i.i, label %if.else82.i.i, label %if.then81.i.i

if.then81.i.i:                                    ; preds = %sequence_cmd.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iscsit_set_unsolicited_dataout(ptr noundef nonnull %call.i.i) #11
  br label %isert_rx_opcode.exit

if.else82.i.i:                                    ; preds = %sequence_cmd.i.i
  %brmerge147.i.i = select i1 %cmp12.not.i.i, i1 true, i1 %tobool.not.i3.i
  br i1 %brmerge147.i.i, label %if.else82.i.i.isert_rx_opcode.exit_crit_edge, label %if.then87.i.i

if.else82.i.i.isert_rx_opcode.exit_crit_edge:     ; preds = %if.else82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_rx_opcode.exit

if.then87.i.i:                                    ; preds = %if.else82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call89.i.i = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd.i.i) #11
  br label %isert_rx_opcode.exit

sw.bb25.i:                                        ; preds = %if.end.i
  %context.i9.i = getelementptr inbounds %struct.iscsi_conn, ptr %52, i32 0, i32 64
  %109 = ptrtoint ptr %context.i9.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %context.i9.i, align 4
  %call.i10.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %52, i32 noundef 1) #11
  %tobool.not.i11.i = icmp eq ptr %call.i10.i, null
  br i1 %tobool.not.i11.i, label %isert_allocate_cmd.exit18.thread.i, label %if.end29.i

isert_allocate_cmd.exit18.thread.i:               ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210) #14
  br label %isert_rx_opcode.exit

if.end29.i:                                       ; preds = %sw.bb25.i
  %conn3.i14.i = getelementptr %struct.iscsi_cmd, ptr %call.i10.i, i32 1, i32 19
  %111 = ptrtoint ptr %conn3.i14.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %conn3.i14.i, align 4
  %iscsi_cmd.i15.i = getelementptr %struct.iscsi_cmd, ptr %call.i10.i, i32 1, i32 20
  %112 = ptrtoint ptr %iscsi_cmd.i15.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i10.i, ptr %iscsi_cmd.i15.i, align 8
  %rx_desc4.i16.i = getelementptr %struct.iscsi_cmd, ptr %call.i10.i, i32 1, i32 50, i32 0, i32 0, i32 1
  %113 = ptrtoint ptr %rx_desc4.i16.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %add.ptr.i, ptr %rx_desc4.i16.i, align 4
  %114 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %conn1.i, align 8
  %call.i21.i = tail call i32 @iscsit_setup_nop_out(ptr noundef %115, ptr noundef nonnull %call.i10.i, ptr noundef %add.ptr.i158) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %cmp.i22.i = icmp slt i32 %call.i21.i, 0
  br i1 %cmp.i22.i, label %if.end29.i.isert_rx_opcode.exit_crit_edge, label %if.end.i23.i

if.end29.i.isert_rx_opcode.exit_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_rx_opcode.exit

if.end.i23.i:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = tail call i32 @iscsit_process_nop_out(ptr noundef %115, ptr noundef nonnull %call.i10.i, ptr noundef %add.ptr.i158) #11
  br label %isert_rx_opcode.exit

sw.bb32.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i.i) #11
  %116 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %cmd.i.i, align 4
  %dlength.i.i = getelementptr i8, ptr %11, i32 -43
  %117 = ptrtoint ptr %dlength.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %dlength.i.i, align 1
  %conv.i.i = zext i8 %118 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx3.i.i = getelementptr i8, ptr %11, i32 -42
  %119 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx3.i.i, align 2
  %conv4.i.i = zext i8 %120 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 8
  %or.i26.i = or i32 %shl5.i.i, %shl.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %11, i32 -41
  %121 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %122 to i32
  %or9.i.i = or i32 %or.i26.i, %conv8.i.i
  %call.i27.i = call i32 @iscsit_check_dataout_hdr(ptr noundef %52, ptr noundef %add.ptr.i158, ptr noundef nonnull %cmd.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp.i28.i = icmp slt i32 %call.i27.i, 0
  br i1 %cmp.i28.i, label %sw.bb32.i.isert_handle_iscsi_dataout.exit.i_crit_edge, label %if.else.i30.i

sw.bb32.i.isert_handle_iscsi_dataout.exit.i_crit_edge: ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_handle_iscsi_dataout.exit.i

if.else.i30.i:                                    ; preds = %sw.bb32.i
  %123 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cmd.i.i, align 4
  %tobool.not.i29.i = icmp eq ptr %124, null
  br i1 %tobool.not.i29.i, label %if.else.i30.i.isert_handle_iscsi_dataout.exit.i_crit_edge, label %if.end12.i.i

if.else.i30.i.isert_handle_iscsi_dataout.exit.i_crit_edge: ; preds = %if.else.i30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_handle_iscsi_dataout.exit.i

if.end12.i.i:                                     ; preds = %if.else.i30.i
  %unsolicited_data.i31.i = getelementptr inbounds %struct.iscsi_cmd, ptr %124, i32 0, i32 12
  %125 = ptrtoint ptr %unsolicited_data.i31.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %unsolicited_data.i31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool13.not.i.i = icmp eq i8 %126, 0
  br i1 %tobool13.not.i.i, label %do.end.i32.i, label %do.body17.i.i

do.end.i32.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.217) #14
  call void @dump_stack() #14
  br label %isert_handle_iscsi_dataout.exit.i

do.body17.i.i:                                    ; preds = %if.end12.i.i
  %127 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp18.i.i = icmp sgt i32 %127, 2
  br i1 %cmp18.i.i, label %do.end25.i.i, label %do.body17.i.i.do.end30.i.i_crit_edge, !prof !640

do.body17.i.i.do.end30.i.i_crit_edge:             ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i.i

do.end25.i.i:                                     ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %write_data_done.i33.i = getelementptr inbounds %struct.iscsi_cmd, ptr %124, i32 0, i32 40
  %128 = ptrtoint ptr %write_data_done.i33.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %write_data_done.i33.i, align 128
  %data_length.i34.i = getelementptr inbounds %struct.iscsi_cmd, ptr %124, i32 0, i32 70, i32 12
  %130 = ptrtoint ptr %data_length.i34.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data_length.i34.i, align 4
  %call27.i35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.217, i32 noundef %or9.i.i, i32 noundef %129, i32 noundef %131) #14
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %do.end25.i.i, %do.body17.i.i.do.end30.i.i_crit_edge
  %132 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cmd.i.i, align 4
  %write_data_done31.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %133, i32 0, i32 40
  %134 = ptrtoint ptr %write_data_done31.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %write_data_done31.i.i, align 128
  %div100.i.i = lshr i32 %135, 12
  %t_data_sg.i36.i = getelementptr inbounds %struct.iscsi_cmd, ptr %133, i32 0, i32 70, i32 39
  %136 = ptrtoint ptr %t_data_sg.i36.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %t_data_sg.i36.i, align 4
  %arrayidx33.i.i = getelementptr %struct.scatterlist, ptr %137, i32 %div100.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i.i)
  %cmp36.i.i = icmp eq i32 %or9.i.i, 0
  %sub.i37.i = add nuw nsw i32 %or9.i.i, 4095
  %div34101.i.i = lshr i32 %sub.i37.i, 12
  %cond.i38.i = select i1 %cmp36.i.i, i32 1, i32 %div34101.i.i
  %rem.i.i = and i32 %135, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool39.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool39.not.i.i, label %do.body47.i.i, label %do.end43.i.i

do.end43.i.i:                                     ; preds = %do.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.217) #14
  call void @dump_stack() #14
  br label %isert_handle_iscsi_dataout.exit.i

do.body47.i.i:                                    ; preds = %do.end30.i.i
  %138 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %138)
  %cmp48.i.i = icmp sgt i32 %138, 2
  br i1 %cmp48.i.i, label %do.end59.i.i, label %do.body47.i.i.do.end65.i.i_crit_edge, !prof !640

do.body47.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i

do.end59.i.i:                                     ; preds = %do.body47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call62.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.217, ptr noundef %arrayidx33.i.i, i32 noundef %div100.i.i, i32 noundef %cond.i38.i, ptr noundef %11, i32 noundef %or9.i.i) #14
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %do.end59.i.i, %do.body47.i.i.do.end65.i.i_crit_edge
  %call67.i.i = call i32 @sg_copy_from_buffer(ptr noundef %arrayidx33.i.i, i32 noundef %cond.i38.i, ptr noundef %11, i32 noundef %or9.i.i) #11
  %139 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cmd.i.i, align 4
  %call68.i.i = call i32 @iscsit_check_dataout_payload(ptr noundef %140, ptr noundef %add.ptr.i158, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %cmp69.i42.i = icmp slt i32 %call68.i.i, 0
  br i1 %cmp69.i42.i, label %do.end65.i.i.isert_handle_iscsi_dataout.exit.i_crit_edge, label %if.end72.i.i

do.end65.i.i.isert_handle_iscsi_dataout.exit.i_crit_edge: ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_handle_iscsi_dataout.exit.i

if.end72.i.i:                                     ; preds = %do.end65.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr.i.i.i) #11
  %141 = call ptr @memset(ptr %rx_wr.i.i.i, i32 255, i32 16)
  %142 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %in_use, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i.i.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i.i.i, label %if.end72.i.i.isert_post_recv.exit.i.i_crit_edge, label %if.end.i.i.i

if.end72.i.i.isert_post_recv.exit.i.i_crit_edge:  ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_post_recv.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end72.i.i
  %144 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %in_use, align 4
  %145 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %9, ptr %145, align 8
  %rx_sg.i.i.i = getelementptr i8, ptr %9, i32 -16
  %sg_list.i.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i, i32 0, i32 2
  %147 = ptrtoint ptr %sg_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %rx_sg.i.i.i, ptr %sg_list.i.i.i, align 8
  %num_sge.i.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i.i, i32 0, i32 3
  %148 = ptrtoint ptr %num_sge.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %num_sge.i.i.i, align 4
  %149 = ptrtoint ptr %rx_wr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %rx_wr.i.i.i, align 8
  %qp.i.i.i = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 19
  %150 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %qp.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i.i) #11
  %152 = ptrtoint ptr %dummy.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i.i, align 4, !annotation !644
  %153 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %151, align 4
  %post_recv.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %154, i32 0, i32 1, i32 7
  %155 = ptrtoint ptr %post_recv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %post_recv.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %156(ptr noundef %151, ptr noundef nonnull %rx_wr.i.i.i, ptr noundef nonnull %dummy.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.isert_post_recv.exit.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i.i.isert_post_recv.exit.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_post_recv.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %call.i.i.i.i) #14
  br label %isert_post_recv.exit.i.i

isert_post_recv.exit.i.i:                         ; preds = %do.end.i.i.i, %if.end.i.i.i.isert_post_recv.exit.i.i_crit_edge, %if.end72.i.i.isert_post_recv.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i.i) #11
  br label %isert_handle_iscsi_dataout.exit.i

isert_handle_iscsi_dataout.exit.i:                ; preds = %isert_post_recv.exit.i.i, %do.end65.i.i.isert_handle_iscsi_dataout.exit.i_crit_edge, %do.end43.i.i, %do.end.i32.i, %if.else.i30.i.isert_handle_iscsi_dataout.exit.i_crit_edge, %sw.bb32.i.isert_handle_iscsi_dataout.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #11
  br label %isert_rx_opcode.exit

sw.bb34.i:                                        ; preds = %if.end.i
  %context.i44.i = getelementptr inbounds %struct.iscsi_conn, ptr %52, i32 0, i32 64
  %157 = ptrtoint ptr %context.i44.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %context.i44.i, align 4
  %call.i45.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %52, i32 noundef 1) #11
  %tobool.not.i46.i = icmp eq ptr %call.i45.i, null
  br i1 %tobool.not.i46.i, label %isert_allocate_cmd.exit53.thread.i, label %if.end38.i

isert_allocate_cmd.exit53.thread.i:               ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210) #14
  br label %isert_rx_opcode.exit

if.end38.i:                                       ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #13
  %conn3.i49.i = getelementptr %struct.iscsi_cmd, ptr %call.i45.i, i32 1, i32 19
  %159 = ptrtoint ptr %conn3.i49.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %conn3.i49.i, align 4
  %iscsi_cmd.i50.i = getelementptr %struct.iscsi_cmd, ptr %call.i45.i, i32 1, i32 20
  %160 = ptrtoint ptr %iscsi_cmd.i50.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i45.i, ptr %iscsi_cmd.i50.i, align 8
  %rx_desc4.i51.i = getelementptr %struct.iscsi_cmd, ptr %call.i45.i, i32 1, i32 50, i32 0, i32 0, i32 1
  %161 = ptrtoint ptr %rx_desc4.i51.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %add.ptr.i, ptr %rx_desc4.i51.i, align 4
  %call39.i = tail call i32 @iscsit_handle_task_mgt_cmd(ptr noundef %52, ptr noundef nonnull %call.i45.i, ptr noundef %add.ptr.i158) #11
  br label %isert_rx_opcode.exit

sw.bb40.i:                                        ; preds = %if.end.i
  %context.i54.i = getelementptr inbounds %struct.iscsi_conn, ptr %52, i32 0, i32 64
  %162 = ptrtoint ptr %context.i54.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %context.i54.i, align 4
  %call.i55.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %52, i32 noundef 1) #11
  %tobool.not.i56.i = icmp eq ptr %call.i55.i, null
  br i1 %tobool.not.i56.i, label %isert_allocate_cmd.exit63.thread.i, label %if.end44.i

isert_allocate_cmd.exit63.thread.i:               ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210) #14
  br label %isert_rx_opcode.exit

if.end44.i:                                       ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #13
  %conn3.i59.i = getelementptr %struct.iscsi_cmd, ptr %call.i55.i, i32 1, i32 19
  %164 = ptrtoint ptr %conn3.i59.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %conn3.i59.i, align 4
  %iscsi_cmd.i60.i = getelementptr %struct.iscsi_cmd, ptr %call.i55.i, i32 1, i32 20
  %165 = ptrtoint ptr %iscsi_cmd.i60.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i55.i, ptr %iscsi_cmd.i60.i, align 8
  %rx_desc4.i61.i = getelementptr %struct.iscsi_cmd, ptr %call.i55.i, i32 1, i32 50, i32 0, i32 0, i32 1
  %166 = ptrtoint ptr %rx_desc4.i61.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %add.ptr.i, ptr %rx_desc4.i61.i, align 4
  %call45.i = tail call i32 @iscsit_handle_logout_cmd(ptr noundef %52, ptr noundef nonnull %call.i55.i, ptr noundef %add.ptr.i158) #11
  br label %isert_rx_opcode.exit

sw.bb46.i:                                        ; preds = %if.end.i
  %ttt.i = getelementptr i8, ptr %11, i32 -28
  %167 = ptrtoint ptr %ttt.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ttt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %168)
  %cmp.not.i = icmp eq i32 %168, -1
  br i1 %cmp.not.i, label %if.else.i, label %if.end51.i

if.else.i:                                        ; preds = %sw.bb46.i
  %context.i64.i = getelementptr inbounds %struct.iscsi_conn, ptr %52, i32 0, i32 64
  %169 = ptrtoint ptr %context.i64.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %context.i64.i, align 4
  %call.i65.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %52, i32 noundef 1) #11
  %tobool.not.i66.i = icmp eq ptr %call.i65.i, null
  br i1 %tobool.not.i66.i, label %if.end51.thread.i, label %if.end51.thread98.i

if.end51.thread.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210) #14
  br label %isert_rx_opcode.exit

if.end51.thread98.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %conn3.i69.i = getelementptr %struct.iscsi_cmd, ptr %call.i65.i, i32 1, i32 19
  %171 = ptrtoint ptr %conn3.i69.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %170, ptr %conn3.i69.i, align 4
  %iscsi_cmd.i70.i = getelementptr %struct.iscsi_cmd, ptr %call.i65.i, i32 1, i32 20
  %172 = ptrtoint ptr %iscsi_cmd.i70.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i65.i, ptr %iscsi_cmd.i70.i, align 8
  %rx_desc4.i71.i = getelementptr %struct.iscsi_cmd, ptr %call.i65.i, i32 1, i32 50, i32 0, i32 0, i32 1
  %173 = ptrtoint ptr %rx_desc4.i71.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %add.ptr.i, ptr %rx_desc4.i71.i, align 4
  br label %if.end54.i

if.end51.i:                                       ; preds = %sw.bb46.i
  %itt.i = getelementptr i8, ptr %11, i32 -32
  %174 = ptrtoint ptr %itt.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %itt.i, align 32
  %call49.i = tail call ptr @iscsit_find_cmd_from_itt(ptr noundef %52, i32 noundef %175) #11
  %tobool52.not.i = icmp eq ptr %call49.i, null
  br i1 %tobool52.not.i, label %if.end51.i.isert_rx_opcode.exit_crit_edge, label %if.end51.i.if.end54.i_crit_edge

if.end51.i.if.end54.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.end51.i.isert_rx_opcode.exit_crit_edge:        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_rx_opcode.exit

if.end54.i:                                       ; preds = %if.end51.i.if.end54.i_crit_edge, %if.end51.thread98.i
  %cmd.0101.i = phi ptr [ %call.i65.i, %if.end51.thread98.i ], [ %call49.i, %if.end51.i.if.end54.i_crit_edge ]
  %176 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %conn1.i, align 8
  %dlength.i76.i = getelementptr i8, ptr %11, i32 -43
  %178 = ptrtoint ptr %dlength.i76.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %dlength.i76.i, align 1
  %conv.i77.i = zext i8 %179 to i32
  %shl.i78.i = shl nuw nsw i32 %conv.i77.i, 16
  %arrayidx3.i79.i = getelementptr i8, ptr %11, i32 -42
  %180 = ptrtoint ptr %arrayidx3.i79.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx3.i79.i, align 2
  %conv4.i80.i = zext i8 %181 to i32
  %shl5.i81.i = shl nuw nsw i32 %conv4.i80.i, 8
  %or.i82.i = or i32 %shl5.i81.i, %shl.i78.i
  %arrayidx7.i83.i = getelementptr i8, ptr %11, i32 -41
  %182 = ptrtoint ptr %arrayidx7.i83.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx7.i83.i, align 1
  %conv8.i84.i = zext i8 %183 to i32
  %or9.i85.i = or i32 %or.i82.i, %conv8.i84.i
  %call.i86.i = tail call i32 @iscsit_setup_text_cmd(ptr noundef %177, ptr noundef nonnull %cmd.0101.i, ptr noundef %add.ptr.i158) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %cmp.i87.i = icmp slt i32 %call.i86.i, 0
  br i1 %cmp.i87.i, label %if.end54.i.isert_rx_opcode.exit_crit_edge, label %if.end.i89.i

if.end54.i.isert_rx_opcode.exit_crit_edge:        ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_rx_opcode.exit

if.end.i89.i:                                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i85.i)
  %tobool.not.i88.i = icmp eq i32 %or9.i85.i, 0
  br i1 %tobool.not.i88.i, label %if.end.i89.i.if.end16.i94.i_crit_edge, label %if.end8.i.i.i.i

if.end.i89.i.if.end16.i94.i_crit_edge:            ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i94.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i89.i
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %or9.i85.i, i32 noundef 3520) #17
  %tobool13.not.i90.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool13.not.i90.i, label %if.end8.i.i.i.i.isert_rx_opcode.exit_crit_edge, label %if.end8.i.i.i.i.if.end16.i94.i_crit_edge

if.end8.i.i.i.i.if.end16.i94.i_crit_edge:         ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i94.i

if.end8.i.i.i.i.isert_rx_opcode.exit_crit_edge:   ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_rx_opcode.exit

if.end16.i94.i:                                   ; preds = %if.end8.i.i.i.i.if.end16.i94.i_crit_edge, %if.end.i89.i.if.end16.i94.i_crit_edge
  %text_in.0.i.i = phi ptr [ %call9.i.i.i.i, %if.end8.i.i.i.i.if.end16.i94.i_crit_edge ], [ null, %if.end.i89.i.if.end16.i94.i_crit_edge ]
  %text_in_ptr.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd.0101.i, i32 0, i32 45
  %184 = ptrtoint ptr %text_in_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %text_in.0.i.i, ptr %text_in_ptr.i.i, align 4
  %185 = call ptr @memcpy(ptr %text_in.0.i.i, ptr %11, i32 %or9.i85.i)
  %call19.i.i = tail call i32 @iscsit_process_text_cmd(ptr noundef %177, ptr noundef nonnull %cmd.0101.i, ptr noundef %add.ptr.i158) #11
  br label %isert_rx_opcode.exit

do.end59.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.205, i32 noundef %.pre.i) #14
  tail call void @dump_stack() #14
  br label %isert_rx_opcode.exit

isert_rx_opcode.exit:                             ; preds = %do.end59.i, %if.end16.i94.i, %if.end8.i.i.i.i.isert_rx_opcode.exit_crit_edge, %if.end54.i.isert_rx_opcode.exit_crit_edge, %if.end51.i.isert_rx_opcode.exit_crit_edge, %if.end51.thread.i, %if.end44.i, %isert_allocate_cmd.exit63.thread.i, %if.end38.i, %isert_allocate_cmd.exit53.thread.i, %isert_handle_iscsi_dataout.exit.i, %if.end.i23.i, %if.end29.i.isert_rx_opcode.exit_crit_edge, %isert_allocate_cmd.exit18.thread.i, %if.then87.i.i, %if.else82.i.i.isert_rx_opcode.exit_crit_edge, %if.then81.i.i, %if.end16.i.i.isert_rx_opcode.exit_crit_edge, %if.end7.i.i.isert_rx_opcode.exit_crit_edge, %if.end17.i.isert_rx_opcode.exit_crit_edge, %isert_allocate_cmd.exit.thread.i, %do.end.i
  %186 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %dma_addr, align 8
  %188 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %7, align 8
  %conv.i161 = trunc i64 %187 to i32
  call void @dma_sync_single_for_device(ptr noundef %189, i32 noundef %conv.i161, i32 noundef 9216, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %isert_rx_opcode.exit, %if.then6, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_handle_task_mgt_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_handle_logout_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_find_cmd_from_itt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_allocate_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_setup_scsi_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_process_scsi_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_sequence_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_set_unsolicited_dataout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_setup_nop_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_process_nop_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_check_dataout_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_check_dataout_payload(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_setup_text_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_process_text_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_login_send_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %cm_id = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_id, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wc, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then, !prof !642

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call fastcc void @isert_print_wc(ptr noundef %wc, ptr noundef nonnull @.str.232)
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp3.not = icmp eq i32 %13, 5
  br i1 %cmp3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conn = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conn, align 8
  tail call void @iscsit_cause_connection_reinstatement(ptr noundef %15, i32 noundef 0) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dma_addr.i = getelementptr i8, ptr %9, i32 -40
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %dma_addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp.not.i = icmp eq i64 %17, 0
  br i1 %cmp.not.i, label %if.end5.isert_unmap_tx_desc.exit_crit_edge, label %do.body.i

if.end5.isert_unmap_tx_desc.exit_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_unmap_tx_desc.exit

do.body.i:                                        ; preds = %if.end5
  %18 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp1.i = icmp sgt i32 %18, 2
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end5.i_crit_edge, !prof !640

do.body.i.do.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.body.i.do.end5.i_crit_edge
  %19 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %dma_addr.i, align 1
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 8
  %conv.i.i = trunc i64 %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %conv.i.i, i32 noundef 76, i32 noundef 1, i32 noundef 0) #11
  %23 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 0, ptr %dma_addr.i, align 1
  br label %isert_unmap_tx_desc.exit

isert_unmap_tx_desc.exit:                         ; preds = %do.end5.i, %if.end5.isert_unmap_tx_desc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isert_put_nopin(ptr noundef %cmd, ptr noundef %conn, i1 noundef zeroext %nopout_response) unnamed_addr #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %dummy.i.i.i = alloca ptr, align 4
  %rx_wr.i.i = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 64
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tx_desc = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 21
  %send_wr1 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 24
  %device1.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1.i, align 4
  %ib_device.i = getelementptr inbounds %struct.isert_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ib_device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ib_device.i, align 4
  %dma_addr.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 41
  %6 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %dma_addr.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %conv.i.i = trunc i64 %7 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %9, i32 noundef %conv.i.i, i32 noundef 76, i32 noundef 1) #11
  %10 = getelementptr inbounds i8, ptr %tx_desc, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 27)
  %12 = ptrtoint ptr %tx_desc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %tx_desc, align 1
  %num_sge.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 20
  %13 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 1, ptr %num_sge.i.i, align 1
  %lkey.i.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 46
  %14 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %lkey.i.i, align 1
  %pd.i.i = getelementptr inbounds %struct.isert_device, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pd.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp.not.i.i = icmp eq i32 %15, %19
  br i1 %cmp.not.i.i, label %entry.isert_create_send_desc.exit_crit_edge, label %if.then.i.i

entry.isert_create_send_desc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit

if.then.i.i:                                      ; preds = %entry
  %20 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %lkey.i.i, align 1
  %21 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp7.i.i = icmp sgt i32 %21, 2
  br i1 %cmp7.i.i, label %do.end.i.i, label %if.then.i.i.isert_create_send_desc.exit_crit_edge, !prof !640

if.then.i.i.isert_create_send_desc.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_create_send_desc.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef %tx_desc) #14
  br label %isert_create_send_desc.exit

isert_create_send_desc.exit:                      ; preds = %do.end.i.i, %if.then.i.i.isert_create_send_desc.exit_crit_edge, %entry.isert_create_send_desc.exit_crit_edge
  %iscsi_header = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 28
  tail call void @iscsit_build_nopin_rsp(ptr noundef %cmd, ptr noundef %conn, ptr noundef %iscsi_header, i1 noundef zeroext %nopout_response) #11
  tail call fastcc void @isert_init_tx_hdrs(ptr noundef %1, ptr noundef %tx_desc)
  %tx_cqe.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 16
  %22 = ptrtoint ptr %tx_cqe.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store ptr @isert_send_done, ptr %tx_cqe.i, align 1
  %23 = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 32
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tx_cqe.i, ptr %23, align 8
  %snd_w_inv.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 27
  %25 = ptrtoint ptr %snd_w_inv.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %snd_w_inv.i, align 1, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %isert_create_send_desc.exit.if.else.i_crit_edge, label %land.lhs.true.i

isert_create_send_desc.exit.if.else.i_crit_edge:  ; preds = %isert_create_send_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %isert_create_send_desc.exit
  %inv_rkey.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 13
  %27 = ptrtoint ptr %inv_rkey.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inv_rkey.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i = icmp eq i32 %28, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %opcode.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %29 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 9, ptr %opcode.i, align 8
  %ex.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 49
  %30 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %ex.i, align 8
  br label %isert_init_send_wr.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %isert_create_send_desc.exit.if.else.i_crit_edge
  %opcode5.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 48
  %31 = ptrtoint ptr %opcode5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %opcode5.i, align 8
  br label %isert_init_send_wr.exit

isert_init_send_wr.exit:                          ; preds = %if.else.i, %if.then.i
  %tx_sg.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 43
  %sg_list.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 40
  %32 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tx_sg.i, ptr %sg_list.i, align 8
  %33 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_sge.i.i, align 4
  %num_sge7.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 47, i32 44
  %35 = ptrtoint ptr %num_sge7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %num_sge7.i, align 4
  %send_flags.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 48
  %36 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %send_flags.i, align 4
  %37 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp = icmp sgt i32 %37, 2
  br i1 %cmp, label %do.end, label %isert_init_send_wr.exit.do.end11_crit_edge, !prof !640

isert_init_send_wr.exit.do.end11_crit_edge:       ; preds = %isert_init_send_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %isert_init_send_wr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.238, ptr noundef %1) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %isert_init_send_wr.exit.do.end11_crit_edge
  %rx_desc.i = getelementptr %struct.iscsi_cmd, ptr %cmd, i32 1, i32 50, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_desc.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rx_wr.i.i) #11
  %40 = call ptr @memset(ptr %rx_wr.i.i, i32 255, i32 16)
  %in_use.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %39, i32 0, i32 4
  %41 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %in_use.i.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i, label %do.end11.if.end.i_crit_edge, label %if.end.i.i

do.end11.if.end.i_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i.i:                                       ; preds = %do.end11
  %43 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %in_use.i.i, align 4
  %rx_cqe.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %39, i32 0, i32 3
  %44 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rx_cqe.i.i, ptr %44, align 8
  %rx_sg.i.i = getelementptr inbounds %struct.iser_rx_desc, ptr %39, i32 0, i32 2
  %sg_list.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %rx_sg.i.i, ptr %sg_list.i.i, align 8
  %num_sge.i.i25 = getelementptr inbounds %struct.ib_recv_wr, ptr %rx_wr.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %num_sge.i.i25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %num_sge.i.i25, align 4
  %48 = ptrtoint ptr %rx_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rx_wr.i.i, align 8
  %qp.i.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %49 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %qp.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  %51 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !644
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %50, align 4
  %post_recv.i.i.i = getelementptr inbounds %struct.ib_device, ptr %53, i32 0, i32 1, i32 7
  %54 = ptrtoint ptr %post_recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %post_recv.i.i.i, align 4
  %call.i.i.i = call i32 %55(ptr noundef %50, ptr noundef nonnull %rx_wr.i.i, ptr noundef nonnull %dummy.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %isert_post_recv.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

isert_post_recv.exit.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.228, i32 noundef %call.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i) #11
  br label %isert_post_response.exit

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %do.end11.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rx_wr.i.i) #11
  %qp.i = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %qp.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #11
  %58 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !644
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %57, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %60, i32 0, i32 1, i32 6
  %61 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i26 = call i32 %62(ptr noundef %57, ptr noundef %send_wr1, ptr noundef nonnull %dummy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %tobool2.not.i = icmp eq i32 %call.i.i26, 0
  br i1 %tobool2.not.i, label %if.end.i.isert_post_response.exit_crit_edge, label %do.end.i

if.end.i.isert_post_response.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_post_response.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250, i32 noundef %call.i.i26) #14
  br label %isert_post_response.exit

isert_post_response.exit:                         ; preds = %do.end.i, %if.end.i.isert_post_response.exit_crit_edge, %isert_post_recv.exit.i
  %retval.0.i = phi i32 [ %call.i.i26, %do.end.i ], [ %call.i.i.i, %isert_post_recv.exit.i ], [ 0, %if.end.i.isert_post_response.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_build_nopin_rsp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_send_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %cm_id = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_id, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wc, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -120
  %add.ptr.i55 = getelementptr i8, ptr %9, i32 -172
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.body, label %if.then, !prof !642

if.then:                                          ; preds = %entry
  tail call fastcc void @isert_print_wc(ptr noundef %wc, ptr noundef nonnull @.str.239)
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp4.not = icmp eq i32 %13, 5
  br i1 %cmp4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conn = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conn, align 8
  tail call void @iscsit_cause_connection_reinstatement(ptr noundef %15, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  tail call fastcc void @isert_completion_put(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i55, ptr noundef %7, i1 noundef zeroext true)
  br label %cleanup

do.body:                                          ; preds = %entry
  %16 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp7 = icmp sgt i32 %16, 2
  br i1 %cmp7, label %do.end, label %do.body.do.end19_crit_edge, !prof !640

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.240, ptr noundef %add.ptr.i55) #14
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %iscsi_cmd = getelementptr i8, ptr %9, i32 -124
  %17 = ptrtoint ptr %iscsi_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iscsi_cmd, align 8
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.319)
  switch i32 %20, label %sw.default [
    i32 34, label %do.end19.sw.bb_crit_edge
    i32 15, label %do.end19.sw.bb_crit_edge57
    i32 19, label %do.end19.sw.bb_crit_edge58
    i32 36, label %do.end19.sw.bb_crit_edge59
  ]

do.end19.sw.bb_crit_edge59:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end19.sw.bb_crit_edge58:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end19.sw.bb_crit_edge57:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end19.sw.bb_crit_edge:                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %do.end19.sw.bb_crit_edge, %do.end19.sw.bb_crit_edge57, %do.end19.sw.bb_crit_edge58, %do.end19.sw.bb_crit_edge59
  %dma_addr.i = getelementptr i8, ptr %9, i32 -40
  %22 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %dma_addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp.not.i = icmp eq i64 %23, 0
  br i1 %cmp.not.i, label %sw.bb.isert_unmap_tx_desc.exit_crit_edge, label %do.body.i

sw.bb.isert_unmap_tx_desc.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_unmap_tx_desc.exit

do.body.i:                                        ; preds = %sw.bb
  %24 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp1.i = icmp sgt i32 %24, 2
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end5.i_crit_edge, !prof !640

do.body.i.do.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.body.i.do.end5.i_crit_edge
  %25 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %dma_addr.i, align 1
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 8
  %conv.i.i = trunc i64 %26 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %28, i32 noundef %conv.i.i, i32 noundef 76, i32 noundef 1, i32 noundef 0) #11
  %29 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %dma_addr.i, align 1
  br label %isert_unmap_tx_desc.exit

isert_unmap_tx_desc.exit:                         ; preds = %do.end5.i, %sw.bb.isert_unmap_tx_desc.exit_crit_edge
  %comp_work = getelementptr i8, ptr %9, i32 132
  tail call void @__init_work(ptr noundef %comp_work, i32 noundef 0) #11
  %30 = ptrtoint ptr %comp_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %comp_work, align 8
  %lockdep_map = getelementptr i8, ptr %9, i32 148
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.241, ptr noundef nonnull @isert_send_done.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry24 = getelementptr i8, ptr %9, i32 136
  %31 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i = getelementptr i8, ptr %9, i32 140
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry24, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %9, i32 144
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @isert_do_control_comp, ptr %func, align 4
  %34 = load ptr, ptr @isert_comp_wq, align 4
  %call.i56 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %comp_work) #11
  br label %cleanup

sw.default:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 31, ptr %i_state, align 4
  tail call fastcc void @isert_completion_put(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i55, ptr noundef %7, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %isert_unmap_tx_desc.exit, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isert_completion_put(ptr nocapture noundef %tx_desc, ptr noundef %isert_cmd, ptr nocapture noundef readonly %ib_dev, i1 noundef zeroext %comp_err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu_buf_dma = getelementptr inbounds %struct.isert_cmd, ptr %isert_cmd, i32 0, i32 6
  %0 = ptrtoint ptr %pdu_buf_dma to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pdu_buf_dma, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1 = icmp sgt i32 %2, 2
  br i1 %cmp1, label %do.end, label %do.body.do.end5_crit_edge, !prof !640

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %3 = ptrtoint ptr %pdu_buf_dma to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pdu_buf_dma, align 8
  %pdu_buf_len = getelementptr inbounds %struct.isert_cmd, ptr %isert_cmd, i32 0, i32 7
  %5 = ptrtoint ptr %pdu_buf_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdu_buf_len, align 8
  %7 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ib_dev, align 8
  %conv.i = trunc i64 %4 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %conv.i, i32 noundef %6, i32 noundef 1, i32 noundef 0) #11
  %9 = ptrtoint ptr %pdu_buf_dma to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %pdu_buf_dma, align 8
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %entry.if.end8_crit_edge
  %dma_addr.i = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 3
  %10 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %dma_addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp.not.i = icmp eq i64 %11, 0
  br i1 %cmp.not.i, label %if.end8.isert_unmap_tx_desc.exit_crit_edge, label %do.body.i

if.end8.isert_unmap_tx_desc.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_unmap_tx_desc.exit

do.body.i:                                        ; preds = %if.end8
  %12 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp1.i = icmp sgt i32 %12, 2
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end5.i_crit_edge, !prof !640

do.body.i.do.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.body.i.do.end5.i_crit_edge
  %13 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %dma_addr.i, align 1
  %15 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ib_dev, align 8
  %conv.i.i = trunc i64 %14 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %conv.i.i, i32 noundef 76, i32 noundef 1, i32 noundef 0) #11
  %17 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %dma_addr.i, align 1
  br label %isert_unmap_tx_desc.exit

isert_unmap_tx_desc.exit:                         ; preds = %do.end5.i, %if.end8.isert_unmap_tx_desc.exit_crit_edge
  tail call fastcc void @isert_put_cmd(ptr noundef %isert_cmd, i1 noundef zeroext %comp_err)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_do_control_comp(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -304
  %conn = getelementptr i8, ptr %work, i32 -260
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %cm_id = getelementptr inbounds %struct.isert_conn, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %iscsi_cmd = getelementptr i8, ptr %work, i32 -256
  %6 = ptrtoint ptr %iscsi_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iscsi_cmd, align 8
  %8 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp sgt i32 %8, 2
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge, !prof !640

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.245, ptr noundef %add.ptr, i32 noundef %10) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %i_state6 = getelementptr inbounds %struct.iscsi_cmd, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %i_state6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state6, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.320)
  switch i32 %12, label %do.end16 [
    i32 34, label %sw.bb
    i32 19, label %do.end5.sw.bb9_crit_edge
    i32 36, label %do.end5.sw.bb9_crit_edge31
    i32 15, label %sw.bb11
  ]

do.end5.sw.bb9_crit_edge31:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

do.end5.sw.bb9_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

sw.bb:                                            ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conn7 = getelementptr inbounds %struct.iscsi_cmd, ptr %7, i32 0, i32 66
  %14 = ptrtoint ptr %conn7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conn7, align 8
  %call8 = tail call i32 @iscsit_tmr_post_handler(ptr noundef %7, ptr noundef %15) #11
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb, %do.end5.sw.bb9_crit_edge, %do.end5.sw.bb9_crit_edge31
  %16 = ptrtoint ptr %i_state6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 31, ptr %i_state6, align 4
  %tx_desc = getelementptr i8, ptr %work, i32 -252
  tail call fastcc void @isert_completion_put(ptr noundef %tx_desc, ptr noundef %add.ptr, ptr noundef %5, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conn12 = getelementptr inbounds %struct.iscsi_cmd, ptr %7, i32 0, i32 66
  %17 = ptrtoint ptr %conn12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conn12, align 8
  %call13 = tail call i32 @iscsit_logout_post_handler(ptr noundef %7, ptr noundef %18) #11
  br label %sw.epilog

do.end16:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.245, i32 noundef %12) #14
  tail call void @dump_stack() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %sw.bb11, %sw.bb9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_tmr_post_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_logout_post_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_build_logout_rsp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_build_task_mgt_rsp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_build_reject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_build_text_rsp(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_rdma_read_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %device1 = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 4
  %6 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wc, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -120
  %add.ptr.i76 = getelementptr i8, ptr %7, i32 -172
  %iscsi_cmd = getelementptr i8, ptr %7, i32 -124
  %8 = ptrtoint ptr %iscsi_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iscsi_cmd, align 8
  %se_cmd3 = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 70
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.body, label %if.then, !prof !642

if.then:                                          ; preds = %entry
  tail call fastcc void @isert_print_wc(ptr noundef %wc, ptr noundef nonnull @.str.266)
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp6.not = icmp eq i32 %13, 5
  br i1 %cmp6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conn = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conn, align 8
  tail call void @iscsit_cause_connection_reinstatement(ptr noundef %15, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %ib_device = getelementptr inbounds %struct.isert_device, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %ib_device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ib_device, align 4
  tail call fastcc void @isert_completion_put(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i76, ptr noundef %17, i1 noundef zeroext true)
  br label %cleanup

do.body:                                          ; preds = %entry
  %18 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp9 = icmp sgt i32 %18, 2
  br i1 %cmp9, label %do.end, label %do.body.do.end21_crit_edge, !prof !640

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.267, ptr noundef %add.ptr.i76) #14
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  tail call void @iscsit_stop_dataout_timer(ptr noundef %9) #11
  %pi_support.i = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %pi_support.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pi_support.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %do.end21.if.end25_crit_edge, label %isert_prot_cmd.exit

do.end21.if.end25_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

isert_prot_cmd.exit:                              ; preds = %do.end21
  %prot_op.i = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 70, i32 49
  %21 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prot_op.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.not = icmp eq i32 %22, 0
  br i1 %cmp.i.not, label %isert_prot_cmd.exit.if.end25_crit_edge, label %if.then23

isert_prot_cmd.exit.if.end25_crit_edge:           ; preds = %isert_prot_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %isert_prot_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = getelementptr i8, ptr %7, i32 60
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %mr = getelementptr inbounds %struct.rdma_rw_reg_ctx, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mr, align 8
  %call24 = tail call fastcc i32 @isert_check_pi_status(ptr noundef %se_cmd3, ptr noundef %27)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %isert_prot_cmd.exit.if.end25_crit_edge, %do.end21.if.end25_crit_edge
  %ret.0 = phi i32 [ %call24, %if.then23 ], [ 0, %isert_prot_cmd.exit.if.end25_crit_edge ], [ 0, %do.end21.if.end25_crit_edge ]
  tail call fastcc void @isert_rdma_rw_ctx_destroy(ptr noundef %add.ptr.i76, ptr noundef %3)
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 40
  %28 = ptrtoint ptr %write_data_done to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %write_data_done, align 128
  %29 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp27 = icmp sgt i32 %29, 2
  br i1 %cmp27, label %do.end37, label %if.end25.do.end42_crit_edge, !prof !640

if.end25.do.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.267, ptr noundef %add.ptr.i76) #14
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %if.end25.do.end42_crit_edge
  %istate_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %istate_lock) #11
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 15
  %30 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_flags, align 4
  %or = or i32 %31, 1
  store i32 %or, ptr %cmd_flags, align 4
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 4
  %32 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %i_state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool44.not = icmp eq i32 %ret.0, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %pi_err = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 70, i32 57
  %33 = ptrtoint ptr %pi_err to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pi_err, align 4
  tail call void @transport_generic_request_failure(ptr noundef %se_cmd3, i32 noundef %34) #11
  br label %cleanup

if.else:                                          ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @target_execute_cmd(ptr noundef %se_cmd3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then45, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isert_rdma_rw_ctx_post(ptr noundef %cmd, ptr nocapture noundef readonly %conn, ptr noundef %cqe, ptr noundef %chain_wr) unnamed_addr #0 align 64 {
entry:
  %sig_attrs = alloca %struct.ib_sig_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iscsi_cmd = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 9
  %0 = ptrtoint ptr %iscsi_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iscsi_cmd, align 8
  %se_cmd_flags.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 11
  %2 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %se_cmd_flags.i, align 8
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cm_id = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 18
  %4 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_id, align 4
  %port_num2 = getelementptr inbounds %struct.rdma_cm_id, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %port_num2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_num2, align 4
  %ctx_init_done = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 15
  %8 = ptrtoint ptr %ctx_init_done to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctx_init_done, align 8, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %target_reverse_dma_direction.exit, label %target_reverse_dma_direction.exit.thread

target_reverse_dma_direction.exit:                ; preds = %entry
  br i1 %tobool.not, label %if.end, label %target_reverse_dma_direction.exit.rdma_ctx_post_crit_edge

target_reverse_dma_direction.exit.rdma_ctx_post_crit_edge: ; preds = %target_reverse_dma_direction.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ctx_post

target_reverse_dma_direction.exit.thread:         ; preds = %entry
  br i1 %tobool.not, label %target_reverse_dma_direction.exit.thread.if.else_crit_edge, label %target_reverse_dma_direction.exit.thread.rdma_ctx_post_crit_edge

target_reverse_dma_direction.exit.thread.rdma_ctx_post_crit_edge: ; preds = %target_reverse_dma_direction.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ctx_post

target_reverse_dma_direction.exit.thread.if.else_crit_edge: ; preds = %target_reverse_dma_direction.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end:                                           ; preds = %target_reverse_dma_direction.exit
  %data_direction.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 6
  %10 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %switch.selectcmp4.i = icmp eq i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch.selectcmp.i = icmp eq i32 %11, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  br i1 %switch.selectcmp4.i, label %if.then4, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %write_va = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 3
  %write_stag = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 1
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 40
  %12 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write_data_done, align 128
  br label %if.end6

if.else:                                          ; preds = %if.end.if.else_crit_edge, %target_reverse_dma_direction.exit.thread.if.else_crit_edge
  %retval.0.i141149 = phi i32 [ %switch.select.i, %if.end.if.else_crit_edge ], [ 0, %target_reverse_dma_direction.exit.thread.if.else_crit_edge ]
  %read_va = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 2
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %retval.0.i141148 = phi i32 [ 2, %if.then4 ], [ %retval.0.i141149, %if.else ]
  %addr.0.in = phi ptr [ %write_va, %if.then4 ], [ %read_va, %if.else ]
  %rkey.0.in = phi ptr [ %write_stag, %if.then4 ], [ %cmd, %if.else ]
  %offset.0 = phi i32 [ %13, %if.then4 ], [ 0, %if.else ]
  %14 = ptrtoint ptr %rkey.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %rkey.0 = load i32, ptr %rkey.0.in, align 4
  %15 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load8_noabort(i32 %15)
  %addr.0 = load i64, ptr %addr.0.in, align 8
  %pi_support.i = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 3
  %16 = ptrtoint ptr %pi_support.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pi_support.i, align 4, !range !641
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i131 = icmp eq i8 %17, 0
  br i1 %tobool.not.i131, label %if.end6.if.else54_crit_edge, label %isert_prot_cmd.exit

if.end6.if.else54_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else54

isert_prot_cmd.exit:                              ; preds = %if.end6
  %prot_op.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 49
  %18 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prot_op.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not = icmp eq i32 %19, 0
  br i1 %cmp.i.not, label %isert_prot_cmd.exit.if.else54_crit_edge, label %if.then8

isert_prot_cmd.exit.if.else54_crit_edge:          ; preds = %isert_prot_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else54

if.then8:                                         ; preds = %isert_prot_cmd.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sig_attrs) #11
  %20 = call ptr @memset(ptr %sig_attrs, i32 0, i32 64)
  %21 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prot_op.i, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.321)
  switch i32 %22, label %cleanup [
    i32 1, label %if.then8.sw.bb.i_crit_edge
    i32 8, label %if.then8.sw.bb.i_crit_edge159
    i32 2, label %if.then8.sw.bb1.i_crit_edge
    i32 4, label %if.then8.sw.bb1.i_crit_edge160
    i32 16, label %if.then8.sw.bb5.i_crit_edge
    i32 32, label %if.then8.sw.bb5.i_crit_edge161
  ]

if.then8.sw.bb5.i_crit_edge161:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.then8.sw.bb5.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

if.then8.sw.bb1.i_crit_edge160:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

if.then8.sw.bb1.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

if.then8.sw.bb.i_crit_edge159:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.then8.sw.bb.i_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then8.sw.bb.i_crit_edge, %if.then8.sw.bb.i_crit_edge159
  %wire.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2
  %24 = ptrtoint ptr %wire.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %wire.i, align 4
  %se_dev.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 19
  %25 = ptrtoint ptr %se_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %se_dev.i.i, align 4
  %block_size.i.i = getelementptr inbounds %struct.se_device, ptr %26, i32 0, i32 39, i32 21
  %27 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %block_size.i.i, align 8
  %conv.i.i = trunc i32 %28 to i16
  %pi_interval.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %pi_interval.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i, ptr %pi_interval.i.i, align 4
  %reftag_seed.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 54
  %30 = ptrtoint ptr %reftag_seed.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reftag_seed.i.i, align 8
  %ref_tag.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %ref_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ref_tag.i.i, align 4
  %apptag_check_mask.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 8
  %33 = ptrtoint ptr %apptag_check_mask.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %apptag_check_mask.i.i, align 4
  %app_escape.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %app_escape.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %app_escape.i.i, align 1
  %ref_escape.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 7
  %35 = ptrtoint ptr %ref_escape.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %ref_escape.i.i, align 2
  %prot_type.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 50
  %36 = ptrtoint ptr %prot_type.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prot_type.i.i, align 4
  %.off.i.i = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then.i.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_remap.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 5
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.then8.sw.bb1.i_crit_edge, %if.then8.sw.bb1.i_crit_edge160
  %mem4.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1
  %38 = ptrtoint ptr %mem4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %mem4.i, align 4
  %se_dev.i49.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 19
  %39 = ptrtoint ptr %se_dev.i49.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %se_dev.i49.i, align 4
  %block_size.i50.i = getelementptr inbounds %struct.se_device, ptr %40, i32 0, i32 39, i32 21
  %41 = ptrtoint ptr %block_size.i50.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %block_size.i50.i, align 8
  %conv.i51.i = trunc i32 %42 to i16
  %pi_interval.i52.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %pi_interval.i52.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i51.i, ptr %pi_interval.i52.i, align 4
  %reftag_seed.i53.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 54
  %44 = ptrtoint ptr %reftag_seed.i53.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reftag_seed.i53.i, align 8
  %ref_tag.i54.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %ref_tag.i54.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ref_tag.i54.i, align 4
  %apptag_check_mask.i55.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 8
  %47 = ptrtoint ptr %apptag_check_mask.i55.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %apptag_check_mask.i55.i, align 4
  %app_escape.i56.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 6
  %48 = ptrtoint ptr %app_escape.i56.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %app_escape.i56.i, align 1
  %ref_escape.i57.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 7
  %49 = ptrtoint ptr %ref_escape.i57.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %ref_escape.i57.i, align 2
  %prot_type.i58.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 50
  %50 = ptrtoint ptr %prot_type.i58.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prot_type.i58.i, align 4
  %.off.i59.i = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i59.i)
  %switch.i60.i = icmp ult i32 %.off.i59.i, 2
  br i1 %switch.i60.i, label %if.then.i62.i, label %sw.bb1.i.sw.epilog.i_crit_edge

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i62.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_remap.i61.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 5
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %if.then8.sw.bb5.i_crit_edge, %if.then8.sw.bb5.i_crit_edge161
  %wire6.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2
  %52 = ptrtoint ptr %wire6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %wire6.i, align 4
  %se_dev.i65.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 19
  %53 = ptrtoint ptr %se_dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %se_dev.i65.i, align 4
  %block_size.i66.i = getelementptr inbounds %struct.se_device, ptr %54, i32 0, i32 39, i32 21
  %55 = ptrtoint ptr %block_size.i66.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %block_size.i66.i, align 8
  %conv.i67.i = trunc i32 %56 to i16
  %pi_interval.i68.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %pi_interval.i68.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i67.i, ptr %pi_interval.i68.i, align 4
  %reftag_seed.i69.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 54
  %58 = ptrtoint ptr %reftag_seed.i69.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reftag_seed.i69.i, align 8
  %ref_tag.i70.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 4
  %60 = ptrtoint ptr %ref_tag.i70.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %ref_tag.i70.i, align 4
  %apptag_check_mask.i71.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 8
  %61 = ptrtoint ptr %apptag_check_mask.i71.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %apptag_check_mask.i71.i, align 4
  %app_escape.i72.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 6
  %62 = ptrtoint ptr %app_escape.i72.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %app_escape.i72.i, align 1
  %ref_escape.i73.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 7
  %63 = ptrtoint ptr %ref_escape.i73.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %ref_escape.i73.i, align 2
  %prot_type.i74.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 50
  %64 = ptrtoint ptr %prot_type.i74.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %prot_type.i74.i, align 4
  %.off.i75.i = add i32 %65, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i75.i)
  %switch.i76.i = icmp ult i32 %.off.i75.i, 2
  br i1 %switch.i76.i, label %if.then.i78.i, label %sw.bb5.i.isert_set_dif_domain.exit79.i_crit_edge

sw.bb5.i.isert_set_dif_domain.exit79.i_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %isert_set_dif_domain.exit79.i

if.then.i78.i:                                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_remap.i77.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 5
  %66 = ptrtoint ptr %ref_remap.i77.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %ref_remap.i77.i, align 4
  br label %isert_set_dif_domain.exit79.i

isert_set_dif_domain.exit79.i:                    ; preds = %if.then.i78.i, %sw.bb5.i.isert_set_dif_domain.exit79.i_crit_edge
  %mem7.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1
  %67 = ptrtoint ptr %mem7.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %mem7.i, align 4
  %sig.i80.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %sig.i80.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %sig.i80.i, align 4
  %69 = ptrtoint ptr %se_dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %se_dev.i65.i, align 4
  %block_size.i82.i = getelementptr inbounds %struct.se_device, ptr %70, i32 0, i32 39, i32 21
  %71 = ptrtoint ptr %block_size.i82.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %block_size.i82.i, align 8
  %conv.i83.i = trunc i32 %72 to i16
  %pi_interval.i84.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %pi_interval.i84.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i83.i, ptr %pi_interval.i84.i, align 4
  %74 = ptrtoint ptr %reftag_seed.i69.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reftag_seed.i69.i, align 8
  %ref_tag.i86.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 4
  %76 = ptrtoint ptr %ref_tag.i86.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %ref_tag.i86.i, align 4
  %apptag_check_mask.i87.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 8
  %77 = ptrtoint ptr %apptag_check_mask.i87.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %apptag_check_mask.i87.i, align 4
  %app_escape.i88.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 6
  %78 = ptrtoint ptr %app_escape.i88.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %app_escape.i88.i, align 1
  %ref_escape.i89.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 7
  %79 = ptrtoint ptr %ref_escape.i89.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %ref_escape.i89.i, align 2
  %80 = ptrtoint ptr %prot_type.i74.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %prot_type.i74.i, align 4
  %.off.i91.i = add i32 %81, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i91.i)
  %switch.i92.i = icmp ult i32 %.off.i91.i, 2
  br i1 %switch.i92.i, label %if.then.i94.i, label %isert_set_dif_domain.exit79.i.sw.epilog.i_crit_edge

isert_set_dif_domain.exit79.i.sw.epilog.i_crit_edge: ; preds = %isert_set_dif_domain.exit79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i94.i:                                    ; preds = %isert_set_dif_domain.exit79.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_remap.i93.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 5
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then.i94.i, %if.then.i62.i, %if.then.i.i
  %ref_remap.i93.sink.i = phi ptr [ %ref_remap.i93.i, %if.then.i94.i ], [ %ref_remap.i61.i, %if.then.i62.i ], [ %ref_remap.i.i, %if.then.i.i ]
  %82 = ptrtoint ptr %ref_remap.i93.sink.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %ref_remap.i93.sink.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %isert_set_dif_domain.exit79.i.sw.epilog.i_crit_edge, %sw.bb1.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %prot_checks.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 51
  %83 = ptrtoint ptr %prot_checks.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %prot_checks.i, align 8
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i133 = icmp eq i8 %85, 0
  br i1 %tobool.not.i133, label %sw.epilog.i.if.end.i134_crit_edge, label %if.then.i

sw.epilog.i.if.end.i134_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i134

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sig_attrs, align 4
  %88 = or i8 %87, -64
  store i8 %88, ptr %sig_attrs, align 4
  br label %if.end.i134

if.end.i134:                                      ; preds = %if.then.i, %sw.epilog.i.if.end.i134_crit_edge
  %89 = ptrtoint ptr %prot_checks.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %prot_checks.i, align 8
  %91 = and i8 %90, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool14.not.i = icmp eq i8 %91, 0
  br i1 %tobool14.not.i, label %if.end.i134.if.end20.i_crit_edge, label %if.then15.i

if.end.i134.if.end20.i_crit_edge:                 ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %sig_attrs, align 4
  %94 = or i8 %93, 48
  store i8 %94, ptr %sig_attrs, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end.i134.if.end20.i_crit_edge
  %95 = ptrtoint ptr %prot_checks.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %prot_checks.i, align 8
  %97 = and i8 %96, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool24.not.i = icmp eq i8 %97, 0
  br i1 %tobool24.not.i, label %if.end20.i.if.end12_crit_edge, label %if.then25.i

if.end20.i.if.end12_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sig_attrs, align 4
  %100 = or i8 %99, 15
  store i8 %100, ptr %sig_attrs, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then25.i, %if.end20.i.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0)
  %tobool13.not = icmp eq i32 %offset.0, 0
  br i1 %tobool13.not, label %if.end12.cleanup.thread_crit_edge, label %land.rhs

if.end12.cleanup.thread_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

land.rhs:                                         ; preds = %if.end12
  %.b130 = load i1, ptr @isert_rdma_rw_ctx_post.__already_done, align 1
  br i1 %.b130, label %land.rhs.cleanup.thread_crit_edge, label %if.then22, !prof !642

land.rhs.cleanup.thread_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @isert_rdma_rw_ctx_post.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2065, i32 noundef 9, ptr noundef null) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then22, %land.rhs.cleanup.thread_crit_edge, %if.end12.cleanup.thread_crit_edge
  %rw = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 12
  %qp = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 19
  %101 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %qp, align 8
  %conv52 = and i32 %7, 255
  %t_data_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 39
  %103 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 41
  %105 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %t_data_nents, align 4
  %t_prot_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 55
  %107 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %t_prot_sg, align 4
  %t_prot_nents = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 56
  %109 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %t_prot_nents, align 8
  %call53 = call i32 @rdma_rw_ctx_signature_init(ptr noundef %rw, ptr noundef %102, i32 noundef %conv52, ptr noundef %104, i32 noundef %106, ptr noundef %108, i32 noundef %110, ptr noundef nonnull %sig_attrs, i64 noundef %addr.0, i32 noundef %rkey.0, i32 noundef %retval.0.i141148) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sig_attrs) #11
  br label %if.end61

cleanup:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.282, i32 noundef %22) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sig_attrs) #11
  br label %cleanup85

if.else54:                                        ; preds = %isert_prot_cmd.exit.if.else54_crit_edge, %if.end6.if.else54_crit_edge
  %rw55 = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 12
  %qp56 = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 19
  %111 = ptrtoint ptr %qp56 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %qp56, align 8
  %conv57 = and i32 %7, 255
  %t_data_sg58 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 39
  %113 = ptrtoint ptr %t_data_sg58 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %t_data_sg58, align 4
  %t_data_nents59 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 41
  %115 = ptrtoint ptr %t_data_nents59 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %t_data_nents59, align 4
  %call60 = tail call i32 @rdma_rw_ctx_init(ptr noundef %rw55, ptr noundef %112, i32 noundef %conv57, ptr noundef %114, i32 noundef %116, i32 noundef %offset.0, i64 noundef %addr.0, i32 noundef %rkey.0, i32 noundef %retval.0.i141148) #11
  br label %if.end61

if.end61:                                         ; preds = %if.else54, %cleanup.thread
  %ret.1 = phi i32 [ %call60, %if.else54 ], [ %call53, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp62 = icmp slt i32 %ret.1, 0
  br i1 %cmp62, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.277, ptr noundef %cmd) #14
  br label %cleanup85

if.end70:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %ctx_init_done to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %ctx_init_done, align 8
  br label %rdma_ctx_post

rdma_ctx_post:                                    ; preds = %if.end70, %target_reverse_dma_direction.exit.thread.rdma_ctx_post_crit_edge, %target_reverse_dma_direction.exit.rdma_ctx_post_crit_edge
  %rw72 = getelementptr inbounds %struct.isert_cmd, ptr %cmd, i32 0, i32 12
  %qp73 = getelementptr inbounds %struct.isert_conn, ptr %conn, i32 0, i32 19
  %118 = ptrtoint ptr %qp73 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %qp73, align 8
  %conv74 = and i32 %7, 255
  %call75 = call i32 @rdma_rw_ctx_post(ptr noundef %rw72, ptr noundef %119, i32 noundef %conv74, ptr noundef %cqe, ptr noundef %chain_wr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end81, label %rdma_ctx_post.cleanup85_crit_edge

rdma_ctx_post.cleanup85_crit_edge:                ; preds = %rdma_ctx_post
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup85

do.end81:                                         ; preds = %rdma_ctx_post
  call void @__sanitizer_cov_trace_pc() #13
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.277, ptr noundef %cmd) #14
  br label %cleanup85

cleanup85:                                        ; preds = %do.end81, %rdma_ctx_post.cleanup85_crit_edge, %do.end67, %cleanup
  %retval.1 = phi i32 [ %ret.1, %do.end67 ], [ -22, %cleanup ], [ %call75, %do.end81 ], [ %call75, %rdma_ctx_post.cleanup85_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isert_check_pi_status(ptr nocapture noundef %se_cmd, ptr noundef %sig_mr) unnamed_addr #0 align 64 {
entry:
  %mr_status = alloca %struct.ib_mr_status, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mr_status) #11
  %0 = call ptr @memset(ptr %mr_status, i32 255, i32 40)
  %call = call i32 @ib_check_mr_status(ptr noundef %sig_mr, i32 noundef 1, ptr noundef nonnull %mr_status) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.272, i32 noundef %call) #14
  br label %fail_mr_status

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %mr_status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mr_status, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.fail_mr_status_crit_edge, label %if.then3

if.end.fail_mr_status_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_mr_status

if.then3:                                         ; preds = %if.end
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 19
  %3 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %se_dev, align 4
  %block_size4 = getelementptr inbounds %struct.se_device, ptr %4, i32 0, i32 39, i32 21
  %5 = ptrtoint ptr %block_size4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %block_size4, align 8
  %add = add i32 %6, 8
  %sig_err = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1
  %7 = ptrtoint ptr %sig_err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sig_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %switch.lookup, label %if.then3.sw.epilog_crit_edge

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.isert_check_pi_status, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pi_err8 = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 57
  %11 = ptrtoint ptr %pi_err8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.load, ptr %pi_err8, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then3.sw.epilog_crit_edge
  %sig_err_offset = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %sig_err_offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sig_err_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %cmp180 = icmp ult i64 %13, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !642

if.then184:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %conv185 = trunc i64 %13 to i32
  %div188 = udiv i32 %conv185, %add
  %conv189 = zext i32 %div188 to i64
  br label %if.end194

if.else190:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %14 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %13) #18, !srcloc !652
  %asmresult1.i = extractvalue { i64, i64 } %14, 1
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %sec_offset_err.0 = phi i64 [ %conv189, %if.then184 ], [ %asmresult1.i, %if.else190 ]
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 32
  %15 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %t_task_lba, align 8
  %add196 = add i64 %16, %sec_offset_err.0
  %sense_info = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 58
  %17 = ptrtoint ptr %sense_info to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add196, ptr %sense_info, align 8
  %expected = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %expected, align 4
  %actual = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual, align 8
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.272, i32 noundef %8, i64 noundef %add196, i32 noundef %19, i32 noundef %21) #14
  br label %fail_mr_status

fail_mr_status:                                   ; preds = %if.end194, %if.end.fail_mr_status_crit_edge, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ 1, %if.end194 ], [ 0, %if.end.fail_mr_status_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_generic_request_failure(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_check_mr_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_signature_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_post(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isert_rdma_write_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %device1 = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 4
  %6 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wc, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -120
  %add.ptr.i63 = getelementptr i8, ptr %7, i32 -172
  %iscsi_cmd = getelementptr i8, ptr %7, i32 -124
  %8 = ptrtoint ptr %iscsi_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iscsi_cmd, align 8
  %se_cmd = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 70
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.body, label %if.then, !prof !642

if.then:                                          ; preds = %entry
  tail call fastcc void @isert_print_wc(ptr noundef %wc, ptr noundef nonnull @.str.288)
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp5.not = icmp eq i32 %13, 5
  br i1 %cmp5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conn = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conn, align 8
  tail call void @iscsit_cause_connection_reinstatement(ptr noundef %15, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %ib_device = getelementptr inbounds %struct.isert_device, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %ib_device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ib_device, align 4
  tail call fastcc void @isert_completion_put(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i63, ptr noundef %17, i1 noundef zeroext true)
  br label %cleanup

do.body:                                          ; preds = %entry
  %18 = load i32, ptr @isert_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp8 = icmp sgt i32 %18, 2
  br i1 %cmp8, label %do.end, label %do.body.do.end20_crit_edge, !prof !640

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.289, ptr noundef %add.ptr.i63) #14
  br label %do.end20

do.end20:                                         ; preds = %do.end, %do.body.do.end20_crit_edge
  %19 = getelementptr i8, ptr %7, i32 60
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %mr = getelementptr inbounds %struct.rdma_rw_reg_ctx, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mr, align 8
  %call21 = tail call fastcc i32 @isert_check_pi_status(ptr noundef %se_cmd, ptr noundef %23)
  tail call fastcc void @isert_rdma_rw_ctx_destroy(ptr noundef %add.ptr.i63, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %do.end20
  %cmd_kref = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 70, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %cmd_kref, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_kref, ptr %cmd_kref, i32 1, ptr elementtype(i32) %cmd_kref) #11, !srcloc !643
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then23.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !640

if.then23.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then23
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !642

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then23.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then23.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %cmd_kref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %pi_err = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 70, i32 57
  %26 = ptrtoint ptr %pi_err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pi_err, align 4
  tail call void @transport_generic_request_failure(ptr noundef %se_cmd, i32 noundef %27) #11
  br label %cleanup

if.else:                                          ; preds = %do.end20
  %conn24 = getelementptr inbounds %struct.isert_conn, ptr %3, i32 0, i32 13
  %28 = ptrtoint ptr %conn24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conn24, align 8
  %30 = ptrtoint ptr %iscsi_cmd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iscsi_cmd, align 8
  %call26 = tail call i32 @isert_put_response(ptr noundef %29, ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else.cleanup_crit_edge, label %if.then28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %if.else
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @isert_rdma_write_done._rs, ptr noundef nonnull @.str.289) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.cleanup_crit_edge, label %do.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, i32 noundef %call26) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.then28.cleanup_crit_edge, %if.else.cleanup_crit_edge, %kref_get.exit, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_build_rsp_pdu(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_register_transport(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 335)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 335)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !232, !233, !234, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !279, !281, !282, !284, !286, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !315, !316, !317, !318, !320, !322, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !336, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !369, !371, !372, !373, !374, !376, !377, !378, !380, !381, !382, !383, !385, !387, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !412, !413, !414, !415, !417, !418, !419, !421, !422, !423, !424, !426, !427, !428, !429, !431, !432, !433, !435, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !455, !457, !458, !459, !461, !462, !463, !464, !466, !468, !469, !470, !471, !473, !474, !475, !476, !478, !479, !480, !481, !483, !485, !486, !487, !489, !490, !492, !493, !494, !495, !497, !498, !499, !500, !502, !503, !504, !506, !507, !508, !509, !511, !512, !513, !514, !516, !517, !518, !519, !521, !522, !523, !524, !526, !527, !528, !529, !531, !532, !533, !534, !536, !537, !538, !539, !541, !542, !543, !545, !547, !548, !549, !551, !552, !553, !555, !556, !557, !558, !560, !561, !562, !564, !566, !567, !568, !569, !571, !572, !573, !575, !576, !577, !578, !580, !581, !582, !583, !585, !586, !587, !589, !591, !592, !593, !595, !596, !597, !598, !599, !601, !602, !603, !604, !606, !607, !608, !609, !611, !612, !613, !615, !617, !618, !619, !620, !622, !624, !625, !626, !628, !629}
!llvm.named.register.sp = !{!630}
!llvm.module.flags = !{!631, !632, !633, !634, !635, !636, !637, !638}
!llvm.ident = !{!639}

!0 = !{ptr @__param_debug_level, !1, !"__param_debug_level", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_leveltype502, !1, !"__UNIQUE_ID_debug_leveltype502", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug_level503, !4, !"__UNIQUE_ID_debug_level503", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 29, i32 1}
!5 = !{ptr @__param_sg_tablesize, !6, !"__param_sg_tablesize", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 39, i32 1}
!7 = !{ptr @__UNIQUE_ID_sg_tablesize504, !8, !"__UNIQUE_ID_sg_tablesize504", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 40, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2223, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @isert_setup_id._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @isert_setup_id._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2225, i32 7}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2228, i32 3}
!19 = !{ptr @isert_setup_id._entry.4, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @isert_setup_id._entry_ptr.6, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2232, i32 2}
!23 = !{ptr @isert_setup_id._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @isert_setup_id._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2240, i32 3}
!27 = !{ptr @isert_setup_id._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @isert_setup_id._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2246, i32 3}
!31 = !{ptr @isert_setup_id._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @isert_setup_id._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2252, i32 3}
!35 = !{ptr @isert_setup_id._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @isert_setup_id._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2643, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @isert_exit._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @isert_exit._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_description515, !43, !"__UNIQUE_ID_description515", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2646, i32 1}
!44 = !{ptr @__UNIQUE_ID_author516, !45, !"__UNIQUE_ID_author516", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2647, i32 1}
!46 = !{ptr @__UNIQUE_ID_file517, !47, !"__UNIQUE_ID_file517", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2648, i32 1}
!48 = !{ptr @__UNIQUE_ID_license518, !47, !"__UNIQUE_ID_license518", i1 false, i1 false}
!49 = !{ptr @__initcall__kmod_ib_isert__519_2650_isert_init6, !50, !"__initcall__kmod_ib_isert__519_2650_isert_init6", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2650, i32 1}
!51 = !{ptr @__exitcall_isert_exit, !52, !"__exitcall_isert_exit", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2651, i32 1}
!53 = !{ptr @isert_debug_level, !54, !"isert_debug_level", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 27, i32 12}
!55 = !{ptr @isert_comp_wq, !56, !"isert_comp_wq", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 45, i32 33}
!57 = !{ptr @isert_release_wq, !58, !"isert_release_wq", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 46, i32 33}
!59 = !{ptr @__param_str_debug_level, !1, !"__param_str_debug_level", i1 false, i1 false}
!60 = !{ptr @__param_str_sg_tablesize, !6, !"__param_str_sg_tablesize", i1 false, i1 false}
!61 = !{ptr @sg_tablesize_ops, !62, !"sg_tablesize_ops", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 33, i32 38}
!63 = !{ptr @isert_sg_tablesize, !64, !"isert_sg_tablesize", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 38, i32 12}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 675, i32 2}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @isert_cma_handler._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @isert_cma_handler._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 686, i32 4}
!72 = !{ptr @isert_cma_handler._entry.23, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @isert_cma_handler._entry_ptr.25, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 709, i32 3}
!76 = !{ptr @isert_cma_handler._entry.26, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @isert_cma_handler._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 717, i32 3}
!80 = !{ptr @isert_cma_handler._entry.29, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @isert_cma_handler._entry_ptr.31, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 604, i32 2}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @isert_np_cma_handler._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @isert_np_cma_handler._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 614, i32 4}
!89 = !{ptr @isert_np_cma_handler._entry.34, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @isert_np_cma_handler._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 620, i32 3}
!93 = !{ptr @isert_np_cma_handler._entry.37, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @isert_np_cma_handler._entry_ptr.39, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 426, i32 3}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @isert_connect_request._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @isert_connect_request._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 431, i32 2}
!102 = !{ptr @isert_connect_request._entry.42, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @isert_connect_request._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @isert_init_conn.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 312, i32 2}
!106 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @isert_init_conn.__key.46, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 314, i32 2}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @isert_init_conn.__key.48, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 315, i32 2}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @init_completion.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../include/linux/completion.h", i32 87, i32 2}
!115 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2479, i32 2}
!118 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @isert_release_work._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @isert_release_work._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2485, i32 2}
!123 = !{ptr @isert_release_work._entry.53, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @isert_release_work._entry_ptr.55, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 541, i32 2}
!127 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @isert_release_kref._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @isert_release_kref._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 491, i32 2}
!132 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @isert_connect_release._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @isert_connect_release._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 273, i32 4}
!137 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @isert_device_get._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @isert_device_get._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 298, i32 2}
!142 = !{ptr @isert_device_get._entry.62, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @isert_device_get._entry_ptr.64, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 43, i32 8}
!146 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @device_list_mutex, !145, !"device_list_mutex", i1 false, i1 false}
!148 = !{ptr @device_list, !149, !"device_list", i1 false, i1 false}
!149 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 44, i32 8}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 220, i32 2}
!152 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @isert_create_device_ib_res._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @isert_create_device_ib_res._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 222, i32 2}
!157 = !{ptr @isert_create_device_ib_res._entry.69, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @isert_create_device_ib_res._entry_ptr.71, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 227, i32 3}
!161 = !{ptr @isert_create_device_ib_res._entry.72, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @isert_create_device_ib_res._entry_ptr.74, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 348, i32 3}
!165 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @isert_alloc_login_buf._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @isert_alloc_login_buf._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 364, i32 3}
!170 = !{ptr @isert_alloc_login_buf._entry.77, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @isert_alloc_login_buf._entry_ptr.79, !169, !"_entry_ptr", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!174 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 390, i32 2}
!178 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @isert_set_nego_params._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @isert_set_nego_params._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 403, i32 4}
!183 = !{ptr @isert_set_nego_params._entry.84, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @isert_set_nego_params._entry_ptr.86, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 113, i32 3}
!187 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @isert_create_qp._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @isert_create_qp._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 138, i32 3}
!192 = !{ptr @isert_create_qp._entry.89, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @isert_create_qp._entry_ptr.91, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 86, i32 2}
!196 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @isert_qp_event_callback._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @isert_qp_event_callback._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 94, i32 3}
!201 = !{ptr @isert_qp_event_callback._entry.94, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @isert_qp_event_callback._entry_ptr.96, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 894, i32 2}
!205 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @isert_login_post_recv._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @isert_login_post_recv._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 906, i32 3}
!210 = !{ptr @isert_login_post_recv._entry.99, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @isert_login_post_recv._entry_ptr.101, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1380, i32 22}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1306, i32 3}
!216 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @isert_print_wc._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @isert_print_wc._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1310, i32 3}
!221 = !{ptr @isert_print_wc._entry.105, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @isert_print_wc._entry_ptr.107, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 983, i32 2}
!225 = !{ptr @.str.109, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @isert_rx_login_req._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @isert_rx_login_req._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = distinct !{null, !229, !"__already_done", i1 false, i1 false}
!229 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 985, i32 2}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1011, i32 2}
!232 = !{ptr @isert_rx_login_req._entry.110, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @isert_rx_login_req._entry_ptr.112, !231, !"_entry_ptr", i1 false, i1 false}
!234 = distinct !{null, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/infiniband/ulp/isert/ib_isert.h", i32 120, i32 2}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2327, i32 3}
!238 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @isert_rdma_accept._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @isert_rdma_accept._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 254, i32 2}
!243 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @isert_device_put._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @isert_device_put._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 244, i32 2}
!248 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @isert_free_device_ib_res._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @isert_free_device_ib_res._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!253 = !{ptr @.str.120, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.122, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 520, i32 2}
!257 = !{ptr @isert_connected_handler._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @isert_connected_handler._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 531, i32 2}
!261 = !{ptr @isert_connected_handler._entry.123, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @isert_connected_handler._entry_ptr.125, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 647, i32 3}
!265 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @isert_disconnected_handler._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @isert_disconnected_handler._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 591, i32 2}
!270 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @isert_conn_terminate._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @isert_conn_terminate._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 596, i32 3}
!275 = !{ptr @isert_conn_terminate._entry.130, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @isert_conn_terminate._entry_ptr.132, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @iser_target_transport, !278, !"iser_target_transport", i1 false, i1 false}
!278 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2584, i32 32}
!279 = !{ptr @isert_setup_np.__key, !280, !"__key", i1 false, i1 false}
!280 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2276, i32 2}
!281 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @sema_init.__key, !283, !"__key", i1 false, i1 false}
!283 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!284 = !{ptr @.str.134, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!286 = !{ptr @.str.135, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!288 = !{ptr @.str.136, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2398, i32 3}
!290 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @isert_accept_np._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @isert_accept_np._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.139, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2424, i32 2}
!295 = !{ptr @isert_accept_np._entry.138, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @isert_accept_np._entry_ptr.140, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.141, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2447, i32 3}
!299 = !{ptr @.str.142, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @isert_free_np._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @isert_free_np._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.144, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2451, i32 4}
!304 = !{ptr @isert_free_np._entry.143, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @isert_free_np._entry_ptr.145, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2458, i32 3}
!308 = !{ptr @isert_free_np._entry.146, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @isert_free_np._entry_ptr.148, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @isert_free_np._entry.149, !311, !"_entry", i1 false, i1 false}
!311 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2462, i32 4}
!312 = !{ptr @isert_free_np._entry_ptr.150, !311, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.151, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2553, i32 2}
!315 = !{ptr @.str.152, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @isert_wait_conn._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @isert_wait_conn._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @isert_put_unsol_pending_cmds.drop_cmd_list, !319, !"drop_cmd_list", i1 false, i1 false}
!319 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2527, i32 9}
!320 = !{ptr @.str.153, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2543, i32 4}
!322 = !{ptr @.str.154, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @isert_put_unsol_pending_cmds._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @isert_put_unsol_pending_cmds._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.155, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1434, i32 2}
!327 = !{ptr @.str.156, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @isert_put_cmd._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @isert_put_cmd._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1489, i32 4}
!332 = !{ptr @isert_put_cmd._entry.157, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @isert_put_cmd._entry_ptr.159, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.160, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2506, i32 2}
!336 = !{ptr @.str.161, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @isert_wait4cmds._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @isert_wait4cmds._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.162, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2494, i32 2}
!341 = !{ptr @isert_wait4logout._entry, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @isert_wait4logout._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.164, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2497, i32 3}
!345 = !{ptr @isert_wait4logout._entry.163, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @isert_wait4logout._entry_ptr.165, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.166, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2340, i32 2}
!349 = !{ptr @.str.167, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @isert_get_login_rx._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @isert_get_login_rx._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.169, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2343, i32 3}
!354 = !{ptr @isert_get_login_rx._entry.168, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @isert_get_login_rx._entry_ptr.170, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.172, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2360, i32 2}
!358 = !{ptr @isert_get_login_rx._entry.171, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @isert_get_login_rx._entry_ptr.173, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.175, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2365, i32 2}
!362 = !{ptr @isert_get_login_rx._entry.174, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @isert_get_login_rx._entry_ptr.176, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.177, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 815, i32 3}
!366 = !{ptr @.str.178, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @__isert_create_send_desc._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @__isert_create_send_desc._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.179, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 844, i32 3}
!371 = !{ptr @.str.180, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @isert_init_tx_hdrs._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @isert_init_tx_hdrs._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.182, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 853, i32 2}
!376 = !{ptr @isert_init_tx_hdrs._entry.181, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @isert_init_tx_hdrs._entry_ptr.183, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.184, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 190, i32 2}
!380 = !{ptr @.str.185, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @isert_alloc_rx_descriptors._entry, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @isert_alloc_rx_descriptors._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.186, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1326, i32 22}
!385 = !{ptr @.str.187, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1337, i32 2}
!387 = !{ptr @.str.188, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @isert_recv_done._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @isert_recv_done._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.190, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1346, i32 4}
!392 = !{ptr @isert_recv_done._entry.189, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @isert_recv_done._entry_ptr.191, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.193, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1352, i32 4}
!396 = !{ptr @isert_recv_done._entry.192, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @isert_recv_done._entry_ptr.194, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.196, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1356, i32 3}
!400 = !{ptr @isert_recv_done._entry.195, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @isert_recv_done._entry_ptr.197, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.199, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1359, i32 3}
!404 = !{ptr @isert_recv_done._entry.198, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @isert_recv_done._entry_ptr.200, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.202, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1362, i32 3}
!408 = !{ptr @isert_recv_done._entry.201, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @isert_recv_done._entry_ptr.203, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.204, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1231, i32 3}
!412 = !{ptr @.str.205, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @isert_rx_opcode._entry, !411, !"_entry", i1 false, i1 false}
!414 = !{ptr @isert_rx_opcode._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.207, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1294, i32 3}
!417 = !{ptr @isert_rx_opcode._entry.206, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @isert_rx_opcode._entry_ptr.208, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.209, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1032, i32 3}
!421 = !{ptr @.str.210, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @isert_allocate_cmd._entry, !420, !"_entry", i1 false, i1 false}
!423 = !{ptr @isert_allocate_cmd._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.211, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1080, i32 3}
!426 = !{ptr @.str.212, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @isert_handle_scsi_cmd._entry, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @isert_handle_scsi_cmd._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.214, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1088, i32 3}
!431 = !{ptr @isert_handle_scsi_cmd._entry.213, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @isert_handle_scsi_cmd._entry_ptr.215, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.216, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1132, i32 3}
!435 = !{ptr @.str.217, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @isert_handle_iscsi_dataout._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @isert_handle_iscsi_dataout._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.219, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1137, i32 2}
!440 = !{ptr @isert_handle_iscsi_dataout._entry.218, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @isert_handle_iscsi_dataout._entry_ptr.220, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.222, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1150, i32 3}
!444 = !{ptr @isert_handle_iscsi_dataout._entry.221, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @isert_handle_iscsi_dataout._entry_ptr.223, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.225, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1154, i32 2}
!448 = !{ptr @isert_handle_iscsi_dataout._entry.224, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @isert_handle_iscsi_dataout._entry_ptr.226, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.227, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 772, i32 3}
!452 = !{ptr @.str.228, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @isert_post_recv._entry, !451, !"_entry", i1 false, i1 false}
!454 = !{ptr @isert_post_recv._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.229, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 745, i32 3}
!457 = !{ptr @isert_post_recvm._entry, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @isert_post_recvm._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.230, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 798, i32 3}
!461 = !{ptr @.str.231, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @isert_login_post_send._entry, !460, !"_entry", i1 false, i1 false}
!463 = !{ptr @isert_login_post_send._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.232, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1697, i32 22}
!466 = !{ptr @.str.233, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1505, i32 3}
!468 = !{ptr @.str.234, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @isert_unmap_tx_desc._entry, !467, !"_entry", i1 false, i1 false}
!470 = !{ptr @isert_unmap_tx_desc._entry_ptr, !467, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.235, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2166, i32 3}
!473 = !{ptr @.str.236, !472, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @isert_immediate_queue._entry, !472, !"_entry", i1 false, i1 false}
!475 = !{ptr @isert_immediate_queue._entry_ptr, !472, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.237, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1859, i32 2}
!478 = !{ptr @.str.238, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @isert_put_nopin._entry, !477, !"_entry", i1 false, i1 false}
!480 = !{ptr @isert_put_nopin._entry_ptr, !477, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.239, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1714, i32 22}
!483 = !{ptr @.str.240, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1721, i32 2}
!485 = !{ptr @isert_send_done._entry, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @isert_send_done._entry_ptr, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @isert_send_done.__key, !488, !"__key", i1 false, i1 false}
!488 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1730, i32 3}
!489 = !{ptr @.str.241, !488, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @.str.242, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1517, i32 3}
!492 = !{ptr @.str.243, !491, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @isert_completion_put._entry, !491, !"_entry", i1 false, i1 false}
!494 = !{ptr @isert_completion_put._entry_ptr, !491, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.244, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1667, i32 2}
!497 = !{ptr @.str.245, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @isert_do_control_comp._entry, !496, !"_entry", i1 false, i1 false}
!499 = !{ptr @isert_do_control_comp._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.247, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1683, i32 3}
!502 = !{ptr @isert_do_control_comp._entry.246, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @isert_do_control_comp._entry_ptr.248, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.249, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1751, i32 3}
!506 = !{ptr @.str.250, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @isert_post_response._entry, !505, !"_entry", i1 false, i1 false}
!508 = !{ptr @isert_post_response._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.251, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2206, i32 3}
!511 = !{ptr @.str.252, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @isert_response_queue._entry, !510, !"_entry", i1 false, i1 false}
!513 = !{ptr @isert_response_queue._entry_ptr, !510, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.253, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1877, i32 2}
!516 = !{ptr @.str.254, !515, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @isert_put_logout_rsp._entry, !515, !"_entry", i1 false, i1 false}
!518 = !{ptr @isert_put_logout_rsp._entry_ptr, !515, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.255, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1895, i32 2}
!521 = !{ptr @.str.256, !520, !"<string literal>", i1 false, i1 false}
!522 = !{ptr @isert_put_tm_rsp._entry, !520, !"_entry", i1 false, i1 false}
!523 = !{ptr @isert_put_tm_rsp._entry_ptr, !520, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.257, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1930, i32 2}
!526 = !{ptr @.str.258, !525, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @isert_put_reject._entry, !525, !"_entry", i1 false, i1 false}
!528 = !{ptr @isert_put_reject._entry_ptr, !525, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.259, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1973, i32 2}
!531 = !{ptr @.str.260, !530, !"<string literal>", i1 false, i1 false}
!532 = !{ptr @isert_put_text_rsp._entry, !530, !"_entry", i1 false, i1 false}
!533 = !{ptr @isert_put_text_rsp._entry_ptr, !530, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.261, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2137, i32 2}
!536 = !{ptr @.str.262, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @isert_get_dataout._entry, !535, !"_entry", i1 false, i1 false}
!538 = !{ptr @isert_get_dataout._entry_ptr, !535, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @.str.264, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2144, i32 2}
!541 = !{ptr @isert_get_dataout._entry.263, !540, !"_entry", i1 false, i1 false}
!542 = !{ptr @isert_get_dataout._entry_ptr.265, !540, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @.str.266, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1625, i32 22}
!545 = !{ptr @.str.267, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1632, i32 2}
!547 = !{ptr @isert_rdma_read_done._entry, !546, !"_entry", i1 false, i1 false}
!548 = !{ptr @isert_rdma_read_done._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.269, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1641, i32 2}
!551 = !{ptr @isert_rdma_read_done._entry.268, !550, !"_entry", i1 false, i1 false}
!552 = !{ptr @isert_rdma_read_done._entry_ptr.270, !550, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.271, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1535, i32 3}
!555 = !{ptr @.str.272, !554, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @isert_check_pi_status._entry, !554, !"_entry", i1 false, i1 false}
!557 = !{ptr @isert_check_pi_status._entry_ptr, !554, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.274, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1558, i32 3}
!560 = !{ptr @isert_check_pi_status._entry.273, !559, !"_entry", i1 false, i1 false}
!561 = !{ptr @isert_check_pi_status._entry_ptr.275, !559, !"_entry_ptr", i1 false, i1 false}
!562 = distinct !{null, !563, !"__already_done", i1 false, i1 false}
!563 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2065, i32 3}
!564 = !{ptr @.str.276, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2077, i32 3}
!566 = !{ptr @.str.277, !565, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @isert_rdma_rw_ctx_post._entry, !565, !"_entry", i1 false, i1 false}
!568 = !{ptr @isert_rdma_rw_ctx_post._entry_ptr, !565, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @.str.279, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2086, i32 3}
!571 = !{ptr @isert_rdma_rw_ctx_post._entry.278, !570, !"_entry", i1 false, i1 false}
!572 = !{ptr @isert_rdma_rw_ctx_post._entry_ptr.280, !570, !"_entry_ptr", i1 false, i1 false}
!573 = !{ptr @.str.281, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2020, i32 3}
!575 = !{ptr @.str.282, !574, !"<string literal>", i1 false, i1 false}
!576 = !{ptr @isert_set_sig_attrs._entry, !574, !"_entry", i1 false, i1 false}
!577 = !{ptr @isert_set_sig_attrs._entry_ptr, !574, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.283, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2100, i32 2}
!580 = !{ptr @.str.284, !579, !"<string literal>", i1 false, i1 false}
!581 = !{ptr @isert_put_datain._entry, !579, !"_entry", i1 false, i1 false}
!582 = !{ptr @isert_put_datain._entry_ptr, !579, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.286, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2126, i32 2}
!585 = !{ptr @isert_put_datain._entry.285, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @isert_put_datain._entry_ptr.287, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.288, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1582, i32 22}
!589 = !{ptr @.str.289, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1589, i32 2}
!591 = !{ptr @isert_rdma_write_done._entry, !590, !"_entry", i1 false, i1 false}
!592 = !{ptr @isert_rdma_write_done._entry_ptr, !590, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @.str.290, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1609, i32 4}
!595 = !{ptr @isert_rdma_write_done._rs, !594, !"_rs", i1 false, i1 false}
!596 = !{ptr @.str.292, !594, !"<string literal>", i1 false, i1 false}
!597 = !{ptr @isert_rdma_write_done._entry.291, !594, !"_entry", i1 false, i1 false}
!598 = !{ptr @isert_rdma_write_done._entry_ptr.293, !594, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.294, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1803, i32 2}
!601 = !{ptr @.str.295, !600, !"<string literal>", i1 false, i1 false}
!602 = !{ptr @isert_put_response._entry, !600, !"_entry", i1 false, i1 false}
!603 = !{ptr @isert_put_response._entry_ptr, !600, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.296, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1832, i32 4}
!606 = !{ptr @.str.297, !605, !"<string literal>", i1 false, i1 false}
!607 = !{ptr @isert_get_sup_prot_ops._entry, !605, !"_entry", i1 false, i1 false}
!608 = !{ptr @isert_get_sup_prot_ops._entry_ptr, !605, !"_entry_ptr", i1 false, i1 false}
!609 = !{ptr @.str.299, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 1838, i32 2}
!611 = !{ptr @isert_get_sup_prot_ops._entry.298, !610, !"_entry", i1 false, i1 false}
!612 = !{ptr @isert_get_sup_prot_ops._entry_ptr.300, !610, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @.str.301, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2611, i32 34}
!615 = !{ptr @.str.302, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2614, i32 3}
!617 = !{ptr @.str.303, !616, !"<string literal>", i1 false, i1 false}
!618 = !{ptr @isert_init._entry, !616, !"_entry", i1 false, i1 false}
!619 = !{ptr @isert_init._entry_ptr, !616, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @.str.304, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2618, i32 37}
!622 = !{ptr @.str.306, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2621, i32 3}
!624 = !{ptr @isert_init._entry.305, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @isert_init._entry_ptr.307, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.309, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/infiniband/ulp/isert/ib_isert.c", i32 2627, i32 2}
!628 = !{ptr @isert_init._entry.308, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @isert_init._entry_ptr.310, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{!"sp"}
!631 = !{i32 1, !"wchar_size", i32 2}
!632 = !{i32 1, !"min_enum_size", i32 4}
!633 = !{i32 8, !"branch-target-enforcement", i32 0}
!634 = !{i32 8, !"sign-return-address", i32 0}
!635 = !{i32 8, !"sign-return-address-all", i32 0}
!636 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!637 = !{i32 7, !"uwtable", i32 1}
!638 = !{i32 7, !"frame-pointer", i32 2}
!639 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!640 = !{!"branch_weights", i32 1, i32 2000}
!641 = !{i8 0, i8 2}
!642 = !{!"branch_weights", i32 2000, i32 1}
!643 = !{i64 2148427345, i64 2148427377, i64 2148427406, i64 2148427440, i64 2148427471, i64 2148427494}
!644 = !{!"auto-init"}
!645 = !{i64 2148515370}
!646 = !{i64 2148429810, i64 2148429842, i64 2148429871, i64 2148429905, i64 2148429936, i64 2148429959}
!647 = !{i64 2149375821}
!648 = !{i64 2158294738, i64 2158295242, i64 2158294775, i64 2158294831, i64 2158294865, i64 2158294889, i64 2158294930, i64 2158294951, i64 2158294979, i64 2158295013}
!649 = !{i64 2153624505, i64 2153624997, i64 2153624542, i64 2153624598, i64 2153624632, i64 2153624656, i64 2153624697, i64 2153624718, i64 2153624746, i64 2153624780}
!650 = !{i64 2153618186, i64 2153618678, i64 2153618223, i64 2153618279, i64 2153618313, i64 2153618337, i64 2153618378, i64 2153618399, i64 2153618427, i64 2153618461}
!651 = !{i64 2153619796, i64 2153620288, i64 2153619833, i64 2153619889, i64 2153619923, i64 2153619947, i64 2153619988, i64 2153620009, i64 2153620037, i64 2153620071}
!652 = !{i64 2148272239, i64 2148272519, i64 2148272853, i64 2148273187}
