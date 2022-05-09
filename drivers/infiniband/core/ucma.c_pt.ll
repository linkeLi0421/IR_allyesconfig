; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/ucma.c_pt.bc'
source_filename = "../drivers/infiniband/core/ucma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.ib_client_nl_info = type { ptr, ptr, i32, i64 }
%struct.rdma_ucm_cmd_hdr = type { i32, i16, i16 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ucma_file = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rdma_ucm_create_id = type { i64, i64, i16, i8, [5 x i8] }
%struct.rdma_ucm_create_id_resp = type { i32 }
%struct.ucma_context = type { i32, %struct.completion, %struct.refcount_struct, i32, %struct.atomic_t, ptr, ptr, %struct.mutex, i64, %struct.list_head, %struct.list_head, %struct.work_struct }
%struct.rdma_ucm_destroy_id = type { i64, i32, i32 }
%struct.rdma_ucm_destroy_id_resp = type { i32 }
%struct.rdma_ucm_bind_ip = type { i64, %struct.sockaddr_in6, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.rdma_ucm_resolve_ip = type { %struct.sockaddr_in6, %struct.sockaddr_in6, i32, i32 }
%struct.rdma_ucm_resolve_route = type { i32, i32 }
%struct.rdma_ucm_query = type { i64, i32, i32 }
%struct.rdma_ucm_query_route_resp = type { i64, [2 x %struct.ib_user_path_rec], %struct.sockaddr_in6, %struct.sockaddr_in6, i32, i8, [3 x i8], i32, i32 }
%struct.ib_user_path_rec = type { [16 x i8], [16 x i8], i16, i16, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.174 }
%union.anon.174 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.177, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.177 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.sa_path_rec = type { %union.ib_gid, %union.ib_gid, i64, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.176, i32 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%union.anon.176 = type { %struct.sa_path_rec_opa }
%struct.sa_path_rec_opa = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.rdma_ucm_connect = type { %struct.rdma_ucm_conn_param, i32, i32, %struct.rdma_ucm_ece }
%struct.rdma_ucm_conn_param = type { i32, i32, [256 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rdma_ucm_listen = type { i32, i32 }
%struct.rdma_ucm_accept = type { i64, %struct.rdma_ucm_conn_param, i32, i32, %struct.rdma_ucm_ece }
%struct.rdma_ucm_reject = type { i32, i8, i8, [2 x i8], [256 x i8] }
%struct.rdma_ucm_disconnect = type { i32 }
%struct.rdma_ucm_init_qp_attr = type { i64, i32, i32 }
%struct.ib_uverbs_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8] }
%struct.ib_uverbs_ah_attr = type { %struct.ib_uverbs_global_route, i16, i8, i8, i8, i8, i8, i8 }
%struct.ib_uverbs_global_route = type { [16 x i8], i32, i8, i8, i8, i8 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_get_event = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ucma_multicast = type { ptr, i32, i32, i64, i8, %struct.list_head, %struct.__kernel_sockaddr_storage }
%struct.rdma_cm_event = type { i32, i32, %union.anon.173, %struct.rdma_ucm_ece }
%union.anon.173 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ucm_set_option = type { i64, i32, i32, i32, i32 }
%struct.ib_path_rec_data = type { i32, i32, [16 x i32] }
%struct.sa_path_rec_ib = type { i16, i16, i8 }
%struct.rdma_ucm_notify = type { i32, i32 }
%struct.rdma_ucm_join_ip_mcast = type { i64, i64, %struct.sockaddr_in6, i32 }
%struct.rdma_ucm_join_mcast = type { i64, i64, i32, i16, i16, %struct.__kernel_sockaddr_storage }
%struct.rdma_ucm_migrate_id = type { i64, i32, i32 }
%struct.rdma_ucm_migrate_resp = type { i32 }
%struct.rdma_ucm_query_addr_resp = type { i64, i8, i8, i16, i16, i16, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32 }
%struct.rdma_ucm_query_path_resp = type { i32, i32, [0 x %struct.ib_path_rec_data] }
%struct.sockaddr_ib = type { i16, i16, i32, %struct.ib_addr, i64, i64, i64 }
%struct.ib_addr = type { %union.anon.179 }
%union.anon.179 = type { [2 x i64] }
%struct.rdma_ucm_bind = type { i32, i16, i16, %struct.__kernel_sockaddr_storage }
%struct.rdma_ucm_resolve_addr = type { i32, i32, i16, i16, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage }
%struct.ucma_event = type { ptr, ptr, ptr, %struct.list_head, %struct.rdma_ucm_event_resp }
%struct.rdma_ucm_event_resp = type { i64, i32, i32, i32, %union.anon.178, i32, %struct.rdma_ucm_ece }
%union.anon.178 = type { %struct.rdma_ucm_ud_param }
%struct.rdma_ucm_ud_param = type { i32, i32, %struct.ib_uverbs_ah_attr, [256 x i8], i8, [7 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@__UNIQUE_ID_author502 = internal constant [27 x i8] c"rdma_ucm.author=Sean Hefty\00", section ".modinfo", align 1
@__UNIQUE_ID_description503 = internal constant [62 x i8] c"rdma_ucm.description=RDMA Userspace Connection Manager Access\00", section ".modinfo", align 1
@__UNIQUE_ID_file504 = internal constant [47 x i8] c"rdma_ucm.file=drivers/infiniband/core/rdma_ucm\00", section ".modinfo", align 1
@__UNIQUE_ID_license505 = internal constant [30 x i8] c"rdma_ucm.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias521 = internal constant [35 x i8] c"rdma_ucm.alias=rdma-client-rdma_cm\00", section ".modinfo", align 1
@rdma_cma_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @ucma_get_global_nl_info, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@ucma_ctl_table_hdr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ucma_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str, ptr @ucma_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.1, i16 438 }, [56 x i8] zeroinitializer }, align 32
@dev_attr_abi_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @abi_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_rdma_ucm__522_1895_ucma_init6 = internal global ptr @ucma_init, section ".initcall6.init", align 4
@__exitcall_ucma_cleanup = internal global ptr @ucma_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rdma_cm\00", [24 x i8] zeroinitializer }, align 32
@ucma_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @ucma_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ucma_poll, ptr null, ptr null, ptr null, i32 0, ptr @ucma_open, ptr null, ptr @ucma_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infiniband/rdma_cm\00", [45 x i8] zeroinitializer }, align 32
@ucma_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ucma_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013%s: process %d (%s) changed security contexts after opening file descriptor, this is not allowed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ucma_write\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/infiniband/core/ucma.c\00", [33 x i8] zeroinitializer }, align 32
@ucma_write._entry_ptr = internal global ptr @ucma_write._entry, section ".printk_index", align 4
@ucma_cmd_table = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @ucma_create_id, ptr @ucma_destroy_id, ptr @ucma_bind_ip, ptr @ucma_resolve_ip, ptr @ucma_resolve_route, ptr @ucma_query_route, ptr @ucma_connect, ptr @ucma_listen, ptr @ucma_accept, ptr @ucma_reject, ptr @ucma_disconnect, ptr @ucma_init_qp_attr, ptr @ucma_get_event, ptr null, ptr @ucma_set_option, ptr @ucma_notify, ptr @ucma_join_ip_multicast, ptr @ucma_leave_multicast, ptr @ucma_migrate_id, ptr @ucma_query, ptr @ucma_bind, ptr @ucma_resolve_addr, ptr @ucma_join_multicast], [36 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ucma_alloc_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&ctx->close_work)\00", [60 x i8] zeroinitializer }, align 32
@ucma_alloc_ctx.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->mutex\00", [20 x i8] zeroinitializer }, align 32
@ctx_table = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ctx_table.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@multicast_table = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"multicast_table.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@max_backlog = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@ucma_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&file->poll_wait\00", [47 x i8] zeroinitializer }, align 32
@ucma_open.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&file->mut\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"abi_version\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ucma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rdma_ucm: couldn't create abi_version attr\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ucma_init\00", [22 x i8] zeroinitializer }, align 32
@ucma_init._entry_ptr = internal global ptr @ucma_init._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net/rdma_ucm\00", [19 x i8] zeroinitializer }, align 32
@ucma_ctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.25, ptr @max_backlog, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ucma_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.4, i32 1868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rdma_ucm: couldn't register sysctl paths\0A\00", [52 x i8] zeroinitializer }, align 32
@ucma_init._entry_ptr.24 = internal global ptr @ucma_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_backlog\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 262, i64 273, i64 319]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 28, i64 35]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"rdma_cma_client\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1839, i32 25 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"ucma_ctl_table_hdr\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 65, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"ucma_misc\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1824, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"dev_attr_abi_version\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1840, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"ucma_fops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1815, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1827, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1723, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"ucma_cmd_table\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1687, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 230, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 214, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 156, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 201, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 207, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"ctx_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 87, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 121, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"multicast_table\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 122, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"max_backlog\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 63, i32 21 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1782, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1783, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1850, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1848, i32 25 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1862, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1866, i32 54 }
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"ucma_ctl_table\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 66, i32 25 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1868, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [34 x i8] c"../drivers/infiniband/core/ucma.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 68, i32 15 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias521, ptr @__UNIQUE_ID_author502, ptr @__UNIQUE_ID_description503, ptr @__UNIQUE_ID_file504, ptr @__UNIQUE_ID_license505, ptr @__exitcall_ucma_cleanup, ptr @__initcall__kmod_rdma_ucm__522_1895_ucma_init6, ptr @ucma_cleanup, ptr @ucma_init._entry, ptr @ucma_init._entry.22, ptr @ucma_init._entry_ptr, ptr @ucma_init._entry_ptr.24, ptr @ucma_write._entry, ptr @ucma_write._entry_ptr, ptr @rdma_cma_client, ptr @ucma_ctl_table_hdr, ptr @ucma_misc, ptr @dev_attr_abi_version, ptr @.str, ptr @ucma_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ucma_cmd_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ucma_alloc_ctx.__key, ptr @.str.8, ptr @ucma_alloc_ctx.__key.9, ptr @.str.10, ptr @ctx_table, ptr @init_completion.__key, ptr @.str.11, ptr @.str.12, ptr @multicast_table, ptr @.str.13, ptr @max_backlog, ptr @ucma_open.__key, ptr @.str.14, ptr @ucma_open.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ucma_ctl_table, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_cma_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_ctl_table_hdr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_abi_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_cmd_table to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_alloc_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_alloc_ctx.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multicast_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_backlog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_open.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_ctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucma_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucma_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_unregister_client(ptr noundef nonnull @rdma_cma_client) #11
  %0 = load ptr, ptr @ucma_ctl_table_hdr, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #11
  %1 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @ucma_misc, i32 0, i32 5), align 4
  tail call void @device_remove_file(ptr noundef %1, ptr noundef nonnull @dev_attr_abi_version) #11
  tail call void @misc_deregister(ptr noundef nonnull @ucma_misc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @ucma_misc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @ucma_misc, i32 0, i32 5), align 4
  %call1 = tail call i32 @device_create_file(ptr noundef %0, ptr noundef nonnull @dev_attr_abi_version) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  br label %err1

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.21, ptr noundef nonnull @ucma_ctl_table) #11
  store ptr %call6, ptr @ucma_ctl_table_hdr, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %err2

if.end14:                                         ; preds = %if.end5
  %call15 = tail call i32 @ib_register_client(ptr noundef nonnull @rdma_cma_client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %err3

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err3:                                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load ptr, ptr @ucma_ctl_table_hdr, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #11
  br label %err2

err2:                                             ; preds = %err3, %do.end11
  %ret.0 = phi i32 [ %call15, %err3 ], [ -12, %do.end11 ]
  %2 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @ucma_misc, i32 0, i32 5), align 4
  tail call void @device_remove_file(ptr noundef %2, ptr noundef nonnull @dev_attr_abi_version) #11
  br label %err1

err1:                                             ; preds = %err2, %do.end
  %ret.1 = phi i32 [ %call1, %do.end ], [ %ret.0, %err2 ]
  tail call void @misc_deregister(ptr noundef nonnull @ucma_misc) #11
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ucma_get_global_nl_info(ptr nocapture noundef writeonly %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %abi = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 3
  %0 = ptrtoint ptr %abi to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4, ptr %abi, align 8
  %1 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @ucma_misc, i32 0, i32 5), align 4
  %cdev = getelementptr inbounds %struct.ib_client_nl_info, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cdev, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %pos) #3 align 64 {
entry:
  %hdr = alloca %struct.rdma_ucm_cmd_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdr) #11
  %2 = getelementptr inbounds %struct.rdma_ucm_cmd_hdr, ptr %hdr, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rdma_ucm_cmd_hdr, ptr %hdr, i32 0, i32 2
  %f_cred.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 12
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %hdr, align 8
  %5 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_cred.i, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred.i, align 16
  %cmp.i = icmp eq ptr %6, %12
  br i1 %cmp.i, label %if.end18, label %land.end

land.end:                                         ; preds = %entry
  %.b65 = load i1, ptr @ucma_write.__already_done, align 1
  br i1 %.b65, label %land.end.cleanup_crit_edge, label %if.then5, !prof !96

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ucma_write.__already_done, align 1
  %13 = tail call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %16, i32 noundef 1, ptr noundef null) #11
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call.i, ptr noundef %comm) #14
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp = icmp ult i32 %len, 8
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end8.i.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end18
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 8, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 8) #11
  %20 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %buf, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end24, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i68 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i68
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %sub.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i68)
  br label %cleanup

if.end24:                                         ; preds = %if.end.i.i
  %24 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %25)
  %cmp25 = icmp ugt i32 %25, 22
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %26 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %25, i32 23) #11, !srcloc !101
  %and = and i32 %26, %25
  %27 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and, ptr %hdr, align 8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %2, align 4
  %conv = zext i16 %29 to i32
  %add = add nuw nsw i32 %conv, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp38 = icmp ugt i32 %add, %len
  br i1 %cmp38, label %if.end27.cleanup_crit_edge, label %if.end41

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and)
  %tobool43.not = icmp eq i32 %and, 13
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [23 x ptr], ptr @ucma_cmd_table, i32 0, i32 %and
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %3, align 2
  %conv50 = zext i16 %33 to i32
  %call51 = call i32 %31(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %conv50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  %spec.select = select i1 %tobool52.not, i32 %len, i32 %call51
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end41.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then11.i.i, %if.end18.cleanup_crit_edge, %if.then5, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end45 ], [ -13, %if.then5 ], [ -13, %land.end.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -38, %if.end41.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_poll(ptr noundef %filp, ptr noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %poll_wait = getelementptr inbounds %struct.ucma_file, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %poll_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %poll_wait, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %event_list = getelementptr inbounds %struct.ucma_file, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %5, %event_list
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_open(ptr noundef %inode, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 164) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %event_list = getelementptr inbounds %struct.ucma_file, ptr %call7.i, i32 0, i32 3
  %1 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %event_list, ptr %event_list, align 8
  %prev.i = getelementptr inbounds %struct.ucma_file, ptr %call7.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %event_list, ptr %prev.i, align 4
  %ctx_list = getelementptr inbounds %struct.ucma_file, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ctx_list, ptr %ctx_list, align 8
  %prev.i14 = getelementptr inbounds %struct.ucma_file, ptr %call7.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx_list, ptr %prev.i14, align 4
  %poll_wait = getelementptr inbounds %struct.ucma_file, ptr %call7.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %poll_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @ucma_open.__key) #11
  tail call void @__mutex_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @ucma_open.__key.15) #11
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %private_data, align 4
  %filp4 = getelementptr inbounds %struct.ucma_file, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %filp4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %filp, ptr %filp4, align 4
  %call5 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctx_list = getelementptr inbounds %struct.ucma_file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ctx_list, align 4
  %cmp.i.not32 = icmp eq ptr %3, %ctx_list
  br i1 %cmp.i.not32, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %8, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -184
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ctx_table) #11
  %call.i = tail call ptr @__xa_cmpxchg(ptr noundef nonnull @ctx_table, i32 noundef %6, ptr noundef %add.ptr, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  %cmp.not = icmp eq ptr %call.i, %add.ptr
  br i1 %cmp.not, label %while.body.if.end_crit_edge, label %do.end, !prof !96

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1808, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %call25 = tail call fastcc i32 @ucma_destroy_private_ctx(ptr noundef %add.ptr)
  %7 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %ctx_list, align 4
  %cmp.i.not = icmp eq ptr %8, %ctx_list
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_create_id(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_create_id, align 8
  %resp = alloca %struct.rdma_ucm_create_id_resp, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.rdma_ucm_create_id, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rdma_ucm_create_id, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rdma_ucm_create_id, ptr %cmd, i32 0, i32 3
  %3 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #11
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %resp, align 4, !annotation !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %out_len)
  %cmp = icmp ult i32 %out_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 24, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 24) #11
  %6 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i57 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i57
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i57)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.end2.cleanup_crit_edge [
    i16 262, label %if.end2.if.end6_crit_edge
    i16 273, label %if.end2.sw.bb1.i_crit_edge
    i16 2, label %if.end2.sw.bb1.i_crit_edge66
    i16 319, label %sw.bb2.i
  ]

if.end2.sw.bb1.i_crit_edge66:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

if.end2.sw.bb1.i_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end2.sw.bb1.i_crit_edge, %if.end2.sw.bb1.i_crit_edge66
  br label %if.end6

sw.bb2.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %2, align 2
  %conv4.i = zext i8 %14 to i32
  br label %if.end6

if.end6:                                          ; preds = %sw.bb2.i, %sw.bb1.i, %if.end2.if.end6_crit_edge
  %conv4.sink.i = phi i32 [ %conv4.i, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 2, %if.end2.if.end6_crit_edge ]
  %call7 = call fastcc ptr @ucma_alloc_ctx(ptr noundef %file)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cmd, align 8
  %uid11 = getelementptr inbounds %struct.ucma_context, ptr %call7, i32 0, i32 8
  %17 = ptrtoint ptr %uid11 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %uid11, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 8
  %conv = zext i16 %19 to i32
  %call12 = call ptr @rdma_create_user_id(ptr noundef nonnull @ucma_event_handler, ptr noundef nonnull %call7, i32 noundef %conv, i32 noundef %conv4.sink.i) #11
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call12 to i32
  br label %err1

if.end16:                                         ; preds = %if.end10
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call7, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  %21 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %ref.i, align 4
  %cm_id1.i = getelementptr inbounds %struct.ucma_context, ptr %call7, i32 0, i32 6
  %22 = ptrtoint ptr %cm_id1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12, ptr %cm_id1.i, align 4
  %23 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call7, align 8
  %25 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %resp, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %0, align 8
  %conv21 = trunc i64 %27 to i32
  %28 = inttoptr i32 %conv21 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i49 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i49, label %if.end16.err1_crit_edge, label %if.end.i.i52

if.end16.err1_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %err1

if.end.i.i52:                                     ; preds = %if.end16
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 4, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i50 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i50)
  %cmp.i6.i51 = icmp eq i32 %asmresult.i.i50, 0
  br i1 %cmp.i6.i51, label %copy_to_user.exit, label %if.end.i.i52.err1_crit_edge

if.end.i.i52.err1_crit_edge:                      ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %err1

copy_to_user.exit:                                ; preds = %if.end.i.i52
  %call.i.i.i53 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 4) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %28, ptr noundef nonnull %resp, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool23.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool23.not, label %if.end25, label %copy_to_user.exit.err1_crit_edge

copy_to_user.exit.err1_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err1

if.end25:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_lock_nested(ptr noundef %file, i32 noundef 0) #11
  call fastcc void @ucma_finish_ctx(ptr noundef nonnull %call7)
  call void @mutex_unlock(ptr noundef %file) #11
  br label %cleanup

err1:                                             ; preds = %copy_to_user.exit.err1_crit_edge, %if.end.i.i52.err1_crit_edge, %if.end16.err1_crit_edge, %if.then14
  %ret.0 = phi i32 [ %20, %if.then14 ], [ -14, %copy_to_user.exit.err1_crit_edge ], [ -14, %if.end16.err1_crit_edge ], [ -14, %if.end.i.i52.err1_crit_edge ]
  %call27 = call fastcc i32 @ucma_destroy_private_ctx(ptr noundef nonnull %call7)
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end25, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err1 ], [ 0, %if.end25 ], [ -28, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_destroy_id(ptr noundef readnone %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_destroy_id, align 8
  %resp = alloca %struct.rdma_ucm_destroy_id_resp, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.rdma_ucm_destroy_id, ptr %cmd, i32 0, i32 1
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %out_len)
  %cmp = icmp ult i32 %out_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 16, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 16) #11
  %3 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i48 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i48
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i48)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @_raw_spin_lock(ptr noundef nonnull @ctx_table) #11
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 8
  %call.i = call ptr @xa_load(ptr noundef nonnull @ctx_table, i32 noundef %8) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end2.if.then15_crit_edge, label %if.else.i

