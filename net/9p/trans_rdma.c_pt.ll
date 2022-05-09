; ModuleID = '/llk/IR_all_yes/net/9p/trans_rdma.c_pt.bc'
source_filename = "../net/9p/trans_rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.p9_trans_module = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.substring_t = type { ptr, ptr }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.p9_trans_rdma = type { i32, ptr, ptr, ptr, ptr, i32, i8, i16, i32, %struct.semaphore, i32, %struct.semaphore, %struct.atomic_t, %struct.sockaddr_in, %struct.spinlock, %struct.completion }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.127, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.176 }
%union.anon.176 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.164, ptr, i32 }
%union.anon.164 = type { i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.162, ptr, i32, i32, i32, %union.anon.163 }
%union.anon.162 = type { i64 }
%union.anon.163 = type { i32 }
%struct.p9_req_t = type { i32, i32, %struct.kref, %struct.wait_queue_head, %struct.p9_fcall, %struct.p9_fcall, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.p9_fcall = type { i32, i8, i16, i32, i32, ptr, ptr }
%struct.p9_rdma_context = type { %struct.ib_cqe, i32, %union.anon.179 }
%struct.ib_cqe = type { ptr }
%union.anon.179 = type { %struct.p9_fcall }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.174, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.174 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.165 }
%struct.anon.165 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.ib_event = type { ptr, %union.anon.154, i32 }
%union.anon.154 = type { ptr }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.160, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.160 = type { %struct.work_struct }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_wc = type { %union.anon.158, i32, i32, i32, i32, ptr, %union.anon.159, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.158 = type { i64 }
%union.anon.159 = type { i32 }

@p9_rdma_trans = internal global { %struct.p9_trans_module, [44 x i8] } { %struct.p9_trans_module { %struct.list_head zeroinitializer, ptr @.str, i32 1048576, i32 0, ptr null, ptr @rdma_create_trans, ptr @rdma_close, ptr @rdma_request, ptr @rdma_cancel, ptr @rdma_cancelled, ptr null, ptr @p9_rdma_show_options }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_9pnet_rdma__502_766_p9_trans_rdma_init6 = internal global ptr @p9_trans_rdma_init, section ".initcall6.init", align 4
@__exitcall_p9_trans_rdma_exit = internal global ptr @p9_trans_rdma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias503 = internal constant [25 x i8] c"9pnet_rdma.alias=9p-rdma\00", section ".modinfo", align 1
@__UNIQUE_ID_author504 = internal constant [57 x i8] c"9pnet_rdma.author=Tom Tucker <tom@opengridcomputing.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description505 = internal constant [45 x i8] c"9pnet_rdma.description=RDMA Transport for 9P\00", section ".modinfo", align 1
@__UNIQUE_ID_file506 = internal constant [34 x i8] c"9pnet_rdma.file=net/9p/9pnet_rdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license507 = internal constant [32 x i8] c"9pnet_rdma.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"9pnet_rdma\00", [21 x i8] zeroinitializer }, align 32
@rdma_create_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\0139pnet_rdma: %s (%d): problem binding to privport: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rdma_create_trans\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/9p/trans_rdma.c\00", [44 x i8] zeroinitializer }, align 32
@rdma_create_trans._entry_ptr = internal global ptr @rdma_create_trans._entry, section ".printk_index", align 4
@__func__.parse_opts = private unnamed_addr constant [11 x i8] c"parse_opts\00", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to allocate copy of option string\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal global { [6 x %struct.match_token], [48 x i8] } { [6 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.8 }, %struct.match_token { i32 2, ptr @.str.9 }, %struct.match_token { i32 1, ptr @.str.10 }, %struct.match_token { i32 3, ptr @.str.11 }, %struct.match_token { i32 4, ptr @.str.12 }, %struct.match_token { i32 5, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"integer field, but no integer?\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sq=%u\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rq=%u\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timeout=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"privport\00", [23 x i8] zeroinitializer }, align 32
@alloc_rdma.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rdma->req_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@__const.p9_rdma_bind_privport.cl = private unnamed_addr constant %struct.sockaddr_in { i16 2, i16 0, %struct.in_addr zeroinitializer, [8 x i8] zeroinitializer }, align 4
@__func__.qp_event_handler = private unnamed_addr constant [17 x i8] c"qp_event_handler\00", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"QP event %d context %p\0A\00", [40 x i8] zeroinitializer }, align 32
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@__func__.rdma_request = private unnamed_addr constant [13 x i8] c"rdma_request\00", align 1
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"POST RECV failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error %d in rdma_request()\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.post_recv = private unnamed_addr constant [10 x i8] c"post_recv\00", align 1
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EIO\0A\00", [27 x i8] zeroinitializer }, align 32
@recv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\0139pnet_rdma: Duplicate reply for request %d\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recv_done\00", [22 x i8] zeroinitializer }, align 32
@recv_done._entry_ptr = internal global ptr @recv_done._entry, section ".printk_index", align 4
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"req %p err %d status %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",port=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",sq=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",rq=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",timeout=%lu\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",privport\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"p9_rdma_trans\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 739, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 740, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 649, i32 16 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 661, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 193, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 199, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 142, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 208, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 143, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 144, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 145, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 146, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 147, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 576, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 33, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 34, i32 28 }
@___asan_gen_.102 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 35, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 359, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 3498, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 465, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 522, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 409, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 320, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 334, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 326, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 156, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 158, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 160, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 162, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [23 x i8] c"../net/9p/trans_rdma.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 164, i32 15 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias503, ptr @__UNIQUE_ID_author504, ptr @__UNIQUE_ID_description505, ptr @__UNIQUE_ID_file506, ptr @__UNIQUE_ID_license507, ptr @__exitcall_p9_trans_rdma_exit, ptr @__initcall__kmod_9pnet_rdma__502_766_p9_trans_rdma_init6, ptr @p9_trans_rdma_exit, ptr @rdma_create_trans._entry, ptr @rdma_create_trans._entry_ptr, ptr @recv_done._entry, ptr @recv_done._entry_ptr, ptr @p9_rdma_trans, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tokens, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @alloc_rdma.__key, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @sema_init.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_rdma_trans to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_create_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rdma.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p9_trans_rdma_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v9fs_unregister_trans(ptr noundef nonnull @p9_rdma_trans) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_unregister_trans(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_trans_rdma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v9fs_register_trans(ptr noundef nonnull @p9_rdma_trans) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_create_trans(ptr noundef %client, ptr noundef %addr, ptr noundef %args) #2 align 64 {
entry:
  %cl.i = alloca %struct.sockaddr_in, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %option.i = alloca i32, align 4
  %options.i = alloca ptr, align 4
  %conn_param = alloca %struct.rdma_conn_param, align 4
  %qp_attr = alloca %struct.ib_qp_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param) #10
  %0 = call ptr @memset(ptr %conn_param, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp_attr) #10
  %1 = call ptr @memset(ptr %qp_attr, i32 255, i32 72)
  %cmp = icmp eq ptr %addr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #10
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i) #10
  %3 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %option.i, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.i) #10
  %tobool.not.i = icmp eq ptr %args, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %if.end.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %args, i32 noundef 3264) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %parse_opts.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %options.i, align 4
  %call458.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.6) #10
  %cmp.not59.i = icmp eq ptr %call458.i, null
  br i1 %cmp.not59.i, label %if.end3.i.while.end.i_crit_edge, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  br label %while.body.i