if.end2.if.then15_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.else.i:                                        ; preds = %if.end2
  %file2.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %file2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %file2.i, align 8
  %cmp.not.i = icmp eq ptr %10, %file
  br i1 %cmp.not.i, label %_ucma_find_context.exit, label %if.else.i.if.then15_crit_edge

if.else.i.if.then15_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

_ucma_find_context.exit:                          ; preds = %if.else.i
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_ucma_find_context.exit.if.then15_crit_edge, label %if.then5

_ucma_find_context.exit.if.then15_crit_edge:      ; preds = %_ucma_find_context.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then5:                                         ; preds = %_ucma_find_context.exit
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i, align 8
  %call8 = call ptr @__xa_cmpxchg(ptr noundef nonnull @ctx_table, i32 noundef %12, ptr noundef nonnull %call.i, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  %cmp9.not = icmp eq ptr %call8, %call.i
  br i1 %cmp9.not, label %if.end17, label %if.then5.if.then15_crit_edge

if.then5.if.then15_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then15:                                        ; preds = %if.then5.if.then15_crit_edge, %_ucma_find_context.exit.if.then15_crit_edge, %if.else.i.if.then15_crit_edge, %if.end2.if.then15_crit_edge
  %ctx.055 = phi ptr [ %call.i, %_ucma_find_context.exit.if.then15_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.if.then15_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end2.if.then15_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then5.if.then15_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  %13 = ptrtoint ptr %ctx.055 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.then5
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  %call18 = call fastcc i32 @ucma_destroy_private_ctx(ptr noundef nonnull %call.i)
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call18, ptr %resp, align 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cmd, align 8
  %conv21 = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv21 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i39 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i39, label %if.end17.cleanup_crit_edge, label %if.end.i.i42

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i42:                                     ; preds = %if.end17
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 4, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i40 = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i40)
  %cmp.i6.i41 = icmp eq i32 %asmresult.i.i40, 0
  br i1 %cmp.i6.i41, label %copy_to_user.exit, label %if.end.i.i42.cleanup_crit_edge

if.end.i.i42.cleanup_crit_edge:                   ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i43 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 4) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %resp, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool23.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool23.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i42.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then15, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then15 ], [ -28, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end17.cleanup_crit_edge ], [ -14, %if.end.i.i42.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_bind_ip(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_bind_ip, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 40, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 40) #11
  %2 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 40) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i22 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %entry.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.0.i.i22
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i22)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %addr = getelementptr inbounds %struct.rdma_ucm_bind_ip, ptr %cmd, i32 0, i32 1
  %call1 = call i32 @rdma_addr_size_in6(ptr noundef %addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.rdma_ucm_bind_ip, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %call5 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %7)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 6
  %9 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cm_id, align 4
  %call11 = call i32 @rdma_bind_addr(ptr noundef %10, ptr noundef %addr) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %8, %if.then7 ], [ -22, %if.end.cleanup_crit_edge ], [ %call11, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call11, %if.then10.i.i.i.i ], [ %call11, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_resolve_ip(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_resolve_ip, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 64)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 64, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 64) #11
  %2 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 64) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i27 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %entry.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i27
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i27)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @rdma_addr_size_in6(ptr noundef nonnull %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %dst_addr = getelementptr inbounds %struct.rdma_ucm_resolve_ip, ptr %cmd, i32 0, i32 1
  %call5 = call i32 @rdma_addr_size_in6(ptr noundef %dst_addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %id = getelementptr inbounds %struct.rdma_ucm_resolve_ip, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call9 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %9)
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 6
  %11 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cm_id, align 4
  %timeout_ms = getelementptr inbounds %struct.rdma_ucm_resolve_ip, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout_ms, align 4
  %call16 = call i32 @rdma_resolve_addr(ptr noundef %12, ptr noundef nonnull %cmd, ptr noundef %dst_addr, i32 noundef %14) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then11, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %10, %if.then11 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call16, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call16, %if.then10.i.i.i.i ], [ %call16, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_resolve_route(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_resolve_route, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !102
  %1 = getelementptr inbounds %struct.rdma_ucm_resolve_route, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !102
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 8, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 8) #11
  %4 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i20 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i20
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i20)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  %call.i = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %9) #11
  %cmp.i.i15 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i15, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %cm_id.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cm_id.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end5

if.then2.i:                                       ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i16, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then3_crit_edge, label %if.then10.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.if.then3_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %if.then3

if.then.i.i16:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i.i) #11
  br label %if.then3

if.then3:                                         ; preds = %if.then.i.i16, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i25 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i16 ], [ %call.i, %if.end.if.then3_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i25 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cm_id, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %call6 = call i32 @rdma_resolve_route(ptr noundef %17, i32 noundef %19) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then3, %if.then11.i.i
  %retval.0 = phi i32 [ %15, %if.then3 ], [ %call6, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call6, %if.then10.i.i.i.i ], [ %call6, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_query_route(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_query, align 8
  %resp = alloca %struct.rdma_ucm_query_route_resp, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.rdma_ucm_query, ptr %cmd, i32 0, i32 1
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %resp) #11
  %2 = call ptr @memset(ptr %resp, i32 255, i32 208)
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %out_len)
  %cmp = icmp ult i32 %out_len, 200
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 16, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 16) #11
  %4 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i132 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i132
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i132)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 8
  %call3 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %9)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call3, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %11 = call ptr @memset(ptr %resp, i32 0, i32 208)
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call3, i32 0, i32 6
  %12 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cm_id, align 4
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %13, i32 0, i32 4
  %src_addr9 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 2
  %14 = ptrtoint ptr %route to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %route, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp10 = icmp eq i16 %15, 2
  %cond = select i1 %cmp10, i32 16, i32 28
  %16 = call ptr @memcpy(ptr %src_addr9, ptr %route, i32 %cond)
  %17 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cm_id, align 4
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %18, i32 0, i32 4, i32 0, i32 1
  %dst_addr15 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 3
  %19 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dst_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %20)
  %cmp18 = icmp eq i16 %20, 2
  %cond20 = select i1 %cmp18, i32 16, i32 28
  %21 = call ptr @memcpy(ptr %dst_addr15, ptr %dst_addr, i32 %cond20)
  %22 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cm_id, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool22.not = icmp eq ptr %25, null
  br i1 %tobool22.not, label %if.end7.out_crit_edge, label %if.end24

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end24:                                         ; preds = %if.end7
  %node_guid = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %node_guid to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %node_guid, align 8
  %28 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %resp, align 8
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %23, align 4
  %index = getelementptr inbounds %struct.ib_device, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 8
  %ibdev_index = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 7
  %33 = ptrtoint ptr %ibdev_index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ibdev_index, align 8
  %34 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cm_id, align 4
  %port_num = getelementptr inbounds %struct.rdma_cm_id, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_num, align 4
  %conv31 = trunc i32 %37 to i8
  %port_num32 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 5
  %38 = ptrtoint ptr %port_num32 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv31, ptr %port_num32, align 4
  %39 = load ptr, ptr %cm_id, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %port_num36 = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 7
  %42 = ptrtoint ptr %port_num36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_num36, align 4
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %41, i32 0, i32 11
  %44 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %45, i32 %43, i32 1, i32 2
  %46 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end24
  %num_paths.i = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_paths.i, align 4
  %num_paths1.i = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 4
  %50 = ptrtoint ptr %num_paths1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %num_paths1.i, align 8
  %51 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %49, label %if.then38.out_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb8.i
    i32 1, label %if.then38.sw.bb12.i_crit_edge
  ]

if.then38.sw.bb12.i_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb.i:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %dev_addr3.i = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 0, i32 2
  %ib_route.i = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1
  %dst_dev_addr.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 0, i32 2, i32 1
  %dev_type.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %dev_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dev_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %53)
  %cmp.i.i.i = icmp eq i16 %53, 32
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 4, i32 0
  %add.ptr.i.i113 = getelementptr i8, ptr %dst_dev_addr.i.i, i32 %cond.i.i.i
  %54 = call ptr @memcpy(ptr %ib_route.i, ptr %add.ptr.i.i113, i32 16)
  %sgid.i = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1
  %add.ptr.i31.i = getelementptr i8, ptr %dev_addr3.i, i32 %cond.i.i.i
  %55 = call ptr @memcpy(ptr %sgid.i, ptr %add.ptr.i31.i, i32 16)
  %arrayidx.i.i = getelementptr %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 0, i32 2, i32 2, i32 8
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.i, align 4
  %conv1.i.i = zext i8 %57 to i16
  %shl.i.i = shl nuw i16 %conv1.i.i, 8
  %arrayidx3.i.i = getelementptr %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 0, i32 2, i32 2, i32 9
  %58 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx3.i.i, align 1
  %conv5.i.i = zext i8 %59 to i16
  %or.i.i = or i16 %shl.i.i, %conv5.i.i
  %pkey.i = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 8
  %60 = ptrtoint ptr %pkey.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %or.i.i, ptr %pkey.i, align 4
  br label %out

sw.bb8.i:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 1
  %path_rec.i = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %path_rec.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %path_rec.i, align 4
  %arrayidx11.i = getelementptr %struct.sa_path_rec, ptr %62, i32 1
  call void @ib_copy_path_rec_to_user(ptr noundef %arrayidx10.i, ptr noundef %arrayidx11.i) #11
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %sw.bb8.i, %if.then38.sw.bb12.i_crit_edge
  %ib_route13.i = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1
  %path_rec15.i = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %path_rec15.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %path_rec15.i, align 4
  call void @ib_copy_path_rec_to_user(ptr noundef %ib_route13.i, ptr noundef %64) #11
  br label %out

if.else:                                          ; preds = %if.end24
  %and.i116 = and i32 %47, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.i117.not = icmp eq i32 %and.i116, 0
  br i1 %tobool.i117.not, label %if.else49, label %if.then46

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %route48 = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4
  call fastcc void @ucma_copy_iboe_route(ptr noundef nonnull %resp, ptr noundef %route48)
  br label %out

if.else49:                                        ; preds = %if.else
  %and.i120 = and i32 %47, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.i121.not = icmp eq i32 %and.i120, 0
  br i1 %tobool.i121.not, label %if.else49.out_crit_edge, label %if.then55

if.else49.out_crit_edge:                          ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then55:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  %dev_addr1.i = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 0, i32 2
  %ib_route.i122 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1
  %dst_dev_addr.i.i123 = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 0, i32 2, i32 1
  %dev_type.i.i.i124 = getelementptr inbounds %struct.rdma_cm_id, ptr %39, i32 0, i32 4, i32 0, i32 2, i32 3
  %65 = ptrtoint ptr %dev_type.i.i.i124 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %dev_type.i.i.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %66)
  %cmp.i.i.i125 = icmp eq i16 %66, 32
  %cond.i.i.i126 = select i1 %cmp.i.i.i125, i32 4, i32 0
  %add.ptr.i.i127 = getelementptr i8, ptr %dst_dev_addr.i.i123, i32 %cond.i.i.i126
  %67 = call ptr @memcpy(ptr %ib_route.i122, ptr %add.ptr.i.i127, i32 16)
  %sgid.i128 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1
  %add.ptr.i9.i = getelementptr i8, ptr %dev_addr1.i, i32 %cond.i.i.i126
  %68 = call ptr @memcpy(ptr %sgid.i128, ptr %add.ptr.i9.i, i32 16)
  br label %out

out:                                              ; preds = %if.then55, %if.else49.out_crit_edge, %if.then46, %sw.bb12.i, %sw.bb.i, %if.then38.out_crit_edge, %if.end7.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #11
  %69 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %cmd, align 8
  %conv65 = trunc i64 %70 to i32
  %71 = inttoptr i32 %conv65 to ptr
  %72 = call i32 @llvm.umin.i32(i32 %out_len, i32 208)
  call void @__check_object_size(ptr noundef nonnull %resp, i32 noundef %72, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i107 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i107, label %out.copy_to_user.exit_crit_edge, label %if.end.i.i110

out.copy_to_user.exit_crit_edge:                  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i110:                                    ; preds = %out
  %73 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %71, i32 %72, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i108 = extractvalue { i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i108)
  %cmp.i6.i109 = icmp eq i32 %asmresult.i.i108, 0
  br i1 %cmp.i6.i109, label %if.then2.i.i, label %if.end.i.i110.copy_to_user.exit_crit_edge

if.end.i.i110.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i111 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef %72) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %71, ptr noundef nonnull %resp, i32 noundef %72) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i110.copy_to_user.exit_crit_edge, %out.copy_to_user.exit_crit_edge
  %n.addr.0.i112 = phi i32 [ %72, %out.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %72, %if.end.i.i110.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i112)
  %tobool71.not = icmp eq i32 %n.addr.0.i112, 0
  %ret.0 = select i1 %tobool71.not, i32 0, i32 -14
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call3, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i129, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i129:                                     ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call3, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i129, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then5, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ -28, %entry.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i129 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %resp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_connect(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %conn_param = alloca %struct.rdma_conn_param, align 4
  %ece = alloca %struct.rdma_ucm_ece, align 8
  %cmd = alloca %struct.rdma_ucm_connect, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param) #11
  %0 = getelementptr inbounds i8, ptr %conn_param, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ece) #11
  %2 = ptrtoint ptr %ece to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ece, align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %cmd) #11
  %3 = call ptr @memset(ptr %cmd, i32 255, i32 288)
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %in_len)
  %cmp = icmp ult i32 %in_len, 280
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.umin.i32(i32 %in_len, i32 288)
  call void @__check_object_size(ptr noundef nonnull %cmd, i32 noundef %4, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 %4, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef %4) #11
  %6 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef %4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i46 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %4, %if.end.if.then11.i.i_crit_edge ], [ %4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %4, %res.0.i.i46
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i46)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %valid = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 10
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %id = getelementptr inbounds %struct.rdma_ucm_connect, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %call.i = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %13) #11
  %cmp.i.i39 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i39, label %if.end7.if.then10_crit_edge, label %if.end.i

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.end.i:                                         ; preds = %if.end7
  %cm_id.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cm_id.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end12

if.then2.i:                                       ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i40, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then10_crit_edge, label %if.then10.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.if.then10_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %if.then10

if.then.i.i40:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i.i) #11
  br label %if.then10

if.then10:                                        ; preds = %if.then.i.i40, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  %retval.0.i51 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.then10_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i40 ], [ %call.i, %if.end7.if.then10_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i51 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cm_id, align 4
  %private_data.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 2
  %22 = ptrtoint ptr %conn_param to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %private_data.i, ptr %conn_param, align 4
  %private_data_len.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 3
  %23 = ptrtoint ptr %private_data_len.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %private_data_len.i, align 4
  %private_data_len2.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 1
  %25 = ptrtoint ptr %private_data_len2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %private_data_len2.i, align 4
  %responder_resources.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 5
  %26 = ptrtoint ptr %responder_resources.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %responder_resources.i, align 2
  %responder_resources3.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 2
  %28 = ptrtoint ptr %responder_resources3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %responder_resources3.i, align 1
  %initiator_depth.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 6
  %29 = ptrtoint ptr %initiator_depth.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %initiator_depth.i, align 1
  %initiator_depth4.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 3
  %31 = ptrtoint ptr %initiator_depth4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %initiator_depth4.i, align 2
  %flow_control.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 7
  %32 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flow_control.i, align 4
  %flow_control5.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 4
  %34 = ptrtoint ptr %flow_control5.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %flow_control5.i, align 1
  %retry_count.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 8
  %35 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %retry_count.i, align 1
  %retry_count6.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 5
  %37 = ptrtoint ptr %retry_count6.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %retry_count6.i, align 4
  %rnr_retry_count.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 9
  %38 = ptrtoint ptr %rnr_retry_count.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rnr_retry_count.i, align 2
  %rnr_retry_count7.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 6
  %40 = ptrtoint ptr %rnr_retry_count7.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %rnr_retry_count7.i, align 1
  %srq.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 4
  %41 = ptrtoint ptr %srq.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %srq.i, align 1
  %srq8.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 7
  %43 = ptrtoint ptr %srq8.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %srq8.i, align 2
  %44 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmd, align 4
  %and.i = and i32 %45, 16777215
  %qp_num9.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 8
  %46 = ptrtoint ptr %qp_num9.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i, ptr %qp_num9.i, align 4
  %route.i = getelementptr inbounds %struct.rdma_cm_id, ptr %21, i32 0, i32 4
  %47 = ptrtoint ptr %route.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %route.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %48)
  %cmp.i41 = icmp eq i16 %48, 27
  br i1 %cmp.i41, label %cond.true.i, label %if.end12.ucma_copy_conn_param.exit_crit_edge

if.end12.ucma_copy_conn_param.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_copy_conn_param.exit

cond.true.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %qkey.i = getelementptr inbounds %struct.rdma_ucm_conn_param, ptr %cmd, i32 0, i32 1
  %49 = ptrtoint ptr %qkey.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qkey.i, align 4
  br label %ucma_copy_conn_param.exit

ucma_copy_conn_param.exit:                        ; preds = %cond.true.i, %if.end12.ucma_copy_conn_param.exit_crit_edge
  %cond.i = phi i32 [ %50, %cond.true.i ], [ 0, %if.end12.ucma_copy_conn_param.exit_crit_edge ]
  %qkey11.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 9
  %51 = ptrtoint ptr %qkey11.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond.i, ptr %qkey11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %4)
  %cmp14 = icmp ugt i32 %4, 287
  br i1 %cmp14, label %if.then15, label %ucma_copy_conn_param.exit.if.end20_crit_edge

ucma_copy_conn_param.exit.if.end20_crit_edge:     ; preds = %ucma_copy_conn_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then15:                                        ; preds = %ucma_copy_conn_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ece16 = getelementptr inbounds %struct.rdma_ucm_connect, ptr %cmd, i32 0, i32 3
  %52 = ptrtoint ptr %ece16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ece16, align 4
  %54 = ptrtoint ptr %ece to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ece, align 8
  %attr_mod = getelementptr inbounds %struct.rdma_ucm_connect, ptr %cmd, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %attr_mod to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %attr_mod, align 4
  %attr_mod19 = getelementptr inbounds %struct.rdma_ucm_ece, ptr %ece, i32 0, i32 1
  %57 = ptrtoint ptr %attr_mod19 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %attr_mod19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %ucma_copy_conn_param.exit.if.end20_crit_edge
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %58 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cm_id, align 4
  %call22 = call i32 @rdma_connect_ece(ptr noundef %59, ptr noundef nonnull %conn_param, ptr noundef nonnull %ece) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i42, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i42:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i42, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then10, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call22, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call22, %if.then10.i.i.i.i ], [ %call22, %if.then.i42 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %cmd) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ece) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_listen(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_listen, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !102
  %1 = getelementptr inbounds %struct.rdma_ucm_listen, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !102
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 8, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 8) #11
  %4 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i27 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i27
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i27)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  %call1 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %9)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.end5.if.then8_crit_edge, label %lor.lhs.false

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end5
  %13 = load i32, ptr @max_backlog, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp7 = icmp ugt i32 %12, %13
  br i1 %cmp7, label %lor.lhs.false.if.then8_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %14 = load i32, ptr @max_backlog, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false.if.end10_crit_edge
  %backlog11 = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %call.i.i24 = call zeroext i1 @__kasan_check_write(ptr noundef %backlog11, i32 noundef 4) #11
  %18 = ptrtoint ptr %backlog11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %17, ptr %backlog11, align 4
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 6
  %19 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cm_id, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %call14 = call i32 @rdma_listen(ptr noundef %20, i32 noundef %22) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then3, %if.then11.i.i
  %retval.0 = phi i32 [ %10, %if.then3 ], [ %call14, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call14, %if.then10.i.i.i.i ], [ %call14, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_accept(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_accept, align 8
  %conn_param = alloca %struct.rdma_conn_param, align 4
  %ece = alloca %struct.rdma_ucm_ece, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 296)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param) #11
  %1 = call ptr @memset(ptr %conn_param, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ece) #11
  %2 = ptrtoint ptr %ece to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ece, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %in_len)
  %cmp = icmp ult i32 %in_len, 288
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.umin.i32(i32 %in_len, i32 296)
  call void @__check_object_size(ptr noundef nonnull %cmd, i32 noundef %3, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 %3, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef %3) #11
  %5 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef %3) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i67 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %3, %if.end.if.then11.i.i_crit_edge ], [ %3, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %3, %res.0.i.i67
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i67)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %id = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %call.i = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %10) #11
  %cmp.i.i60 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i60, label %if.end3.if.then6_crit_edge, label %if.end.i

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.i:                                         ; preds = %if.end3
  %cm_id.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cm_id.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end8

if.then2.i:                                       ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i61, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then6_crit_edge, label %if.then10.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.if.then6_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %if.then6

if.then.i.i61:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i.i) #11
  br label %if.then6

if.then6:                                         ; preds = %if.then.i.i61, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %retval.0.i72 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.then6_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i61 ], [ %call.i, %if.end3.if.then6_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i72 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 295, i32 %3)
  %cmp9 = icmp ugt i32 %3, 295
  br i1 %cmp9, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %ece11 = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 4
  %17 = ptrtoint ptr %ece11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ece11, align 8
  %19 = ptrtoint ptr %ece to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ece, align 8
  %attr_mod = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %attr_mod to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attr_mod, align 4
  %attr_mod14 = getelementptr inbounds %struct.rdma_ucm_ece, ptr %ece, i32 0, i32 1
  %22 = ptrtoint ptr %attr_mod14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %attr_mod14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end8.if.end15_crit_edge
  %valid = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 10
  %23 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  %conn_param16 = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cm_id, align 4
  %private_data.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %conn_param to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %private_data.i, ptr %conn_param, align 4
  %private_data_len.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %private_data_len.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %private_data_len.i, align 8
  %private_data_len2.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 1
  %30 = ptrtoint ptr %private_data_len2.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %private_data_len2.i, align 4
  %responder_resources.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %responder_resources.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %responder_resources.i, align 2
  %responder_resources3.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 2
  %33 = ptrtoint ptr %responder_resources3.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %responder_resources3.i, align 1
  %initiator_depth.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %initiator_depth.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %initiator_depth.i, align 1
  %initiator_depth4.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 3
  %36 = ptrtoint ptr %initiator_depth4.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %initiator_depth4.i, align 2
  %flow_control.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 7
  %37 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flow_control.i, align 4
  %flow_control5.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 4
  %39 = ptrtoint ptr %flow_control5.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %flow_control5.i, align 1
  %retry_count.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 8
  %40 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %retry_count.i, align 1
  %retry_count6.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 5
  %42 = ptrtoint ptr %retry_count6.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %retry_count6.i, align 4
  %rnr_retry_count.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 9
  %43 = ptrtoint ptr %rnr_retry_count.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rnr_retry_count.i, align 2
  %rnr_retry_count7.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 6
  %45 = ptrtoint ptr %rnr_retry_count7.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %rnr_retry_count7.i, align 1
  %srq.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %srq.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %srq.i, align 1
  %srq8.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 7
  %48 = ptrtoint ptr %srq8.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %srq8.i, align 2
  %49 = ptrtoint ptr %conn_param16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %conn_param16, align 8
  %and.i = and i32 %50, 16777215
  %qp_num9.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 8
  %51 = ptrtoint ptr %qp_num9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and.i, ptr %qp_num9.i, align 4
  %route.i = getelementptr inbounds %struct.rdma_cm_id, ptr %26, i32 0, i32 4
  %52 = ptrtoint ptr %route.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %route.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %53)
  %cmp.i62 = icmp eq i16 %53, 27
  br i1 %cmp.i62, label %cond.true.i, label %if.then18.ucma_copy_conn_param.exit_crit_edge

if.then18.ucma_copy_conn_param.exit_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_copy_conn_param.exit

cond.true.i:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %qkey.i = getelementptr inbounds %struct.rdma_ucm_accept, ptr %cmd, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %qkey.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qkey.i, align 4
  br label %ucma_copy_conn_param.exit

ucma_copy_conn_param.exit:                        ; preds = %cond.true.i, %if.then18.ucma_copy_conn_param.exit_crit_edge
  %cond.i = phi i32 [ %55, %cond.true.i ], [ 0, %if.then18.ucma_copy_conn_param.exit_crit_edge ]
  %qkey11.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 9
  %56 = ptrtoint ptr %qkey11.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond.i, ptr %qkey11.i, align 4
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %57 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cm_id, align 4
  call void @rdma_lock_handler(ptr noundef %58) #11
  %59 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cm_id, align 4
  %call22 = call i32 @rdma_accept_ece(ptr noundef %60, ptr noundef nonnull %conn_param, ptr noundef nonnull %ece) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %ucma_copy_conn_param.exit.if.end35_crit_edge

ucma_copy_conn_param.exit.if.end35_crit_edge:     ; preds = %ucma_copy_conn_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then24:                                        ; preds = %ucma_copy_conn_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %cmd, align 8
  %uid25 = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 8
  %63 = ptrtoint ptr %uid25 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %uid25, align 8
  br label %if.end35

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %mutex29 = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex29, i32 noundef 0) #11
  %cm_id30 = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %64 = ptrtoint ptr %cm_id30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cm_id30, align 4
  call void @rdma_lock_handler(ptr noundef %65) #11
  %66 = ptrtoint ptr %cm_id30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cm_id30, align 4
  %call32 = call i32 @rdma_accept_ece(ptr noundef %67, ptr noundef null, ptr noundef nonnull %ece) #11
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then24, %ucma_copy_conn_param.exit.if.end35_crit_edge
  %cm_id30.sink = phi ptr [ %cm_id30, %if.else ], [ %cm_id, %if.then24 ], [ %cm_id, %ucma_copy_conn_param.exit.if.end35_crit_edge ]
  %mutex29.sink = phi ptr [ %mutex29, %if.else ], [ %mutex, %if.then24 ], [ %mutex, %ucma_copy_conn_param.exit.if.end35_crit_edge ]
  %ret.0 = phi i32 [ %call32, %if.else ], [ %call22, %if.then24 ], [ %call22, %ucma_copy_conn_param.exit.if.end35_crit_edge ]
  %68 = ptrtoint ptr %cm_id30.sink to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cm_id30.sink, align 4
  call void @rdma_unlock_handler(ptr noundef %69) #11
  call void @mutex_unlock(ptr noundef %mutex29.sink) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i63, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i63:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i63, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then6, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i63 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ece) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param) #11
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_reject(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_reject, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 264)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 264, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 264) #11
  %2 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 264) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i26 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 264, %entry.if.then11.i.i_crit_edge ], [ 264, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 264, %res.0.i.i26
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i26)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %reason = getelementptr inbounds %struct.rdma_ucm_reject, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %reason to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reason, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end4.thread
    i8 28, label %if.end.sw.epilog_crit_edge
    i8 35, label %if.end.sw.epilog_crit_edge32
  ]

if.end.sw.epilog_crit_edge32:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %reason to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 28, ptr %reason, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end4.thread, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge32
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd, align 4
  %call.i = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %11) #11
  %cmp.i.i21 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i21, label %sw.epilog.if.then8_crit_edge, label %if.end.i

sw.epilog.if.then8_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end.i:                                         ; preds = %sw.epilog
  %cm_id.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cm_id.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end10

if.then2.i:                                       ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i22, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then8_crit_edge, label %if.then10.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.if.then8_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %if.then8

if.then.i.i22:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i.i) #11
  br label %if.then8

if.then8:                                         ; preds = %if.then.i.i22, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then8_crit_edge, %sw.epilog.if.then8_crit_edge
  %retval.0.i31 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.then8_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i22 ], [ %call.i, %sw.epilog.if.then8_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i31 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cm_id, align 4
  %private_data = getelementptr inbounds %struct.rdma_ucm_reject, ptr %cmd, i32 0, i32 4
  %private_data_len = getelementptr inbounds %struct.rdma_ucm_reject, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %private_data_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %private_data_len, align 4
  %22 = ptrtoint ptr %reason to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reason, align 1
  %call12 = call i32 @rdma_reject(ptr noundef %19, ptr noundef %private_data, i8 noundef zeroext %21, i8 noundef zeroext %23) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %17, %if.then8 ], [ %call12, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call12, %if.then10.i.i.i.i ], [ %call12, %if.then.i ], [ -14, %if.then11.i.i ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_disconnect(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_disconnect, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !102
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 4, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 4) #11
  %2 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i20 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i20
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i20)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd, align 4
  %call.i = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %7) #11
  %cmp.i.i15 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i15, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %cm_id.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cm_id.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end5

if.then2.i:                                       ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i16, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then3_crit_edge, label %if.then10.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.if.then3_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %if.then3

if.then.i.i16:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i.i) #11
  br label %if.then3

if.then3:                                         ; preds = %if.then.i.i16, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i25 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i16 ], [ %call.i, %if.end.if.then3_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i25 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cm_id, align 4
  %call6 = call i32 @rdma_disconnect(ptr noundef %15) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then3, %if.then11.i.i
  %retval.0 = phi i32 [ %13, %if.then3 ], [ %call6, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call6, %if.then10.i.i.i.i ], [ %call6, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_init_qp_attr(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_init_qp_attr, align 8
  %resp = alloca %struct.ib_uverbs_qp_attr, align 4
  %qp_attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.rdma_ucm_init_qp_attr, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rdma_ucm_init_qp_attr, ptr %cmd, i32 0, i32 2
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %resp) #11
  %3 = getelementptr inbounds i8, ptr %resp, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 140)
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %out_len)
  %cmp = icmp ult i32 %out_len, 144
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 16, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 16) #11
  %6 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i53 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i53
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i53)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp3 = icmp ugt i32 %11, 6
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 8
  %call.i = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %13) #11
  %cmp.i.i48 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i48, label %if.end5.if.then8_crit_edge, label %if.end.i

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.end.i:                                         ; preds = %if.end5
  %cm_id.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cm_id.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end10

if.then2.i:                                       ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i49, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then8_crit_edge, label %if.then10.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.if.then8_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %if.then8

if.then.i.i49:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i.i) #11
  br label %if.then8

if.then8:                                         ; preds = %if.then.i.i49, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %retval.0.i58 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.then8_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i49 ], [ %call.i, %if.end5.if.then8_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i58 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %resp, align 4
  %21 = call ptr @memset(ptr %qp_attr, i32 0, i32 216)
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %24 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %qp_attr, align 8
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cm_id, align 4
  %call14 = call i32 @rdma_init_qp_attr(ptr noundef %26, ptr noundef nonnull %qp_attr, ptr noundef nonnull %resp) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end18, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end18:                                         ; preds = %if.end10
  %27 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cm_id, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  call void @ib_copy_qp_attr_to_user(ptr noundef %30, ptr noundef nonnull %resp, ptr noundef nonnull %qp_attr) #11
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cmd, align 8
  %conv22 = trunc i64 %32 to i32
  %33 = inttoptr i32 %conv22 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i42 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i42, label %if.end18.out_crit_edge, label %if.end.i.i45

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i.i45:                                     ; preds = %if.end18
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 144, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i43 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i43)
  %cmp.i6.i44 = icmp eq i32 %asmresult.i.i43, 0
  br i1 %cmp.i6.i44, label %copy_to_user.exit, label %if.end.i.i45.out_crit_edge

if.end.i.i45.out_crit_edge:                       ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

copy_to_user.exit:                                ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i46 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 144) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %33, ptr noundef nonnull %resp, i32 noundef 144) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool24.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool24.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit, %if.end.i.i45.out_crit_edge, %if.end18.out_crit_edge, %if.end10.out_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end10.out_crit_edge ], [ -14, %if.end18.out_crit_edge ], [ -14, %if.end.i.i45.out_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then8, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then8 ], [ -28, %entry.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr) #11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %resp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_get_event(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_get_event, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cmd, align 8, !annotation !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 324, i32 %out_len)
  %cmp = icmp ult i32 %out_len, 324
  br i1 %cmp, label %entry.cleanup60_crit_edge, label %if.end8.i.i

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 8, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 8) #11
  %2 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i103 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i103
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i103)
  br label %cleanup60

if.end2:                                          ; preds = %if.end.i.i
  call void @mutex_lock_nested(ptr noundef %file, i32 noundef 0) #11
  %event_list = getelementptr inbounds %struct.ucma_file, ptr %file, i32 0, i32 3
  %6 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not126 = icmp eq ptr %7, %event_list
  br i1 %cmp.i.not126, label %while.body.lr.ph, label %if.end2.while.end_crit_edge

if.end2.while.end_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end2
  %filp = getelementptr inbounds %struct.ucma_file, ptr %file, i32 0, i32 1
  %poll_wait = getelementptr inbounds %struct.ucma_file, ptr %file, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %file) #11
  %8 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filp, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %while.body.cleanup60_crit_edge

while.body.cleanup60_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

if.end8:                                          ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 394) #11
  %12 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %event_list, align 4
  %cmp.i95.not = icmp eq ptr %13, %event_list
  br i1 %cmp.i95.not, label %if.then15, label %if.end8.if.end31_crit_edge

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then15:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call17123 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %15 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %event_list, align 4
  %cmp.i97.not124 = icmp eq ptr %16, %event_list
  br i1 %cmp.i97.not124, label %if.then15.if.end22_crit_edge, label %if.then15.if.end27.thread115_crit_edge

if.then15.if.end27.thread115_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.thread115

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  br label %if.end22

if.end22:                                         ; preds = %cleanup.if.end22_crit_edge, %if.then15.if.end22_crit_edge
  %call17125 = phi i32 [ %call17, %cleanup.if.end22_crit_edge ], [ %call17123, %if.then15.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17125)
  %tobool23.not = icmp eq i32 %call17125, 0
  br i1 %tobool23.not, label %cleanup, label %if.end27

cleanup:                                          ; preds = %if.end22
  call void @schedule() #11
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %17 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %event_list, align 4
  %cmp.i97.not = icmp eq ptr %18, %event_list
  br i1 %cmp.i97.not, label %cleanup.if.end22_crit_edge, label %cleanup.if.end27.thread115_crit_edge

cleanup.if.end27.thread115_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.thread115

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end27.thread115:                               ; preds = %cleanup.if.end27.thread115_crit_edge, %if.then15.if.end27.thread115_crit_edge
  call void @finish_wait(ptr noundef %poll_wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end31

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup60

if.end31:                                         ; preds = %if.end27.thread115, %if.end8.if.end31_crit_edge
  call void @mutex_lock_nested(ptr noundef %file, i32 noundef 0) #11
  %19 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %20, %event_list
  br i1 %cmp.i.not, label %if.end31.while.body_crit_edge, label %if.end31.while.end_crit_edge

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end31.while.end_crit_edge, %if.end2.while.end_crit_edge
  %.lcssa = phi ptr [ %7, %if.end2.while.end_crit_edge ], [ %20, %if.end31.while.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %.lcssa, i32 -12
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cmd, align 8
  %conv38 = trunc i64 %22 to i32
  %23 = inttoptr i32 %conv38 to ptr
  %resp = getelementptr i8, ptr %.lcssa, i32 12
  %24 = call i32 @llvm.umin.i32(i32 %out_len, i32 336)
  call void @__check_object_size(ptr noundef %resp, i32 noundef %24, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i88 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i88, label %while.end.copy_to_user.exit_crit_edge, label %if.end.i.i91

while.end.copy_to_user.exit_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i91:                                     ; preds = %while.end
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 %24, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i89 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i89)
  %cmp.i6.i90 = icmp eq i32 %asmresult.i.i89, 0
  br i1 %cmp.i6.i90, label %if.then2.i.i, label %if.end.i.i91.copy_to_user.exit_crit_edge

if.end.i.i91.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i92 = call zeroext i1 @__kasan_check_read(ptr noundef %resp, i32 noundef %24) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef %resp, i32 noundef %24) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i91.copy_to_user.exit_crit_edge, %while.end.copy_to_user.exit_crit_edge
  %n.addr.0.i93 = phi i32 [ %24, %while.end.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %24, %if.end.i.i91.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i93)
  %tobool43.not = icmp eq i32 %n.addr.0.i93, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %file) #11
  br label %cleanup60

if.end46:                                         ; preds = %copy_to_user.exit
  %call.i.i99 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa) #11
  br i1 %call.i.i99, label %if.end.i.i100, label %if.end46.list_del.exit_crit_edge

if.end46.list_del.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i100:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i100, %if.end46.list_del.exit_crit_edge
  %32 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 8
  %events_reported = getelementptr inbounds %struct.ucma_context, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %events_reported to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %events_reported, align 8
  %inc = add i32 %37, 1
  store i32 %inc, ptr %events_reported, align 8
  %mc = getelementptr i8, ptr %.lcssa, i32 -4
  %38 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mc, align 8
  %tobool47.not = icmp eq ptr %39, null
  br i1 %tobool47.not, label %list_del.exit.if.end52_crit_edge, label %if.then48

list_del.exit.if.end52_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then48:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %events_reported50 = getelementptr inbounds %struct.ucma_multicast, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %events_reported50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %events_reported50, align 8
  %inc51 = add i32 %41, 1
  store i32 %inc51, ptr %events_reported50, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %list_del.exit.if.end52_crit_edge
  %event = getelementptr i8, ptr %.lcssa, i32 24
  %42 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp54 = icmp eq i32 %43, 4
  br i1 %cmp54, label %if.then56, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 8
  %backlog = getelementptr inbounds %struct.ucma_context, ptr %45, i32 0, i32 4
  %call.i.i94 = call zeroext i1 @__kasan_check_write(ptr noundef %backlog, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %backlog, i32 1, i32 3, i32 1) #11
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %backlog, ptr %backlog, i32 1, ptr elementtype(i32) %backlog) #11, !srcloc !107
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end52.if.end58_crit_edge
  call void @mutex_unlock(ptr noundef %file) #11
  call void @kfree(ptr noundef %add.ptr) #11
  br label %cleanup60

cleanup60:                                        ; preds = %if.end58, %if.then44, %if.end27, %while.body.cleanup60_crit_edge, %if.then11.i.i, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ -14, %if.then44 ], [ 0, %if.end58 ], [ -28, %entry.cleanup60_crit_edge ], [ -512, %if.end27 ], [ -14, %if.then11.i.i ], [ -11, %while.body.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_set_option(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %sa_path.i.i.i = alloca %struct.sa_path_rec, align 8
  %event.i.i.i = alloca %struct.rdma_cm_event, align 8
  %opa.i.i.i = alloca %struct.sa_path_rec, align 8
  %cmd = alloca %struct.rdma_ucm_set_option, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.rdma_ucm_set_option, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rdma_ucm_set_option, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rdma_ucm_set_option, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rdma_ucm_set_option, ptr %cmd, i32 0, i32 4
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 24, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 24) #11
  %6 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i37 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i37
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i37)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %11)
  %cmp = icmp ugt i32 %11, 8388608
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4, !prof !108

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 8
  %call5 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %13)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cmd, align 8
  %conv13 = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv13 to ptr
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %call15 = call ptr @memdup_user(ptr noundef %17, i32 noundef %19) #11
  %cmp.i31 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call15 to i32
  br label %out

if.end19:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %27 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %22, label %if.end19.ucma_set_option_level.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

if.end19.ucma_set_option_level.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_option_level.exit

sw.bb.i:                                          ; preds = %if.end19
  %mutex.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %28 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %24, label %sw.bb.i.ucma_set_option_id.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb7.i.i
    i32 3, label %sw.bb16.i.i
  ]

sw.bb.i.ucma_set_option_id.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_option_id.exit.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.not.i.i = icmp eq i32 %26, 1
  br i1 %cmp.not.i.i, label %if.end.i.i32, label %sw.bb.i.i.ucma_set_option_id.exit.i_crit_edge

sw.bb.i.i.ucma_set_option_id.exit.i_crit_edge:    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_option_id.exit.i

if.end.i.i32:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 6
  %29 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cm_id.i.i, align 4
  %31 = ptrtoint ptr %call15 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call15, align 1
  %conv.i.i = zext i8 %32 to i32
  call void @rdma_set_service_type(ptr noundef %30, i32 noundef %conv.i.i) #11
  br label %ucma_set_option_id.exit.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp2.not.i.i = icmp eq i32 %26, 4
  br i1 %cmp2.not.i.i, label %if.end5.i.i, label %sw.bb1.i.i.ucma_set_option_id.exit.i_crit_edge

sw.bb1.i.i.ucma_set_option_id.exit.i_crit_edge:   ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_option_id.exit.i

if.end5.i.i:                                      ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id6.i.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 6
  %33 = ptrtoint ptr %cm_id6.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cm_id6.i.i, align 4
  %35 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp ne i32 %36, 0
  %cond.i.i = zext i1 %tobool.not.i.i to i32
  %call.i.i33 = call i32 @rdma_set_reuseaddr(ptr noundef %34, i32 noundef %cond.i.i) #11
  br label %ucma_set_option_id.exit.i

sw.bb7.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp8.not.i.i = icmp eq i32 %26, 4
  br i1 %cmp8.not.i.i, label %if.end11.i.i, label %sw.bb7.i.i.ucma_set_option_id.exit.i_crit_edge

sw.bb7.i.i.ucma_set_option_id.exit.i_crit_edge:   ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_option_id.exit.i

if.end11.i.i:                                     ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id12.i.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 6
  %37 = ptrtoint ptr %cm_id12.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cm_id12.i.i, align 4
  %39 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool13.not.i.i = icmp ne i32 %40, 0
  %cond14.i.i = zext i1 %tobool13.not.i.i to i32
  %call15.i.i = call i32 @rdma_set_afonly(ptr noundef %38, i32 noundef %cond14.i.i) #11
  br label %ucma_set_option_id.exit.i