if.end3.i.while.end.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end3.i.while.body.i_crit_edge
  %opts.sroa.24.0 = phi i32 [ %opts.sroa.24.1, %cleanup.i.while.body.i_crit_edge ], [ 30000, %if.end3.i.while.body.i_crit_edge ]
  %opts.sroa.17.0 = phi i32 [ %opts.sroa.17.1, %cleanup.i.while.body.i_crit_edge ], [ 32, %if.end3.i.while.body.i_crit_edge ]
  %opts.sroa.11159.0 = phi i32 [ %opts.sroa.11159.1, %cleanup.i.while.body.i_crit_edge ], [ 32, %if.end3.i.while.body.i_crit_edge ]
  %opts.sroa.7.0 = phi i8 [ %opts.sroa.7.1, %cleanup.i.while.body.i_crit_edge ], [ 0, %if.end3.i.while.body.i_crit_edge ]
  %opts.sroa.0.0 = phi i16 [ %opts.sroa.0.1, %cleanup.i.while.body.i_crit_edge ], [ 5640, %if.end3.i.while.body.i_crit_edge ]
  %call460.i = phi ptr [ %call4.i, %cleanup.i.while.body.i_crit_edge ], [ %call458.i, %if.end3.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %call460.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call460.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not.i = icmp eq i8 %6, 0
  br i1 %tobool5.not.i, label %while.body.i.cleanup.i_crit_edge, label %if.end7.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end7.i:                                        ; preds = %while.body.i
  %call8.i = call i32 @match_token(ptr noundef nonnull %call460.i, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #10
  %7 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8.i, label %if.then11.i [
    i32 4, label %sw.bb24.i
    i32 5, label %if.end7.i.cleanup.i_crit_edge
  ]

if.end7.i.cleanup.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then11.i:                                      ; preds = %if.end7.i
  %call12.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.parse_opts, ptr noundef nonnull @.str.7) #10
  br label %cleanup.i

if.end16.i:                                       ; preds = %if.then11.i
  %8 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call8.i, label %if.end16.i.cleanup.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb18.i
    i32 1, label %sw.bb20.i
    i32 3, label %sw.bb22.i
  ]

if.end16.i.cleanup.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %option.i, align 4
  %conv.i = trunc i32 %10 to i16
  br label %cleanup.i

sw.bb18.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %option.i, align 4
  br label %cleanup.i

sw.bb20.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %option.i, align 4
  br label %cleanup.i

sw.bb22.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %option.i, align 4
  br label %cleanup.i

sw.bb24.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb.i, %if.end16.i.cleanup.i_crit_edge, %if.then14.i, %if.end7.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %opts.sroa.24.1 = phi i32 [ %opts.sroa.24.0, %while.body.i.cleanup.i_crit_edge ], [ %opts.sroa.24.0, %if.then14.i ], [ %opts.sroa.24.0, %if.end16.i.cleanup.i_crit_edge ], [ %16, %sw.bb22.i ], [ %opts.sroa.24.0, %sw.bb20.i ], [ %opts.sroa.24.0, %sw.bb18.i ], [ %opts.sroa.24.0, %sw.bb.i ], [ %opts.sroa.24.0, %if.end7.i.cleanup.i_crit_edge ], [ %opts.sroa.24.0, %sw.bb24.i ]
  %opts.sroa.17.1 = phi i32 [ %opts.sroa.17.0, %while.body.i.cleanup.i_crit_edge ], [ %opts.sroa.17.0, %if.then14.i ], [ %opts.sroa.17.0, %if.end16.i.cleanup.i_crit_edge ], [ %opts.sroa.17.0, %sw.bb22.i ], [ %14, %sw.bb20.i ], [ %opts.sroa.17.0, %sw.bb18.i ], [ %opts.sroa.17.0, %sw.bb.i ], [ %opts.sroa.17.0, %if.end7.i.cleanup.i_crit_edge ], [ %opts.sroa.17.0, %sw.bb24.i ]
  %opts.sroa.11159.1 = phi i32 [ %opts.sroa.11159.0, %while.body.i.cleanup.i_crit_edge ], [ %opts.sroa.11159.0, %if.then14.i ], [ %opts.sroa.11159.0, %if.end16.i.cleanup.i_crit_edge ], [ %opts.sroa.11159.0, %sw.bb22.i ], [ %opts.sroa.11159.0, %sw.bb20.i ], [ %12, %sw.bb18.i ], [ %opts.sroa.11159.0, %sw.bb.i ], [ %opts.sroa.11159.0, %if.end7.i.cleanup.i_crit_edge ], [ %opts.sroa.11159.0, %sw.bb24.i ]
  %opts.sroa.7.1 = phi i8 [ %opts.sroa.7.0, %while.body.i.cleanup.i_crit_edge ], [ %opts.sroa.7.0, %if.then14.i ], [ %opts.sroa.7.0, %if.end16.i.cleanup.i_crit_edge ], [ %opts.sroa.7.0, %sw.bb22.i ], [ %opts.sroa.7.0, %sw.bb20.i ], [ %opts.sroa.7.0, %sw.bb18.i ], [ %opts.sroa.7.0, %sw.bb.i ], [ %opts.sroa.7.0, %if.end7.i.cleanup.i_crit_edge ], [ 1, %sw.bb24.i ]
  %opts.sroa.0.1 = phi i16 [ %opts.sroa.0.0, %while.body.i.cleanup.i_crit_edge ], [ %opts.sroa.0.0, %if.then14.i ], [ %opts.sroa.0.0, %if.end16.i.cleanup.i_crit_edge ], [ %opts.sroa.0.0, %sw.bb22.i ], [ %opts.sroa.0.0, %sw.bb20.i ], [ %opts.sroa.0.0, %sw.bb18.i ], [ %conv.i, %sw.bb.i ], [ %opts.sroa.0.0, %if.end7.i.cleanup.i_crit_edge ], [ %opts.sroa.0.0, %sw.bb24.i ]
  %call4.i = call ptr @strsep(ptr noundef nonnull %options.i, ptr noundef nonnull @.str.6) #10
  %cmp.not.i = icmp eq ptr %call4.i, null
  br i1 %cmp.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end3.i.while.end.i_crit_edge
  %opts.sroa.24.2 = phi i32 [ 30000, %if.end3.i.while.end.i_crit_edge ], [ %opts.sroa.24.1, %cleanup.i.while.end.i_crit_edge ]
  %opts.sroa.17.2 = phi i32 [ 32, %if.end3.i.while.end.i_crit_edge ], [ %opts.sroa.17.1, %cleanup.i.while.end.i_crit_edge ]
  %opts.sroa.11159.2 = phi i32 [ 32, %if.end3.i.while.end.i_crit_edge ], [ %opts.sroa.11159.1, %cleanup.i.while.end.i_crit_edge ]
  %opts.sroa.7.2 = phi i8 [ 0, %if.end3.i.while.end.i_crit_edge ], [ %opts.sroa.7.1, %cleanup.i.while.end.i_crit_edge ]
  %opts.sroa.0.2 = phi i16 [ 5640, %if.end3.i.while.end.i_crit_edge ], [ %opts.sroa.0.1, %cleanup.i.while.end.i_crit_edge ]
  %17 = call i32 @llvm.smax.i32(i32 %opts.sroa.17.2, i32 %opts.sroa.11159.2) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  br label %if.end3