sw.bb16.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp17.not.i.i = icmp eq i32 %26, 1
  br i1 %cmp17.not.i.i, label %if.end20.i.i, label %sw.bb16.i.i.ucma_set_option_id.exit.i_crit_edge

sw.bb16.i.i.ucma_set_option_id.exit.i_crit_edge:  ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_option_id.exit.i

if.end20.i.i:                                     ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id21.i.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 6
  %41 = ptrtoint ptr %cm_id21.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cm_id21.i.i, align 4
  %43 = ptrtoint ptr %call15 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %call15, align 1
  %call22.i.i = call i32 @rdma_set_ack_timeout(ptr noundef %42, i8 noundef zeroext %44) #11
  br label %ucma_set_option_id.exit.i

ucma_set_option_id.exit.i:                        ; preds = %if.end20.i.i, %sw.bb16.i.i.ucma_set_option_id.exit.i_crit_edge, %if.end11.i.i, %sw.bb7.i.i.ucma_set_option_id.exit.i_crit_edge, %if.end5.i.i, %sw.bb1.i.i.ucma_set_option_id.exit.i_crit_edge, %if.end.i.i32, %sw.bb.i.i.ucma_set_option_id.exit.i_crit_edge, %sw.bb.i.ucma_set_option_id.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call22.i.i, %if.end20.i.i ], [ %call15.i.i, %if.end11.i.i ], [ %call.i.i33, %if.end5.i.i ], [ 0, %if.end.i.i32 ], [ -22, %sw.bb.i.i.ucma_set_option_id.exit.i_crit_edge ], [ -22, %sw.bb1.i.i.ucma_set_option_id.exit.i_crit_edge ], [ -22, %sw.bb7.i.i.ucma_set_option_id.exit.i_crit_edge ], [ -22, %sw.bb16.i.i.ucma_set_option_id.exit.i_crit_edge ], [ -38, %sw.bb.i.ucma_set_option_id.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %ucma_set_option_level.exit

sw.bb2.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cond.i10.i = icmp eq i32 %24, 1
  br i1 %cond.i10.i, label %sw.bb.i11.i, label %sw.bb2.i.ucma_set_option_level.exit_crit_edge

sw.bb2.i.ucma_set_option_level.exit_crit_edge:    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_option_level.exit

sw.bb.i11.i:                                      ; preds = %sw.bb2.i
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %sa_path.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %event.i.i.i) #11
  %rem.i.i.i = urem i32 %26, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp ne i32 %rem.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not46.i.i.i = icmp eq i32 %26, 0
  %or.cond.i.i.i = or i1 %tobool1.not46.i.i.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %sw.bb.i11.i.ucma_set_ib_path.exit.i.i_crit_edge, label %sw.bb.i11.i.for.body.i.i.i_crit_edge

sw.bb.i11.i.for.body.i.i.i_crit_edge:             ; preds = %sw.bb.i11.i
  br label %for.body.i.i.i

sw.bb.i11.i.ucma_set_ib_path.exit.i.i_crit_edge:  ; preds = %sw.bb.i11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_ib_path.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %sw.bb.i11.i.for.body.i.i.i_crit_edge
  %optlen.addr.048.i.i.i = phi i32 [ %sub.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %26, %sw.bb.i11.i.for.body.i.i.i_crit_edge ]
  %path_data.addr.047.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %call15, %sw.bb.i11.i.for.body.i.i.i_crit_edge ]
  %45 = ptrtoint ptr %path_data.addr.047.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %path_data.addr.047.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %46)
  %cmp.i.i.i = icmp eq i32 %46, 43
  br i1 %cmp.i.i.i, label %if.end6.i.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %sub.i.i.i = add i32 %optlen.addr.048.i.i.i, -72
  %incdec.ptr.i.i.i = getelementptr %struct.ib_path_rec_data, ptr %path_data.addr.047.i.i.i, i32 1
  %tobool1.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %for.inc.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_ib_path.exit.i.i

if.end6.i.i.i:                                    ; preds = %for.body.i.i.i
  %cm_id.i.i.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 6
  %47 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cm_id.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool7.not.i.i.i = icmp eq ptr %50, null
  br i1 %tobool7.not.i.i.i, label %if.end6.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge, label %if.end9.i.i.i

if.end6.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_ib_path.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end6.i.i.i
  %path_rec.i.i.i = getelementptr inbounds %struct.ib_path_rec_data, ptr %path_data.addr.047.i.i.i, i32 0, i32 2
  %51 = call ptr @memset(ptr %sa_path.i.i.i, i32 0, i32 80)
  call void @ib_sa_unpack_path(ptr noundef %path_rec.i.i.i, ptr noundef nonnull %sa_path.i.i.i) #11
  %52 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cm_id.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %port_num.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %53, i32 0, i32 7
  %56 = ptrtoint ptr %port_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port_num.i.i.i, align 4
  %port_data.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %55, i32 0, i32 11
  %58 = ptrtoint ptr %port_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port_data.i.i.i.i, align 8
  %core_cap_flags.i.i.i.i = getelementptr %struct.ib_port_data, ptr %59, i32 %57, i32 1, i32 2
  %60 = ptrtoint ptr %core_cap_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %core_cap_flags.i.i.i.i, align 4
  %and.i.i.i.i34 = and i32 %61, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i34)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i34, 0
  br i1 %cmp.i.not.i.i.i, label %if.else.i.i.i, label %if.then13.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end9.i.i.i
  %rec_type.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %sa_path.i.i.i, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %opa.i.i.i) #11
  %62 = call ptr @memset(ptr %opa.i.i.i, i32 255, i32 80)
  %63 = ptrtoint ptr %rec_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rec_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.not.i.i.i.i = icmp eq i32 %64, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then13.i.i.i.sa_convert_path_ib_to_opa.exit.i.i.i_crit_edge

if.then13.i.i.i.sa_convert_path_ib_to_opa.exit.i.i.i_crit_edge: ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa_convert_path_ib_to_opa.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then13.i.i.i
  %65 = call ptr @memcpy(ptr %opa.i.i.i, ptr %sa_path.i.i.i, i32 80)
  %rec_type1.i.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %opa.i.i.i, i32 0, i32 19
  %66 = ptrtoint ptr %rec_type1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %rec_type1.i.i.i.i, align 4
  %interface_id.i.i.i.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %sa_path.i.i.i, i32 0, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %interface_id.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %interface_id.i.i.i.i.i.i, align 8
  %shr.mask.i.i.i.i.i.i = and i64 %68, -1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 1805398092808192, i64 %shr.mask.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i64 %shr.mask.i.i.i.i.i.i, 1805398092808192
  br i1 %cmp.i.i.i.i.i.i, label %if.end.i.i.i.i.if.then.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %interface_id.i23.i.i.i.i.i = getelementptr inbounds %struct.anon.160, ptr %sa_path.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %interface_id.i23.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %interface_id.i23.i.i.i.i.i, align 8
  %shr.mask.i24.i.i.i.i.i = and i64 %70, -1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 1805398092808192, i64 %shr.mask.i24.i.i.i.i.i)
  %cmp.i25.i.i.i.i.i = icmp eq i64 %shr.mask.i24.i.i.i.i.i, 1805398092808192
  br i1 %cmp.i25.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i

lor.lhs.false.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.then.i.i.i.i.i_crit_edge
  %conv.i.i.i.i.i.i = trunc i64 %68 to i32
  %interface_id.i27.i.i.i.i.i = getelementptr inbounds %struct.anon.160, ptr %sa_path.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %interface_id.i27.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %interface_id.i27.i.i.i.i.i, align 8
  %conv.i28.i.i.i.i.i = trunc i64 %72 to i32
  br label %path_conv_ib_to_opa.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = getelementptr inbounds %struct.sa_path_rec, ptr %sa_path.i.i.i, i32 0, i32 18
  %slid6.i.i.i.i.i = getelementptr inbounds %struct.sa_path_rec_ib, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %slid6.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %slid6.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %75 to i32
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %73, align 4
  %conv8.i.i.i.i.i = zext i16 %77 to i32
  br label %path_conv_ib_to_opa.exit.i.i.i.i

path_conv_ib_to_opa.exit.i.i.i.i:                 ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %slid.0.i.i.i.i.i = phi i32 [ %conv.i.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %conv.i.i.i.i.i, %if.else.i.i.i.i.i ]
  %dlid.0.i.i.i.i.i = phi i32 [ %conv.i28.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %conv8.i.i.i.i.i, %if.else.i.i.i.i.i ]
  %78 = getelementptr inbounds %struct.sa_path_rec, ptr %opa.i.i.i, i32 0, i32 18
  %slid9.i.i.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %opa.i.i.i, i32 0, i32 18, i32 0, i32 1
  %79 = ptrtoint ptr %slid9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %slid.0.i.i.i.i.i, ptr %slid9.i.i.i.i.i, align 8
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %dlid.0.i.i.i.i.i, ptr %78, align 4
  %service_id.i.i.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %sa_path.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %service_id.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %service_id.i.i.i.i.i, align 8
  %service_id11.i.i.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %opa.i.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %service_id11.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %service_id11.i.i.i.i.i, align 8
  %raw_traffic.i.i.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %sa_path.i.i.i, i32 0, i32 18, i32 0, i32 1
  %84 = ptrtoint ptr %raw_traffic.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %raw_traffic.i.i.i.i.i, align 8
  %raw_traffic12.i.i.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %opa.i.i.i, i32 0, i32 18, i32 0, i32 2
  %86 = ptrtoint ptr %raw_traffic12.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %raw_traffic12.i.i.i.i.i, align 4
  br label %sa_convert_path_ib_to_opa.exit.i.i.i

sa_convert_path_ib_to_opa.exit.i.i.i:             ; preds = %path_conv_ib_to_opa.exit.i.i.i.i, %if.then13.i.i.i.sa_convert_path_ib_to_opa.exit.i.i.i_crit_edge
  %mutex.i.i.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #11
  %87 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cm_id.i.i.i, align 4
  %call15.i.i.i = call i32 @rdma_set_ib_path(ptr noundef %88, ptr noundef nonnull %opa.i.i.i) #11
  call void @mutex_unlock(ptr noundef %mutex.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %opa.i.i.i) #11
  br label %if.end21.i.i.i

if.else.i.i.i:                                    ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mutex17.i.i.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex17.i.i.i, i32 noundef 0) #11
  %89 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cm_id.i.i.i, align 4
  %call19.i.i.i = call i32 @rdma_set_ib_path(ptr noundef %90, ptr noundef nonnull %sa_path.i.i.i) #11
  call void @mutex_unlock(ptr noundef %mutex17.i.i.i) #11
  br label %if.end21.i.i.i

if.end21.i.i.i:                                   ; preds = %if.else.i.i.i, %sa_convert_path_ib_to_opa.exit.i.i.i
  %ret.0.i.i.i = phi i32 [ %call15.i.i.i, %sa_convert_path_ib_to_opa.exit.i.i.i ], [ %call19.i.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %ret.0.i.i.i, 0
  br i1 %tobool22.not.i.i.i, label %if.end24.i.i.i, label %if.end21.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge

if.end21.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge: ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_set_ib_path.exit.i.i

if.end24.i.i.i:                                   ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = call ptr @memset(ptr %event.i.i.i, i32 0, i32 88)
  %92 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %event.i.i.i, align 8
  %93 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cm_id.i.i.i, align 4
  %call27.i.i.i = call i32 @ucma_event_handler(ptr noundef %94, ptr noundef nonnull %event.i.i.i) #11
  br label %ucma_set_ib_path.exit.i.i

ucma_set_ib_path.exit.i.i:                        ; preds = %if.end24.i.i.i, %if.end21.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge, %if.end6.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge, %for.inc.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge, %sw.bb.i11.i.ucma_set_ib_path.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call27.i.i.i, %if.end24.i.i.i ], [ -22, %sw.bb.i11.i.ucma_set_ib_path.exit.i.i_crit_edge ], [ -22, %if.end6.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge ], [ %ret.0.i.i.i, %if.end21.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge ], [ -22, %for.inc.i.i.i.ucma_set_ib_path.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %event.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %sa_path.i.i.i) #11
  br label %ucma_set_option_level.exit

ucma_set_option_level.exit:                       ; preds = %ucma_set_ib_path.exit.i.i, %sw.bb2.i.ucma_set_option_level.exit_crit_edge, %ucma_set_option_id.exit.i, %if.end19.ucma_set_option_level.exit_crit_edge
  %ret.0.i = phi i32 [ %ret.0.i.i, %ucma_set_option_id.exit.i ], [ -38, %if.end19.ucma_set_option_level.exit_crit_edge ], [ %retval.0.i.i.i, %ucma_set_ib_path.exit.i.i ], [ -38, %sw.bb2.i.ucma_set_option_level.exit_crit_edge ]
  call void @kfree(ptr noundef %call15) #11
  br label %out

out:                                              ; preds = %ucma_set_option_level.exit, %if.then17
  %ret.0 = phi i32 [ %20, %if.then17 ], [ %ret.0.i, %ucma_set_option_level.exit ]
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call5, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %14, %if.then7 ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_notify(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_notify, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !102
  %1 = getelementptr inbounds %struct.rdma_ucm_notify, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !102
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 8, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 8) #11
  %4 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i22 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i22
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i22)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  %call1 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %9)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 6
  %11 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cm_id, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %call9 = call i32 @rdma_notify(ptr noundef %12, i32 noundef %16) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then7 ], [ -22, %if.end5.if.end10_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call1, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then3, %if.then11.i.i
  %retval.0 = phi i32 [ %10, %if.then3 ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_join_ip_multicast(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_join_ip_mcast, align 8
  %join_cmd = alloca %struct.rdma_ucm_join_mcast, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %join_cmd) #11
  %1 = getelementptr inbounds i8, ptr %join_cmd, i32 24
  %2 = call ptr @memset(ptr %1, i32 255, i32 128)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 48, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 48) #11
  %4 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 48) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i17 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 48, %entry.if.then11.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 48, %res.0.i.i17
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i17)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cmd, align 8
  %10 = ptrtoint ptr %join_cmd to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %join_cmd, align 8
  %uid = getelementptr inbounds %struct.rdma_ucm_join_ip_mcast, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %uid to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %uid, align 8
  %uid2 = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %join_cmd, i32 0, i32 1
  %13 = ptrtoint ptr %uid2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %uid2, align 8
  %id = getelementptr inbounds %struct.rdma_ucm_join_ip_mcast, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %id3 = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %join_cmd, i32 0, i32 2
  %16 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %id3, align 8
  %addr = getelementptr inbounds %struct.rdma_ucm_join_ip_mcast, ptr %cmd, i32 0, i32 2
  %call4 = call i32 @rdma_addr_size_in6(ptr noundef %addr) #11
  %conv = trunc i32 %call4 to i16
  %addr_size = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %join_cmd, i32 0, i32 3
  %17 = ptrtoint ptr %addr_size to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %addr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool6.not = icmp eq i16 %conv, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %join_flags = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %join_cmd, i32 0, i32 4
  %18 = ptrtoint ptr %join_flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %join_flags, align 2
  %addr9 = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %join_cmd, i32 0, i32 5
  %conv12 = and i32 %call4, 65535
  %19 = call ptr @memcpy(ptr %addr9, ptr %addr, i32 %conv12)
  %call13 = call fastcc i32 @ucma_process_join(ptr noundef %file, ptr noundef nonnull %join_cmd, i32 noundef %out_len)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call13, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %join_cmd) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_leave_multicast(ptr noundef readnone %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %cmd = alloca %struct.rdma_ucm_destroy_id, align 8
  %resp = alloca %struct.rdma_ucm_destroy_id_resp, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.rdma_ucm_destroy_id, ptr %cmd, i32 0, i32 1
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %out_len)
  %cmp = icmp ult i32 %out_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 16, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 16) #11
  %3 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i71 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i71
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i71)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @_raw_spin_lock(ptr noundef nonnull @multicast_table) #11
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 8
  %call3 = call ptr @xa_load(ptr noundef nonnull @multicast_table, i32 noundef %8) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.if.then20_crit_edge, label %do.end

if.end2.if.then20_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

do.end:                                           ; preds = %if.end2
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call3, align 8
  %file7 = getelementptr inbounds %struct.ucma_context, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %file7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %file7, align 8
  %cmp8.not = icmp eq ptr %12, %file
  br i1 %cmp8.not, label %if.else11, label %do.end.if.then20_crit_edge

do.end.if.then20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.else11:                                        ; preds = %do.end
  %ref = getelementptr inbounds %struct.ucma_context, ptr %10, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #11
  %13 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.else11
  %15 = phi i32 [ %14, %if.else11 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %18, i32 %add.i.i.i, ptr elementtype(i32) %ref) #11, !srcloc !109
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !96

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !96

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #11
  %23 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.if.then20_crit_edge, label %if.end18

refcount_inc_not_zero.exit.if.then20_crit_edge:   ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.end18:                                         ; preds = %refcount_inc_not_zero.exit
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end18.if.then20_crit_edge, label %if.end22

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %refcount_inc_not_zero.exit.if.then20_crit_edge, %do.end.if.then20_crit_edge, %if.end2.if.then20_crit_edge
  %mc.076 = phi ptr [ %call3, %if.end18.if.then20_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.if.then20_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end2.if.then20_crit_edge ], [ inttoptr (i32 -6 to ptr), %refcount_inc_not_zero.exit.if.then20_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @multicast_table) #11
  %25 = ptrtoint ptr %mc.076 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %list = getelementptr inbounds %struct.ucma_multicast, ptr %call3, i32 0, i32 5
  %call.i.i66 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i66, label %if.end.i.i67, label %if.end22.list_del.exit_crit_edge

if.end22.list_del.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i67:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ucma_multicast, ptr %call3, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i67, %if.end22.list_del.exit_crit_edge
  %32 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ucma_multicast, ptr %call3, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %id23 = getelementptr inbounds %struct.ucma_multicast, ptr %call3, i32 0, i32 1
  %34 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id23, align 4
  %call24 = call ptr @__xa_erase(ptr noundef nonnull @multicast_table, i32 noundef %35) #11
  call void @_raw_spin_unlock(ptr noundef nonnull @multicast_table) #11
  %36 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call3, align 8
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %37, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %38 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call3, align 8
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cm_id, align 4
  %addr = getelementptr inbounds %struct.ucma_multicast, ptr %call3, i32 0, i32 6
  call void @rdma_leave_multicast(ptr noundef %41, ptr noundef %addr) #11
  %42 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call3, align 8
  %mutex28 = getelementptr inbounds %struct.ucma_context, ptr %43, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %mutex28) #11
  call fastcc void @ucma_cleanup_mc_events(ptr noundef nonnull %call3)
  %44 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call3, align 8
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %45, i32 0, i32 2
  %call.i.i.i.i.i.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ucma_put_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.ucma_put_ctx.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_put_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %ucma_put_ctx.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %45, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %ucma_put_ctx.exit

ucma_put_ctx.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ucma_put_ctx.exit_crit_edge
  %events_reported = getelementptr inbounds %struct.ucma_multicast, ptr %call3, i32 0, i32 2
  %47 = ptrtoint ptr %events_reported to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %events_reported, align 8
  %49 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %resp, align 4
  call void @kfree(ptr noundef nonnull %call3) #11
  %50 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cmd, align 8
  %conv34 = trunc i64 %51 to i32
  %52 = inttoptr i32 %conv34 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i60 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i60, label %ucma_put_ctx.exit.cleanup_crit_edge, label %if.end.i.i63

ucma_put_ctx.exit.cleanup_crit_edge:              ; preds = %ucma_put_ctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i63:                                     ; preds = %ucma_put_ctx.exit
  %53 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 4, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i61 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i61)
  %cmp.i6.i62 = icmp eq i32 %asmresult.i.i61, 0
  br i1 %cmp.i6.i62, label %copy_to_user.exit, label %if.end.i.i63.cleanup_crit_edge

if.end.i.i63.cleanup_crit_edge:                   ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i64 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 4) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %52, ptr noundef nonnull %resp, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool36.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool36.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i63.cleanup_crit_edge, %ucma_put_ctx.exit.cleanup_crit_edge, %if.then20, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ %25, %if.then20 ], [ -14, %if.then11.i.i ], [ -14, %ucma_put_ctx.exit.cleanup_crit_edge ], [ -14, %if.end.i.i63.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_migrate_id(ptr noundef %new_file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_migrate_id, align 8
  %resp = alloca %struct.rdma_ucm_migrate_resp, align 4
  %event_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.rdma_ucm_migrate_id, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rdma_ucm_migrate_id, ptr %cmd, i32 0, i32 2
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #11
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %resp, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event_list) #11
  %4 = getelementptr inbounds %struct.list_head, ptr %event_list, i32 0, i32 1
  %5 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %event_list, ptr %event_list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %event_list, ptr %4, align 4
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 16, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 16) #11
  %8 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i118 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i118
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i118)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %call.i = call i32 @__fdget(i32 noundef %13) #11, !noalias !110
  %and.i.i = and i32 %call.i, -4
  %14 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %f_op = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %16, @ucma_fops
  br i1 %cmp.not, label %if.end7, label %if.end4.file_put_crit_edge

if.end4.file_put_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_put

if.end7:                                          ; preds = %if.end4
  %private_data = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 8
  %call9 = call fastcc ptr @ucma_get_ctx(ptr noundef %18, i32 noundef %20)
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %call9 to i32
  br label %file_put

if.end13:                                         ; preds = %if.end7
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 6
  %22 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cm_id, align 4
  call void @rdma_lock_handler(ptr noundef %23) #11
  call void @_raw_spin_lock(ptr noundef nonnull @ctx_table) #11
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 8
  %call.i100 = call ptr @xa_load(ptr noundef nonnull @ctx_table, i32 noundef %25) #11
  %tobool.not.i = icmp eq ptr %call.i100, null
  br i1 %tobool.not.i, label %if.end13._ucma_find_context.exit_crit_edge, label %if.else.i

if.end13._ucma_find_context.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %_ucma_find_context.exit

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %file2.i = getelementptr inbounds %struct.ucma_context, ptr %call.i100, i32 0, i32 5
  %26 = ptrtoint ptr %file2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %file2.i, align 8
  %cmp.not.i = icmp eq ptr %27, %18
  %spec.select.i = select i1 %cmp.not.i, ptr %call.i100, ptr inttoptr (i32 -22 to ptr)
  br label %_ucma_find_context.exit

_ucma_find_context.exit:                          ; preds = %if.else.i, %if.end13._ucma_find_context.exit_crit_edge
  %ctx.0.i = phi ptr [ inttoptr (i32 -2 to ptr), %if.end13._ucma_find_context.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  %cmp16.not = icmp eq ptr %ctx.0.i, %call9
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %_ucma_find_context.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  br label %err_unlock

if.end18:                                         ; preds = %_ucma_find_context.exit
  %file19 = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 5
  %28 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %new_file, ptr %file19, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  call void @mutex_lock_nested(ptr noundef %18, i32 noundef 0) #11
  %list = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 9
  %call.i.i101 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i101, label %if.end.i.i102, label %if.end18.list_del.exit_crit_edge

if.end18.list_del.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i102:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 9, i32 1
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

list_del.exit:                                    ; preds = %if.end.i.i102, %if.end18.list_del.exit_crit_edge
  %35 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %event_list20 = getelementptr inbounds %struct.ucma_file, ptr %18, i32 0, i32 3
  %37 = ptrtoint ptr %event_list20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %event_list20, align 4
  %cmp30.not124 = icmp eq ptr %38, %event_list20
  br i1 %cmp30.not124, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %.pn.in125 = phi ptr [ %.pn127, %for.inc.for.body_crit_edge ], [ %38, %list_del.exit.for.body_crit_edge ]
  %39 = ptrtoint ptr %.pn.in125 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn127 = load ptr, ptr %.pn.in125, align 4
  %uevent.0 = getelementptr i8, ptr %.pn.in125, i32 -12
  %40 = ptrtoint ptr %uevent.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %uevent.0, align 8
  %cmp32 = icmp eq ptr %41, %call9
  br i1 %cmp32, label %if.then33, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then33:                                        ; preds = %for.body
  %call.i.i103 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in125) #11
  br i1 %call.i.i103, label %if.end.i.i106, label %if.then33.__list_del_entry.exit.i_crit_edge

if.then33.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i106:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i104 = getelementptr inbounds %struct.list_head, ptr %.pn.in125, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i104, align 4
  %44 = ptrtoint ptr %.pn.in125 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %.pn.in125, align 4
  %prev1.i.i.i105 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i105, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i106, %if.then33.__list_del_entry.exit.i_crit_edge
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %4, align 4
  %call.i.i.i107 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in125, ptr noundef %49, ptr noundef nonnull %event_list) #11
  br i1 %call.i.i.i107, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %.pn.in125, ptr %4, align 4
  %51 = ptrtoint ptr %.pn.in125 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %event_list, ptr %.pn.in125, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in125, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %.pn.in125, ptr %49, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp30.not = icmp eq ptr %.pn127, %event_list20
  br i1 %cmp30.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %events_reported = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 3
  %54 = ptrtoint ptr %events_reported to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %events_reported, align 8
  %56 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %resp, align 4
  call void @mutex_unlock(ptr noundef %18) #11
  call void @mutex_lock_nested(ptr noundef %new_file, i32 noundef 0) #11
  %ctx_list = getelementptr inbounds %struct.ucma_file, ptr %new_file, i32 0, i32 2
  %prev.i108 = getelementptr inbounds %struct.ucma_file, ptr %new_file, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i108, align 4
  %call.i.i109 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %58, ptr noundef %ctx_list) #11
  br i1 %call.i.i109, label %if.end.i.i110, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i110:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %list, ptr %prev.i108, align 4
  %60 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ctx_list, ptr %list, align 4
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %list, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i110, %for.end.list_add_tail.exit_crit_edge
  %63 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not.i = icmp eq ptr %64, %event_list
  br i1 %cmp.i.not.i, label %list_add_tail.exit.list_splice_tail.exit_crit_edge, label %if.then.i

list_add_tail.exit.list_splice_tail.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %event_list45 = getelementptr inbounds %struct.ucma_file, ptr %new_file, i32 0, i32 3
  %prev.i111 = getelementptr inbounds %struct.ucma_file, ptr %new_file, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i111, align 4
  %67 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %4, align 4
  %prev3.i.i112 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i112 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i112, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %64, ptr %66, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %event_list45, ptr %68, align 4
  store ptr %68, ptr %prev.i111, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %list_add_tail.exit.list_splice_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %new_file) #11
  %72 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %cmd, align 8
  %conv50 = trunc i64 %73 to i32
  %74 = inttoptr i32 %conv50 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i94 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i94, label %list_splice_tail.exit.err_unlock_crit_edge, label %if.end.i.i97

list_splice_tail.exit.err_unlock_crit_edge:       ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.end.i.i97:                                     ; preds = %list_splice_tail.exit
  %75 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %74, i32 4, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i95 = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i95)
  %cmp.i6.i96 = icmp eq i32 %asmresult.i.i95, 0
  br i1 %cmp.i6.i96, label %copy_to_user.exit, label %if.end.i.i97.err_unlock_crit_edge

if.end.i.i97.err_unlock_crit_edge:                ; preds = %if.end.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

copy_to_user.exit:                                ; preds = %if.end.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i98 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 4) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %74, ptr noundef nonnull %resp, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool52.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool52.not, i32 0, i32 -14
  br label %err_unlock

err_unlock:                                       ; preds = %copy_to_user.exit, %if.end.i.i97.err_unlock_crit_edge, %list_splice_tail.exit.err_unlock_crit_edge, %if.then17
  %ret.0 = phi i32 [ -2, %if.then17 ], [ -14, %list_splice_tail.exit.err_unlock_crit_edge ], [ -14, %if.end.i.i97.err_unlock_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %76 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cm_id, align 4
  call void @rdma_unlock_handler(ptr noundef %77) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i113, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.file_put_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.file_put_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_put

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %file_put

if.then.i113:                                     ; preds = %err_unlock
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call9, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %file_put

file_put:                                         ; preds = %if.then.i113, %if.then10.i.i.i.i, %if.end5.i.i.i.i.file_put_crit_edge, %if.then11, %if.end4.file_put_crit_edge
  %ret.1 = phi i32 [ %21, %if.then11 ], [ -22, %if.end4.file_put_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.file_put_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i113 ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i114 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i114, label %file_put.cleanup_crit_edge, label %if.then.i115

file_put.cleanup_crit_edge:                       ; preds = %file_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i115:                                     ; preds = %file_put
  call void @__sanitizer_cov_trace_pc() #13
  call void @fput(ptr noundef nonnull %14) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i115, %file_put.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -2, %if.end.cleanup_crit_edge ], [ %ret.1, %file_put.cleanup_crit_edge ], [ %ret.1, %if.then.i115 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event_list) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_query(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %resp.i49 = alloca %struct.rdma_ucm_query_addr_resp, align 8
  %ib.i = alloca %struct.sa_path_rec, align 8
  %resp.i = alloca %struct.rdma_ucm_query_addr_resp, align 8
  %cmd = alloca %struct.rdma_ucm_query, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds %struct.rdma_ucm_query, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rdma_ucm_query, ptr %cmd, i32 0, i32 2
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 16, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 16) #11
  %4 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i93 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i93
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i93)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cmd, align 8
  %conv3 = trunc i64 %9 to i32
  %10 = inttoptr i32 %conv3 to ptr
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %call4 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %12)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call4, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %15, label %if.end8.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb12
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %resp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %out_len)
  %cmp.i29 = icmp ult i32 %out_len, 272
  br i1 %cmp.i29, label %sw.bb.ucma_query_addr.exit_crit_edge, label %if.end.i

sw.bb.ucma_query_addr.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_query_addr.exit

if.end.i:                                         ; preds = %sw.bb
  %17 = call ptr @memset(ptr %resp.i, i32 0, i32 280)
  %cm_id.i = getelementptr inbounds %struct.ucma_context, ptr %call4, i32 0, i32 6
  %18 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cm_id.i, align 4
  %route.i = getelementptr inbounds %struct.rdma_cm_id, ptr %19, i32 0, i32 4
  %call.i = call i32 @rdma_addr_size(ptr noundef %route.i) #11
  %conv.i = trunc i32 %call.i to i16
  %src_size.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i, i32 0, i32 4
  %20 = ptrtoint ptr %src_size.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %src_size.i, align 4
  %src_addr2.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i, i32 0, i32 6
  %conv4.i = and i32 %call.i, 65535
  %21 = call ptr @memcpy(ptr %src_addr2.i, ptr %route.i, i32 %conv4.i)
  %22 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cm_id.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.rdma_cm_id, ptr %23, i32 0, i32 4, i32 0, i32 1
  %call8.i = call i32 @rdma_addr_size(ptr noundef %dst_addr.i) #11
  %conv9.i = trunc i32 %call8.i to i16
  %dst_size.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i, i32 0, i32 5
  %24 = ptrtoint ptr %dst_size.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv9.i, ptr %dst_size.i, align 2
  %dst_addr10.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i, i32 0, i32 7
  %conv12.i = and i32 %call8.i, 65535
  %25 = call ptr @memcpy(ptr %dst_addr10.i, ptr %dst_addr.i, i32 %conv12.i)
  %26 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cm_id.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.ucma_query_device_addr.exit.i_crit_edge, label %if.end.i.i30

if.end.i.ucma_query_device_addr.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_query_device_addr.exit.i

if.end.i.i30:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %node_guid.i.i = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %node_guid.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %node_guid.i.i, align 8
  %32 = ptrtoint ptr %resp.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %resp.i, align 8
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %27, align 4
  %index.i.i = getelementptr inbounds %struct.ib_device, ptr %34, i32 0, i32 25
  %35 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i, align 8
  %ibdev_index.i.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i, i32 0, i32 8
  %37 = ptrtoint ptr %ibdev_index.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ibdev_index.i.i, align 8
  %port_num.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %27, i32 0, i32 7
  %38 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_num.i.i, align 4
  %conv.i.i = trunc i32 %39 to i8
  %port_num4.i.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i, i32 0, i32 1
  %40 = ptrtoint ptr %port_num4.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i.i, ptr %port_num4.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.rdma_cm_id, ptr %27, i32 0, i32 4, i32 0, i32 2, i32 2, i32 8
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 4
  %conv1.i.i.i = zext i8 %42 to i16
  %shl.i.i.i = shl nuw i16 %conv1.i.i.i, 8
  %arrayidx3.i.i.i = getelementptr %struct.rdma_cm_id, ptr %27, i32 0, i32 4, i32 0, i32 2, i32 2, i32 9
  %43 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx3.i.i.i, align 1
  %conv5.i.i.i = zext i8 %44 to i16
  %or.i.i.i = or i16 %shl.i.i.i, %conv5.i.i.i
  %pkey.i.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i, i32 0, i32 3
  %45 = ptrtoint ptr %pkey.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %or.i.i.i, ptr %pkey.i.i, align 2
  br label %ucma_query_device_addr.exit.i

ucma_query_device_addr.exit.i:                    ; preds = %if.end.i.i30, %if.end.i.ucma_query_device_addr.exit.i_crit_edge
  %46 = call i32 @llvm.umin.i32(i32 %out_len, i32 280) #11
  call void @__check_object_size(ptr noundef nonnull %resp.i, i32 noundef %46, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i.i31 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i31, label %ucma_query_device_addr.exit.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

ucma_query_device_addr.exit.i.copy_to_user.exit.i_crit_edge: ; preds = %ucma_query_device_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %ucma_query_device_addr.exit.i
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %46, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp.i, i32 noundef %46) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef nonnull %resp.i, i32 noundef %46) #11
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %ucma_query_device_addr.exit.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %46, %ucma_query_device_addr.exit.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %46, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %ret.0.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %ucma_query_addr.exit

ucma_query_addr.exit:                             ; preds = %copy_to_user.exit.i, %sw.bb.ucma_query_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %copy_to_user.exit.i ], [ -28, %sw.bb.ucma_query_addr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %resp.i) #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %out_len)
  %cmp.i33 = icmp ult i32 %out_len, 8
  br i1 %cmp.i33, label %sw.bb10.sw.epilog_crit_edge, label %if.end8.i.i50.i

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end8.i.i50.i:                                  ; preds = %sw.bb10
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %out_len, i32 noundef 3520) #17
  %tobool.not.i35 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i35, label %if.end8.i.i50.i.sw.epilog_crit_edge, label %if.end2.i

if.end8.i.i50.i.sw.epilog_crit_edge:              ; preds = %if.end8.i.i50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end2.i:                                        ; preds = %if.end8.i.i50.i
  %cm_id.i36 = getelementptr inbounds %struct.ucma_context, ptr %call4, i32 0, i32 6
  %48 = ptrtoint ptr %cm_id.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cm_id.i36, align 4
  %num_paths.i = getelementptr inbounds %struct.rdma_cm_id, ptr %49, i32 0, i32 4, i32 2
  %50 = ptrtoint ptr %num_paths.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_paths.i, align 4
  %52 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %call9.i.i.i, align 128
  %sub.i = add i32 %out_len, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp555.i = icmp ne i32 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %sub.i)
  %cmp656.i = icmp ugt i32 %sub.i, 72
  %or.cond57.i = and i1 %cmp656.i, %cmp555.i
  br i1 %or.cond57.i, label %for.body.lr.ph.i, label %if.end2.i.for.end.i_crit_edge

if.end2.i.for.end.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end2.i
  %rec_type1.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %ib.i, i32 0, i32 19
  %53 = getelementptr inbounds %struct.sa_path_rec, ptr %ib.i, i32 0, i32 18
  %interface_id.i.i.i = getelementptr inbounds %struct.anon.160, ptr %ib.i, i32 0, i32 1
  %interface_id9.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %ib.i, i32 0, i32 1, i32 0, i32 1
  %slid21.i.i.i = getelementptr inbounds %struct.sa_path_rec_ib, ptr %53, i32 0, i32 1
  %service_id22.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %ib.i, i32 0, i32 2
  %raw_traffic23.i.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %ib.i, i32 0, i32 18, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end18.i.for.body.i_crit_edge ]
  %out_len.addr.058.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %sub19.i, %if.end18.i.for.body.i_crit_edge ]
  %54 = ptrtoint ptr %cm_id.i36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cm_id.i36, align 4
  %path_rec.i = getelementptr inbounds %struct.rdma_cm_id, ptr %55, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %path_rec.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %path_rec.i, align 4
  %arrayidx.i = getelementptr %struct.sa_path_rec, ptr %57, i32 %i.059.i
  %arrayidx9.i = getelementptr %struct.rdma_ucm_query_path_resp, ptr %call9.i.i.i, i32 0, i32 2, i32 %i.059.i
  %58 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 43, ptr %arrayidx9.i, align 8
  %rec_type.i = getelementptr %struct.sa_path_rec, ptr %57, i32 %i.059.i, i32 19
  %59 = ptrtoint ptr %rec_type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rec_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp10.i = icmp eq i32 %60, 3
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ib.i) #11
  %61 = call ptr @memset(ptr %ib.i, i32 255, i32 80)
  %62 = ptrtoint ptr %rec_type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rec_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp.not.i.i = icmp eq i32 %63, 3
  br i1 %cmp.not.i.i, label %if.end.i.i37, label %if.then11.i.sa_convert_path_opa_to_ib.exit.i_crit_edge

if.then11.i.sa_convert_path_opa_to_ib.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sa_convert_path_opa_to_ib.exit.i

if.end.i.i37:                                     ; preds = %if.then11.i
  %64 = call ptr @memcpy(ptr %ib.i, ptr %arrayidx.i, i32 80)
  %65 = ptrtoint ptr %rec_type1.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %rec_type1.i.i, align 4
  %66 = getelementptr %struct.sa_path_rec, ptr %57, i32 %i.059.i, i32 18
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49151, i32 %68)
  %cmp.i.i51.i = icmp ugt i32 %68, 49151
  br i1 %cmp.i.i51.i, label %if.end.i.i37.if.then.i.i53.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i37.if.then.i.i53.i_crit_edge:           ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i53.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i37
  %slid.i.i.i = getelementptr %struct.sa_path_rec, ptr %57, i32 %i.059.i, i32 18, i32 0, i32 1
  %69 = ptrtoint ptr %slid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %slid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49151, i32 %70)
  %cmp1.i.i52.i = icmp ugt i32 %70, 49151
  br i1 %cmp1.i.i52.i, label %lor.lhs.false.i.i.i.if.then.i.i53.i_crit_edge, label %if.else.i.i54.i

lor.lhs.false.i.i.i.if.then.i.i53.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i53.i

if.then.i.i53.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then.i.i53.i_crit_edge, %if.end.i.i37.if.then.i.i53.i_crit_edge
  %conv.i.i.i = zext i32 %68 to i64
  %or.i.i.i38 = or i64 %conv.i.i.i, 1805398092808192
  %71 = ptrtoint ptr %interface_id.i.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %or.i.i.i38, ptr %interface_id.i.i.i, align 8
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx.i, align 8
  %74 = ptrtoint ptr %ib.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %ib.i, align 8
  %slid6.i.i.i = getelementptr %struct.sa_path_rec, ptr %57, i32 %i.059.i, i32 18, i32 0, i32 1
  %75 = ptrtoint ptr %slid6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %slid6.i.i.i, align 4
  %conv7.i.i.i = zext i32 %76 to i64
  %or8.i.i.i = or i64 %conv7.i.i.i, 1805398092808192
  %77 = ptrtoint ptr %interface_id9.i.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %or8.i.i.i, ptr %interface_id9.i.i.i, align 8
  %78 = load i64, ptr %arrayidx.i, align 8
  store i64 %78, ptr %ib.i, align 8
  %79 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %53, align 4
  br label %path_conv_opa_to_ib.exit.i.i

if.else.i.i54.i:                                  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv17.i.i.i = trunc i32 %68 to i16
  %80 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv17.i.i.i, ptr %53, align 4
  %81 = ptrtoint ptr %slid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %slid.i.i.i, align 4
  %conv20.i.i.i = trunc i32 %82 to i16
  br label %path_conv_opa_to_ib.exit.i.i

path_conv_opa_to_ib.exit.i.i:                     ; preds = %if.else.i.i54.i, %if.then.i.i53.i
  %conv20.sink.i.i.i = phi i16 [ %conv20.i.i.i, %if.else.i.i54.i ], [ 0, %if.then.i.i53.i ]
  %83 = ptrtoint ptr %slid21.i.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv20.sink.i.i.i, ptr %slid21.i.i.i, align 2
  %service_id.i.i.i = getelementptr %struct.sa_path_rec, ptr %57, i32 %i.059.i, i32 2
  %84 = ptrtoint ptr %service_id.i.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %service_id.i.i.i, align 8
  %86 = ptrtoint ptr %service_id22.i.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %service_id22.i.i.i, align 8
  %raw_traffic.i.i.i = getelementptr %struct.sa_path_rec, ptr %57, i32 %i.059.i, i32 18, i32 0, i32 2
  %87 = ptrtoint ptr %raw_traffic.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %raw_traffic.i.i.i, align 4
  %89 = ptrtoint ptr %raw_traffic23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %raw_traffic23.i.i.i, align 8
  br label %sa_convert_path_opa_to_ib.exit.i