parse_opts.exit:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.parse_opts, ptr noundef nonnull @.str.5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #10
  br label %cleanup

if.end3:                                          ; preds = %while.end.i, %if.end.if.end3_crit_edge
  %opts.sroa.24.3.ph = phi i32 [ %opts.sroa.24.2, %while.end.i ], [ 30000, %if.end.if.end3_crit_edge ]
  %opts.sroa.17.3.ph = phi i32 [ %17, %while.end.i ], [ 32, %if.end.if.end3_crit_edge ]
  %opts.sroa.11159.3.ph = phi i32 [ %opts.sroa.11159.2, %while.end.i ], [ 32, %if.end.if.end3_crit_edge ]
  %opts.sroa.7.3.ph = phi i8 [ %opts.sroa.7.2, %while.end.i ], [ 0, %if.end.if.end3_crit_edge ]
  %opts.sroa.0.3.ph = phi i16 [ %opts.sroa.0.2, %while.end.i ], [ 5640, %if.end.if.end3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 268) #13
  %tobool.not.i144 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i144, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %port1.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %port1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %opts.sroa.0.3.ph, ptr %port1.i, align 2
  %privport3.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %privport3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %opts.sroa.7.3.ph, ptr %privport3.i, align 8
  %sq_depth4.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %sq_depth4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %opts.sroa.11159.3.ph, ptr %sq_depth4.i, align 4
  %rq_depth5.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %rq_depth5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %opts.sroa.17.3.ph, ptr %rq_depth5.i, align 8
  %timeout6.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %timeout6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %opts.sroa.24.3.ph, ptr %timeout6.i, align 4
  %req_lock.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 14
  call void @__raw_spin_lock_init(ptr noundef %req_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @alloc_rdma.__key, i16 noundef signext 3) #10
  %cm_done.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 15
  %24 = ptrtoint ptr %cm_done.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cm_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #10
  %sq_sem.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %sq_depth4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sq_depth4.i, align 4
  %wait_list1.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  %27 = ptrtoint ptr %sq_sem.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %sq_sem.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 1
  %28 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 2
  %29 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 3
  %30 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 4
  %31 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.15, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 4, i32 5
  %35 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %26, ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i, align 4
  %37 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 8
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 9, i32 2, i32 1
  %38 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 4
  call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %rq_sem.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %rq_depth5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rq_depth5.i, align 8
  %wait_list1.i27.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 2
  %41 = ptrtoint ptr %rq_sem.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rq_sem.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i28.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 1
  %42 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i28.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i28.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i29.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 2
  %43 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i29.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i29.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i30.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 3
  %44 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i30.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i30.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i31.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4
  %45 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i31.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i32.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i32.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.15, ptr %.compoundliteral.sroa.6.0..sroa_idx.i32.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i33.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i33.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i33.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i34.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4, i32 4
  %48 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i34.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i34.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i35.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 4, i32 5
  %49 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i35.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i36.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %50 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i36.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %40, ptr %.compoundliteral.sroa.86.0..sroa_idx.i36.i, align 8
  %51 = ptrtoint ptr %wait_list1.i27.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %wait_list1.i27.i, ptr %wait_list1.i27.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i37.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 11, i32 2, i32 1
  %52 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i37.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %wait_list1.i27.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i37.i, align 8
  call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i31.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %excess_rc.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %excess_rc.i, i32 noundef 4) #10
  %53 = ptrtoint ptr %excess_rc.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %excess_rc.i, align 4
  %call7 = call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @p9_cm_event_handler, ptr noundef %client, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.1) #10
  %cm_id = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7, ptr %cm_id, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.error_crit_edge, label %if.end11

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end11:                                         ; preds = %if.end6
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %55 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i.i, ptr %trans, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %opts.sroa.7.3.ph)
  %tobool12.not = icmp eq i8 %opts.sroa.7.3.ph, 0
  br i1 %tobool12.not, label %if.end11.if.end21_crit_edge, label %if.then13

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then13:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cl.i) #10
  %56 = call ptr @memcpy(ptr %cl.i, ptr @__const.p9_rdma_bind_privport.cl, i32 16)
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %cl.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then13
  %port.06.i = phi i32 [ 1023, %if.then13 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i151 = trunc i32 %port.06.i to i16
  %57 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i151, ptr %sin_port.i, align 2
  %58 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cm_id, align 4
  %call.i152 = call i32 @rdma_bind_addr(ptr noundef %59, ptr noundef nonnull %cl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -98, i32 %call.i152)
  %cmp1.not.i = icmp eq i32 %call.i152, -98
  %dec.i = add nsw i32 %port.06.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 664, i32 %dec.i)
  %cmp.i153 = icmp ugt i32 %dec.i, 664
  %or.cond.i = select i1 %cmp1.not.i, i1 %cmp.i153, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %p9_rdma_bind_privport.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

p9_rdma_bind_privport.exit:                       ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp15 = icmp slt i32 %call.i152, 0
  br i1 %cmp15, label %do.end, label %p9_rdma_bind_privport.exit.if.end21_crit_edge

p9_rdma_bind_privport.exit.if.end21_crit_edge:    ; preds = %p9_rdma_bind_privport.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end:                                           ; preds = %p9_rdma_bind_privport.exit
  call void @__sanitizer_cov_trace_pc() #12
  %60 = call i32 @llvm.read_register.i32(metadata !92) #10
  %and.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid.i, align 8
  %sub = sub i32 0, %call.i152
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %65, i32 noundef %sub) #14
  br label %error

if.end21:                                         ; preds = %p9_rdma_bind_privport.exit.if.end21_crit_edge, %if.end11.if.end21_crit_edge
  %addr22 = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 13
  %66 = ptrtoint ptr %addr22 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 2, ptr %addr22, align 8
  %call23 = call i32 @in_aton(ptr noundef nonnull %addr) #10
  %sin_addr = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 13, i32 2
  %67 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call23, ptr %sin_addr, align 4
  %sin_port = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %68 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %opts.sroa.0.3.ph, ptr %sin_port, align 2
  %69 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cm_id, align 4
  %71 = ptrtoint ptr %timeout6.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %timeout6.i, align 4
  %call28 = call i32 @rdma_resolve_addr(ptr noundef %70, ptr noundef null, ptr noundef %addr22, i32 noundef %72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end21.error_crit_edge

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end31:                                         ; preds = %if.end21
  %call32 = call i32 @wait_for_completion_interruptible(ptr noundef %cm_done.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.lhs.false, label %if.end31.error_crit_edge

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

lor.lhs.false:                                    ; preds = %if.end31
  %73 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp34.not = icmp eq i32 %74, 1
  br i1 %cmp34.not, label %if.end36, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end36:                                         ; preds = %lor.lhs.false
  %75 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cm_id, align 4
  %77 = ptrtoint ptr %timeout6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %timeout6.i, align 4
  %call39 = call i32 @rdma_resolve_route(ptr noundef %76, i32 noundef %78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end36.error_crit_edge

if.end36.error_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end42:                                         ; preds = %if.end36
  %call44 = call i32 @wait_for_completion_interruptible(ptr noundef %cm_done.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %if.end42.error_crit_edge

if.end42.error_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

lor.lhs.false46:                                  ; preds = %if.end42
  %79 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp48.not = icmp eq i32 %80, 2
  br i1 %cmp48.not, label %if.end50, label %lor.lhs.false46.error_crit_edge

lor.lhs.false46.error_crit_edge:                  ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end50:                                         ; preds = %lor.lhs.false46
  %81 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cm_id, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %add = add i32 %opts.sroa.17.3.ph, 1
  %add52 = add i32 %add, %opts.sroa.11159.3.ph
  %call.i154 = call ptr @__ib_alloc_cq_any(ptr noundef %84, ptr noundef %client, i32 noundef %add52, i32 noundef 0, ptr noundef nonnull @.str.1) #10
  %cq = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 4
  %85 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i154, ptr %cq, align 8
  %cmp.i155 = icmp ugt ptr %call.i154, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.end50.error_crit_edge, label %if.end57

if.end50.error_crit_edge:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end57:                                         ; preds = %if.end50
  %86 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cm_id, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call60 = call ptr @__ib_alloc_pd(ptr noundef %89, i32 noundef 0, ptr noundef nonnull @.str.1) #10
  %pd = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call60, ptr %pd, align 8
  %cmp.i156 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.end57.error_crit_edge, label %if.end64

if.end57.error_crit_edge:                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end64:                                         ; preds = %if.end57
  %91 = getelementptr inbounds i8, ptr %qp_attr, i32 16
  %92 = call ptr @memset(ptr %91, i32 0, i32 56)
  %93 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @qp_event_handler, ptr %qp_attr, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 1
  %94 = ptrtoint ptr %qp_context to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %client, ptr %qp_context, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6
  %95 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %opts.sroa.11159.3.ph, ptr %cap, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 1
  %96 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %opts.sroa.17.3.ph, ptr %max_recv_wr, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 2
  %97 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %max_send_sge, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 3
  %98 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4, ptr %max_recv_sge, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 7
  %99 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %sq_sig_type, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 8
  %100 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %qp_type, align 4
  %101 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cq, align 8
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 2
  %103 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %send_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 3
  %104 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %recv_cq, align 4
  %105 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cm_id, align 4
  %call74 = call i32 @rdma_create_qp(ptr noundef %106, ptr noundef %call60, ptr noundef nonnull %qp_attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end64.error_crit_edge

if.end64.error_crit_edge:                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end77:                                         ; preds = %if.end64
  %107 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cm_id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %qp, align 4
  %qp79 = getelementptr inbounds %struct.p9_trans_rdma, ptr %call7.i.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %qp79 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %qp79, align 4
  %112 = call ptr @memset(ptr %conn_param, i32 0, i32 20)
  %call81 = call i32 @rdma_connect(ptr noundef %108, ptr noundef nonnull %conn_param) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end77.error_crit_edge

if.end77.error_crit_edge:                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end84:                                         ; preds = %if.end77
  %call86 = call i32 @wait_for_completion_interruptible(ptr noundef %cm_done.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %lor.lhs.false88, label %if.end84.error_crit_edge

if.end84.error_crit_edge:                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

lor.lhs.false88:                                  ; preds = %if.end84
  %113 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %114)
  %cmp90.not = icmp eq i32 %114, 3
  br i1 %cmp90.not, label %if.end92, label %lor.lhs.false88.error_crit_edge

lor.lhs.false88.error_crit_edge:                  ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end92:                                         ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 4
  %115 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %status, align 4
  br label %cleanup

error:                                            ; preds = %lor.lhs.false88.error_crit_edge, %if.end84.error_crit_edge, %if.end77.error_crit_edge, %if.end64.error_crit_edge, %if.end57.error_crit_edge, %if.end50.error_crit_edge, %lor.lhs.false46.error_crit_edge, %if.end42.error_crit_edge, %if.end36.error_crit_edge, %lor.lhs.false.error_crit_edge, %if.end31.error_crit_edge, %if.end21.error_crit_edge, %do.end, %if.end6.error_crit_edge
  call fastcc void @rdma_destroy_trans(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end92, %if.end3.cleanup_crit_edge, %parse_opts.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %error ], [ 0, %if.end92 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %parse_opts.exit ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp_attr) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdma_close(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %status, align 4
  %cm_id = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cm_id, align 4
  %call = tail call i32 @rdma_disconnect(ptr noundef %4) #10
  tail call fastcc void @rdma_destroy_trans(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_request(ptr nocapture noundef readonly %client, ptr noundef %req) #2 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %dummy.i.i = alloca ptr, align 4
  %wr.i = alloca %struct.ib_recv_wr, align 8
  %sge.i = alloca %struct.ib_sge, align 8
  %wr = alloca %struct.ib_send_wr, align 8
  %sge = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wr) #10
  %2 = call ptr @memset(ptr %wr, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sge) #10
  %3 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %excess_rc = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 12
  %5 = call ptr @memset(ptr %sge, i32 255, i32 16)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %excess_rc, i32 noundef 4) #10
  %6 = ptrtoint ptr %excess_rc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %excess_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge, !prof !103

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %call.i.i123 = tail call zeroext i1 @__kasan_check_write(ptr noundef %excess_rc, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %excess_rc, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %excess_rc, ptr %excess_rc, i32 1, ptr elementtype(i32) %excess_rc) #10, !srcloc !105
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i)
  %cmp4 = icmp sgt i32 %asmresult.i.i.i, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %rc = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 5
  tail call void @p9_fcall_fini(ptr noundef %rc) #10
  %sdata = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 5, i32 6
  br label %dont_need_post_recv

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i124 = tail call zeroext i1 @__kasan_check_write(ptr noundef %excess_rc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %excess_rc, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %excess_rc, ptr %excess_rc, i32 1, ptr elementtype(i32) %excess_rc) #10, !srcloc !107
  br label %if.end8

if.end8:                                          ; preds = %if.else, %entry.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3136, i32 noundef 32) #13
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %if.end8.recv_error_crit_edge, label %if.end12

if.end8.recv_error_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_error

if.end12:                                         ; preds = %if.end8
  %sdata14 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 5, i32 6
  %11 = ptrtoint ptr %sdata14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdata14, align 4
  %sdata15 = getelementptr inbounds %struct.p9_rdma_context, ptr %call7.i, i32 0, i32 2, i32 0, i32 6
  %13 = ptrtoint ptr %sdata15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %sdata15, align 4
  %rq_sem = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 11
  %call16 = tail call i32 @down_interruptible(ptr noundef %rq_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.recv_error_crit_edge

if.end12.recv_error_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_error

if.end19:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr.i) #10
  %16 = call ptr @memset(ptr %wr.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sge.i) #10
  %17 = getelementptr inbounds %struct.ib_sge, ptr %sge.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ib_sge, ptr %sge.i, i32 0, i32 2
  %cm_id.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cm_id.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %sdata15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdata15, align 4
  %msize.i = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 1
  %25 = ptrtoint ptr %msize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msize.i, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 8
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #10
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end19
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i.i, !prof !108

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dma_map_single.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %28) #10
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %32, %if.end.i.i.i.i ], [ %30, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #10
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %28, ptr noundef %24, i32 noundef %26) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %24 to i32
  %sub.i.i.i = add i32 %34, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %33, i32 %shr.i.i.i
  %and.i.i.i = and i32 %34, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %28, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %26, i32 noundef 2, i32 noundef 0) #10
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %busa.i = getelementptr inbounds %struct.p9_rdma_context, ptr %call7.i, i32 0, i32 1
  %35 = ptrtoint ptr %busa.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i.i, ptr %busa.i, align 4
  %36 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cm_id.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %41, i32 noundef %retval.0.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.not.i, label %post_recv.exit.thread, label %post_recv.exit