sa_convert_path_opa_to_ib.exit.i:                 ; preds = %path_conv_opa_to_ib.exit.i.i, %if.then11.i.sa_convert_path_opa_to_ib.exit.i_crit_edge
  %path_rec14.i = getelementptr %struct.rdma_ucm_query_path_resp, ptr %call9.i.i.i, i32 0, i32 2, i32 %i.059.i, i32 2
  call void @ib_sa_pack_path(ptr noundef nonnull %ib.i, ptr noundef %path_rec14.i) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ib.i) #11
  br label %if.end18.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %path_rec17.i = getelementptr %struct.rdma_ucm_query_path_resp, ptr %call9.i.i.i, i32 0, i32 2, i32 %i.059.i, i32 2
  call void @ib_sa_pack_path(ptr noundef %arrayidx.i, ptr noundef %path_rec17.i) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %sa_convert_path_opa_to_ib.exit.i
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %sub19.i = add i32 %out_len.addr.058.i, -72
  %90 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %91)
  %cmp5.i = icmp ult i32 %inc.i, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %sub19.i)
  %cmp6.i = icmp ugt i32 %sub19.i, 72
  %or.cond.i = select i1 %cmp5.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.end18.i.for.body.i_crit_edge, label %if.end18.i.for.end.i_crit_edge

if.end18.i.for.end.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end18.i.for.end.i_crit_edge, %if.end2.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end2.i.for.end.i_crit_edge ], [ %inc.i, %if.end18.i.for.end.i_crit_edge ]
  %92 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.lcssa.i, i32 72) #11
  %93 = extractvalue { i32, i1 } %92, 1
  %94 = extractvalue { i32, i1 } %92, 0
  %95 = add nuw i32 %94, 8
  %retval.0.i.i = select i1 %93, i32 -1, i32 %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp9.i.i.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i39

land.rhs16.i.i.i:                                 ; preds = %for.end.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge, label %if.then27.i.i.i, !prof !96

land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_to_user.exit.thread.i

if.then.i.i.i.i39:                                ; preds = %for.end.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %retval.0.i.i, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i.i40 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i40, label %if.then.i.i.i.i39.copy_to_user.exit.thread.i_crit_edge, label %if.end.i.i.i44

if.then.i.i.i.i39.copy_to_user.exit.thread.i_crit_edge: ; preds = %if.then.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread.i

if.end.i.i.i44:                                   ; preds = %if.then.i.i.i.i39
  %96 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %retval.0.i.i, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i.i42 = extractvalue { i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i42)
  %cmp.i6.i.i43 = icmp eq i32 %asmresult.i.i.i42, 0
  br i1 %cmp.i6.i.i43, label %copy_to_user.exit.i47, label %if.end.i.i.i44.copy_to_user.exit.thread.i_crit_edge

if.end.i.i.i44.copy_to_user.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.i47:                            ; preds = %if.end.i.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i45 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i, i32 noundef %retval.0.i.i) #11
  %call.i12.i.i.i46 = call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef nonnull %call9.i.i.i, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i46)
  %tobool22.not.i = icmp eq i32 %call.i12.i.i.i46, 0
  %spec.select.i = select i1 %tobool22.not.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.thread.i:                       ; preds = %copy_to_user.exit.i47, %if.end.i.i.i44.copy_to_user.exit.thread.i_crit_edge, %if.then.i.i.i.i39.copy_to_user.exit.thread.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge
  %97 = phi i32 [ -14, %if.then.i.i.i.i39.copy_to_user.exit.thread.i_crit_edge ], [ -14, %if.end.i.i.i44.copy_to_user.exit.thread.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.copy_to_user.exit.thread.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i47 ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %resp.i49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %out_len)
  %cmp.i50 = icmp ult i32 %out_len, 272
  br i1 %cmp.i50, label %sw.bb12.ucma_query_gid.exit_crit_edge, label %if.end.i53

sw.bb12.ucma_query_gid.exit_crit_edge:            ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_query_gid.exit

if.end.i53:                                       ; preds = %sw.bb12
  %98 = call ptr @memset(ptr %resp.i49, i32 0, i32 280)
  %cm_id.i51 = getelementptr inbounds %struct.ucma_context, ptr %call4, i32 0, i32 6
  %99 = ptrtoint ptr %cm_id.i51 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cm_id.i51, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %tobool.not.i.i52 = icmp eq ptr %102, null
  br i1 %tobool.not.i.i52, label %if.end.i53.ucma_query_device_addr.exit.i70_crit_edge, label %if.end.i.i67

if.end.i53.ucma_query_device_addr.exit.i70_crit_edge: ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_query_device_addr.exit.i70

if.end.i.i67:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  %node_guid.i.i54 = getelementptr inbounds %struct.ib_device, ptr %102, i32 0, i32 17
  %103 = ptrtoint ptr %node_guid.i.i54 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %node_guid.i.i54, align 8
  %105 = ptrtoint ptr %resp.i49 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %resp.i49, align 8
  %106 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %100, align 4
  %index.i.i55 = getelementptr inbounds %struct.ib_device, ptr %107, i32 0, i32 25
  %108 = ptrtoint ptr %index.i.i55 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index.i.i55, align 8
  %ibdev_index.i.i56 = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 8
  %110 = ptrtoint ptr %ibdev_index.i.i56 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %ibdev_index.i.i56, align 8
  %port_num.i.i57 = getelementptr inbounds %struct.rdma_cm_id, ptr %100, i32 0, i32 7
  %111 = ptrtoint ptr %port_num.i.i57 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port_num.i.i57, align 4
  %conv.i.i58 = trunc i32 %112 to i8
  %port_num4.i.i59 = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 1
  %113 = ptrtoint ptr %port_num4.i.i59 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv.i.i58, ptr %port_num4.i.i59, align 8
  %arrayidx.i.i.i60 = getelementptr %struct.rdma_cm_id, ptr %100, i32 0, i32 4, i32 0, i32 2, i32 2, i32 8
  %114 = ptrtoint ptr %arrayidx.i.i.i60 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i.i.i60, align 4
  %conv1.i.i.i61 = zext i8 %115 to i16
  %shl.i.i.i62 = shl nuw i16 %conv1.i.i.i61, 8
  %arrayidx3.i.i.i63 = getelementptr %struct.rdma_cm_id, ptr %100, i32 0, i32 4, i32 0, i32 2, i32 2, i32 9
  %116 = ptrtoint ptr %arrayidx3.i.i.i63 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx3.i.i.i63, align 1
  %conv5.i.i.i64 = zext i8 %117 to i16
  %or.i.i.i65 = or i16 %shl.i.i.i62, %conv5.i.i.i64
  %pkey.i.i66 = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 3
  %118 = ptrtoint ptr %pkey.i.i66 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %or.i.i.i65, ptr %pkey.i.i66, align 2
  br label %ucma_query_device_addr.exit.i70

ucma_query_device_addr.exit.i70:                  ; preds = %if.end.i.i67, %if.end.i53.ucma_query_device_addr.exit.i70_crit_edge
  %src_addr.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 6
  %src_size.i68 = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 4
  %119 = ptrtoint ptr %src_size.i68 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 48, ptr %src_size.i68, align 4
  %route.i69 = getelementptr inbounds %struct.rdma_cm_id, ptr %100, i32 0, i32 4
  %120 = ptrtoint ptr %route.i69 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %route.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %121)
  %cmp4.i = icmp eq i16 %121, 27
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i72

if.then6.i:                                       ; preds = %ucma_query_device_addr.exit.i70
  call void @__sanitizer_cov_trace_pc() #13
  %122 = call ptr @memcpy(ptr %src_addr.i, ptr %route.i69, i32 48)
  br label %if.end19.i

if.else.i72:                                      ; preds = %ucma_query_device_addr.exit.i70
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 27, ptr %src_addr.i, align 8
  %pkey.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 3
  %124 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %pkey.i, align 2
  %sib_pkey.i = getelementptr inbounds %struct.sockaddr_ib, ptr %src_addr.i, i32 0, i32 1
  %126 = ptrtoint ptr %sib_pkey.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %sib_pkey.i, align 2
  %sib_addr.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 6, i32 0, i32 1, i32 4
  call void @rdma_read_gids(ptr noundef %100, ptr noundef %sib_addr.i, ptr noundef null) #11
  %127 = ptrtoint ptr %cm_id.i51 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cm_id.i51, align 4
  %route16.i = getelementptr inbounds %struct.rdma_cm_id, ptr %128, i32 0, i32 4
  %call.i71 = call i64 @rdma_get_service_id(ptr noundef %128, ptr noundef %route16.i) #11
  %sib_sid.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 6, i32 0, i32 1, i32 20
  %129 = ptrtoint ptr %sib_sid.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %call.i71, ptr %sib_sid.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i72, %if.then6.i
  %dst_addr.i73 = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 7
  %dst_size.i74 = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 5
  %130 = ptrtoint ptr %dst_size.i74 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 48, ptr %dst_size.i74, align 2
  %131 = ptrtoint ptr %cm_id.i51 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cm_id.i51, align 4
  %dst_addr23.i = getelementptr inbounds %struct.rdma_cm_id, ptr %132, i32 0, i32 4, i32 0, i32 1
  %133 = ptrtoint ptr %dst_addr23.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %dst_addr23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %134)
  %cmp26.i = icmp eq i16 %134, 27
  br i1 %cmp26.i, label %if.then28.i, label %if.else35.i

if.then28.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %135 = call ptr @memcpy(ptr %dst_addr.i73, ptr %dst_addr23.i, i32 48)
  br label %if.end48.i

if.else35.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %dst_addr.i73 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 27, ptr %dst_addr.i73, align 8
  %pkey37.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 3
  %137 = ptrtoint ptr %pkey37.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %pkey37.i, align 2
  %sib_pkey38.i = getelementptr inbounds %struct.sockaddr_ib, ptr %dst_addr.i73, i32 0, i32 1
  %139 = ptrtoint ptr %sib_pkey38.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %sib_pkey38.i, align 2
  %sib_addr40.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 7, i32 0, i32 1, i32 4
  call void @rdma_read_gids(ptr noundef %132, ptr noundef null, ptr noundef %sib_addr40.i) #11
  %140 = ptrtoint ptr %cm_id.i51 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cm_id.i51, align 4
  %dst_addr45.i = getelementptr inbounds %struct.rdma_cm_id, ptr %141, i32 0, i32 4, i32 0, i32 1
  %call46.i = call i64 @rdma_get_service_id(ptr noundef %141, ptr noundef %dst_addr45.i) #11
  %sib_sid47.i = getelementptr inbounds %struct.rdma_ucm_query_addr_resp, ptr %resp.i49, i32 0, i32 7, i32 0, i32 1, i32 20
  %142 = ptrtoint ptr %sib_sid47.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %call46.i, ptr %sib_sid47.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else35.i, %if.then28.i
  %143 = call i32 @llvm.umin.i32(i32 %out_len, i32 280) #11
  call void @__check_object_size(ptr noundef nonnull %resp.i49, i32 noundef %143, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i.i76 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i76, label %if.end48.i.copy_to_user.exit.i87_crit_edge, label %if.end.i.i.i80

if.end48.i.copy_to_user.exit.i87_crit_edge:       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i87

if.end.i.i.i80:                                   ; preds = %if.end48.i
  %144 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %143, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i.i78 = extractvalue { i32, i32 } %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i78)
  %cmp.i6.i.i79 = icmp eq i32 %asmresult.i.i.i78, 0
  br i1 %cmp.i6.i.i79, label %if.then2.i.i.i83, label %if.end.i.i.i80.copy_to_user.exit.i87_crit_edge

if.end.i.i.i80.copy_to_user.exit.i87_crit_edge:   ; preds = %if.end.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i87

if.then2.i.i.i83:                                 ; preds = %if.end.i.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i81 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp.i49, i32 noundef %143) #11
  %call.i12.i.i.i82 = call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef nonnull %resp.i49, i32 noundef %143) #11
  br label %copy_to_user.exit.i87

copy_to_user.exit.i87:                            ; preds = %if.then2.i.i.i83, %if.end.i.i.i80.copy_to_user.exit.i87_crit_edge, %if.end48.i.copy_to_user.exit.i87_crit_edge
  %n.addr.0.i.i84 = phi i32 [ %143, %if.end48.i.copy_to_user.exit.i87_crit_edge ], [ %call.i12.i.i.i82, %if.then2.i.i.i83 ], [ %143, %if.end.i.i.i80.copy_to_user.exit.i87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i84)
  %tobool.not.i85 = icmp eq i32 %n.addr.0.i.i84, 0
  %ret.0.i86 = select i1 %tobool.not.i85, i32 0, i32 -14
  br label %ucma_query_gid.exit

ucma_query_gid.exit:                              ; preds = %copy_to_user.exit.i87, %sw.bb12.ucma_query_gid.exit_crit_edge
  %retval.0.i88 = phi i32 [ %ret.0.i86, %copy_to_user.exit.i87 ], [ -28, %sw.bb12.ucma_query_gid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %resp.i49) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %ucma_query_gid.exit, %copy_to_user.exit.thread.i, %if.end8.i.i50.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %ucma_query_addr.exit, %if.end8.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i88, %ucma_query_gid.exit ], [ %retval.0.i, %ucma_query_addr.exit ], [ -38, %if.end8.sw.epilog_crit_edge ], [ %97, %copy_to_user.exit.thread.i ], [ -28, %sw.bb10.sw.epilog_crit_edge ], [ -12, %if.end8.i.i50.i.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call4, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %145 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i89 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i89, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call4, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then6, %if.then11.i.i
  %retval.0 = phi i32 [ %13, %if.then6 ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_bind(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_bind, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 136)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 136, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 136) #11
  %2 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 136) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i27 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 136, %entry.if.then11.i.i_crit_edge ], [ 136, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 136, %res.0.i.i27
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i27)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %reserved = getelementptr inbounds %struct.rdma_ucm_bind, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %reserved to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reserved, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %addr_size = getelementptr inbounds %struct.rdma_ucm_bind, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %addr_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.not = icmp eq i16 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %conv5 = zext i16 %9 to i32
  %addr = getelementptr inbounds %struct.rdma_ucm_bind, ptr %cmd, i32 0, i32 3
  %call6 = call i32 @rdma_addr_size_kss(ptr noundef %addr) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %conv5)
  %cmp.not = icmp eq i32 %call6, %conv5
  br i1 %cmp.not, label %if.end9, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false3
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd, align 4
  %call10 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %11)
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call10, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call10, i32 0, i32 6
  %13 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cm_id, align 4
  %call16 = call i32 @rdma_bind_addr(ptr noundef %14, ptr noundef %addr) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call10, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call10, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then12, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %12, %if.then12 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call16, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call16, %if.then10.i.i.i.i ], [ %call16, %if.then.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_resolve_addr(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_resolve_addr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 272)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 272, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 272) #11
  %2 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 272) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i35 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 272, %entry.if.then11.i.i_crit_edge ], [ 272, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 272, %res.0.i.i35
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i35)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %reserved = getelementptr inbounds %struct.rdma_ucm_resolve_addr, ptr %cmd, i32 0, i32 4
  %6 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %src_size = getelementptr inbounds %struct.rdma_ucm_resolve_addr, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %src_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %src_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.not = icmp eq i16 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.lor.lhs.false7_crit_edge, label %land.lhs.true

lor.lhs.false.lor.lhs.false7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %conv = zext i16 %9 to i32
  %src_addr = getelementptr inbounds %struct.rdma_ucm_resolve_addr, ptr %cmd, i32 0, i32 5
  %call5 = call i32 @rdma_addr_size_kss(ptr noundef %src_addr) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %conv)
  %cmp.not = icmp eq i32 %call5, %conv
  br i1 %cmp.not, label %land.lhs.true.lor.lhs.false7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.lor.lhs.false7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true.lor.lhs.false7_crit_edge, %lor.lhs.false.lor.lhs.false7_crit_edge
  %dst_size = getelementptr inbounds %struct.rdma_ucm_resolve_addr, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %dst_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dst_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %conv11 = zext i16 %11 to i32
  %dst_addr = getelementptr inbounds %struct.rdma_ucm_resolve_addr, ptr %cmd, i32 0, i32 6
  %call12 = call i32 @rdma_addr_size_kss(ptr noundef %dst_addr) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %conv11)
  %cmp13.not = icmp eq i32 %call12, %conv11
  br i1 %cmp13.not, label %if.end16, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false9
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd, align 4
  %call17 = call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %13)
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call17, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call17, i32 0, i32 6
  %15 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cm_id, align 4
  %src_addr22 = getelementptr inbounds %struct.rdma_ucm_resolve_addr, ptr %cmd, i32 0, i32 5
  %timeout_ms = getelementptr inbounds %struct.rdma_ucm_resolve_addr, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout_ms, align 4
  %call24 = call i32 @rdma_resolve_addr(ptr noundef %16, ptr noundef %src_addr22, ptr noundef %dst_addr, i32 noundef %18) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  call fastcc void @ucma_put_ctx(ptr noundef %call17)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %14, %if.then19 ], [ %call24, %if.end21 ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_join_multicast(ptr noundef %file, ptr noundef %inbuf, i32 noundef %in_len, i32 noundef %out_len) #3 align 64 {
entry:
  %cmd = alloca %struct.rdma_ucm_join_mcast, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %cmd) #11
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 152)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %inbuf, i32 152, i32 -1226833920) #15, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 152) #11
  %2 = call i32 @llvm.read_register.i32(metadata !86) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !98
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %inbuf, i32 noundef 152) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i8 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 152, %entry.if.then11.i.i_crit_edge ], [ 152, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 152, %res.0.i.i8
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i8)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %addr = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %cmd, i32 0, i32 5
  %call1 = call i32 @rdma_addr_size_kss(ptr noundef %addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call fastcc i32 @ucma_process_join(ptr noundef %file, ptr noundef nonnull %cmd, i32 noundef %out_len)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ucma_alloc_ctx(ptr noundef %file) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %close_work = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %close_work, i32 noundef 0) #11
  %1 = ptrtoint ptr %close_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %close_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @ucma_alloc_ctx.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4 = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ucma_close_id, ptr %func, align 4
  %comp = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #11
  %mc_list = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %mc_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mc_list, ptr %mc_list, align 8
  %prev.i28 = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mc_list, ptr %prev.i28, align 4
  %list = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 8
  %prev.i29 = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i29, align 4
  %file6 = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %file6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %file, ptr %file6, align 8
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @ucma_alloc_ctx.__key.9) #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @ctx_table) #11
  %call.i = tail call i32 @__xa_alloc(ptr noundef nonnull @ctx_table, ptr noundef nonnull %call7.i.i, ptr noundef null, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %if.then13

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then13 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_create_user_id(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucma_event_handler(ptr noundef %cm_id, ptr noundef %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %backlog.i = getelementptr inbounds %struct.ucma_context, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %backlog.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %backlog.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %backlog.i, ptr %backlog.i, i32 0, i32 -1, ptr elementtype(i32) %backlog.i) #11, !srcloc !114
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  %file.i = getelementptr inbounds %struct.ucma_context, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file.i, align 8
  %call1.i = tail call fastcc ptr @ucma_alloc_ctx(ptr noundef %6) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.err_backlog.i_crit_edge, label %if.end3.i

if.end.i.err_backlog.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_backlog.i

if.end3.i:                                        ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.ucma_context, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %ref.i.i, align 4
  %cm_id1.i.i = getelementptr inbounds %struct.ucma_context, ptr %call1.i, i32 0, i32 6
  %8 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cm_id, ptr %cm_id1.i.i, align 4
  %call4.i = tail call fastcc ptr @ucma_create_uevent(ptr noundef %1, ptr noundef %event) #11
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %err_alloc.i, label %if.end7.i

if.end7.i:                                        ; preds = %if.end3.i
  %conn_req_ctx.i = getelementptr inbounds %struct.ucma_event, ptr %call4.i, i32 0, i32 1
  %9 = ptrtoint ptr %conn_req_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i, ptr %conn_req_ctx.i, align 4
  %10 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call1.i, align 8
  %id8.i = getelementptr inbounds %struct.ucma_event, ptr %call4.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %id8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %id8.i, align 8
  %13 = ptrtoint ptr %cm_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cm_id1.i.i, align 4
  %context10.i = getelementptr inbounds %struct.rdma_cm_id, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %context10.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i, ptr %context10.i, align 4
  %file11.i = getelementptr inbounds %struct.ucma_context, ptr %call1.i, i32 0, i32 5
  %16 = ptrtoint ptr %file11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %file11.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %17, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end7.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.end7.i.if.end.i.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.end7.i
  %19 = ptrtoint ptr %file11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %file11.i, align 8
  %dep_map.i.i = getelementptr inbounds %struct.mutex, ptr %20, i32 0, i32 5
  %call.i.i39.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i39.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !108

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 225, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.end7.i.if.end.i.i_crit_edge
  %list.i.i = getelementptr inbounds %struct.ucma_context, ptr %call1.i, i32 0, i32 9
  %21 = ptrtoint ptr %file11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %file11.i, align 8
  %ctx_list.i.i = getelementptr inbounds %struct.ucma_file, ptr %22, i32 0, i32 2
  %prev.i.i.i = getelementptr inbounds %struct.ucma_file, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %24, ptr noundef %ctx_list.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.ucma_finish_ctx.exit.i_crit_edge

if.end.i.i.ucma_finish_ctx.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_finish_ctx.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctx_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ucma_context, ptr %call1.i, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list.i.i, ptr %24, align 4
  br label %ucma_finish_ctx.exit.i

ucma_finish_ctx.exit.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.ucma_finish_ctx.exit.i_crit_edge
  %29 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call1.i, align 8
  %call25.i.i = tail call ptr @xa_store(ptr noundef nonnull @ctx_table, i32 noundef %30, ptr noundef nonnull %call1.i, i32 noundef 3264) #11
  %list.i = getelementptr inbounds %struct.ucma_event, ptr %call4.i, i32 0, i32 3
  %31 = ptrtoint ptr %file11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %file11.i, align 8
  %event_list.i = getelementptr inbounds %struct.ucma_file, ptr %32, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.ucma_file, ptr %32, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i40.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %34, ptr noundef %event_list.i) #11
  br i1 %call.i.i40.i, label %if.end.i.i.i, label %ucma_finish_ctx.exit.i.list_add_tail.exit.i_crit_edge

ucma_finish_ctx.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %ucma_finish_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %ucma_finish_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list.i, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %event_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ucma_event, ptr %call4.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list.i, ptr %34, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %ucma_finish_ctx.exit.i.list_add_tail.exit.i_crit_edge
  %39 = ptrtoint ptr %file11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %file11.i, align 8
  tail call void @mutex_unlock(ptr noundef %40) #11
  %41 = ptrtoint ptr %file11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %file11.i, align 8
  %poll_wait.i = getelementptr inbounds %struct.ucma_file, ptr %42, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %poll_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

err_alloc.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i = tail call fastcc i32 @ucma_destroy_private_ctx(ptr noundef nonnull %call1.i) #11
  br label %err_backlog.i

err_backlog.i:                                    ; preds = %err_alloc.i, %if.end.i.err_backlog.i_crit_edge
  %call.i.i38.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %backlog.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %backlog.i, i32 1, i32 3, i32 1) #11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %backlog.i, ptr %backlog.i, i32 1, ptr elementtype(i32) %backlog.i) #11, !srcloc !107
  br label %cleanup