post_recv.exit.thread:                            ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.post_recv, ptr noundef nonnull @.str.22) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i) #10
  br label %if.then22

post_recv.exit:                                   ; preds = %ib_dma_map_single.exit.i
  %42 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @recv_done, ptr %call7.i, align 8
  %43 = ptrtoint ptr %busa.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %busa.i, align 4
  %conv7.i = zext i32 %44 to i64
  %45 = ptrtoint ptr %sge.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv7.i, ptr %sge.i, align 8
  %46 = ptrtoint ptr %msize.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msize.i, align 4
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %17, align 8
  %pd.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %15, i32 0, i32 2
  %49 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pd.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %18, align 4
  %54 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %wr.i, align 8
  %55 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i, ptr %55, align 8
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 2
  %57 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sge.i, ptr %sg_list.i, align 8
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 3
  %58 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %num_sge.i, align 4
  %qp.i = getelementptr inbounds %struct.p9_trans_rdma, ptr %15, i32 0, i32 3
  %59 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #10
  %61 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !102
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %60, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %63, i32 0, i32 1, i32 7
  %64 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %post_recv.i.i, align 4
  %call.i.i127 = call i32 %65(ptr noundef %60, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127)
  %tobool21.not = icmp eq i32 %call.i.i127, 0
  br i1 %tobool21.not, label %post_recv.exit.dont_need_post_recv_crit_edge, label %post_recv.exit.if.then22_crit_edge

post_recv.exit.if.then22_crit_edge:               ; preds = %post_recv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

post_recv.exit.dont_need_post_recv_crit_edge:     ; preds = %post_recv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dont_need_post_recv

if.then22:                                        ; preds = %post_recv.exit.if.then22_crit_edge, %post_recv.exit.thread
  %retval.0.i132 = phi i32 [ -5, %post_recv.exit.thread ], [ %call.i.i127, %post_recv.exit.if.then22_crit_edge ]
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.rdma_request, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i132) #10
  br label %recv_error

dont_need_post_recv:                              ; preds = %post_recv.exit.dont_need_post_recv_crit_edge, %if.then5
  %sdata14.sink = phi ptr [ %sdata, %if.then5 ], [ %sdata14, %post_recv.exit.dont_need_post_recv_crit_edge ]
  %66 = ptrtoint ptr %sdata14.sink to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %sdata14.sink, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i125 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3136, i32 noundef 32) #13
  %tobool27.not = icmp eq ptr %call7.i125, null
  br i1 %tobool27.not, label %dont_need_post_recv.send_error_crit_edge, label %if.end29

dont_need_post_recv.send_error_crit_edge:         ; preds = %dont_need_post_recv
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_error

if.end29:                                         ; preds = %dont_need_post_recv
  %68 = getelementptr inbounds %struct.p9_rdma_context, ptr %call7.i125, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %req, ptr %68, align 8
  %cm_id = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cm_id, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %tc = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4
  %sdata30 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4, i32 6
  %74 = ptrtoint ptr %sdata30 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sdata30, align 4
  %76 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tc, align 4
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %73, align 8
  %call.i.i128 = call zeroext i1 @is_vmalloc_addr(ptr noundef %75) #10
  br i1 %call.i.i128, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end29
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !108

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %79) #10
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %79, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i129 = phi ptr [ %83, %if.end.i.i.i ], [ %81, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i129) #10
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void @debug_dma_map_single(ptr noundef %79, ptr noundef %75, i32 noundef %77) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %84 = load ptr, ptr @mem_map, align 4
  %85 = ptrtoint ptr %75 to i32
  %sub.i.i = add i32 %85, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %84, i32 %shr.i.i
  %and.i.i = and i32 %85, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %79, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %77, i32 noundef 1, i32 noundef 0) #10
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %busa = getelementptr inbounds %struct.p9_rdma_context, ptr %call7.i125, i32 0, i32 1
  %86 = ptrtoint ptr %busa to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i.i, ptr %busa, align 4
  %87 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cm_id, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  call void @debug_dma_mapping_error(ptr noundef %92, i32 noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i.not = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i.not, label %ib_dma_map_single.exit.send_error_crit_edge, label %if.end40

ib_dma_map_single.exit.send_error_crit_edge:      ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_error

if.end40:                                         ; preds = %ib_dma_map_single.exit
  %93 = ptrtoint ptr %call7.i125 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @send_done, ptr %call7.i125, align 8
  %94 = ptrtoint ptr %busa to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %busa, align 4
  %conv42 = zext i32 %95 to i64
  %96 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv42, ptr %sge, align 8
  %97 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %68, align 8
  %tc43 = getelementptr inbounds %struct.p9_req_t, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %tc43 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tc43, align 4
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %3, align 8
  %pd = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 2
  %102 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pd, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %106 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %4, align 4
  %107 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %wr, align 8
  %108 = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i125, ptr %108, align 8
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 4
  %110 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %111 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %send_flags, align 4
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 2
  %112 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %sge, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %113 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %num_sge, align 4
  %sq_sem = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 9
  %call46 = call i32 @down_interruptible(ptr noundef %sq_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end40.send_error_crit_edge

if.end40.send_error_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_error

if.end49:                                         ; preds = %if.end40
  %114 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %req, align 4
  %qp = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 3
  %115 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #10
  %117 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !102
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %116, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %119, i32 0, i32 1, i32 6
  %120 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %121(ptr noundef %116, ptr noundef nonnull %wr, ptr noundef nonnull %dummy.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool51.not = icmp eq i32 %call.i, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %if.end49.send_error_crit_edge

if.end49.send_error_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_error

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

send_error:                                       ; preds = %if.end49.send_error_crit_edge, %if.end40.send_error_crit_edge, %ib_dma_map_single.exit.send_error_crit_edge, %dont_need_post_recv.send_error_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end49.send_error_crit_edge ], [ -12, %dont_need_post_recv.send_error_crit_edge ], [ -5, %ib_dma_map_single.exit.send_error_crit_edge ], [ -4, %if.end40.send_error_crit_edge ]
  %122 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 5, ptr %req, align 4
  call void @kfree(ptr noundef %call7.i125) #10
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.rdma_request, ptr noundef nonnull @.str.21, i32 noundef %err.0) #10
  %call.i.i126 = call zeroext i1 @__kasan_check_write(ptr noundef %excess_rc, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %excess_rc, i32 1, i32 3, i32 1) #10
  %123 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %excess_rc, ptr %excess_rc, i32 1, ptr elementtype(i32) %excess_rc) #10, !srcloc !107
  br label %cleanup

recv_error:                                       ; preds = %if.then22, %if.end12.recv_error_crit_edge, %if.end8.recv_error_crit_edge
  %err.1 = phi i32 [ %retval.0.i132, %if.then22 ], [ -12, %if.end8.recv_error_crit_edge ], [ -4, %if.end12.recv_error_crit_edge ]
  call void @kfree(ptr noundef %call7.i) #10
  %req_lock = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 14
  %call60 = call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %err.1)
  %cmp63.not = icmp eq i32 %err.1, -4
  br i1 %cmp63.not, label %recv_error.if.else72_crit_edge, label %land.lhs.true

recv_error.if.else72_crit_edge:                   ; preds = %recv_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else72

land.lhs.true:                                    ; preds = %recv_error
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %125)
  %cmp65 = icmp ult i32 %125, 5
  br i1 %cmp65, label %if.then67, label %land.lhs.true.if.else72_crit_edge

land.lhs.true.if.else72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else72

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 5, ptr %1, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call60) #10
  %cm_id70 = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 1
  %127 = ptrtoint ptr %cm_id70 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cm_id70, align 4
  %call71 = call i32 @rdma_disconnect(ptr noundef %128) #10
  br label %cleanup

if.else72:                                        ; preds = %land.lhs.true.if.else72_crit_edge, %recv_error.if.else72_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call60) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else72, %if.then67, %send_error, %if.end49.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %send_error ], [ 0, %if.end49.cleanup_crit_edge ], [ %err.1, %if.else72 ], [ %err.1, %if.then67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wr) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rdma_cancel(ptr nocapture noundef readnone %client, ptr nocapture noundef readnone %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_cancelled(ptr nocapture noundef readonly %client, ptr nocapture noundef readnone %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %excess_rc = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %excess_rc, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %excess_rc, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %excess_rc, ptr %excess_rc, i32 1, ptr elementtype(i32) %excess_rc) #10, !srcloc !107
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_rdma_show_options(ptr noundef %m, ptr nocapture noundef readonly %clnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.p9_client, ptr %clnt, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %port = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5640, i16 %3)
  %cmp.not = icmp eq i16 %3, 5640
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sq_depth = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sq_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp4.not = icmp eq i32 %5, 32
  br i1 %cmp4.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %5) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %rq_depth = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %rq_depth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp9.not = icmp eq i32 %7, 32
  br i1 %cmp9.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %7) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %timeout = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %9)
  %cmp14.not = icmp eq i32 %9, 30000
  br i1 %cmp14.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %9) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %privport = getelementptr inbounds %struct.p9_trans_rdma, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %privport to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %privport, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end18.if.end20_crit_edge, label %if.then19