if.end:                                           ; preds = %entry
  %uid = getelementptr inbounds %struct.ucma_context, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %uid to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %uid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool.not = icmp eq i64 %45, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc ptr @ucma_create_uevent(ptr noundef %1, ptr noundef %event)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %file = getelementptr inbounds %struct.ucma_context, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %file, align 8
  tail call void @mutex_lock_nested(ptr noundef %47, i32 noundef 0) #11
  %list = getelementptr inbounds %struct.ucma_event, ptr %call3, i32 0, i32 3
  %48 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %file, align 8
  %event_list = getelementptr inbounds %struct.ucma_file, ptr %49, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.ucma_file, ptr %49, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %51, ptr noundef %event_list) #11
  br i1 %call.i.i, label %if.end.i.i35, label %if.end6.list_add_tail.exit_crit_edge

if.end6.list_add_tail.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i35:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list, ptr %prev.i, align 4
  %53 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %event_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ucma_event, ptr %call3, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i35, %if.end6.list_add_tail.exit_crit_edge
  %56 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %file, align 8
  tail call void @mutex_unlock(ptr noundef %57) #11
  %58 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %file, align 8
  %poll_wait = getelementptr inbounds %struct.ucma_file, ptr %59, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %if.end11

if.end11:                                         ; preds = %list_add_tail.exit, %if.end.if.end11_crit_edge
  %60 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %61)
  %cmp13 = icmp eq i32 %61, 11
  br i1 %cmp13, label %if.then14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  tail call void @_raw_spin_lock(ptr noundef nonnull @ctx_table) #11
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %1, align 8
  %call15 = tail call ptr @xa_load(ptr noundef nonnull @ctx_table, i32 noundef %63) #11
  %cmp16 = icmp eq ptr %call15, %1
  br i1 %cmp16, label %if.then17, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %64 = load ptr, ptr @system_unbound_wq, align 4
  %close_work = getelementptr inbounds %struct.ucma_context, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %close_work) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then14.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end11.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %err_backlog.i, %list_add_tail.exit.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end19 ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i ], [ -12, %err_backlog.i ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ucma_finish_ctx(ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %file = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 5
  %1 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %file, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %2, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !108

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 225, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %list = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 9
  %file24 = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 5
  %3 = ptrtoint ptr %file24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %file24, align 8
  %ctx_list = getelementptr inbounds %struct.ucma_file, ptr %4, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.ucma_file, ptr %4, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %ctx_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctx_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctx, align 8
  %call25 = tail call ptr @xa_store(ptr noundef nonnull @ctx_table, i32 noundef %12, ptr noundef %ctx, i32 noundef 3264) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ucma_destroy_private_ctx(ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %close_work = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 11
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %close_work) #11
  %ref = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #11
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ucma_close_id(ptr noundef %close_work)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %3 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list.i, ptr %list.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list.i, ptr %2, align 4
  %file.i = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 5
  %5 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file.i, align 8
  call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #11
  %7 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file.i, align 8
  %event_list.i = getelementptr inbounds %struct.ucma_file, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event_list.i, align 4
  %cmp.not.i58 = icmp eq ptr %10, %event_list.i
  br i1 %cmp.not.i58, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in.i59 = phi ptr [ %.pn.i64, %for.inc.i.for.body.i_crit_edge ], [ %10, %if.end.for.body.i_crit_edge ]
  %uevent.0.i63 = getelementptr i8, ptr %.pn.in.i59, i32 -12
  %11 = ptrtoint ptr %.pn.in.i59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i64 = load ptr, ptr %.pn.in.i59, align 4
  %12 = ptrtoint ptr %uevent.0.i63 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uevent.0.i63, align 8
  %cmp13.not.i = icmp eq ptr %13, %ctx
  br i1 %cmp13.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %event.i = getelementptr i8, ptr %.pn.in.i59, i32 24
  %14 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %event.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp14.i = icmp eq i32 %15, 4
  br i1 %cmp14.i, label %land.lhs.true.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %conn_req_ctx.i = getelementptr i8, ptr %.pn.in.i59, i32 -8
  %16 = ptrtoint ptr %conn_req_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn_req_ctx.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @ctx_table) #11
  %call.i54 = call ptr @__xa_cmpxchg(ptr noundef nonnull @ctx_table, i32 noundef %19, ptr noundef %17, ptr noundef nonnull inttoptr (i32 1030 to ptr), i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  %20 = ptrtoint ptr %conn_req_ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn_req_ctx.i, align 4
  %cmp18.i = icmp eq ptr %call.i54, %21
  br i1 %cmp18.i, label %if.then19.i, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call.i.i48 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i59) #11
  br i1 %call.i.i48, label %if.end.i.i51, label %if.then19.i.__list_del_entry.exit.i_crit_edge

if.then19.i.__list_del_entry.exit.i_crit_edge:    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i51:                                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i49 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i59, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i49, align 4
  %24 = ptrtoint ptr %.pn.in.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in.i59, align 4
  %prev1.i.i.i50 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i50, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i51, %if.then19.i.__list_del_entry.exit.i_crit_edge
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 4
  %call.i.i.i52 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in.i59, ptr noundef %29, ptr noundef nonnull %list.i) #11
  br i1 %call.i.i.i52, label %if.end.i.i.i53, label %__list_del_entry.exit.i.for.inc.i_crit_edge

__list_del_entry.exit.i.for.inc.i_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i53:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.pn.in.i59, ptr %2, align 4
  %31 = ptrtoint ptr %.pn.in.i59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list.i, ptr %.pn.in.i59, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i59, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %.pn.in.i59, ptr %29, align 4
  br label %for.inc.i

if.end21.i:                                       ; preds = %land.lhs.true.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %call.i.i42 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i59) #11
  br i1 %call.i.i42, label %if.end.i.i45, label %if.end21.i.list_del.exit47_crit_edge

if.end21.i.list_del.exit47_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit47

if.end.i.i45:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i43 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i59, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i43, align 4
  %36 = ptrtoint ptr %.pn.in.i59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn.in.i59, align 4
  %prev1.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i44, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit47

list_del.exit47:                                  ; preds = %if.end.i.i45, %if.end21.i.list_del.exit47_crit_edge
  %40 = ptrtoint ptr %.pn.in.i59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i59, align 4
  %prev.i46 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i59, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i46, align 4
  call void @kfree(ptr noundef %uevent.0.i63) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit47, %if.end.i.i.i53, %__list_del_entry.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %42 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %file.i, align 8
  %event_list11.i = getelementptr inbounds %struct.ucma_file, ptr %43, i32 0, i32 3
  %cmp.not.i = icmp eq ptr %.pn.i64, %event_list11.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %list28.i = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 9
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list28.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.end.i.list_del.exit_crit_edge

for.end.i.list_del.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i41 = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %prev.i.i41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i41, align 4
  %46 = ptrtoint ptr %list28.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %list28.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.i.list_del.exit_crit_edge
  %50 = ptrtoint ptr %list28.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %list28.i, align 4
  %prev.i = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 9, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %events_reported29.i = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 3
  %52 = ptrtoint ptr %events_reported29.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %events_reported29.i, align 8
  %54 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %file.i, align 8
  call void @mutex_unlock(ptr noundef %55) #11
  %56 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %list.i, align 4
  %cmp43.not.i65 = icmp eq ptr %57, %list.i
  br i1 %cmp43.not.i65, label %list_del.exit.ucma_cleanup_ctx_events.exit_crit_edge, label %list_del.exit.for.body45.i_crit_edge

list_del.exit.for.body45.i_crit_edge:             ; preds = %list_del.exit
  br label %for.body45.i

list_del.exit.ucma_cleanup_ctx_events.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_cleanup_ctx_events.exit

for.body45.i:                                     ; preds = %for.body45.i.for.body45.i_crit_edge, %list_del.exit.for.body45.i_crit_edge
  %.pn77.in.i66 = phi ptr [ %.pn77.i, %for.body45.i.for.body45.i_crit_edge ], [ %57, %list_del.exit.for.body45.i_crit_edge ]
  %uevent.1.i = getelementptr i8, ptr %.pn77.in.i66, i32 -12
  %58 = ptrtoint ptr %.pn77.in.i66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn77.i = load ptr, ptr %.pn77.in.i66, align 4
  %conn_req_ctx46.i = getelementptr i8, ptr %.pn77.in.i66, i32 -8
  %59 = ptrtoint ptr %conn_req_ctx46.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %conn_req_ctx46.i, align 4
  %call47.i = call fastcc i32 @ucma_destroy_private_ctx(ptr noundef %60) #11
  call void @kfree(ptr noundef %uevent.1.i) #11
  %cmp43.not.i = icmp eq ptr %.pn77.i, %list.i
  br i1 %cmp43.not.i, label %for.body45.i.ucma_cleanup_ctx_events.exit_crit_edge, label %for.body45.i.for.body45.i_crit_edge

for.body45.i.for.body45.i_crit_edge:              ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body45.i

for.body45.i.ucma_cleanup_ctx_events.exit_crit_edge: ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_cleanup_ctx_events.exit

ucma_cleanup_ctx_events.exit:                     ; preds = %for.body45.i.ucma_cleanup_ctx_events.exit_crit_edge, %list_del.exit.ucma_cleanup_ctx_events.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #11
  call void @_raw_spin_lock(ptr noundef nonnull @multicast_table) #11
  %mc_list.i = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 10
  %61 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mc_list.i, align 8
  %cmp.not21.i = icmp eq ptr %62, %mc_list.i
  br i1 %cmp.not21.i, label %ucma_cleanup_ctx_events.exit.ucma_cleanup_multicast.exit_crit_edge, label %ucma_cleanup_ctx_events.exit.for.body.i37_crit_edge

ucma_cleanup_ctx_events.exit.for.body.i37_crit_edge: ; preds = %ucma_cleanup_ctx_events.exit
  br label %for.body.i37

ucma_cleanup_ctx_events.exit.ucma_cleanup_multicast.exit_crit_edge: ; preds = %ucma_cleanup_ctx_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_cleanup_multicast.exit

for.body.i37:                                     ; preds = %list_del.exit.i.for.body.i37_crit_edge, %ucma_cleanup_ctx_events.exit.for.body.i37_crit_edge
  %.pn.in22.i = phi ptr [ %.pn.i35, %list_del.exit.i.for.body.i37_crit_edge ], [ %62, %ucma_cleanup_ctx_events.exit.for.body.i37_crit_edge ]
  %mc.0.i = getelementptr i8, ptr %.pn.in22.i, i32 -28
  %63 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i35 = load ptr, ptr %.pn.in22.i, align 4
  %call.i.i.i36 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22.i) #11
  br i1 %call.i.i.i36, label %if.end.i.i.i, label %for.body.i37.list_del.exit.i_crit_edge

for.body.i37.list_del.exit.i_crit_edge:           ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i, align 4
  %66 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %.pn.in22.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i37.list_del.exit.i_crit_edge
  %70 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in22.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in22.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %id.i = getelementptr i8, ptr %.pn.in22.i, i32 -24
  %72 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id.i, align 4
  %call.i = call ptr @__xa_erase(ptr noundef nonnull @multicast_table, i32 noundef %73) #11
  call void @kfree(ptr noundef %mc.0.i) #11
  %cmp.not.i38 = icmp eq ptr %.pn.i35, %mc_list.i
  br i1 %cmp.not.i38, label %list_del.exit.i.ucma_cleanup_multicast.exit_crit_edge, label %list_del.exit.i.for.body.i37_crit_edge

list_del.exit.i.for.body.i37_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i37

list_del.exit.i.ucma_cleanup_multicast.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_cleanup_multicast.exit

ucma_cleanup_multicast.exit:                      ; preds = %list_del.exit.i.ucma_cleanup_multicast.exit_crit_edge, %ucma_cleanup_ctx_events.exit.ucma_cleanup_multicast.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @multicast_table) #11
  %74 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ctx, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @ctx_table) #11
  %call.i40 = call ptr @__xa_cmpxchg(ptr noundef nonnull @ctx_table, i32 noundef %75, ptr noundef nonnull inttoptr (i32 1030 to ptr), ptr noundef null, i32 noundef 3264) #11
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  %cmp.not = icmp eq ptr %call.i40, null
  br i1 %cmp.not, label %ucma_cleanup_multicast.exit.if.end20_crit_edge, label %do.end, !prof !96