if.end18.if.end20_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.32) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end18.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_cm_event_handler(ptr nocapture noundef readonly %id, ptr nocapture noundef readonly %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %trans = getelementptr inbounds %struct.p9_client, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %5, label %do.body59 [
    i32 0, label %do.body
    i32 2, label %do.body11
    i32 9, label %do.body32
    i32 10, label %sw.bb52
    i32 15, label %entry.sw.epilog_crit_edge
    i32 14, label %entry.sw.bb57_crit_edge
    i32 3, label %entry.sw.bb57_crit_edge76
    i32 11, label %entry.sw.bb57_crit_edge77
    i32 12, label %entry.sw.bb57_crit_edge78
    i32 13, label %entry.sw.bb57_crit_edge79
    i32 8, label %entry.sw.bb57_crit_edge80
    i32 4, label %entry.sw.bb57_crit_edge81
    i32 5, label %entry.sw.bb57_crit_edge82
    i32 6, label %entry.sw.bb57_crit_edge83
    i32 1, label %entry.sw.bb57_crit_edge84
    i32 7, label %entry.sw.bb57_crit_edge85
  ]

entry.sw.bb57_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge81:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge80:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge79:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.bb57_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !108

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/trans_rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 246, 0\0A.popsection", ""() #10, !srcloc !110
  unreachable

do.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %3, align 4
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp13.not = icmp eq i32 %11, 1
  br i1 %cmp13.not, label %do.end29, label %do.body21, !prof !108

do.body21:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/trans_rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #10, !srcloc !111
  unreachable

do.end29:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %3, align 4
  br label %sw.epilog

do.body32:                                        ; preds = %entry
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp34.not = icmp eq i32 %14, 2
  br i1 %cmp34.not, label %do.end50, label %do.body42, !prof !108

do.body42:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/trans_rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 256, 0\0A.popsection", ""() #10, !srcloc !112
  unreachable

do.end50:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %3, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  %tobool53.not = icmp eq ptr %3, null
  br i1 %tobool53.not, label %sw.bb52.if.end56_crit_edge, label %if.then54

sw.bb52.if.end56_crit_edge:                       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then54:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %3, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %sw.bb52.if.end56_crit_edge
  %status = getelementptr inbounds %struct.p9_client, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %status, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry.sw.bb57_crit_edge, %entry.sw.bb57_crit_edge76, %entry.sw.bb57_crit_edge77, %entry.sw.bb57_crit_edge78, %entry.sw.bb57_crit_edge79, %entry.sw.bb57_crit_edge80, %entry.sw.bb57_crit_edge81, %entry.sw.bb57_crit_edge82, %entry.sw.bb57_crit_edge83, %entry.sw.bb57_crit_edge84, %entry.sw.bb57_crit_edge85
  %status58 = getelementptr inbounds %struct.p9_client, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %status58 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %status58, align 4
  %cm_id = getelementptr inbounds %struct.p9_trans_rdma, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cm_id, align 4
  %call = tail call i32 @rdma_disconnect(ptr noundef %20) #10
  br label %sw.epilog

do.body59:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/trans_rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

sw.epilog:                                        ; preds = %sw.bb57, %if.end56, %do.end50, %do.end29, %do.end8, %entry.sw.epilog_crit_edge
  %cm_done = getelementptr inbounds %struct.p9_trans_rdma, ptr %3, i32 0, i32 15
  tail call void @complete(ptr noundef %cm_done) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_aton(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_route(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qp_event_handler(ptr nocapture noundef readonly %event, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %event1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event1, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.qp_event_handler, ptr noundef nonnull @.str.17, i32 noundef %1, ptr noundef %context) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_connect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rdma_destroy_trans(ptr noundef %rdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rdma, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %qp = getelementptr inbounds %struct.p9_trans_rdma, ptr %rdma, i32 0, i32 3
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %tobool1.not = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool1.not, %cmp.i
  br i1 %or.cond, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef nonnull %1, ptr noundef null) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %pd = getelementptr inbounds %struct.p9_trans_rdma, ptr %rdma, i32 0, i32 2
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %tobool7.not = icmp eq ptr %3, null
  %cmp.i44 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %or.cond48 = or i1 %tobool7.not, %cmp.i44
  br i1 %or.cond48, label %if.end6.if.end13_crit_edge, label %if.then11

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.end6
  %call.i45 = tail call i32 @ib_dealloc_pd_user(ptr noundef nonnull %3, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i, label %if.then11.if.end13_crit_edge, label %land.rhs.i

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.rhs.i:                                       ; preds = %if.then11
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.if.end13_crit_edge, label %if.then.i, !prof !108

land.rhs.i.if.end13_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.19) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then.i, %land.rhs.i.if.end13_crit_edge, %if.then11.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %cq = getelementptr inbounds %struct.p9_trans_rdma, ptr %rdma, i32 0, i32 4
  %4 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cq, align 4
  %tobool14.not = icmp eq ptr %5, null
  %cmp.i46 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %or.cond49 = or i1 %tobool14.not, %cmp.i46
  br i1 %or.cond49, label %if.end13.if.end20_crit_edge, label %if.then18

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ib_free_cq(ptr noundef nonnull %5) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end13.if.end20_crit_edge
  %cm_id = getelementptr inbounds %struct.p9_trans_rdma, ptr %rdma, i32 0, i32 1
  %6 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_id, align 4
  %tobool21.not = icmp eq ptr %7, null
  %cmp.i47 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %or.cond50 = or i1 %tobool21.not, %cmp.i47
  br i1 %or.cond50, label %if.end20.if.end27_crit_edge, label %if.then25

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rdma_destroy_id(ptr noundef nonnull %7) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end20.if.end27_crit_edge
  tail call void @kfree(ptr noundef nonnull %rdma) #10
  br label %return

return:                                           ; preds = %if.end27, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_cq_any(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_cq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_fcall_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_done(ptr nocapture noundef readonly %cq, ptr nocapture noundef readonly %wc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_context, align 8
  %trans = getelementptr inbounds %struct.p9_client, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc, align 8
  %cm_id = getelementptr inbounds %struct.p9_trans_rdma, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_id, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %busa = getelementptr inbounds %struct.p9_rdma_context, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %busa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %busa, align 4
  %12 = getelementptr inbounds %struct.p9_rdma_context, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tc = getelementptr inbounds %struct.p9_req_t, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tc, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %18, i32 noundef %11, i32 noundef %16, i32 noundef 1, i32 noundef 0) #10
  %sq_sem = getelementptr inbounds %struct.p9_trans_rdma, ptr %3, i32 0, i32 9
  tail call void @up(ptr noundef %sq_sem) #10
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 4
  %call = tail call i32 @p9_req_put(ptr noundef %20) #10
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_done(ptr nocapture noundef readonly %cq, ptr nocapture noundef readonly %wc) #2 align 64 {
entry:
  %tag = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_context, align 8
  %trans = getelementptr inbounds %struct.p9_client, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tag) #10
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %tag, align 2, !annotation !102
  %cm_id = getelementptr inbounds %struct.p9_trans_rdma, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cm_id, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %busa = getelementptr inbounds %struct.p9_rdma_context, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %busa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %busa, align 4
  %msize = getelementptr inbounds %struct.p9_client, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %msize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msize, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %12, i32 noundef %14, i32 noundef 2, i32 noundef 0) #10
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %if.end, label %entry.err_out_crit_edge

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end:                                           ; preds = %entry
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %19 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %byte_len, align 4
  %21 = getelementptr inbounds %struct.p9_rdma_context, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %21, align 4
  %call = call i32 @p9_parse_header(ptr noundef %21, ptr noundef null, ptr noundef null, ptr noundef nonnull %tag, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end3:                                          ; preds = %if.end
  %23 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tag, align 2
  %call4 = call ptr @p9_tag_lookup(ptr noundef %1, i16 noundef zeroext %24) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.err_out_crit_edge, label %if.end7

if.end3.err_out_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end7:                                          ; preds = %if.end3
  %sdata = getelementptr inbounds %struct.p9_req_t, ptr %call4, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdata, align 4
  %tobool8.not = icmp eq ptr %26, null
  br i1 %tobool8.not, label %if.end15, label %do.end, !prof !108

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tag, align 2
  %conv13 = sext i16 %28 to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv13) #14
  br label %err_out

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %rc = getelementptr inbounds %struct.p9_req_t, ptr %call4, i32 0, i32 5
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %21, align 4
  %31 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rc, align 4
  %sdata19 = getelementptr inbounds %struct.p9_rdma_context, ptr %5, i32 0, i32 2, i32 0, i32 6
  %32 = ptrtoint ptr %sdata19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdata19, align 4
  %34 = ptrtoint ptr %sdata to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %sdata, align 4
  call void @p9_client_cb(ptr noundef %1, ptr noundef nonnull %call4, i32 noundef 3) #10
  br label %out

out:                                              ; preds = %err_out, %if.end15
  %rq_sem = getelementptr inbounds %struct.p9_trans_rdma, ptr %3, i32 0, i32 11
  call void @up(ptr noundef %rq_sem) #10
  call void @kfree(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tag) #10
  ret void

err_out:                                          ; preds = %do.end, %if.end3.err_out_crit_edge, %if.end.err_out_crit_edge, %entry.err_out_crit_edge
  %req.0 = phi ptr [ null, %entry.err_out_crit_edge ], [ null, %if.end.err_out_crit_edge ], [ %call4, %do.end ], [ null, %if.end3.err_out_crit_edge ]
  %err.0 = phi i32 [ 0, %entry.err_out_crit_edge ], [ %call, %if.end.err_out_crit_edge ], [ 0, %do.end ], [ 0, %if.end3.err_out_crit_edge ]
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status, align 8
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %req.0, i32 noundef %err.0, i32 noundef %36) #10
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %3, align 4
  %status23 = getelementptr inbounds %struct.p9_client, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %status23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %status23, align 4
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_parse_header(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_tag_lookup(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_client_cb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @p9_req_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_register_trans(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !52, !54, !56, !58, !59, !61, !62, !63, !65, !66, !68, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84, !86, !88, !90}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_9pnet_rdma__502_766_p9_trans_rdma_init6, !1, !"__initcall__kmod_9pnet_rdma__502_766_p9_trans_rdma_init6", i1 false, i1 false}
!1 = !{!"../net/9p/trans_rdma.c", i32 766, i32 1}
!2 = !{ptr @__exitcall_p9_trans_rdma_exit, !3, !"__exitcall_p9_trans_rdma_exit", i1 false, i1 false}
!3 = !{!"../net/9p/trans_rdma.c", i32 767, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias503, !5, !"__UNIQUE_ID_alias503", i1 false, i1 false}
!5 = !{!"../net/9p/trans_rdma.c", i32 768, i32 1}
!6 = !{ptr @__UNIQUE_ID_author504, !7, !"__UNIQUE_ID_author504", i1 false, i1 false}
!7 = !{!"../net/9p/trans_rdma.c", i32 770, i32 1}
!8 = !{ptr @__UNIQUE_ID_description505, !9, !"__UNIQUE_ID_description505", i1 false, i1 false}
!9 = !{!"../net/9p/trans_rdma.c", i32 771, i32 1}
!10 = !{ptr @__UNIQUE_ID_file506, !11, !"__UNIQUE_ID_file506", i1 false, i1 false}
!11 = !{!"../net/9p/trans_rdma.c", i32 772, i32 1}
!12 = !{ptr @__UNIQUE_ID_license507, !11, !"__UNIQUE_ID_license507", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/9p/trans_rdma.c", i32 740, i32 10}
!15 = !{ptr @p9_rdma_trans, !16, !"p9_rdma_trans", i1 false, i1 false}
!16 = !{!"../net/9p/trans_rdma.c", i32 739, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/9p/trans_rdma.c", i32 649, i32 16}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/9p/trans_rdma.c", i32 661, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rdma_create_trans._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @rdma_create_trans._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__func__.parse_opts, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/9p/trans_rdma.c", i32 193, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/9p/trans_rdma.c", i32 199, i32 31}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/9p/trans_rdma.c", i32 208, i32 5}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/9p/trans_rdma.c", i32 143, i32 13}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/9p/trans_rdma.c", i32 144, i32 17}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/9p/trans_rdma.c", i32 145, i32 17}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/9p/trans_rdma.c", i32 146, i32 16}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/9p/trans_rdma.c", i32 147, i32 17}
!42 = !{ptr @tokens, !43, !"tokens", i1 false, i1 false}
!43 = !{!"../net/9p/trans_rdma.c", i32 142, i32 22}
!44 = !{ptr @alloc_rdma.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../net/9p/trans_rdma.c", i32 576, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sema_init.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!56 = !{ptr @__func__.qp_event_handler, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/9p/trans_rdma.c", i32 359, i32 2}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__func__.rdma_request, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/9p/trans_rdma.c", i32 465, i32 3}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/9p/trans_rdma.c", i32 522, i32 2}
!68 = !{ptr @__func__.post_recv, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/9p/trans_rdma.c", i32 409, i32 2}
!70 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/9p/trans_rdma.c", i32 320, i32 3}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @recv_done._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @recv_done._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/9p/trans_rdma.c", i32 334, i32 2}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/9p/trans_rdma.c", i32 156, i32 17}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/9p/trans_rdma.c", i32 158, i32 17}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/9p/trans_rdma.c", i32 160, i32 17}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/9p/trans_rdma.c", i32 162, i32 17}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/9p/trans_rdma.c", i32 164, i32 15}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2148373971}
!105 = !{i64 2148288704, i64 2148288736, i64 2148288765, i64 2148288799, i64 2148288830, i64 2148288853}
!106 = !{i64 2148374200}
!107 = !{i64 2148285519, i64 2148285545, i64 2148285574, i64 2148285608, i64 2148285639, i64 2148285662}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i8 0, i8 2}
!110 = !{i64 2158011787, i64 2158012271, i64 2158011824, i64 2158011880, i64 2158011914, i64 2158011938, i64 2158011979, i64 2158012000, i64 2158012028, i64 2158012062}
!111 = !{i64 2158013415, i64 2158013899, i64 2158013452, i64 2158013508, i64 2158013542, i64 2158013566, i64 2158013607, i64 2158013628, i64 2158013656, i64 2158013690}
!112 = !{i64 2158015045, i64 2158015529, i64 2158015082, i64 2158015138, i64 2158015172, i64 2158015196, i64 2158015237, i64 2158015258, i64 2158015286, i64 2158015320}
!113 = !{i64 2158016523, i64 2158017007, i64 2158016560, i64 2158016616, i64 2158016650, i64 2158016674, i64 2158016715, i64 2158016736, i64 2158016764, i64 2158016798}