ucma_cleanup_multicast.exit.if.end20_crit_edge:   ; preds = %ucma_cleanup_multicast.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end:                                           ; preds = %ucma_cleanup_multicast.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 585, i32 noundef 9, ptr noundef null) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end, %ucma_cleanup_multicast.exit.if.end20_crit_edge
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 7
  call void @mutex_destroy(ptr noundef %mutex) #11
  call void @kfree(ptr noundef %ctx) #11
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ucma_close_id(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ref.i = getelementptr i8, ptr %work, i32 -140
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ucma_put_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.ucma_put_ctx.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_put_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %ucma_put_ctx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr i8, ptr %work, i32 -196
  tail call void @complete(ptr noundef %comp.i) #11
  br label %ucma_put_ctx.exit

ucma_put_ctx.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ucma_put_ctx.exit_crit_edge
  %comp = getelementptr i8, ptr %work, i32 -196
  tail call void @wait_for_completion(ptr noundef %comp) #11
  %cm_id = getelementptr i8, ptr %work, i32 -124
  %1 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cm_id, align 4
  tail call void @rdma_destroy_id(ptr noundef %2) #11
  %3 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cm_id, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ucma_put_ctx(ptr noundef %ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !96

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 1
  tail call void @complete(ptr noundef %comp) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ucma_create_uevent(ptr noundef %ctx, ptr noundef %event) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 360) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %switch = icmp eq i32 %4, 12
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %param, align 8
  %mc = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mc, align 8
  %uid = getelementptr inbounds %struct.ucma_multicast, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %uid, align 8
  %resp = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %resp, align 8
  %id = getelementptr inbounds %struct.ucma_multicast, ptr %6, i32 0, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %uid8 = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 8
  %11 = ptrtoint ptr %uid8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %uid8, align 8
  %resp9 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %resp9 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %resp9, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %.sink.in = phi ptr [ %id, %sw.bb ], [ %ctx, %sw.default ]
  %14 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.sink = load i32, ptr %.sink.in, align 4
  %15 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 8
  %event16 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %event16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %3, ptr %event16, align 4
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %status18 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %status18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %status18, align 8
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cm_id, align 4
  %qp_type = getelementptr inbounds %struct.rdma_cm_id, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp = icmp eq i32 %24, 4
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %sw.epilog
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %param22 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4
  %private_data_len.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %private_data_len.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %private_data_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.then19.ucma_copy_ud_event.exit_crit_edge, label %if.then.i

if.then19.ucma_copy_ud_event.exit_crit_edge:      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_copy_ud_event.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %param23 = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %private_data.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 3
  %29 = ptrtoint ptr %param23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %param23, align 8
  %conv.i = zext i8 %28 to i32
  %31 = call ptr @memcpy(ptr %private_data.i, ptr %30, i32 %conv.i)
  br label %ucma_copy_ud_event.exit

ucma_copy_ud_event.exit:                          ; preds = %if.then.i, %if.then19.ucma_copy_ud_event.exit_crit_edge
  %private_data_len4.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 4
  %32 = ptrtoint ptr %private_data_len4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %28, ptr %private_data_len4.i, align 4
  %ah_attr.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 2
  %ah_attr5.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 2
  tail call void @ib_copy_ah_attr_to_user(ptr noundef %26, ptr noundef %ah_attr.i, ptr noundef %ah_attr5.i) #11
  %qp_num.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 3
  %33 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qp_num.i, align 8
  %35 = ptrtoint ptr %param22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %param22, align 4
  %qkey.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 4
  %36 = ptrtoint ptr %qkey.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qkey.i, align 4
  %qkey7.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 1
  %38 = ptrtoint ptr %qkey7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %qkey7.i, align 8
  br label %if.end27

if.else:                                          ; preds = %sw.epilog
  %param25 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4
  %param26 = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %private_data_len.i61 = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 1
  %39 = ptrtoint ptr %private_data_len.i61 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %private_data_len.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i62 = icmp eq i8 %40, 0
  br i1 %tobool.not.i62, label %if.else.ucma_copy_conn_event.exit_crit_edge, label %if.then.i65

if.else.ucma_copy_conn_event.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ucma_copy_conn_event.exit

if.then.i65:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %private_data.i63 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %param26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %param26, align 4
  %conv.i64 = zext i8 %40 to i32
  %43 = call ptr @memcpy(ptr %private_data.i63, ptr %42, i32 %conv.i64)
  br label %ucma_copy_conn_event.exit

ucma_copy_conn_event.exit:                        ; preds = %if.then.i65, %if.else.ucma_copy_conn_event.exit_crit_edge
  %private_data_len4.i66 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 3, i32 224
  %44 = ptrtoint ptr %private_data_len4.i66 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %40, ptr %private_data_len4.i66, align 4
  %responder_resources.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param26, i32 0, i32 2
  %45 = ptrtoint ptr %responder_resources.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %responder_resources.i, align 1
  %responder_resources5.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 3, i32 226
  %47 = ptrtoint ptr %responder_resources5.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %responder_resources5.i, align 2
  %initiator_depth.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param26, i32 0, i32 3
  %48 = ptrtoint ptr %initiator_depth.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %initiator_depth.i, align 2
  %initiator_depth6.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 3, i32 227
  %50 = ptrtoint ptr %initiator_depth6.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %initiator_depth6.i, align 1
  %flow_control.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param26, i32 0, i32 4
  %51 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flow_control.i, align 1
  %flow_control7.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 3, i32 228
  %53 = ptrtoint ptr %flow_control7.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %flow_control7.i, align 8
  %retry_count.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %retry_count.i, align 4
  %retry_count8.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 3, i32 229
  %56 = ptrtoint ptr %retry_count8.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %retry_count8.i, align 1
  %rnr_retry_count.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param26, i32 0, i32 6
  %57 = ptrtoint ptr %rnr_retry_count.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rnr_retry_count.i, align 1
  %rnr_retry_count9.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 3, i32 230
  %59 = ptrtoint ptr %rnr_retry_count9.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %rnr_retry_count9.i, align 2
  %srq.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param26, i32 0, i32 7
  %60 = ptrtoint ptr %srq.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %srq.i, align 2
  %srq10.i = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 0, i32 3, i32 225
  %62 = ptrtoint ptr %srq10.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %srq10.i, align 1
  %qp_num.i67 = getelementptr inbounds %struct.rdma_conn_param, ptr %param26, i32 0, i32 8
  %63 = ptrtoint ptr %qp_num.i67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qp_num.i67, align 4
  %65 = ptrtoint ptr %param25 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %param25, align 4
  br label %if.end27

if.end27:                                         ; preds = %ucma_copy_conn_event.exit, %ucma_copy_ud_event.exit
  %ece = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 3
  %66 = ptrtoint ptr %ece to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ece, align 8
  %ece29 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 6
  %68 = ptrtoint ptr %ece29 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %ece29, align 8
  %attr_mod = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %attr_mod to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %attr_mod, align 4
  %attr_mod34 = getelementptr inbounds %struct.ucma_event, ptr %call7.i.i, i32 0, i32 4, i32 6, i32 1
  %71 = ptrtoint ptr %attr_mod34 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %attr_mod34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_copy_ah_attr_to_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_addr_size_in6(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ucma_get_ctx(ptr noundef readnone %file, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ctx_table) #11
  %call.i = tail call ptr @xa_load(ptr noundef nonnull @ctx_table, i32 noundef %id) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end5_crit_edge, label %if.else.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.else.i:                                        ; preds = %entry
  %file2.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %file2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file2.i, align 8
  %cmp.not.i = icmp eq ptr %1, %file
  br i1 %cmp.not.i, label %_ucma_find_context.exit, label %if.else.i.if.end5_crit_edge

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

_ucma_find_context.exit:                          ; preds = %if.else.i
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_ucma_find_context.exit.if.end5_crit_edge, label %if.then

_ucma_find_context.exit.if.end5_crit_edge:        ; preds = %_ucma_find_context.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %_ucma_find_context.exit
  %ref = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #11
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then
  %4 = phi i32 [ %3, %if.then ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %7, i32 %add.i.i.i, ptr elementtype(i32) %ref) #11, !srcloc !109
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !96

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !96

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #11
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %spec.select = select i1 %tobool12.i.i.i.not, ptr inttoptr (i32 -6 to ptr), ptr %call.i
  br label %if.end5

if.end5:                                          ; preds = %refcount_inc_not_zero.exit, %_ucma_find_context.exit.if.end5_crit_edge, %if.else.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ctx.0 = phi ptr [ %call.i, %_ucma_find_context.exit.if.end5_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.if.end5_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.if.end5_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ]
  call void @_raw_spin_unlock(ptr noundef nonnull @ctx_table) #11
  ret ptr %ctx.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_route(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ucma_copy_iboe_route(ptr noundef %resp, ptr nocapture noundef readonly %route) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_paths = getelementptr inbounds %struct.rdma_route, ptr %route, i32 0, i32 2
  %0 = ptrtoint ptr %num_paths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_paths, align 4
  %num_paths1 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 4
  %2 = ptrtoint ptr %num_paths1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %num_paths1, align 8
  %3 = load i32, ptr %num_paths, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
    i32 1, label %entry.sw.bb13_crit_edge
  ]

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dst_addr = getelementptr inbounds %struct.rdma_addr, ptr %route, i32 0, i32 1
  %ib_route = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1
  %5 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dst_addr, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %6, label %sw.bb.rdma_ip2gid.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

sw.bb.rdma_ip2gid.exit_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ip2gid.exit

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr.i = getelementptr inbounds %struct.rdma_addr, ptr %route, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr.i, align 4
  %10 = ptrtoint ptr %ib_route to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ib_route, align 4
  %arrayidx1.i.i.i.i = getelementptr %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx1.i.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 0, i32 8
  %12 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65535, ptr %arrayidx2.i.i.i, align 4
  %arrayidx1.i1.i.i.i = getelementptr %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 0, i32 12
  %13 = ptrtoint ptr %arrayidx1.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %arrayidx1.i1.i.i.i, align 4
  br label %rdma_ip2gid.exit

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_addr.i = getelementptr inbounds %struct.rdma_addr, ptr %route, i32 0, i32 1, i32 0, i32 1, i32 4
  %14 = call ptr @memcpy(ptr %ib_route, ptr %sin6_addr.i, i32 16)
  br label %rdma_ip2gid.exit

rdma_ip2gid.exit:                                 ; preds = %sw.bb1.i, %sw.bb.i, %sw.bb.rdma_ip2gid.exit_crit_edge
  %sgid = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %route to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %route, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %16, label %rdma_ip2gid.exit.rdma_ip2gid.exit35_crit_edge [
    i16 2, label %sw.bb.i32
    i16 10, label %sw.bb1.i34
  ]

rdma_ip2gid.exit.rdma_ip2gid.exit35_crit_edge:    ; preds = %rdma_ip2gid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ip2gid.exit35

sw.bb.i32:                                        ; preds = %rdma_ip2gid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr.i28 = getelementptr inbounds %struct.sockaddr_in, ptr %route, i32 0, i32 2
  %18 = ptrtoint ptr %sin_addr.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sin_addr.i28, align 4
  %20 = ptrtoint ptr %sgid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sgid, align 4
  %arrayidx1.i.i.i.i29 = getelementptr %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx1.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx1.i.i.i.i29, align 4
  %arrayidx2.i.i.i30 = getelementptr %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1, i32 8
  %22 = ptrtoint ptr %arrayidx2.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65535, ptr %arrayidx2.i.i.i30, align 4
  %arrayidx1.i1.i.i.i31 = getelementptr %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1, i32 12
  %23 = ptrtoint ptr %arrayidx1.i1.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %arrayidx1.i1.i.i.i31, align 4
  br label %rdma_ip2gid.exit35

sw.bb1.i34:                                       ; preds = %rdma_ip2gid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_addr.i33 = getelementptr inbounds %struct.sockaddr_in6, ptr %route, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %sgid, ptr %sin6_addr.i33, i32 16)
  br label %rdma_ip2gid.exit35

rdma_ip2gid.exit35:                               ; preds = %sw.bb1.i34, %sw.bb.i32, %rdma_ip2gid.exit.rdma_ip2gid.exit35_crit_edge
  %pkey = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 0, i32 8
  %25 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %pkey, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11 = getelementptr %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1, i32 1
  %path_rec = getelementptr inbounds %struct.rdma_route, ptr %route, i32 0, i32 1
  %26 = ptrtoint ptr %path_rec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %path_rec, align 4
  %arrayidx12 = getelementptr %struct.sa_path_rec, ptr %27, i32 1
  tail call void @ib_copy_path_rec_to_user(ptr noundef %arrayidx11, ptr noundef %arrayidx12) #11
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb9, %entry.sw.bb13_crit_edge
  %ib_route14 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, ptr %resp, i32 0, i32 1
  %path_rec16 = getelementptr inbounds %struct.rdma_route, ptr %route, i32 0, i32 1
  %28 = ptrtoint ptr %path_rec16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %path_rec16, align 4
  tail call void @ib_copy_path_rec_to_user(ptr noundef %ib_route14, ptr noundef %29) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %rdma_ip2gid.exit35, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_copy_path_rec_to_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_connect_ece(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_listen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_lock_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_accept_ece(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_unlock_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_reject(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_init_qp_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_copy_qp_attr_to_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_set_service_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_reuseaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_afonly(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_ack_timeout(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_unpack_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_ib_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ucma_process_join(ptr noundef %file, ptr noundef %cmd, i32 noundef %out_len) unnamed_addr #3 align 64 {
entry:
  %resp = alloca %struct.rdma_ucm_create_id_resp, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #11
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %resp, align 4, !annotation !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %out_len)
  %cmp = icmp ult i32 %out_len, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr1 = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %cmd, i32 0, i32 5
  %addr_size = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %cmd, i32 0, i32 3
  %1 = ptrtoint ptr %addr_size to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr_size, align 4
  %conv = zext i16 %2 to i32
  %call = tail call i32 @rdma_addr_size(ptr noundef %addr1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp2.not = icmp eq i32 %call, %conv
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %join_flags = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %join_flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %join_flags, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %4, label %if.end5.cleanup_crit_edge [
    i16 0, label %if.end5.if.end17_crit_edge
    i16 1, label %if.then14
  ]

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end5.if.end17_crit_edge
  %join_state.0 = phi i8 [ 8, %if.then14 ], [ 1, %if.end5.if.end17_crit_edge ]
  %id = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %call.i = tail call fastcc ptr @ucma_get_ctx(ptr noundef %file, i32 noundef %7) #11
  %cmp.i.i104 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i104, label %if.end17.if.then20_crit_edge, label %if.end.i

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.end.i:                                         ; preds = %if.end17
  %cm_id.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cm_id.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end22

if.then2.i:                                       ; preds = %if.end.i
  %ref.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i105, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then20_crit_edge, label %if.then10.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.if.then20_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %if.then20

if.then.i.i105:                                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  tail call void @complete(ptr noundef %comp.i.i) #11
  br label %if.then20

if.then20:                                        ; preds = %if.then.i.i105, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  %retval.0.i116 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.if.then20_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i105 ], [ %call.i, %if.end17.if.then20_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i116 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 168) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end22.err_put_ctx_crit_edge, label %if.end25

if.end22.err_put_ctx_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_ctx

if.end25:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %call7.i.i, align 8
  %join_state27 = getelementptr inbounds %struct.ucma_multicast, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %join_state27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %join_state.0, ptr %join_state27, align 8
  %uid = getelementptr inbounds %struct.rdma_ucm_join_mcast, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %uid to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %uid, align 8
  %uid28 = getelementptr inbounds %struct.ucma_multicast, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %uid28 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %uid28, align 8
  %addr29 = getelementptr inbounds %struct.ucma_multicast, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %addr_size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr_size, align 4
  %conv31 = zext i16 %21 to i32
  %22 = call ptr @memcpy(ptr %addr29, ptr %addr1, i32 %conv31)
  tail call void @_raw_spin_lock(ptr noundef nonnull @multicast_table) #11
  %id32 = getelementptr inbounds %struct.ucma_multicast, ptr %call7.i.i, i32 0, i32 1
  %call33 = tail call i32 @__xa_alloc(ptr noundef nonnull @multicast_table, ptr noundef %id32, ptr noundef null, [2 x i32] [i32 -1, i32 0], i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end25.err_free_mc_crit_edge

if.end25.err_free_mc_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_mc

if.end36:                                         ; preds = %if.end25
  %list = getelementptr inbounds %struct.ucma_multicast, ptr %call7.i.i, i32 0, i32 5
  %mc_list = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i108 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %24, ptr noundef %mc_list) #11
  br i1 %call.i.i108, label %if.end.i.i109, label %if.end36.list_add_tail.exit_crit_edge

if.end36.list_add_tail.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i109:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %prev.i, align 4
  %26 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mc_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ucma_multicast, ptr %call7.i.i, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 8
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i109, %if.end36.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @multicast_table) #11
  %mutex = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cm_id, align 4
  %call38 = tail call i32 @rdma_join_multicast(ptr noundef %30, ptr noundef %addr29, i8 noundef zeroext %join_state.0, ptr noundef nonnull %call7.i.i) #11
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool40.not = icmp eq i32 %call38, 0
  br i1 %tobool40.not, label %if.end42, label %list_add_tail.exit.err_xa_erase_crit_edge

list_add_tail.exit.err_xa_erase_crit_edge:        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_xa_erase

if.end42:                                         ; preds = %list_add_tail.exit
  %31 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id32, align 4
  %33 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %resp, align 4
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %cmd, align 8
  %conv48 = trunc i64 %35 to i32
  %36 = inttoptr i32 %conv48 to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end42.if.then51_crit_edge, label %if.end.i.i

if.end42.if.then51_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then51

if.end.i.i:                                       ; preds = %if.end42
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %36, i32 4, i32 -1226833920) #15, !srcloc !103
  %asmresult.i.i = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.then51_crit_edge

if.end.i.i.if.then51_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then51

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 4) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %36, ptr noundef nonnull %resp, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool50.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool50.not, label %if.end52, label %copy_to_user.exit.if.then51_crit_edge

copy_to_user.exit.if.then51_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then51

if.then51:                                        ; preds = %copy_to_user.exit.if.then51_crit_edge, %if.end.i.i.if.then51_crit_edge, %if.end42.if.then51_crit_edge
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %38 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cm_id, align 4
  call void @rdma_leave_multicast(ptr noundef %39, ptr noundef %addr29) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  call fastcc void @ucma_cleanup_mc_events(ptr noundef nonnull %call7.i.i)
  br label %err_xa_erase

if.end52:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id32, align 4
  %call54 = call ptr @xa_store(ptr noundef nonnull @multicast_table, i32 noundef %41, ptr noundef nonnull %call7.i.i, i32 noundef 0) #11
  call fastcc void @ucma_put_ctx(ptr noundef %call.i)
  br label %cleanup

err_xa_erase:                                     ; preds = %if.then51, %list_add_tail.exit.err_xa_erase_crit_edge
  %ret.0 = phi i32 [ %call38, %list_add_tail.exit.err_xa_erase_crit_edge ], [ -14, %if.then51 ]
  call void @_raw_spin_lock(ptr noundef nonnull @multicast_table) #11
  %call.i.i110 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i110, label %if.end.i.i111, label %err_xa_erase.list_del.exit_crit_edge

err_xa_erase.list_del.exit_crit_edge:             ; preds = %err_xa_erase
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i111:                                    ; preds = %err_xa_erase
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ucma_multicast, ptr %call7.i.i, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 8
  %44 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i111, %err_xa_erase.list_del.exit_crit_edge
  %48 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i112 = getelementptr inbounds %struct.ucma_multicast, ptr %call7.i.i, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i112, align 8
  %50 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id32, align 4
  %call61 = call ptr @__xa_erase(ptr noundef nonnull @multicast_table, i32 noundef %51) #11
  br label %err_free_mc

err_free_mc:                                      ; preds = %list_del.exit, %if.end25.err_free_mc_crit_edge
  %ret.1 = phi i32 [ %ret.0, %list_del.exit ], [ -12, %if.end25.err_free_mc_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @multicast_table) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err_put_ctx

err_put_ctx:                                      ; preds = %err_free_mc, %if.end22.err_put_ctx_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_mc ], [ -12, %if.end22.err_put_ctx_crit_edge ]
  %ref.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #11
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #11, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_put_ctx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !96

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %err_put_ctx
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %comp.i = getelementptr inbounds %struct.ucma_context, ptr %call.i, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end52, %if.then20, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then20 ], [ 0, %if.end52 ], [ -28, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %ret.2, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.2, %if.then10.i.i.i.i ], [ %ret.2, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_addr_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_join_multicast(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_leave_multicast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ucma_cleanup_mc_events(ptr noundef readonly %mc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc, align 8
  %cm_id = getelementptr inbounds %struct.ucma_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id, align 4
  tail call void @rdma_lock_handler(ptr noundef %3) #11
  %4 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc, align 8
  %file = getelementptr inbounds %struct.ucma_context, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file, align 8
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #11
  %8 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc, align 8
  %file3 = getelementptr inbounds %struct.ucma_context, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %file3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file3, align 8
  %event_list = getelementptr inbounds %struct.ucma_file, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event_list, align 4
  %cmp.not42 = icmp eq ptr %13, %event_list
  br i1 %cmp.not42, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in43 = phi ptr [ %.pn46, %for.inc.for.body_crit_edge ], [ %13, %entry.for.body_crit_edge ]
  %uevent.045 = getelementptr i8, ptr %.pn.in43, i32 -12
  %14 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn46 = load ptr, ptr %.pn.in43, align 4
  %mc13 = getelementptr i8, ptr %.pn.in43, i32 -4
  %15 = ptrtoint ptr %mc13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc13, align 8
  %cmp14.not = icmp eq ptr %16, %mc
  br i1 %cmp14.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in43) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in43, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in43, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in43, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in43, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %uevent.045) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mc, align 8
  %file11 = getelementptr inbounds %struct.ucma_context, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %file11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %file11, align 8
  %event_list12 = getelementptr inbounds %struct.ucma_file, ptr %28, i32 0, i32 3
  %cmp.not = icmp eq ptr %.pn46, %event_list12
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %11, %entry.for.end_crit_edge ], [ %28, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %.lcssa) #11
  %29 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mc, align 8
  %cm_id25 = getelementptr inbounds %struct.ucma_context, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %cm_id25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cm_id25, align 4
  tail call void @rdma_unlock_handler(ptr noundef %32) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_pack_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_read_gids(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rdma_get_service_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_addr_size_kss(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @abi_version_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef 4) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !36, !37, !39, !41, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__UNIQUE_ID_author502, !1, !"__UNIQUE_ID_author502", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/ucma.c", i32 59, i32 1}
!2 = !{ptr @__UNIQUE_ID_description503, !3, !"__UNIQUE_ID_description503", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/ucma.c", i32 60, i32 1}
!4 = !{ptr @__UNIQUE_ID_file504, !5, !"__UNIQUE_ID_file504", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/ucma.c", i32 61, i32 1}
!6 = !{ptr @__UNIQUE_ID_license505, !5, !"__UNIQUE_ID_license505", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias521, !8, !"__UNIQUE_ID_alias521", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/core/ucma.c", i32 1843, i32 1}
!9 = !{ptr @__initcall__kmod_rdma_ucm__522_1895_ucma_init6, !10, !"__initcall__kmod_rdma_ucm__522_1895_ucma_init6", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/core/ucma.c", i32 1895, i32 1}
!11 = !{ptr @__exitcall_ucma_cleanup, !12, !"__exitcall_ucma_cleanup", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/core/ucma.c", i32 1896, i32 1}
!13 = !{ptr @ucma_ctl_table_hdr, !14, !"ucma_ctl_table_hdr", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/core/ucma.c", i32 65, i32 33}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/core/ucma.c", i32 1840, i32 10}
!17 = !{ptr @rdma_cma_client, !18, !"rdma_cma_client", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/core/ucma.c", i32 1839, i32 25}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/core/ucma.c", i32 1827, i32 14}
!21 = !{ptr @ucma_misc, !22, !"ucma_misc", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/ucma.c", i32 1824, i32 26}
!23 = !{ptr @ucma_fops, !24, !"ucma_fops", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/core/ucma.c", i32 1815, i32 37}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/core/ucma.c", i32 1723, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ucma_write._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @ucma_write._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/rdma/ib.h", i32 78, i32 25}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!41 = !{ptr @ucma_cmd_table, !42, !"ucma_cmd_table", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/core/ucma.c", i32 1687, i32 18}
!43 = !{ptr @ucma_alloc_ctx.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/core/ucma.c", i32 201, i32 2}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ucma_alloc_ctx.__key.9, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/core/ucma.c", i32 207, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/core/ucma.c", i32 121, i32 8}
!54 = !{ptr @ctx_table, !53, !"ctx_table", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/core/ucma.c", i32 122, i32 8}
!57 = !{ptr @multicast_table, !56, !"multicast_table", i1 false, i1 false}
!58 = !{ptr @max_backlog, !59, !"max_backlog", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/core/ucma.c", i32 63, i32 21}
!60 = !{ptr @ucma_open.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/core/ucma.c", i32 1782, i32 2}
!62 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ucma_open.__key.15, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/core/ucma.c", i32 1783, i32 2}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/core/ucma.c", i32 1850, i32 8}
!68 = !{ptr @dev_attr_abi_version, !67, !"dev_attr_abi_version", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/core/ucma.c", i32 1848, i32 25}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/core/ucma.c", i32 1862, i32 3}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ucma_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ucma_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/core/ucma.c", i32 1866, i32 54}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/core/ucma.c", i32 1868, i32 3}
!80 = !{ptr @ucma_init._entry.22, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ucma_init._entry_ptr.24, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/core/ucma.c", i32 68, i32 15}
!84 = !{ptr @ucma_ctl_table, !85, !"ucma_ctl_table", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/core/ucma.c", i32 66, i32 25}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2152219200, i64 2152219225}
!98 = !{i64 4714755}
!99 = !{i64 4714952}
!100 = !{i64 2152200185}
!101 = !{i64 635644, i64 635661}
!102 = !{!"auto-init"}
!103 = !{i64 2152219881, i64 2152219906}
!104 = !{i64 2148626751}
!105 = !{i64 2148541191, i64 2148541223, i64 2148541252, i64 2148541286, i64 2148541317, i64 2148541340}
!106 = !{i64 2150482291}
!107 = !{i64 2148537196, i64 2148537222, i64 2148537251, i64 2148537285, i64 2148537316, i64 2148537339}
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{i64 1022709, i64 1022733, i64 1022754, i64 1022771, i64 1022788}
!110 = !{!111}
!111 = distinct !{!111, !112, !"fdget: %agg.result"}
!112 = distinct !{!112, !"fdget"}
!113 = !{i64 2148536615}
!114 = !{i64 1023215, i64 1023240, i64 1023262, i64 1023278, i64 1023290, i64 1023310, i64 1023334, i64 1023350, i64 1023362}
!115 = !{i64 2148536803}
