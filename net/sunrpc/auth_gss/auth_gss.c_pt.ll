; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/auth_gss.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/auth_gss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rpc_authops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rpc_pipe_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rpc_pipe_dir_object_ops = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.rpc_credops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gss_alloc_pdo = type { ptr, ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.156, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.156 = type { %struct.work_struct }
%struct.gss_auth = type { %struct.kref, %struct.hlist_node, %struct.rpc_auth, ptr, i32, ptr, ptr, [2 x ptr], ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.rpc_auth_create_args = type { i32, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
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
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.gss_api_mech = type { %struct.list_head, ptr, %struct.rpcsec_gss_oid, ptr, ptr, i32, ptr, ptr }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.gss_cred = type { %struct.rpc_cred, i32, ptr, ptr, ptr, i32 }
%struct.auth_cred = type { ptr, ptr }
%struct.gss_pipe = type { %struct.rpc_pipe_dir_object, ptr, ptr, ptr, %struct.kref }
%struct.rpc_pipe_dir_object = type { %struct.list_head, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rpc_pipe = type { %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.spinlock, ptr }
%struct.rpc_pipe_msg = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.file = type { %union.anon.23, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.23 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rpc_inode = type { %struct.inode, ptr, ptr, %struct.wait_queue_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.142, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.143, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.144, ptr, %struct.address_space, %struct.list_head, %union.anon.145, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.142 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.143 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.144 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.145 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gss_cl_ctx = type { %struct.refcount_struct, i32, i32, i32, %struct.spinlock, ptr, %struct.xdr_netobj, %struct.xdr_netobj, i32, i32, %struct.callback_head }
%struct.xdr_netobj = type { i32, ptr }
%struct.gss_upcall_msg = type { %struct.refcount_struct, %struct.kuid_t, ptr, %struct.rpc_pipe_msg, %struct.list_head, ptr, ptr, %struct.rpc_wait_queue, %struct.wait_queue_head, ptr, [256 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.149, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.149 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.150, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.150 = type { %struct.rb_node }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.gss_ctx = type { ptr, ptr, i32, i32 }

@rpcsec_gss_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @rpcsec_gss_init_net, ptr null, ptr @rpcsec_gss_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@authgss_ops = internal constant { %struct.rpc_authops, [52 x i8] } { %struct.rpc_authops { ptr null, i32 6, ptr @.str, ptr @gss_create, ptr @gss_destroy, ptr @gss_hash_cred, ptr @gss_lookup_cred, ptr @gss_create_cred, ptr @gss_mech_info2flavor, ptr @gss_mech_flavor2info, ptr null }, [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias560 = internal constant [29 x i8] c"auth_rpcgss.alias=rpc-auth-6\00", section ".modinfo", align 1
@__UNIQUE_ID_file561 = internal constant [49 x i8] c"auth_rpcgss.file=net/sunrpc/auth_gss/auth_rpcgss\00", section ".modinfo", align 1
@__UNIQUE_ID_license562 = internal constant [24 x i8] c"auth_rpcgss.license=GPL\00", section ".modinfo", align 1
@__param_str_expired_cred_retry_delay = internal constant [37 x i8] c"auth_rpcgss.expired_cred_retry_delay\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@gss_expired_cred_retry_delay = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_expired_cred_retry_delay = internal constant %struct.kernel_param { ptr @__param_str_expired_cred_retry_delay, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @gss_expired_cred_retry_delay } }, section "__param", align 4
@__UNIQUE_ID_expired_cred_retry_delaytype563 = internal constant [51 x i8] c"auth_rpcgss.parmtype=expired_cred_retry_delay:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_expired_cred_retry_delay564 = internal constant [114 x i8] c"auth_rpcgss.parm=expired_cred_retry_delay:Timeout (in seconds) until the RPC engine retries an expired credential\00", section ".modinfo", align 1
@__param_str_key_expire_timeo = internal constant [29 x i8] c"auth_rpcgss.key_expire_timeo\00", align 1
@gss_key_expire_timeo = internal global { i32, [28 x i8] } { i32 240, [28 x i8] zeroinitializer }, align 32
@__param_key_expire_timeo = internal constant %struct.kernel_param { ptr @__param_str_key_expire_timeo, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @gss_key_expire_timeo } }, section "__param", align 4
@__UNIQUE_ID_key_expire_timeotype565 = internal constant [43 x i8] c"auth_rpcgss.parmtype=key_expire_timeo:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_key_expire_timeo566 = internal constant [147 x i8] c"auth_rpcgss.parm=key_expire_timeo:Time (in seconds) at the end of a credential keys lifetime where the NFS layer cleans up prior to key expiration\00", section ".modinfo", align 1
@__initcall__kmod_auth_rpcgss__567_2262_init_rpcsec_gss6 = internal global ptr @init_rpcsec_gss, section ".initcall6.init", align 4
@__exitcall_exit_rpcsec_gss = internal global ptr @exit_rpcsec_gss, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RPCSEC_GSS\00", [21 x i8] zeroinitializer }, align 32
@gss_auth_hash_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@gss_auth_hash_table = internal global { [16 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gss_auth_hash_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gssd\00", [27 x i8] zeroinitializer }, align 32
@gss_upcall_ops_v1 = internal constant { %struct.rpc_pipe_ops, [44 x i8] } { %struct.rpc_pipe_ops { ptr @gss_v1_upcall, ptr @gss_pipe_downcall, ptr @gss_pipe_release, ptr @gss_pipe_open_v1, ptr @gss_pipe_destroy_msg }, [44 x i8] zeroinitializer }, align 32
@gss_upcall_ops_v0 = internal constant { %struct.rpc_pipe_ops, [44 x i8] } { %struct.rpc_pipe_ops { ptr @gss_v0_upcall, ptr @gss_pipe_downcall, ptr @gss_pipe_release, ptr @gss_pipe_open_v0, ptr @gss_pipe_destroy_msg }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gss_pipe_dir_object_ops = internal constant { %struct.rpc_pipe_dir_object_ops, [24 x i8] } { %struct.rpc_pipe_dir_object_ops { ptr @gss_pipe_dentry_create, ptr @gss_pipe_dentry_destroy }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mech=%s uid=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" target=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" service=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" service=%.*s srchost=%s\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" enctypes=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@gss_encode_v1_msg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/sunrpc/auth_gss/auth_gss.c\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_rpcgss_upcall_msg = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/rpcgss.h\00", [34 x i8] zeroinitializer }, align 32
@trace_rpcgss_upcall_msg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@gss_pipe_downcall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012%s: bad return from gss_fill_context: %zd\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gss_pipe_downcall\00", [46 x i8] zeroinitializer }, align 32
@gss_pipe_downcall._entry_ptr = internal global ptr @gss_pipe_downcall._entry, section ".printk_index", align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@gss_alloc_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ctx->gc_seq_lock\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_rpcgss_import_ctx = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_import_ctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_context = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_context.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@pipe_version_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pipe_version_lock\00", [46 x i8] zeroinitializer }, align 32
@pipe_version_rpc_waitqueue = internal global { %struct.rpc_wait_queue, [56 x i8] } zeroinitializer, align 32
@pipe_version_waitqueue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @pipe_version_waitqueue, i64 44), ptr getelementptr (i8, ptr @pipe_version_waitqueue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pipe_version_waitqueue.lock\00", [36 x i8] zeroinitializer }, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@warn_gssd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.9, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"AUTH_GSS upcall failed. Please check user daemon is running.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"warn_gssd\00", [22 x i8] zeroinitializer }, align 32
@warn_gssd._entry_ptr = internal global ptr @warn_gssd._entry, section ".printk_index", align 4
@__tracepoint_rpcgss_createauth = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_createauth.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@gss_credops = internal constant { %struct.rpc_credops, [48 x i8] } { %struct.rpc_credops { ptr @.str.27, ptr @gss_cred_init, ptr @gss_destroy_cred, ptr @gss_match, ptr @gss_marshal, ptr @gss_refresh, ptr @gss_validate, ptr @gss_wrap_req, ptr @gss_unwrap_resp, ptr @gss_key_timeout, ptr @gss_stringify_acceptor, ptr @gss_xmit_need_reencode }, [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUTH_GSS\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RPCSEC_GSS upcall waitq\00", [40 x i8] zeroinitializer }, align 32
@gss_alloc_msg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&gss_msg->waitqueue\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_rpcgss_ctx_init = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_ctx_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_upcall_result = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_upcall_result.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gss_nullops = internal constant { %struct.rpc_credops, [48 x i8] } { %struct.rpc_credops { ptr @.str.27, ptr null, ptr @gss_destroy_nullcred, ptr @gss_match, ptr @gss_marshal, ptr @gss_refresh_null, ptr @gss_validate, ptr @gss_wrap_req, ptr @gss_unwrap_resp, ptr null, ptr @gss_stringify_acceptor, ptr null }, [48 x i8] zeroinitializer }, align 32
@__tracepoint_rpcgss_ctx_destroy = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_ctx_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@gss_match.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gss_cred_get_ctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_seqno = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_seqno.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_get_mic = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_get_mic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_verify_mic = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_verify_mic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_wrap = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_wrap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_update_slack = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_update_slack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_unwrap_failed = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_unwrap_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_bad_seqno = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_bad_seqno.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_unwrap = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_unwrap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gss_key_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gss_stringify_acceptor.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gss_stringify_acceptor.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpcgss_need_reencode = external dso_local global %struct.tracepoint, align 4
@trace_rpcgss_need_reencode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gss pipe version\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4294967169, i64 4294967258, i64 4294967274, i64 4294967282, i64 4294967283, i64 4294967284]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 786432]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967169]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 786432]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967169]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 786432]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 786432]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 786432]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 786432]
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"rpcsec_gss_net_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2208, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"authgss_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2142, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant [29 x i8] c"gss_expired_cred_retry_delay\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 43, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"gss_key_expire_timeo\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 46, i32 21 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2145, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"gss_auth_hash_lock\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"gss_auth_hash_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 57, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 58, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1048, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"gss_upcall_ops_v1\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2190, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"gss_upcall_ops_v0\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2182, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"gss_pipe_dir_object_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 879, i32 45 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 424, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 435, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 455, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 459, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 468, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 475, i32 29 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 482, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [33 x i8] c"../include/trace/events/rpcgss.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 532, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 108, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 758, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 230, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 214, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 156, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 152, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"pipe_version_lock\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 45, i32 7 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 695, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 723, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 87, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"pipe_version_rpc_waitqueue\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 88, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant [23 x i8] c"pipe_version_waitqueue\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 89, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 573, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [12 x i8] c"gss_credops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2155, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2156, i32 14 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 522, i32 47 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 523, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"gss_nullops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2170, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 286, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [34 x i8] c"../net/sunrpc/auth_gss/auth_gss.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 2229, i32 51 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias560, ptr @__UNIQUE_ID_expired_cred_retry_delay564, ptr @__UNIQUE_ID_expired_cred_retry_delaytype563, ptr @__UNIQUE_ID_file561, ptr @__UNIQUE_ID_key_expire_timeo566, ptr @__UNIQUE_ID_key_expire_timeotype565, ptr @__UNIQUE_ID_license562, ptr @__exitcall_exit_rpcsec_gss, ptr @__initcall__kmod_auth_rpcgss__567_2262_init_rpcsec_gss6, ptr @__param_expired_cred_retry_delay, ptr @__param_key_expire_timeo, ptr @exit_rpcsec_gss, ptr @gss_pipe_downcall._entry, ptr @gss_pipe_downcall._entry_ptr, ptr @warn_gssd._entry, ptr @warn_gssd._entry_ptr, ptr @rpcsec_gss_net_ops, ptr @authgss_ops, ptr @gss_expired_cred_retry_delay, ptr @gss_key_expire_timeo, ptr @.str, ptr @gss_auth_hash_lock, ptr @gss_auth_hash_table, ptr @.str.1, ptr @.str.2, ptr @gss_upcall_ops_v1, ptr @gss_upcall_ops_v0, ptr @gss_pipe_dir_object_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @gss_alloc_context.__key, ptr @.str.18, ptr @pipe_version_lock, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pipe_version_rpc_waitqueue, ptr @pipe_version_waitqueue, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @gss_credops, ptr @.str.27, ptr @.str.28, ptr @gss_alloc_msg.__key, ptr @.str.29, ptr @gss_nullops, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcsec_gss_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @authgss_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_expired_cred_retry_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_key_expire_timeo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_auth_hash_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_auth_hash_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_upcall_ops_v1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_upcall_ops_v0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_pipe_dir_object_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_pipe_downcall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_alloc_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_version_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_version_rpc_waitqueue to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe_version_waitqueue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_gssd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_credops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_alloc_msg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_nullops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rpcsec_gss() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @rpcsec_gss_net_ops) #14
  tail call void @gss_svc_shutdown() #14
  %call = tail call i32 @rpcauth_unregister(ptr noundef nonnull @authgss_ops) #14
  tail call void @rcu_barrier() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_svc_shutdown() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rpcsec_gss() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rpcauth_register(ptr noundef nonnull @authgss_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @gss_svc_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unregister_crit_edge

if.end.out_unregister_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unregister

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @rpcsec_gss_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %out_svc_exit

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rpc_init_wait_queue(ptr noundef nonnull @pipe_version_rpc_waitqueue, ptr noundef nonnull @.str.33) #14
  br label %cleanup

out_svc_exit:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @gss_svc_shutdown() #14
  br label %out_unregister

out_unregister:                                   ; preds = %out_svc_exit, %if.end.out_unregister_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_unregister_crit_edge ], [ %call5, %out_svc_exit ]
  %call9 = tail call i32 @rpcauth_unregister(ptr noundef nonnull @authgss_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unregister, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %out_unregister ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcsec_gss_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gss_svc_init_net(ptr noundef %net) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpcsec_gss_exit_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gss_svc_shutdown_net(ptr noundef %net) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_svc_init_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_svc_shutdown_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gss_create(ptr nocapture noundef readonly %args, ptr noundef %clnt) #2 align 64 {
entry:
  %args.i25 = alloca %struct.gss_alloc_pdo, align 4
  %args.i = alloca %struct.gss_alloc_pdo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.rpc_clnt, ptr %clnt, i32 0, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %clnt.addr.0 = phi ptr [ %clnt, %entry ], [ %4, %while.body.while.cond_crit_edge ]
  %cl_parent = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.addr.0, i32 0, i32 21
  %3 = ptrtoint ptr %cl_parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl_parent, align 4
  %cmp.not = icmp eq ptr %clnt.addr.0, %4
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.cond
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %4, i32 0, i32 28
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %cmp9.not = icmp eq ptr %7, %2
  br i1 %cmp9.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %call.i = tail call fastcc ptr @gss_auth_find_or_add_hashed(ptr noundef %args, ptr noundef %clnt.addr.0, ptr noundef null) #14
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.end.i, label %while.end.gss_create_hashed.exit_crit_edge

while.end.gss_create_hashed.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_create_hashed.exit

if.end.i:                                         ; preds = %while.end
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args, align 4
  %call.i.i = tail call zeroext i1 @try_module_get(ptr noundef null) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.i.cleanup14_crit_edge

if.end.i.cleanup14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup14

if.end.i.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 76) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.out_dec.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.out_dec.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_dec.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %hash.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %hash.i.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pprev.i.i.i, align 8
  %target_name.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %target_name.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %target_name.i.i, align 8
  %target_name5.i.i = getelementptr inbounds %struct.rpc_auth_create_args, ptr %args, i32 0, i32 1
  %14 = ptrtoint ptr %target_name5.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %target_name5.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i.i, label %if.end4.i.i.if.end14.i.i_crit_edge, label %if.then7.i.i

if.end4.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  %call9.i.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %15, i32 noundef 3264) #14
  %16 = ptrtoint ptr %target_name.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %target_name.i.i, align 8
  %cmp.i.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i.i, label %if.then7.i.i.err_free.i.i_crit_edge, label %if.then7.i.i.if.end14.i.i_crit_edge

if.then7.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i.i

if.then7.i.i.err_free.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free.i.i

if.end14.i.i:                                     ; preds = %if.then7.i.i.if.end14.i.i_crit_edge, %if.end4.i.i.if.end14.i.i_crit_edge
  %client.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %client.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %clnt.addr.0, ptr %client.i.i, align 8
  %call15.i.i = tail call ptr @rpc_net_ns(ptr noundef %clnt.addr.0) #14
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %call15.i.i, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end14.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !196

if.end14.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end14.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_net.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !197

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_net.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_net.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end14.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end14.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %get_net.exit.i.i

get_net.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_net.exit.i.i_crit_edge
  %net.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %net.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call15.i.i, ptr %net.i.i, align 4
  %call17.i.i = tail call ptr @gss_mech_get_by_pseudoflavor(i32 noundef %9) #14
  %mech.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %mech.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call17.i.i, ptr %mech.i.i, align 8
  %tobool19.not.i.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool19.not.i.i, label %get_net.exit.i.i.err_put_net.i.i_crit_edge, label %if.end21.i.i

get_net.exit.i.i.err_put_net.i.i_crit_edge:       ; preds = %get_net.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_put_net.i.i

if.end21.i.i:                                     ; preds = %get_net.exit.i.i
  %call23.i.i = tail call i32 @gss_pseudoflavor_to_service(ptr noundef nonnull %call17.i.i, i32 noundef %9) #14
  %service.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %service.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call23.i.i, ptr %service.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp25.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %cmp25.i.i, label %if.end21.i.i.err_put_mech.i.i_crit_edge, label %if.end27.i.i

if.end21.i.i.err_put_mech.i.i_crit_edge:          ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_put_mech.i.i

if.end27.i.i:                                     ; preds = %if.end21.i.i
  %23 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i.i, align 4
  %call29.i.i = tail call zeroext i1 @gssd_running(ptr noundef %24) #14
  br i1 %call29.i.i, label %if.end31.i.i, label %if.end27.i.i.err_put_mech.i.i_crit_edge

if.end27.i.i.err_put_mech.i.i_crit_edge:          ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_put_mech.i.i

if.end31.i.i:                                     ; preds = %if.end27.i.i
  %rpc_auth.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %rpc_auth.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 200, ptr %rpc_auth.i.i, align 4
  %au_rslack.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %au_rslack.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 37, ptr %au_rslack.i.i, align 8
  %au_verfsize.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %au_verfsize.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 25, ptr %au_verfsize.i.i, align 4
  %au_ralign.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %au_ralign.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 25, ptr %au_ralign.i.i, align 8
  %au_flags.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %au_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %au_flags.i.i, align 4
  %or.i.i.i = or i32 %30, 4
  store i32 %or.i.i.i, ptr %au_flags.i.i, align 4
  %au_ops.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %au_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @authgss_ops, ptr %au_ops.i.i, align 8
  %au_flavor.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %32 = ptrtoint ptr %au_flavor.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %9, ptr %au_flavor.i.i, align 4
  %33 = ptrtoint ptr %mech.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mech.i.i, align 8
  %call33.i.i = tail call zeroext i1 @gss_pseudoflavor_to_datatouch(ptr noundef %34, i32 noundef %9) #14
  br i1 %call33.i.i, label %if.then34.i.i, label %if.end31.i.i.if.end36.i.i_crit_edge

if.end31.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %au_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %au_flags.i.i, align 4
  %or.i115.i.i = or i32 %36, 2
  store i32 %or.i115.i.i, ptr %au_flags.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i.if.end36.i.i_crit_edge
  %au_count.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 2, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %au_count.i.i, i32 noundef 4) #14
  %37 = ptrtoint ptr %au_count.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %au_count.i.i, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #14
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %call37.i.i = tail call i32 @rpcauth_init_credcache(ptr noundef %rpc_auth.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %tobool38.not.i.i = icmp eq i32 %call37.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end40.i.i, label %if.end36.i.i.err_put_mech.i.i_crit_edge

if.end36.i.i.err_put_mech.i.i_crit_edge:          ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_put_mech.i.i

if.end40.i.i:                                     ; preds = %if.end36.i.i
  %call.i26 = tail call ptr @rpc_net_ns(ptr noundef %clnt.addr.0) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i25) #14
  %39 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %args.i25, i32 0, i32 1
  %40 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %args.i25, i32 0, i32 2
  %41 = ptrtoint ptr %args.i25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %clnt.addr.0, ptr %args.i25, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.2, ptr %39, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @gss_upcall_ops_v1, ptr %40, align 4
  %cl_pipedir_objects.i27 = getelementptr inbounds %struct.rpc_clnt, ptr %clnt.addr.0, i32 0, i32 20
  %call4.i28 = call ptr @rpc_find_or_alloc_pipe_dir_object(ptr noundef %call.i26, ptr noundef %cl_pipedir_objects.i27, ptr noundef nonnull @gss_pipe_match_pdo, ptr noundef nonnull @gss_pipe_alloc_pdo, ptr noundef nonnull %args.i25) #14
  %cmp.not.i29 = icmp eq ptr %call4.i28, null
  %spec.select.i30 = select i1 %cmp.not.i29, ptr inttoptr (i32 -12 to ptr), ptr %call4.i28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i25) #14
  %cmp.i.i.i = icmp ugt ptr %spec.select.i30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end40.i.i.err_destroy_credcache.i.i_crit_edge, label %if.end45.i.i

if.end40.i.i.err_destroy_credcache.i.i_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_credcache.i.i

if.end45.i.i:                                     ; preds = %if.end40.i.i
  %arrayidx.i.i = getelementptr %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %spec.select.i30, ptr %arrayidx.i.i, align 4
  %45 = ptrtoint ptr %mech.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mech.i.i, align 8
  %gm_name.i.i = getelementptr inbounds %struct.gss_api_mech, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %gm_name.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gm_name.i.i, align 4
  %call.i23 = call ptr @rpc_net_ns(ptr noundef %clnt.addr.0) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #14
  %49 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %args.i, i32 0, i32 1
  %50 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %args.i, i32 0, i32 2
  %51 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %clnt.addr.0, ptr %args.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %49, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @gss_upcall_ops_v0, ptr %50, align 4
  %call4.i = call ptr @rpc_find_or_alloc_pipe_dir_object(ptr noundef %call.i23, ptr noundef %cl_pipedir_objects.i27, ptr noundef nonnull @gss_pipe_match_pdo, ptr noundef nonnull @gss_pipe_alloc_pdo, ptr noundef nonnull %args.i) #14
  %cmp.not.i24 = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %cmp.not.i24, ptr inttoptr (i32 -12 to ptr), ptr %call4.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #14
  %cmp.i116.i.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.i.i, label %if.then50.i.i, label %if.end52.i.i

if.then50.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 4
  call fastcc void @gss_pipe_free(ptr noundef %55) #14
  br label %err_destroy_credcache.i.i

if.end52.i.i:                                     ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %gss_pipe46.i.i = getelementptr inbounds %struct.gss_auth, ptr %call7.i.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %gss_pipe46.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %spec.select.i, ptr %gss_pipe46.i.i, align 8
  br label %gss_create_new.exit.i

err_destroy_credcache.i.i:                        ; preds = %if.then50.i.i, %if.end40.i.i.err_destroy_credcache.i.i_crit_edge
  %err.0.in.i.i = phi ptr [ %spec.select.i, %if.then50.i.i ], [ %spec.select.i30, %if.end40.i.i.err_destroy_credcache.i.i_crit_edge ]
  %err.0.i.i = ptrtoint ptr %err.0.in.i.i to i32
  call void @rpcauth_destroy_credcache(ptr noundef %rpc_auth.i.i) #14
  br label %err_put_mech.i.i

err_put_mech.i.i:                                 ; preds = %err_destroy_credcache.i.i, %if.end36.i.i.err_put_mech.i.i_crit_edge, %if.end27.i.i.err_put_mech.i.i_crit_edge, %if.end21.i.i.err_put_mech.i.i_crit_edge
  %err.1.i.i = phi i32 [ -22, %if.end21.i.i.err_put_mech.i.i_crit_edge ], [ %call37.i.i, %if.end36.i.i.err_put_mech.i.i_crit_edge ], [ %err.0.i.i, %err_destroy_credcache.i.i ], [ -22, %if.end27.i.i.err_put_mech.i.i_crit_edge ]
  %57 = ptrtoint ptr %mech.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mech.i.i, align 8
  call void @gss_mech_put(ptr noundef %58) #14
  br label %err_put_net.i.i

err_put_net.i.i:                                  ; preds = %err_put_mech.i.i, %get_net.exit.i.i.err_put_net.i.i_crit_edge
  %err.2.i.i = phi i32 [ %err.1.i.i, %err_put_mech.i.i ], [ -22, %get_net.exit.i.i.err_put_net.i.i_crit_edge ]
  %59 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i.i, align 4
  %count.i117.i.i = getelementptr inbounds %struct.net, ptr %60, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i118.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i117.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  call void @llvm.prefetch.p0(ptr %count.i117.i.i, i32 1, i32 3, i32 1) #14
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i117.i.i, ptr %count.i117.i.i, i32 1, ptr elementtype(i32) %count.i117.i.i) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %err_put_net.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i119.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i119.i.i, label %if.end5.i.i.i.i.i.i.err_free.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !197

if.end5.i.i.i.i.i.i.err_free.i.i_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %count.i117.i.i, i32 noundef 3) #14
  br label %err_free.i.i

if.then.i.i.i:                                    ; preds = %err_put_net.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  call void @__put_net(ptr noundef %60) #14
  br label %err_free.i.i

err_free.i.i:                                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.err_free.i.i_crit_edge, %if.then7.i.i.err_free.i.i_crit_edge
  %err.3.i.i = phi i32 [ -12, %if.then7.i.i.err_free.i.i_crit_edge ], [ %err.2.i.i, %if.end5.i.i.i.i.i.i.err_free.i.i_crit_edge ], [ %err.2.i.i, %if.then10.i.i.i.i.i.i ], [ %err.2.i.i, %if.then.i.i.i ]
  %62 = ptrtoint ptr %target_name.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %target_name.i.i, align 8
  call void @kfree(ptr noundef %63) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %out_dec.i.i

out_dec.i.i:                                      ; preds = %err_free.i.i, %if.end.i.i.out_dec.i.i_crit_edge
  %err.4.i.i = phi i32 [ %err.3.i.i, %err_free.i.i ], [ -12, %if.end.i.i.out_dec.i.i_crit_edge ]
  call void @module_put(ptr noundef null) #14
  call fastcc void @trace_rpcgss_createauth(i32 noundef %9, i32 noundef %err.4.i.i) #14
  %64 = inttoptr i32 %err.4.i.i to ptr
  br label %gss_create_new.exit.i

gss_create_new.exit.i:                            ; preds = %out_dec.i.i, %if.end52.i.i
  %retval.0.i.i = phi ptr [ %64, %out_dec.i.i ], [ %call7.i.i.i, %if.end52.i.i ]
  %cmp.i20.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %gss_create_new.exit.i.gss_create_hashed.exit_crit_edge, label %if.end4.i

gss_create_new.exit.i.gss_create_hashed.exit_crit_edge: ; preds = %gss_create_new.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_create_hashed.exit

if.end4.i:                                        ; preds = %gss_create_new.exit.i
  %call5.i = call fastcc ptr @gss_auth_find_or_add_hashed(ptr noundef %args, ptr noundef %clnt.addr.0, ptr noundef %retval.0.i.i) #14
  %cmp6.not.i = icmp eq ptr %call5.i, %retval.0.i.i
  br i1 %cmp6.not.i, label %if.end4.i.gss_create_hashed.exit_crit_edge, label %if.then7.i

if.end4.i.gss_create_hashed.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_create_hashed.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %rpc_auth.i = getelementptr inbounds %struct.gss_auth, ptr %retval.0.i.i, i32 0, i32 2
  call void @gss_destroy(ptr noundef %rpc_auth.i) #14
  br label %gss_create_hashed.exit

gss_create_hashed.exit:                           ; preds = %if.then7.i, %if.end4.i.gss_create_hashed.exit_crit_edge, %gss_create_new.exit.i.gss_create_hashed.exit_crit_edge, %while.end.gss_create_hashed.exit_crit_edge
  %retval.0.i = phi ptr [ %retval.0.i.i, %gss_create_new.exit.i.gss_create_hashed.exit_crit_edge ], [ %call.i, %while.end.gss_create_hashed.exit_crit_edge ], [ %call5.i, %if.then7.i ], [ %retval.0.i.i, %if.end4.i.gss_create_hashed.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %rpc_auth = getelementptr inbounds %struct.gss_auth, ptr %retval.0.i, i32 0, i32 2
  %spec.select = select i1 %cmp.i, ptr %retval.0.i, ptr %rpc_auth
  br label %cleanup14

cleanup14:                                        ; preds = %gss_create_hashed.exit, %if.end.i.cleanup14_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup14_crit_edge ], [ %spec.select, %gss_create_hashed.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_destroy(ptr noundef %auth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hash = getelementptr i8, ptr %auth, i32 -8
  %pprev.i.i = getelementptr i8, ptr %auth, i32 -4
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @gss_auth_hash_lock) #14
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i.i, label %if.then.hash_del.exit_crit_edge, label %if.then.i.i

if.then.hash_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.then
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %hash, align 4
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then.hash_del.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gss_auth_hash_lock) #14
  br label %if.end

if.end:                                           ; preds = %hash_del.exit, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %auth, i32 -12
  %gss_pipe = getelementptr i8, ptr %auth, i32 52
  %10 = ptrtoint ptr %gss_pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gss_pipe, align 4
  tail call fastcc void @gss_pipe_free(ptr noundef %11)
  %12 = ptrtoint ptr %gss_pipe to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %gss_pipe, align 4
  %arrayidx5 = getelementptr i8, ptr %auth, i32 56
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5, align 4
  tail call fastcc void @gss_pipe_free(ptr noundef %14)
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx5, align 4
  tail call void @rpcauth_destroy_credcache(ptr noundef %auth) #14
  tail call fastcc void @gss_put_auth(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_hash_cred(ptr nocapture noundef readonly %acred, i32 noundef %hashbits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acred, align 4
  %fsuid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %fsuid, align 4
  %3 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %3) #14
  %mul.i.i.i = mul i32 %call, 1640531527
  %sub.i.i = sub i32 32, %hashbits
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  ret i32 %shr.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gss_lookup_cred(ptr noundef %auth, ptr noundef %acred, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rpcauth_lookup_credcache(ptr noundef %auth, ptr noundef %acred, i32 noundef %flags, i32 noundef 3136) #14
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gss_create_cred(ptr noundef %auth, ptr noundef %acred, i32 noundef %flags, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %gfp, 256
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !197

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 68) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %add.ptr = getelementptr i8, ptr %auth, i32 -12
  tail call void @rpcauth_init_cred(ptr noundef nonnull %call7.i.i, ptr noundef %acred, ptr noundef %auth, ptr noundef nonnull @gss_credops) #14
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %cr_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %cr_flags, align 4
  %service = getelementptr i8, ptr %auth, i32 40
  %3 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %service, align 4
  %gc_service = getelementptr inbounds %struct.gss_cred, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %gc_service to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %gc_service, align 8
  %principal = getelementptr inbounds %struct.auth_cred, ptr %acred, i32 0, i32 1
  %6 = ptrtoint ptr %principal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %principal, align 4
  %gc_principal = getelementptr inbounds %struct.gss_cred, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %gc_principal to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %gc_principal, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !196

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !197

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.else.i.i.i.i.cleanup_crit_edge ], [ %call7.i.i, %if.end15.sink.split.i.i.i.i ], [ inttoptr (i32 -12 to ptr), %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_mech_info2flavor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_mech_flavor2info(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gss_auth_find_or_add_hashed(ptr nocapture noundef readonly %args, ptr noundef %clnt, ptr noundef %new) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clnt to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @gss_auth_hash_lock) #14
  %mul.i.i = mul i32 %0, 1640531527
  %shr.i = lshr i32 %mul.i.i, 28
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr @gss_auth_hash_table, i32 0, i32 %shr.i
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -4
  %tobool2.not7073 = icmp eq ptr %add.ptr, null
  %tobool2.not70 = or i1 %tobool.not, %tobool2.not7073
  br i1 %tobool2.not70, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %target_name6 = getelementptr inbounds %struct.rpc_auth_create_args, ptr %args, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %gss_auth.071 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr34, %for.inc.for.body_crit_edge ]
  %client = getelementptr inbounds %struct.gss_auth, ptr %gss_auth.071, i32 0, i32 5
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %cmp.not = icmp eq ptr %4, %clnt
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %au_flavor = getelementptr inbounds %struct.gss_auth, ptr %gss_auth.071, i32 0, i32 2, i32 6
  %5 = ptrtoint ptr %au_flavor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %au_flavor, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3.not = icmp eq i32 %6, %8
  br i1 %cmp3.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %target_name = getelementptr inbounds %struct.gss_auth, ptr %gss_auth.071, i32 0, i32 8
  %9 = ptrtoint ptr %target_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %target_name, align 4
  %11 = ptrtoint ptr %target_name6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %target_name6, align 4
  %cmp7.not = icmp eq ptr %10, %12
  br i1 %cmp7.not, label %if.end5.if.end23_crit_edge, label %if.then8

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then8:                                         ; preds = %if.end5
  %cmp10 = icmp eq ptr %10, null
  %cmp14 = icmp eq ptr %12, null
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp14
  br i1 %or.cond, label %if.then8.for.inc_crit_edge, label %if.end16

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end16:                                         ; preds = %if.then8
  %call19 = call i32 @strcmp(ptr noundef nonnull %10, ptr noundef nonnull %12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end23:                                         ; preds = %if.end16.if.end23_crit_edge, %if.end5.if.end23_crit_edge
  %au_count = getelementptr inbounds %struct.gss_auth, ptr %gss_auth.071, i32 0, i32 2, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %au_count, i32 noundef 4) #14
  %13 = ptrtoint ptr %au_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %au_count, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end23
  %15 = phi i32 [ %14, %if.end23 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %15, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %au_count, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %17 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %au_count, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %au_count, ptr %au_count, i32 %18, i32 %add.i.i.i, ptr elementtype(i32) %au_count) #14, !srcloc !201
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %18
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !197

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %20 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %21, 1
  %22 = or i32 %add5.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !197

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %au_count, i32 noundef 0) #14
  %23 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %24 = phi i32 [ %21, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.i.i.i.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %refcount_inc_not_zero.exit.out_crit_edge

refcount_inc_not_zero.exit.out_crit_edge:         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %if.then8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hash = getelementptr inbounds %struct.gss_auth, ptr %gss_auth.071, i32 0, i32 1
  %25 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hash, align 4
  %tobool30.not = icmp eq ptr %26, null
  %add.ptr34 = getelementptr i8, ptr %26, i32 -4
  %tobool2.not76 = icmp eq ptr %add.ptr34, null
  %tobool2.not = or i1 %tobool30.not, %tobool2.not76
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool38.not = icmp eq ptr %new, null
  br i1 %tobool38.not, label %for.end.out_crit_edge, label %if.then39

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then39:                                        ; preds = %for.end
  %hash40 = getelementptr inbounds %struct.gss_auth, ptr %new, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %hash40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %hash40, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then39.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then39.hlist_add_head.exit_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %hash40, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then39.hlist_add_head.exit_crit_edge
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %hash40, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.gss_auth, ptr %new, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  br label %out

out:                                              ; preds = %hlist_add_head.exit, %for.end.out_crit_edge, %refcount_inc_not_zero.exit.out_crit_edge
  %gss_auth.1 = phi ptr [ %new, %hlist_add_head.exit ], [ null, %for.end.out_crit_edge ], [ %gss_auth.071, %refcount_inc_not_zero.exit.out_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef nonnull @gss_auth_hash_lock) #14
  ret ptr %gss_auth.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_net_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gss_mech_get_by_pseudoflavor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_pseudoflavor_to_service(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gssd_running(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gss_pseudoflavor_to_datatouch(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_init_credcache(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gss_pipe_free(ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %p, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.gss_pipe, ptr %p, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %clnt1.i.i = getelementptr %struct.gss_pipe, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %clnt1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clnt1.i.i, align 4
  %call.i.i = tail call ptr @rpc_net_ns(ptr noundef %2) #14
  %cl_pipedir_objects.i.i = getelementptr inbounds %struct.rpc_clnt, ptr %2, i32 0, i32 20
  tail call void @rpc_remove_pipe_dir_object(ptr noundef %call.i.i, ptr noundef %cl_pipedir_objects.i.i, ptr noundef nonnull %p) #14
  %pipe.i.i = getelementptr %struct.gss_pipe, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pipe.i.i, align 4
  tail call void @rpc_destroy_pipe_data(ptr noundef %4) #14
  tail call void @kfree(ptr noundef nonnull %p) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_destroy_credcache(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_mech_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_createauth(i32 noundef %flavor, i32 noundef %error) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_createauth, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_createauth, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !203
  %call42 = tail call i32 @__traceiter_rpcgss_createauth(ptr noundef null, i32 noundef %flavor, i32 noundef %error) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_createauth, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_createauth, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_createauth.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_createauth.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 644, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_find_or_alloc_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_pipe_match_pdo(ptr noundef %pdo, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdo_ops = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %pdo, i32 0, i32 1
  %0 = ptrtoint ptr %pdo_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdo_ops, align 4
  %cmp.not = icmp eq ptr %1, @gss_pipe_dir_object_ops
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.gss_pipe, ptr %pdo, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %name1 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef %5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %kref = getelementptr inbounds %struct.gss_pipe, ptr %pdo, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #14
  %6 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end4
  %8 = phi i32 [ %7, %if.end4 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %11, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #14, !srcloc !201
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !197

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #14
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp ne i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %. = zext i1 %tobool12.i.i.i.i.not to i32
  br label %cleanup

cleanup:                                          ; preds = %kref_get_unless_zero.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %., %kref_get_unless_zero.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gss_pipe_alloc_pdo(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.gss_alloc_pdo, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %upcall_ops = getelementptr inbounds %struct.gss_alloc_pdo, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %upcall_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upcall_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 32) #17
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %entry.gss_pipe_alloc.exit_crit_edge, label %if.end.i

entry.gss_pipe_alloc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_pipe_alloc.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @rpc_mkpipe_data(ptr noundef %5, i32 noundef 1) #14
  %pipe.i = getelementptr inbounds %struct.gss_pipe, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i, ptr %pipe.i, align 8
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %gss_pipe_alloc.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %name8.i = getelementptr inbounds %struct.gss_pipe, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %name8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %name8.i, align 8
  %clnt9.i = getelementptr inbounds %struct.gss_pipe, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %clnt9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %clnt9.i, align 4
  %kref.i = getelementptr inbounds %struct.gss_pipe, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %kref.i, align 4
  tail call void @rpc_init_pipe_dir_object(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @gss_pipe_dir_object_ops, ptr noundef nonnull %call7.i.i) #14
  br label %gss_pipe_alloc.exit

gss_pipe_alloc.exit:                              ; preds = %if.end7.i, %if.then4.i, %entry.gss_pipe_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i, %if.end7.i ], [ inttoptr (i32 -12 to ptr), %entry.gss_pipe_alloc.exit_crit_edge ], [ %call1.i, %if.then4.i ]
  %cmp.i6 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %.call = select i1 %cmp.i6, ptr null, ptr %retval.0.i
  ret ptr %.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_pipe_dentry_create(ptr noundef %dir, ptr nocapture noundef readonly %pdo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdo_data = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %pdo, i32 0, i32 2
  %0 = ptrtoint ptr %pdo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdo_data, align 4
  %name = getelementptr inbounds %struct.gss_pipe, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %clnt = getelementptr inbounds %struct.gss_pipe, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clnt, align 4
  %pipe = getelementptr inbounds %struct.gss_pipe, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe, align 4
  %call = tail call ptr @rpc_mkpipe_dentry(ptr noundef %dir, ptr noundef %3, ptr noundef %5, ptr noundef %7) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe, align 4
  %dentry4 = getelementptr inbounds %struct.rpc_pipe, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %dentry4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %dentry4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_pipe_dentry_destroy(ptr nocapture noundef readnone %dir, ptr nocapture noundef readonly %pdo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdo_data = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %pdo, i32 0, i32 2
  %0 = ptrtoint ptr %pdo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdo_data, align 4
  %pipe1 = getelementptr inbounds %struct.gss_pipe, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %dentry = getelementptr inbounds %struct.rpc_pipe, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @rpc_unlink(ptr noundef nonnull %5) #14
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dentry, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_dentry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_v1_upcall(ptr noundef %file, ptr noundef %msg, ptr noundef %buf, i32 noundef %buflen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %copied = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.then:                                          ; preds = %entry
  %service_name = getelementptr i8, ptr %msg, i32 -4
  %2 = ptrtoint ptr %service_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %service_name, align 4
  %auth = getelementptr i8, ptr %msg, i32 32
  %4 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %auth, align 4
  %target_name = getelementptr inbounds %struct.gss_auth, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %target_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target_name, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %8 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_cred, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %mech1.i = getelementptr inbounds %struct.gss_auth, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %mech1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mech1.i, align 4
  %databuf.i = getelementptr i8, ptr %msg, i32 296
  %gm_name.i = getelementptr inbounds %struct.gss_api_mech, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %gm_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gm_name.i, align 4
  %uid.i = getelementptr i8, ptr %msg, i32 -8
  %16 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i = tail call i32 @from_kuid_munged(ptr noundef %11, [1 x i32] %17) #14
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %databuf.i, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef %15, i32 noundef %call.i) #14
  %sub.i = sub i32 256, %call2.i
  %add.ptr.i = getelementptr i8, ptr %databuf.i, i32 %call2.i
  %len3.i = getelementptr i8, ptr %msg, i32 12
  %18 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call2.i, ptr %len3.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #14
  %sub5.i = sub i32 %sub.i, %call4.i
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 %call4.i
  %19 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len3.i, align 4
  %add.i = add i32 %20, %call4.i
  store i32 %add.i, ptr %len3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %p.0.i = phi ptr [ %add.ptr6.i, %if.then.i ], [ %add.ptr.i, %if.then.if.end.i_crit_edge ]
  %buflen.0.i = phi i32 [ %sub5.i, %if.then.i ], [ %sub.i, %if.then.if.end.i_crit_edge ]
  %tobool9.not.i = icmp eq ptr %3, null
  br i1 %tobool9.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then10.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i

if.then10.i:                                      ; preds = %if.end.i
  %call11.i = tail call ptr @strchr(ptr noundef nonnull %3, i32 noundef 64) #14
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  %call14.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0.i, i32 noundef %buflen.0.i, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #14
  br label %if.end17.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call11.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr15.i = getelementptr i8, ptr %call11.i, i32 1
  %call16.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0.i, i32 noundef %buflen.0.i, ptr noundef nonnull @.str.6, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %3, ptr noundef %add.ptr15.i) #14
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then13.i
  %len.0.i = phi i32 [ %call16.i, %if.else.i ], [ %call14.i, %if.then13.i ]
  %sub18.i = sub i32 %buflen.0.i, %len.0.i
  %add.ptr19.i = getelementptr i8, ptr %p.0.i, i32 %len.0.i
  %21 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len3.i, align 4
  %add22.i = add i32 %22, %len.0.i
  store i32 %add22.i, ptr %len3.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end17.i, %if.end.i.if.end23.i_crit_edge
  %p.1.i = phi ptr [ %add.ptr19.i, %if.end17.i ], [ %p.0.i, %if.end.i.if.end23.i_crit_edge ]
  %buflen.1.i = phi i32 [ %sub18.i, %if.end17.i ], [ %buflen.0.i, %if.end.i.if.end23.i_crit_edge ]
  %gm_upcall_enctypes.i = getelementptr inbounds %struct.gss_api_mech, ptr %13, i32 0, i32 7
  %23 = ptrtoint ptr %gm_upcall_enctypes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gm_upcall_enctypes.i, align 4
  %tobool24.not.i = icmp eq ptr %24, null
  br i1 %tobool24.not.i, label %if.end23.i.if.end33.i_crit_edge, label %if.then25.i

if.end23.i.if.end33.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  %call27.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.1.i, i32 noundef %buflen.1.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %24) #14
  %sub28.i = sub i32 %buflen.1.i, %call27.i
  %add.ptr29.i = getelementptr i8, ptr %p.1.i, i32 %call27.i
  %25 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len3.i, align 4
  %add32.i = add i32 %26, %call27.i
  store i32 %add32.i, ptr %len3.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end33.i_crit_edge
  %p.2.i = phi ptr [ %add.ptr29.i, %if.then25.i ], [ %p.1.i, %if.end23.i.if.end33.i_crit_edge ]
  %buflen.2.i = phi i32 [ %sub28.i, %if.then25.i ], [ %buflen.1.i, %if.end23.i.if.end33.i_crit_edge ]
  tail call fastcc void @trace_rpcgss_upcall_msg(ptr noundef %databuf.i) #14
  %call36.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.2.i, i32 noundef %buflen.2.i, ptr noundef nonnull @.str.8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp.i = icmp eq i32 %call36.i, 0
  br i1 %cmp.i, label %land.end.i, label %gss_encode_v1_msg.exit

land.end.i:                                       ; preds = %if.end33.i
  %.b136.i = load i1, ptr @gss_encode_v1_msg.__already_done, align 1
  br i1 %.b136.i, label %land.end.i.cleanup_crit_edge, label %if.then50.i, !prof !197

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then50.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @gss_encode_v1_msg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 482, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

gss_encode_v1_msg.exit:                           ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len3.i, align 4
  %add41.i = add i32 %28, %call36.i
  store i32 %add41.i, ptr %len3.i, align 4
  %data.i = getelementptr i8, ptr %msg, i32 8
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %databuf.i, ptr %data.i, align 4
  br label %if.end2

if.end2:                                          ; preds = %gss_encode_v1_msg.exit, %entry.if.end2_crit_edge
  %call3 = tail call i32 @rpc_pipe_generic_upcall(ptr noundef %file, ptr noundef %msg, ptr noundef %buf, i32 noundef %buflen) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then50.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -12, %if.then50.i ], [ -12, %land.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_pipe_downcall(ptr nocapture noundef readonly %filp, ptr noundef %src, i32 noundef %mlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pipe2 = getelementptr inbounds %struct.rpc_inode, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mlen)
  %cmp = icmp ugt i32 %mlen, 1024
  br i1 %cmp, label %entry.out_crit_edge, label %if.end8.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mlen, i32 noundef 3136) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.out_crit_edge, label %if.then.i.i.i

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then.i.i.i:                                    ; preds = %if.end8.i
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %mlen, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i94_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i94_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i94

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %mlen, i32 -1226833920) #20, !srcloc !207
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i94_crit_edge, !prof !197

land.lhs.true.i.i.if.end.i.i94_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i94

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %mlen) #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !208
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %src, i32 noundef %mlen) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  br label %if.end.i.i94

if.end.i.i94:                                     ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i94_crit_edge, %if.then.i.i.i.if.end.i.i94_crit_edge
  %res.0.i.i = phi i32 [ %mlen, %if.then.i.i.i.if.end.i.i94_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mlen, %land.lhs.true.i.i.if.end.i.i94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.then11.i.i, !prof !197

if.then11.i.i:                                    ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %mlen, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %err53

if.end9:                                          ; preds = %if.end.i.i94
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %mlen
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 4
  %cmp.i96 = icmp ugt ptr %add.ptr.i, %add.ptr
  %cmp1.i = icmp ult ptr %add.ptr.i, %call9.i
  %spec.select.i = or i1 %cmp.i96, %cmp1.i
  br i1 %spec.select.i, label %if.end9.if.then12_crit_edge, label %simple_get_bytes.exit, !prof !196

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

simple_get_bytes.exit:                            ; preds = %if.end9
  %cmp.i98 = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %simple_get_bytes.exit.if.then12_crit_edge, label %if.end14

simple_get_bytes.exit.if.then12_crit_edge:        ; preds = %simple_get_bytes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.then12:                                        ; preds = %simple_get_bytes.exit.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  %retval.0.i134 = phi ptr [ %add.ptr.i, %simple_get_bytes.exit.if.then12_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end9.if.then12_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i134 to i32
  br label %err53

if.end14:                                         ; preds = %simple_get_bytes.exit
  %10 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call9.i, align 128
  %12 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns, align 4
  %call18 = tail call i32 @make_kuid(ptr noundef %19, i32 noundef %11) #14
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp.i99.not = icmp eq i32 %call18, -1
  br i1 %cmp.i99.not, label %if.end14.err53_crit_edge, label %if.end22

if.end14.err53_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %err53

if.end22:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3392, i32 noundef 96) #17
  %cmp.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.not.i, label %if.end22.err53_crit_edge, label %if.end26

if.end22.err53_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %err53

if.end26:                                         ; preds = %if.end22
  %gc_proc.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %gc_proc.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %gc_proc.i, align 4
  %gc_seq.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %call7.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %gc_seq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %gc_seq.i, align 8
  %gc_seq_lock.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %gc_seq_lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @gss_alloc_context.__key, i16 noundef signext 3) #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #14
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %lock = getelementptr inbounds %struct.rpc_pipe, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %call28 = tail call fastcc ptr @__gss_find_upcall(ptr noundef %3, [1 x i32] %.fca.0.insert, ptr noundef null)
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %err_put_ctx

if.end32:                                         ; preds = %if.end26
  %list = getelementptr inbounds %struct.gss_upcall_msg, ptr %call28, i32 0, i32 4
  %call.i.i102 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i102, label %if.end.i.i103, label %if.end32.list_del_init.exit_crit_edge

if.end32.list_del_init.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i103:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call28, i32 0, i32 4, i32 1
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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i103, %if.end32.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call28, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %auth = getelementptr inbounds %struct.gss_upcall_msg, ptr %call28, i32 0, i32 5
  %32 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %auth, align 4
  %mech = getelementptr inbounds %struct.gss_auth, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %mech to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mech, align 4
  %call34 = tail call fastcc ptr @gss_fill_context(ptr noundef %add.ptr.i, ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i, ptr noundef %35)
  %cmp.i104 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then36, label %if.end48

if.then36:                                        ; preds = %list_del_init.exit
  %36 = ptrtoint ptr %call34 to i32
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %do.end43 [
    i32 -13, label %if.then36.sw.bb_crit_edge
    i32 -127, label %if.then36.sw.bb_crit_edge135
    i32 -14, label %if.then36.sw.bb38_crit_edge
    i32 -12, label %if.then36.sw.bb38_crit_edge136
    i32 -22, label %if.then36.sw.bb38_crit_edge137
    i32 -38, label %if.then36.sw.bb38_crit_edge138
  ]

if.then36.sw.bb38_crit_edge138:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

if.then36.sw.bb38_crit_edge137:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

if.then36.sw.bb38_crit_edge136:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

if.then36.sw.bb38_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb38

if.then36.sw.bb_crit_edge135:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.then36.sw.bb_crit_edge:                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %if.then36.sw.bb_crit_edge, %if.then36.sw.bb_crit_edge135
  %errno = getelementptr inbounds %struct.gss_upcall_msg, ptr %call28, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %errno, align 4
  br label %err_release_msg

sw.bb38:                                          ; preds = %if.then36.sw.bb38_crit_edge, %if.then36.sw.bb38_crit_edge136, %if.then36.sw.bb38_crit_edge137, %if.then36.sw.bb38_crit_edge138
  %errno40 = getelementptr inbounds %struct.gss_upcall_msg, ptr %call28, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %errno40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -11, ptr %errno40, align 4
  br label %err_release_msg

do.end43:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %36) #21
  %errno47 = getelementptr inbounds %struct.gss_upcall_msg, ptr %call28, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %errno47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -5, ptr %errno47, align 4
  br label %err_release_msg

if.end48:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call49 = tail call fastcc ptr @gss_get_ctx(ptr noundef nonnull %call7.i.i.i)
  %ctx50 = getelementptr inbounds %struct.gss_upcall_msg, ptr %call28, i32 0, i32 9
  %41 = ptrtoint ptr %ctx50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %ctx50, align 4
  br label %err_release_msg

err_release_msg:                                  ; preds = %if.end48, %do.end43, %sw.bb38, %sw.bb
  %err.0 = phi i32 [ %36, %do.end43 ], [ %36, %sw.bb38 ], [ %mlen, %sw.bb ], [ %mlen, %if.end48 ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  tail call fastcc void @__gss_unhash_msg(ptr noundef nonnull %call28)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  tail call fastcc void @gss_release_msg(ptr noundef nonnull %call28)
  br label %err_put_ctx

err_put_ctx:                                      ; preds = %err_release_msg, %if.then30
  %err.1 = phi i32 [ -2, %if.then30 ], [ %err.0, %err_release_msg ]
  tail call fastcc void @gss_put_ctx(ptr noundef nonnull %call7.i.i.i)
  br label %err53

err53:                                            ; preds = %err_put_ctx, %if.end22.err53_crit_edge, %if.end14.err53_crit_edge, %if.then12, %if.then11.i.i
  %err.2 = phi i32 [ %9, %if.then12 ], [ %err.1, %err_put_ctx ], [ -22, %if.end14.err53_crit_edge ], [ -14, %if.then11.i.i ], [ -12, %if.end22.err53_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %out

out:                                              ; preds = %err53, %if.end8.i.out_crit_edge, %entry.out_crit_edge
  %err.3 = phi i32 [ -27, %entry.out_crit_edge ], [ %err.2, %err53 ], [ -12, %if.end8.i.out_crit_edge ]
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_pipe_release(ptr nocapture noundef readonly %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %pipe1 = getelementptr inbounds %struct.rpc_inode, ptr %inode, i32 0, i32 2
  %4 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe1, align 4
  %lock = getelementptr inbounds %struct.rpc_pipe, ptr %5, i32 0, i32 9
  %in_downcall = getelementptr inbounds %struct.rpc_pipe, ptr %5, i32 0, i32 2
  br label %restart

restart:                                          ; preds = %refcount_inc.exit, %entry
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %restart
  %.pn.in = phi ptr [ %in_downcall, %restart ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %in_downcall
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %msg = getelementptr i8, ptr %.pn, i32 -24
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %msg, align 4
  %cmp.i.not = icmp eq ptr %8, %msg
  br i1 %cmp.i.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.end:                                           ; preds = %for.body
  %gss_msg.0.le = getelementptr i8, ptr %.pn, i32 -36
  %errno = getelementptr i8, ptr %.pn, i32 -4
  %9 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -32, ptr %errno, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gss_msg.0.le, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %gss_msg.0.le, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gss_msg.0.le, ptr %gss_msg.0.le, i32 1, ptr elementtype(i32) %gss_msg.0.le) #14, !srcloc !195
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !196

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !197

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %gss_msg.0.le, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call fastcc void @__gss_unhash_msg(ptr noundef %gss_msg.0.le)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  tail call fastcc void @gss_release_msg(ptr noundef %gss_msg.0.le)
  br label %restart

for.end:                                          ; preds = %for.cond
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %12 = load i32, ptr @sunrpc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %12) #14
  %pipe_users.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 19
  %call1.i = tail call i32 @_atomic_dec_and_lock(ptr noundef %pipe_users.i, ptr noundef nonnull @pipe_version_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.end.put_pipe_version.exit_crit_edge, label %if.then.i

for.end.put_pipe_version.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pipe_version.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %pipe_version.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 18
  %13 = ptrtoint ptr %pipe_version.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %pipe_version.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pipe_version_lock) #14
  br label %put_pipe_version.exit

put_pipe_version.exit:                            ; preds = %if.then.i, %for.end.put_pipe_version.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_pipe_open_v1(ptr nocapture noundef readonly %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gss_pipe_open(ptr noundef %inode, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_pipe_destroy_msg(ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %msg, i32 -12
  %errno = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #14, !srcloc !195
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !196

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !197

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %pipe1.i = getelementptr i8, ptr %msg, i32 36
  %4 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe1.i, align 4
  %list.i = getelementptr i8, ptr %msg, i32 24
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %list.i
  br i1 %cmp.i.not.i, label %refcount_inc.exit.gss_unhash_msg.exit_crit_edge, label %if.end.i

refcount_inc.exit.gss_unhash_msg.exit_crit_edge:  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_unhash_msg.exit

if.end.i:                                         ; preds = %refcount_inc.exit
  %lock.i = getelementptr inbounds %struct.rpc_pipe, ptr %5, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %list.i, align 4
  %cmp.i12.not.i = icmp eq ptr %9, %list.i
  br i1 %cmp.i12.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__gss_unhash_msg(ptr noundef %add.ptr) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  br label %gss_unhash_msg.exit

gss_unhash_msg.exit:                              ; preds = %if.end6.i, %refcount_inc.exit.gss_unhash_msg.exit_crit_edge
  %10 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %11)
  %cmp2 = icmp eq i32 %11, -110
  br i1 %cmp2, label %if.then3, label %gss_unhash_msg.exit.if.end_crit_edge

gss_unhash_msg.exit.if.end_crit_edge:             ; preds = %gss_unhash_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then3:                                         ; preds = %gss_unhash_msg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %12 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end_crit_edge, label %do.end.i, !prof !197

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #21
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then3.if.end_crit_edge, %gss_unhash_msg.exit.if.end_crit_edge
  tail call fastcc void @gss_release_msg(ptr noundef %add.ptr)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  tail call fastcc void @gss_release_msg(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipe_generic_upcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_upcall_msg(ptr noundef %buf) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_msg, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_upcall_msg, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !211
  %call42 = tail call i32 @__traceiter_rpcgss_upcall_msg(ptr noundef null, ptr noundef %buf) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_msg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_msg, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_upcall_msg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_upcall_msg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 548, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_upcall_msg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__gss_find_upcall(ptr noundef readonly %pipe, [1 x i32] %uid.coerce, ptr noundef readonly %auth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %in_downcall = getelementptr inbounds %struct.rpc_pipe, ptr %pipe, i32 0, i32 2
  %0 = ptrtoint ptr %in_downcall to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn23 = load ptr, ptr %in_downcall, align 4
  %cmp.not24 = icmp eq ptr %.pn23, %in_downcall
  br i1 %cmp.not24, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %uid.coerce.fca.0.extract.i6.i = extractvalue [1 x i32] %uid.coerce, 0
  %tobool.not = icmp eq ptr %auth, null
  %service6 = getelementptr inbounds %struct.gss_auth, ptr %auth, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn25 = phi ptr [ %.pn23, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %uid2 = getelementptr i8, ptr %.pn25, i32 -32
  %1 = ptrtoint ptr %uid2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack = load i32, ptr %uid2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %uid.coerce.fca.0.extract.i6.i)
  %cmp.i = icmp eq i32 %.unpack, %uid.coerce.fca.0.extract.i6.i
  br i1 %cmp.i, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %auth5 = getelementptr i8, ptr %.pn25, i32 8
  %2 = ptrtoint ptr %auth5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %auth5, align 4
  %service = getelementptr inbounds %struct.gss_auth, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service, align 4
  %6 = ptrtoint ptr %service6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7.not = icmp eq i32 %5, %7
  br i1 %cmp7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %pos.0.le = getelementptr i8, ptr %.pn25, i32 -36
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pos.0.le, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pos.0.le, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pos.0.le, ptr %pos.0.le, i32 1, ptr elementtype(i32) %pos.0.le) #14, !srcloc !195
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end9.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !196

if.end9.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end9
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !197

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pos.0.le, i32 noundef %.sink.i.i.i) #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, %in_downcall
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %pos.0.le, %if.else.i.i.i.cleanup_crit_edge ], [ %pos.0.le, %if.end15.sink.split.i.i.i ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gss_fill_context(ptr noundef %p, ptr noundef %end, ptr noundef %ctx, ptr noundef %gm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.ptr.i = getelementptr i8, ptr %p, i32 4
  %cmp.i = icmp ugt ptr %add.ptr.i, %end
  %cmp1.i = icmp ult ptr %add.ptr.i, %p
  %spec.select.i = or i1 %cmp.i, %cmp1.i
  br i1 %spec.select.i, label %entry.err_crit_edge, label %simple_get_bytes.exit, !prof !196

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

simple_get_bytes.exit:                            ; preds = %entry
  %cmp.i82 = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %simple_get_bytes.exit.err_crit_edge, label %if.end

simple_get_bytes.exit.err_crit_edge:              ; preds = %simple_get_bytes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end:                                           ; preds = %simple_get_bytes.exit
  %1 = ptrtoint ptr %p to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %spec.select133 = select i1 %cmp, i32 3600, i32 %2
  %mul = mul i32 %spec.select133, 100
  %add = add i32 %mul, %0
  %gc_expiry = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 9
  %3 = ptrtoint ptr %gc_expiry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %gc_expiry, align 4
  %add.ptr.i83 = getelementptr i8, ptr %p, i32 8
  %cmp.i84 = icmp ugt ptr %add.ptr.i83, %end
  %cmp1.i85 = icmp ult ptr %add.ptr.i83, %add.ptr.i
  %spec.select.i86 = or i1 %cmp.i84, %cmp1.i85
  br i1 %spec.select.i86, label %if.end.err_crit_edge, label %simple_get_bytes.exit89, !prof !196

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

simple_get_bytes.exit89:                          ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr.i, align 1
  %cmp.i90 = icmp ugt ptr %add.ptr.i83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %simple_get_bytes.exit89.err_crit_edge, label %if.end7

simple_get_bytes.exit89.err_crit_edge:            ; preds = %simple_get_bytes.exit89
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end7:                                          ; preds = %simple_get_bytes.exit89
  %gc_win = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 8
  %6 = ptrtoint ptr %gc_win to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %gc_win, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end7
  %add.ptr.i91 = getelementptr i8, ptr %p, i32 12
  %cmp.i92 = icmp ugt ptr %add.ptr.i91, %end
  %cmp1.i93 = icmp ult ptr %add.ptr.i91, %add.ptr.i83
  %spec.select.i94 = or i1 %cmp.i92, %cmp1.i93
  br i1 %spec.select.i94, label %if.then10.err_crit_edge, label %simple_get_bytes.exit97, !prof !196

if.then10.err_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

simple_get_bytes.exit97:                          ; preds = %if.then10
  %cmp.i98 = icmp ugt ptr %add.ptr.i91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %simple_get_bytes.exit97.err_crit_edge, label %if.then13

simple_get_bytes.exit97.err_crit_edge:            ; preds = %simple_get_bytes.exit97
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.then13:                                        ; preds = %simple_get_bytes.exit97
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %add.ptr.i83 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %add.ptr.i83, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %8)
  %cmp14 = icmp eq i32 %8, -127
  %spec.select134 = select i1 %cmp14, ptr inttoptr (i32 -127 to ptr), ptr inttoptr (i32 -13 to ptr)
  br label %err

if.end18:                                         ; preds = %if.end7
  %gc_wire_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 6
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 12
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %end
  %cmp1.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr.i83
  %spec.select.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %spec.select.i.i, label %if.end18.err_crit_edge, label %simple_get_bytes.exit.i, !prof !196

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

simple_get_bytes.exit.i:                          ; preds = %if.end18
  %9 = ptrtoint ptr %add.ptr.i83 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr.i83, align 1
  %cmp.i36.i = icmp ugt ptr %add.ptr.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %simple_get_bytes.exit.i.simple_get_netobj.exit_crit_edge, label %if.end.i102

simple_get_bytes.exit.i.simple_get_netobj.exit_crit_edge: ; preds = %simple_get_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %simple_get_netobj.exit

if.end.i102:                                      ; preds = %simple_get_bytes.exit.i
  %add.ptr.i99 = getelementptr i8, ptr %add.ptr.i.i, i32 %10
  %cmp.i100 = icmp ugt ptr %add.ptr.i99, %end
  %cmp2.i = icmp ult ptr %add.ptr.i99, %add.ptr.i.i
  %spec.select.i101 = or i1 %cmp.i100, %cmp2.i
  br i1 %spec.select.i101, label %if.end.i102.err_crit_edge, label %if.end6.i, !prof !196

if.end.i102.err_crit_edge:                        ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end6.i:                                        ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not.i = icmp eq i32 %10, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  %call9.i = tail call ptr @kmemdup(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef 3136) #14
  %data.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i, ptr %data.i, align 4
  %cmp11.i = icmp eq ptr %call9.i, null
  br i1 %cmp11.i, label %if.then8.i.err_crit_edge, label %if.then8.i.if.end22.i_crit_edge, !prof !196

if.then8.i.if.end22.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.then8.i.err_crit_edge:                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %data21.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %data21.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %data21.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then8.i.if.end22.i_crit_edge
  %13 = ptrtoint ptr %gc_wire_ctx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %gc_wire_ctx, align 4
  br label %simple_get_netobj.exit

simple_get_netobj.exit:                           ; preds = %if.end22.i, %simple_get_bytes.exit.i.simple_get_netobj.exit_crit_edge
  %retval.0.i103 = phi ptr [ %add.ptr.i99, %if.end22.i ], [ %add.ptr.i.i, %simple_get_bytes.exit.i.simple_get_netobj.exit_crit_edge ]
  %cmp.i104 = icmp ugt ptr %retval.0.i103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %simple_get_netobj.exit.err_crit_edge, label %if.end22

simple_get_netobj.exit.err_crit_edge:             ; preds = %simple_get_netobj.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end22:                                         ; preds = %simple_get_netobj.exit
  %add.ptr.i105 = getelementptr i8, ptr %retval.0.i103, i32 4
  %cmp.i106 = icmp ugt ptr %add.ptr.i105, %end
  %cmp1.i107 = icmp ult ptr %add.ptr.i105, %retval.0.i103
  %spec.select.i108 = or i1 %cmp.i106, %cmp1.i107
  br i1 %spec.select.i108, label %if.end22.err_crit_edge, label %simple_get_bytes.exit111, !prof !196

if.end22.err_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

simple_get_bytes.exit111:                         ; preds = %if.end22
  %14 = ptrtoint ptr %retval.0.i103 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %retval.0.i103, align 1
  %cmp.i112 = icmp ugt ptr %add.ptr.i105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %simple_get_bytes.exit111.err_crit_edge, label %if.end26

simple_get_bytes.exit111.err_crit_edge:           ; preds = %simple_get_bytes.exit111
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end26:                                         ; preds = %simple_get_bytes.exit111
  %add.ptr = getelementptr i8, ptr %add.ptr.i105, i32 %15
  %cmp27 = icmp ugt ptr %add.ptr, %end
  %cmp28 = icmp ult ptr %add.ptr, %add.ptr.i105
  %spec.select = or i1 %cmp27, %cmp28
  br i1 %spec.select, label %if.end26.err_crit_edge, label %if.end32, !prof !196

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end32:                                         ; preds = %if.end26
  %gc_gss_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 5
  %call33 = tail call i32 @gss_import_sec_context(ptr noundef %add.ptr.i105, i32 noundef %15, ptr noundef %gm, ptr noundef %gc_gss_ctx, ptr noundef null, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_rpcgss_import_ctx(i32 noundef %call33)
  %16 = inttoptr i32 %call33 to ptr
  br label %err

if.end37:                                         ; preds = %if.end32
  %cmp38 = icmp eq ptr %add.ptr, %end
  br i1 %cmp38, label %if.end37.done_crit_edge, label %if.end40

if.end37.done_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end40:                                         ; preds = %if.end37
  %gc_acceptor = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 7
  %call41 = tail call fastcc ptr @simple_get_netobj(ptr noundef %add.ptr, ptr noundef %end, ptr noundef %gc_acceptor)
  %cmp.i113 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.end40.err_crit_edge, label %if.end40.done_crit_edge

if.end40.done_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end40.err_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

done:                                             ; preds = %if.end40.done_crit_edge, %if.end37.done_crit_edge
  %p.addr.0 = phi ptr [ %call41, %if.end40.done_crit_edge ], [ %end, %if.end37.done_crit_edge ]
  %17 = ptrtoint ptr %gc_expiry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gc_expiry, align 4
  %gc_acceptor46 = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 7
  %19 = ptrtoint ptr %gc_acceptor46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gc_acceptor46, align 4
  %data = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  tail call fastcc void @trace_rpcgss_context(i32 noundef %5, i32 noundef %18, i32 noundef %0, i32 noundef %spec.select133, i32 noundef %20, ptr noundef %22)
  br label %err

err:                                              ; preds = %done, %if.end40.err_crit_edge, %if.then35, %if.end26.err_crit_edge, %simple_get_bytes.exit111.err_crit_edge, %if.end22.err_crit_edge, %simple_get_netobj.exit.err_crit_edge, %if.then8.i.err_crit_edge, %if.end.i102.err_crit_edge, %if.end18.err_crit_edge, %if.then13, %simple_get_bytes.exit97.err_crit_edge, %if.then10.err_crit_edge, %simple_get_bytes.exit89.err_crit_edge, %if.end.err_crit_edge, %simple_get_bytes.exit.err_crit_edge, %entry.err_crit_edge
  %p.addr.1 = phi ptr [ %add.ptr.i, %simple_get_bytes.exit.err_crit_edge ], [ %add.ptr.i83, %simple_get_bytes.exit89.err_crit_edge ], [ %add.ptr.i91, %simple_get_bytes.exit97.err_crit_edge ], [ %retval.0.i103, %simple_get_netobj.exit.err_crit_edge ], [ %add.ptr.i105, %simple_get_bytes.exit111.err_crit_edge ], [ %16, %if.then35 ], [ %p.addr.0, %done ], [ %call41, %if.end40.err_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end26.err_crit_edge ], [ inttoptr (i32 -14 to ptr), %entry.err_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end.err_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then10.err_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end18.err_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then8.i.err_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end.i102.err_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end22.err_crit_edge ], [ %spec.select134, %if.then13 ]
  ret ptr %p.addr.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gss_get_ctx(ptr noundef returned %ctx) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ctx, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %ctx, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ctx, ptr %ctx, i32 1, ptr elementtype(i32) %ctx) #14, !srcloc !195
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !196

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !197

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ctx, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %ctx
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__gss_unhash_msg(ptr noundef %gss_msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i3.i, align 4
  %rpc_waitqueue = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 7
  %errno = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %errno, align 4
  tail call void @rpc_wake_up_status(ptr noundef %rpc_waitqueue, i32 noundef %9) #14
  %waitqueue = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %waitqueue, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gss_msg, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %gss_msg, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gss_msg, ptr %gss_msg, i32 1, ptr elementtype(i32) %gss_msg) #14, !srcloc !199
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %list_del_init.exit.refcount_dec.exit_crit_edge, !prof !196

list_del_init.exit.refcount_dec.exit_crit_edge:   ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %gss_msg, i32 noundef 4) #14
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %list_del_init.exit.refcount_dec.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gss_release_msg(ptr noundef %gss_msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %auth = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 5
  %0 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth, align 4
  %net1 = getelementptr inbounds %struct.gss_auth, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gss_msg, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %gss_msg, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gss_msg, ptr %gss_msg, i32 1, ptr elementtype(i32) %gss_msg) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !197

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %gss_msg, i32 noundef 3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %5 = load i32, ptr @sunrpc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %5) #14
  %pipe_users.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 19
  %call1.i = tail call i32 @_atomic_dec_and_lock(ptr noundef %pipe_users.i, ptr noundef nonnull @pipe_version_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.put_pipe_version.exit_crit_edge, label %if.then.i

if.end.put_pipe_version.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_pipe_version.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pipe_version.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 18
  %6 = ptrtoint ptr %pipe_version.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pipe_version.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pipe_version_lock) #14
  br label %put_pipe_version.exit

put_pipe_version.exit:                            ; preds = %if.then.i, %if.end.put_pipe_version.exit_crit_edge
  %list = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %8, %list
  br i1 %cmp.i.not, label %do.end13, label %do.body7, !prof !197

do.body7:                                         ; preds = %put_pipe_version.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/auth_gss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 288, 0\0A.popsection", ""() #14, !srcloc !213
  unreachable

do.end13:                                         ; preds = %put_pipe_version.exit
  %ctx = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 9
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  %cmp.not = icmp eq ptr %10, null
  br i1 %cmp.not, label %do.end13.if.end16_crit_edge, label %if.then14

do.end13.if.end16_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %do.end13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i26, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end16_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.if.end16_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef 3) #14
  br label %if.end16

if.then.i26:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gc_rcu.i.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %10, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %gc_rcu.i.i, ptr noundef nonnull @gss_free_ctx_callback) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then.i26, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end16_crit_edge, %do.end13.if.end16_crit_edge
  %rpc_waitqueue = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 7
  tail call void @rpc_destroy_wait_queue(ptr noundef %rpc_waitqueue) #14
  %12 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %auth, align 4
  tail call fastcc void @gss_put_auth(ptr noundef %13)
  %service_name = getelementptr inbounds %struct.gss_upcall_msg, ptr %gss_msg, i32 0, i32 2
  %14 = ptrtoint ptr %service_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %service_name, align 4
  tail call void @kfree_const(ptr noundef %15) #14
  tail call void @kfree(ptr noundef %gss_msg) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gss_put_ctx(ptr noundef %ctx) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ctx, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %ctx, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ctx, ptr %ctx, i32 1, ptr elementtype(i32) %ctx) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !197

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %ctx, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gc_rcu.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %gc_rcu.i, ptr noundef nonnull @gss_free_ctx_callback) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @simple_get_netobj(ptr noundef %p, ptr noundef readnone %end, ptr nocapture noundef writeonly %dest) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %p, i32 4
  %cmp.i = icmp ugt ptr %add.ptr.i, %end
  %cmp1.i = icmp ult ptr %add.ptr.i, %p
  %spec.select.i = or i1 %cmp.i, %cmp1.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %simple_get_bytes.exit, !prof !196

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

simple_get_bytes.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %p to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %p, align 1
  %cmp.i36 = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %simple_get_bytes.exit.cleanup_crit_edge, label %if.end

simple_get_bytes.exit.cleanup_crit_edge:          ; preds = %simple_get_bytes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %simple_get_bytes.exit
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %cmp = icmp ugt ptr %add.ptr, %end
  %cmp2 = icmp ult ptr %add.ptr, %add.ptr.i
  %spec.select = or i1 %cmp, %cmp2
  br i1 %spec.select, label %if.end.cleanup_crit_edge, label %if.end6, !prof !196

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = tail call ptr @kmemdup(ptr noundef %add.ptr.i, i32 noundef %1, i32 noundef 3136) #14
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %dest, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %data, align 4
  %cmp11 = icmp eq ptr %call9, null
  br i1 %cmp11, label %if.then8.cleanup_crit_edge, label %if.then8.if.end22_crit_edge, !prof !196

if.then8.if.end22_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %data21 = getelementptr inbounds %struct.xdr_netobj, ptr %dest, i32 0, i32 1
  %3 = ptrtoint ptr %data21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %data21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then8.if.end22_crit_edge
  %4 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %dest, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %simple_get_bytes.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end22 ], [ %add.ptr.i, %simple_get_bytes.exit.cleanup_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then8.cleanup_crit_edge ], [ inttoptr (i32 -14 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_import_sec_context(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_import_ctx(i32 noundef %status) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_import_ctx, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_import_ctx, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !214
  %call42 = tail call i32 @__traceiter_rpcgss_import_ctx(ptr noundef null, i32 noundef %status) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !215
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_import_ctx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_import_ctx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_import_ctx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_import_ctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 134, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_context(i32 noundef %window_size, i32 noundef %expiry, i32 noundef %now, i32 noundef %timeout, i32 noundef %len, ptr noundef %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_context, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_context, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !216
  %call42 = tail call i32 @__traceiter_rpcgss_context(ptr noundef null, i32 noundef %window_size, i32 noundef %expiry, i32 noundef %now, i32 noundef %timeout, i32 noundef %len, ptr noundef %data) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !217
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_context, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_context, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_context.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_context.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 605, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_import_ctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gss_put_auth(ptr noundef %gss_auth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gss_auth, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %gss_auth, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gss_auth, ptr %gss_auth, i32 1, ptr elementtype(i32) %gss_auth) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %gss_auth, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gss_pipe.i.i = getelementptr inbounds %struct.gss_auth, ptr %gss_auth, i32 0, i32 7
  %1 = ptrtoint ptr %gss_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gss_pipe.i.i, align 4
  tail call fastcc void @gss_pipe_free(ptr noundef %2) #14
  %arrayidx2.i.i = getelementptr %struct.gss_auth, ptr %gss_auth, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2.i.i, align 4
  tail call fastcc void @gss_pipe_free(ptr noundef %4) #14
  %mech.i.i = getelementptr inbounds %struct.gss_auth, ptr %gss_auth, i32 0, i32 3
  %5 = ptrtoint ptr %mech.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mech.i.i, align 4
  tail call void @gss_mech_put(ptr noundef %6) #14
  %net.i.i = getelementptr inbounds %struct.gss_auth, ptr %gss_auth, i32 0, i32 6
  %7 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i, align 4
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.gss_free_callback.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !197

if.end5.i.i.i.i.i.i.gss_free_callback.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_free_callback.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #14
  br label %gss_free_callback.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  tail call void @__put_net(ptr noundef %8) #14
  br label %gss_free_callback.exit

gss_free_callback.exit:                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.gss_free_callback.exit_crit_edge
  %target_name.i.i = getelementptr inbounds %struct.gss_auth, ptr %gss_auth, i32 0, i32 8
  %10 = ptrtoint ptr %target_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %target_name.i.i, align 4
  tail call void @kfree(ptr noundef %11) #14
  tail call void @kfree(ptr noundef %gss_auth) #14
  tail call void @module_put(ptr noundef null) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %gss_free_callback.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 45, ptr noundef nonnull @.str.11) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %8 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_free_ctx_callback(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -88
  %gc_gss_ctx.i = getelementptr i8, ptr %head, i32 -28
  %call.i = tail call i32 @gss_delete_sec_context(ptr noundef %gc_gss_ctx.i) #14
  %data.i = getelementptr i8, ptr %head, i32 -20
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %1) #14
  %data1.i = getelementptr i8, ptr %head, i32 -12
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  tail call void @kfree(ptr noundef %3) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_delete_sec_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_pipe_open(ptr nocapture noundef readonly %inode, i32 noundef %new_version) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %4 = load i32, ptr @sunrpc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  tail call void @_raw_spin_lock(ptr noundef nonnull @pipe_version_lock) #14
  %pipe_version = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 18
  %5 = ptrtoint ptr %pipe_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %pipe_version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_version, ptr %pipe_version, align 4
  tail call void @rpc_wake_up(ptr noundef nonnull @pipe_version_rpc_waitqueue) #14
  tail call void @__wake_up(ptr noundef nonnull @pipe_version_waitqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %new_version)
  %cmp3.not = icmp eq i32 %6, %new_version
  br i1 %cmp3.not, label %if.else.if.end5_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %if.then
  %pipe_users = getelementptr inbounds %struct.sunrpc_net, ptr %call, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_users, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pipe_users, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_users, ptr %pipe_users, i32 1, ptr elementtype(i32) %pipe_users) #14, !srcloc !220
  br label %out

out:                                              ; preds = %if.end5, %if.else.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5 ], [ -16, %if.else.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pipe_version_lock) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_v0_upcall(ptr noundef %file, ptr noundef %msg, ptr noundef %buf, i32 noundef %buflen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %copied = getelementptr inbounds %struct.rpc_pipe_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %2 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_cred, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i, align 4
  %uid1.i = getelementptr i8, ptr %msg, i32 -8
  %6 = ptrtoint ptr %uid1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack.i = load i32, ptr %uid1.i, align 4
  %7 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %7) #14
  %databuf.i = getelementptr i8, ptr %msg, i32 296
  %8 = ptrtoint ptr %databuf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %databuf.i, align 4
  %data.i = getelementptr i8, ptr %msg, i32 8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %databuf.i, ptr %data.i, align 4
  %len.i = getelementptr i8, ptr %msg, i32 12
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @rpc_pipe_generic_upcall(ptr noundef %file, ptr noundef %msg, ptr noundef %buf, i32 noundef %buflen) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_pipe_open_v0(ptr nocapture noundef readonly %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gss_pipe_open(ptr noundef %inode, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_remove_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_pipe_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_createauth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcauth_lookup_credcache(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_init_cred(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_cred_init(ptr noundef %auth, ptr noundef %cred) #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %auth, i32 -12
  %net1.i = getelementptr i8, ptr %auth, i32 48
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %cr_cred.i = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %gss_create_upcall.exit.do.body_crit_edge, %entry
  %4 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %6 = load i32, ptr @sunrpc_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6) #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #14
  %7 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait.i, align 4
  %8 = call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %2, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %2, ptr %3, align 4
  %pipe_version.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i, i32 0, i32 18
  br label %retry.i

retry.i:                                          ; preds = %if.end52.i.retry.i_crit_edge, %do.body
  %call6.i = call zeroext i1 @gssd_running(ptr noundef %5) #14
  br i1 %call6.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %retry.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %16 = load i32, ptr @rpc_debug, align 4
  %and.i123.i = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123.i)
  %tobool.not.i.i = icmp eq i32 %and.i123.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.gss_create_upcall.exit_crit_edge, label %do.end.i.i, !prof !197

if.then.i.gss_create_upcall.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_create_upcall.exit

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #21
  br label %gss_create_upcall.exit

if.end.i:                                         ; preds = %retry.i
  %call7.i = call fastcc ptr @gss_setup_upcall(ptr noundef %add.ptr, ptr noundef %cred) #14
  %cmp.i = icmp eq ptr %call7.i, inttoptr (i32 -11 to ptr)
  br i1 %cmp.i, label %if.then9.i, label %if.end56.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 645) #14
  %17 = ptrtoint ptr %pipe_version.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipe_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp13.i = icmp sgt i32 %18, -1
  br i1 %cmp13.i, label %if.then9.i.if.end52.i_crit_edge, label %if.then20.i

if.then9.i.if.end52.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.i

if.then20.i:                                      ; preds = %if.then9.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %19 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %call22157.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @pipe_version_waitqueue, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #14
  %20 = ptrtoint ptr %pipe_version.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pipe_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp25158.i = icmp sgt i32 %21, -1
  br i1 %cmp25158.i, label %if.then20.i.for.end.i_crit_edge, label %if.then20.i.if.end41.i_crit_edge

if.then20.i.if.end41.i_crit_edge:                 ; preds = %if.then20.i
  br label %if.end41.i

if.then20.i.for.end.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end41.i:                                       ; preds = %cleanup.i.if.end41.i_crit_edge, %if.then20.i.if.end41.i_crit_edge
  %__ret21.1160.i = phi i32 [ %__ret21.1.i, %cleanup.i.if.end41.i_crit_edge ], [ 1500, %if.then20.i.if.end41.i_crit_edge ]
  %call22159.i = phi i32 [ %call22.i, %cleanup.i.if.end41.i_crit_edge ], [ %call22157.i, %if.then20.i.if.end41.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22159.i)
  %tobool42.not.i = icmp eq i32 %call22159.i, 0
  br i1 %tobool42.not.i, label %cleanup.i, label %if.end41.i.if.end47.i_crit_edge

if.end41.i.if.end47.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47.i

cleanup.i:                                        ; preds = %if.end41.i
  %call45.i = call i32 @schedule_timeout(i32 noundef %__ret21.1160.i) #14
  %call22.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @pipe_version_waitqueue, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #14
  %22 = ptrtoint ptr %pipe_version.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pipe_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp25.i = icmp sgt i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool29.not.i = icmp eq i32 %call45.i, 0
  %24 = select i1 %cmp25.i, i1 %tobool29.not.i, i1 false
  %__ret21.1.i = select i1 %24, i32 1, i32 %call45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1.i)
  %tobool35.not.i = icmp eq i32 %__ret21.1.i, 0
  %25 = select i1 %cmp25.i, i1 true, i1 %tobool35.not.i
  br i1 %25, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end41.i_crit_edge

cleanup.i.if.end41.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then20.i.for.end.i_crit_edge
  %__ret21.1.lcssa.i = phi i32 [ 1500, %if.then20.i.for.end.i_crit_edge ], [ %__ret21.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef nonnull @pipe_version_waitqueue, ptr noundef nonnull %__wq_entry.i) #14
  br label %if.end47.i

if.end47.i:                                       ; preds = %for.end.i, %if.end41.i.if.end47.i_crit_edge
  %__ret21.2132.i = phi i32 [ %__ret21.1.lcssa.i, %for.end.i ], [ %call22159.i, %if.end41.i.if.end47.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %26 = ptrtoint ptr %pipe_version.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load i32, ptr %pipe_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp50.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp50.i, label %if.then51.i, label %if.end47.i.if.end52.i_crit_edge

if.end47.i.if.end52.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %27 = load i32, ptr @rpc_debug, align 4
  %and.i124.i = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124.i)
  %tobool.not.i125.i = icmp eq i32 %and.i124.i, 0
  br i1 %tobool.not.i125.i, label %if.then51.i.gss_create_upcall.exit_crit_edge, label %do.end.i127.i, !prof !197

if.then51.i.gss_create_upcall.exit_crit_edge:     ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_create_upcall.exit

do.end.i127.i:                                    ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #21
  br label %gss_create_upcall.exit

if.end52.i:                                       ; preds = %if.end47.i.if.end52.i_crit_edge, %if.then9.i.if.end52.i_crit_edge
  %err.0.i = phi i32 [ %__ret21.2132.i, %if.end47.i.if.end52.i_crit_edge ], [ 1500, %if.then9.i.if.end52.i_crit_edge ]
  %cmp53.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp53.i, label %if.end52.i.gss_create_upcall.exit_crit_edge, label %if.end52.i.retry.i_crit_edge

if.end52.i.retry.i_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry.i

if.end52.i.gss_create_upcall.exit_crit_edge:      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_create_upcall.exit

if.end56.i:                                       ; preds = %if.end.i
  %28 = ptrtoint ptr %call7.i to i32
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end56.i.gss_create_upcall.exit_crit_edge, label %if.end60.i

if.end56.i.gss_create_upcall.exit_crit_edge:      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_create_upcall.exit

if.end60.i:                                       ; preds = %if.end56.i
  %pipe61.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i, i32 0, i32 6
  %29 = ptrtoint ptr %pipe61.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pipe61.i, align 4
  %waitqueue.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i, i32 0, i32 8
  call void @prepare_to_wait(ptr noundef %waitqueue.i, ptr noundef nonnull %wait.i, i32 noundef 258) #14
  %lock.i = getelementptr inbounds %struct.rpc_pipe, ptr %30, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %ctx.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i, i32 0, i32 9
  %31 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx.i, align 4
  %cmp63.not161.i = icmp eq ptr %32, null
  br i1 %cmp63.not161.i, label %lor.lhs.false.lr.ph.i, label %if.end60.i.if.then77.i_crit_edge

if.end60.i.if.then77.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77.i

lor.lhs.false.lr.ph.i:                            ; preds = %if.end60.i
  %errno.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i, i32 0, i32 3, i32 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end73.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.lr.ph.i
  %33 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %errno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp64.i = icmp slt i32 %34, 0
  br i1 %cmp64.i, label %lor.lhs.false.i.if.end81.i_crit_edge, label %if.end66.i

lor.lhs.false.i.if.end81.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.i

if.end66.i:                                       ; preds = %lor.lhs.false.i
  call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  %35 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stack.i.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and1.i.i.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i129.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i129.i, label %if.end66.i.if.end73.i_crit_edge, label %fatal_signal_pending.exit.i

if.end66.i.if.end73.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

fatal_signal_pending.exit.i:                      ; preds = %if.end66.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 116, i32 1
  %41 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %signal.i.i.i, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool71.not.i = icmp eq i32 %43, 0
  br i1 %tobool71.not.i, label %fatal_signal_pending.exit.i.if.end73.i_crit_edge, label %fatal_signal_pending.exit.i.out_intr.i_crit_edge

fatal_signal_pending.exit.i.out_intr.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_intr.i

fatal_signal_pending.exit.i.if.end73.i_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.end73.i:                                       ; preds = %fatal_signal_pending.exit.i.if.end73.i_crit_edge, %if.end66.i.if.end73.i_crit_edge
  call void @schedule() #14
  call void @prepare_to_wait(ptr noundef %waitqueue.i, ptr noundef nonnull %wait.i, i32 noundef 258) #14
  call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %44 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx.i, align 4
  %cmp63.not.i = icmp eq ptr %45, null
  br i1 %cmp63.not.i, label %if.end73.i.lor.lhs.false.i_crit_edge, label %if.end73.i.if.then77.i_crit_edge

if.end73.i.if.then77.i_crit_edge:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then77.i

if.end73.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

if.then77.i:                                      ; preds = %if.end73.i.if.then77.i_crit_edge, %if.end60.i.if.then77.i_crit_edge
  call fastcc void @trace_rpcgss_ctx_init(ptr noundef %cred) #14
  %46 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx.i, align 4
  call fastcc void @gss_cred_set_ctx(ptr noundef %cred, ptr noundef %47) #14
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then77.i, %lor.lhs.false.i.if.end81.i_crit_edge
  %err.1.i = phi i32 [ 0, %if.then77.i ], [ %34, %lor.lhs.false.i.if.end81.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  br label %out_intr.i

out_intr.i:                                       ; preds = %if.end81.i, %fatal_signal_pending.exit.i.out_intr.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %if.end81.i ], [ -512, %fatal_signal_pending.exit.i.out_intr.i_crit_edge ]
  call void @finish_wait(ptr noundef %waitqueue.i, ptr noundef nonnull %wait.i) #14
  call fastcc void @gss_release_msg(ptr noundef %call7.i) #14
  br label %gss_create_upcall.exit

gss_create_upcall.exit:                           ; preds = %out_intr.i, %if.end56.i.gss_create_upcall.exit_crit_edge, %if.end52.i.gss_create_upcall.exit_crit_edge, %do.end.i127.i, %if.then51.i.gss_create_upcall.exit_crit_edge, %do.end.i.i, %if.then.i.gss_create_upcall.exit_crit_edge
  %err.3.i = phi i32 [ %err.2.i, %out_intr.i ], [ -13, %if.then.i.gss_create_upcall.exit_crit_edge ], [ -13, %do.end.i.i ], [ %28, %if.end56.i.gss_create_upcall.exit_crit_edge ], [ -13, %if.then51.i.gss_create_upcall.exit_crit_edge ], [ -13, %do.end.i127.i ], [ %err.0.i, %if.end52.i.gss_create_upcall.exit_crit_edge ]
  %48 = ptrtoint ptr %cr_cred.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cr_cred.i, align 4
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack.i = load i32, ptr %fsuid.i, align 4
  %51 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call84.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %51) #14
  call fastcc void @trace_rpcgss_upcall_result(i32 noundef %call84.i, i32 noundef %err.3.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #14
  %cmp = icmp eq i32 %err.3.i, -11
  br i1 %cmp, label %gss_create_upcall.exit.do.body_crit_edge, label %do.end

gss_create_upcall.exit.do.body_crit_edge:         ; preds = %gss_create_upcall.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %gss_create_upcall.exit
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 %err.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_destroy_cred(ptr noundef %cred) #2 align 64 {
entry:
  %acred.i.i = alloca %struct.auth_cred, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %cr_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %cr_auth.i = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 3
  %0 = ptrtoint ptr %cr_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_auth.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -12
  %gc_ctx.i = getelementptr inbounds %struct.gss_cred, ptr %cred, i32 0, i32 2
  %2 = ptrtoint ptr %gc_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc_ctx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 68) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %if.then.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acred.i.i) #14
  %5 = getelementptr inbounds %struct.auth_cred, ptr %acred.i.i, i32 0, i32 1
  %cr_cred.i.i = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 8
  %6 = ptrtoint ptr %cr_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cr_cred.i.i, align 4
  %8 = ptrtoint ptr %acred.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %acred.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %5, align 4
  %10 = ptrtoint ptr %gc_ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gc_ctx.i, align 4
  call void @rpcauth_init_cred(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %acred.i.i, ptr noundef %1, ptr noundef nonnull @gss_nullops) #14
  %cr_flags.i.i = getelementptr inbounds %struct.rpc_cred, ptr %call7.i.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %cr_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %cr_flags.i.i, align 4
  %gc_service.i.i = getelementptr inbounds %struct.gss_cred, ptr %cred, i32 0, i32 1
  %13 = ptrtoint ptr %gc_service.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gc_service.i.i, align 4
  %gc_service3.i.i = getelementptr inbounds %struct.gss_cred, ptr %call7.i.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %gc_service3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %gc_service3.i.i, align 8
  %gc_principal.i.i = getelementptr inbounds %struct.gss_cred, ptr %cred, i32 0, i32 4
  %16 = ptrtoint ptr %gc_principal.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gc_principal.i.i, align 4
  %gc_principal4.i.i = getelementptr inbounds %struct.gss_cred, ptr %call7.i.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %gc_principal4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %gc_principal4.i.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr3.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %add.ptr3.i, i32 1, i32 3, i32 1) #14
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr3.i, ptr %add.ptr3.i, i32 1, ptr elementtype(i32) %add.ptr3.i) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !196

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.kref_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !197

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.kref_get.exit.i.i_crit_edge:  ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %add.ptr3.i, i32 noundef %.sink.i.i.i.i.i.i) #14
  br label %kref_get.exit.i.i

kref_get.exit.i.i:                                ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.kref_get.exit.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !221
  %gc_ctx30.i.i = getelementptr inbounds %struct.gss_cred, ptr %call7.i.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %gc_ctx30.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %11, ptr %gc_ctx30.i.i, align 4
  %call.i.i.i.i.i.i54.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1) #14
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i55.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i55.i.i)
  %tobool1.not.i.i.i.i56.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i55.i.i, 0
  br i1 %tobool1.not.i.i.i.i56.i.i, label %kref_get.exit.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge, label %if.else.i.i.i.i59.i.i, !prof !196

kref_get.exit.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge: ; preds = %kref_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i61.i.i

if.else.i.i.i.i59.i.i:                            ; preds = %kref_get.exit.i.i
  %add.i.i.i.i57.i.i = add i32 %asmresult.i.i.i.i.i.i55.i.i, 1
  %23 = or i32 %add.i.i.i.i57.i.i, %asmresult.i.i.i.i.i.i55.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i58.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i58.i.i, label %if.else.i.i.i.i59.i.i.if.then.i_crit_edge, label %if.else.i.i.i.i59.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge, !prof !197

if.else.i.i.i.i59.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge: ; preds = %if.else.i.i.i.i59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i61.i.i

if.else.i.i.i.i59.i.i.if.then.i_crit_edge:        ; preds = %if.else.i.i.i.i59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end15.sink.split.i.i.i.i61.i.i:                ; preds = %if.else.i.i.i.i59.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge, %kref_get.exit.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge
  %.sink.i.i.i.i60.i.i = phi i32 [ 2, %kref_get.exit.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge ], [ 1, %if.else.i.i.i.i59.i.i.if.end15.sink.split.i.i.i.i61.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %.sink.i.i.i.i60.i.i) #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.end15.sink.split.i.i.i.i61.i.i, %if.else.i.i.i.i59.i.i.if.then.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acred.i.i) #14
  %gc_proc.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %gc_proc.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %gc_proc.i, align 4
  call fastcc void @trace_rpcgss_ctx_destroy(ptr noundef %cred) #14
  %client.i = getelementptr i8, ptr %1, i32 44
  %25 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i, align 4
  %call5.i = call ptr @rpc_call_null(ptr noundef %26, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 1) #14
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @rpc_put_task(ptr noundef %call5.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  call void @put_rpccred(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @gss_destroy_nullcred(ptr noundef %cred)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_match(ptr nocapture noundef readonly %acred, ptr noundef %rc, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %rc, i32 0, i32 6
  %0 = ptrtoint ptr %cr_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cr_flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %gc_ctx = getelementptr inbounds %struct.gss_cred, ptr %rc, i32 0, i32 2
  %6 = ptrtoint ptr %gc_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %gc_ctx, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @gss_match.__warned, align 1
  br i1 %.b55, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @gss_match.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1472, ptr noundef nonnull @.str.11) #14
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %do.end12.if.then15_crit_edge, label %lor.lhs.false

do.end12.if.then15_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.end12
  %gc_expiry = getelementptr inbounds %struct.gss_cl_ctx, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %gc_expiry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gc_expiry, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.if.then15_crit_edge, label %if.end16

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %do.end12.if.then15_crit_edge
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i57, label %if.then15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

if.then15.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %if.then15
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %if.then15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %11 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i64 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %call.i66 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i66, label %if.end16.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true.i69

if.end16.rcu_read_unlock.exit76_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit76

land.lhs.true.i69:                                ; preds = %if.end16
  %call1.i67 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit76

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit76

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit76

rcu_read_unlock.exit76:                           ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, %if.end16.rcu_read_unlock.exit76_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %15 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i73 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %18, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %19 = ptrtoint ptr %cr_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %cr_flags, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool19.not = icmp eq i32 %21, 0
  br i1 %tobool19.not, label %rcu_read_unlock.exit76.cleanup_crit_edge, label %rcu_read_unlock.exit76.out_crit_edge

rcu_read_unlock.exit76.out_crit_edge:             ; preds = %rcu_read_unlock.exit76
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

rcu_read_unlock.exit76.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out:                                              ; preds = %rcu_read_unlock.exit76.out_crit_edge, %entry.out_crit_edge
  %principal = getelementptr inbounds %struct.auth_cred, ptr %acred, i32 0, i32 1
  %22 = ptrtoint ptr %principal to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %principal, align 4
  %cmp22.not = icmp eq ptr %23, null
  %gc_principal31 = getelementptr inbounds %struct.gss_cred, ptr %rc, i32 0, i32 4
  %24 = ptrtoint ptr %gc_principal31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gc_principal31, align 4
  %cmp32.not = icmp eq ptr %25, null
  br i1 %cmp22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %out
  br i1 %cmp32.not, label %if.then23.cleanup_crit_edge, label %if.end26

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call i32 @strcmp(ptr noundef nonnull %23, ptr noundef nonnull %25) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br label %if.end40

if.else:                                          ; preds = %out
  br i1 %cmp32.not, label %if.end35, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %cr_cred = getelementptr inbounds %struct.rpc_cred, ptr %rc, i32 0, i32 8
  %26 = ptrtoint ptr %cr_cred to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cr_cred, align 4
  %fsuid = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %acred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %acred, align 4
  %fsuid36 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack = load i32, ptr %fsuid, align 4
  %31 = ptrtoint ptr %fsuid36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack54 = load i32, ptr %fsuid36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack54)
  %cmp.i = icmp eq i32 %.unpack, %.unpack54
  br label %if.end40

if.end40:                                         ; preds = %if.end35, %if.end26
  %ret.0.in = phi i1 [ %cmp30, %if.end26 ], [ %cmp.i, %if.end35 ]
  %ret.0 = zext i1 %ret.0.in to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.else.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %rcu_read_unlock.exit76.cleanup_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %ret.0, %if.end40 ], [ 0, %rcu_read_unlock.exit ], [ 0, %rcu_read_unlock.exit76.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_marshal(ptr noundef %task, ptr noundef %xdr) #2 align 64 {
entry:
  %mic = alloca %struct.xdr_netobj, align 4
  %iov = alloca %struct.kvec, align 4
  %verf_buf = alloca %struct.xdr_buf, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %call = tail call fastcc ptr @gss_cred_get_ctx(ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #14
  %4 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mic, align 4, !annotation !222
  %5 = getelementptr inbounds %struct.xdr_netobj, ptr %mic, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #14
  %7 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 4, !annotation !222
  %8 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %verf_buf) #14
  %10 = call ptr @memset(ptr %verf_buf, i32 255, i32 44)
  %gc_wire_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %gc_wire_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gc_wire_ctx, align 4
  %add = add i32 %12, 28
  %call1 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.marshal_failed_crit_edge, label %if.end

entry.marshal_failed_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %marshal_failed

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i32, ptr %call1, i32 1
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %call1, align 4
  %incdec.ptr2 = getelementptr i32, ptr %call1, i32 2
  %gc_seq_lock = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %gc_seq_lock) #14
  %gc_seq = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gc_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp = icmp sgt i32 %15, -1
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nuw i32 %15, 1
  %16 = ptrtoint ptr %gc_seq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %gc_seq, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.true ], [ -2147483648, %if.end.cond.end_crit_edge ]
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %rq_seqno, align 4
  tail call void @_raw_spin_unlock(ptr noundef %gc_seq_lock) #14
  %18 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rq_seqno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %19)
  %cmp6 = icmp eq i32 %19, -2147483648
  br i1 %cmp6, label %cond.end.expired_crit_edge, label %if.end8

cond.end.expired_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %expired

if.end8:                                          ; preds = %cond.end
  tail call fastcc void @trace_rpcgss_seqno(ptr noundef %task)
  %incdec.ptr9 = getelementptr i32, ptr %call1, i32 3
  %20 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %incdec.ptr2, align 4
  %gc_proc = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %gc_proc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gc_proc, align 4
  %incdec.ptr10 = getelementptr i32, ptr %call1, i32 4
  %23 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %incdec.ptr9, align 4
  %24 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rq_seqno, align 4
  %incdec.ptr12 = getelementptr i32, ptr %call1, i32 5
  %26 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %incdec.ptr10, align 4
  %gc_service = getelementptr inbounds %struct.gss_cred, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %gc_service to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gc_service, align 4
  %incdec.ptr13 = getelementptr i32, ptr %call1, i32 6
  %29 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr12, align 4
  %call15 = tail call ptr @xdr_encode_netobj(ptr noundef %incdec.ptr13, ptr noundef %gc_wire_ctx) #14
  %sub.ptr.lhs.cast = ptrtoint ptr %call15 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %30 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.ptr.sub, ptr %incdec.ptr, align 4
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %rq_snd_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rq_snd_buf, align 4
  %33 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %iov, align 4
  %sub.ptr.rhs.cast20 = ptrtoint ptr %32 to i32
  %sub.ptr.sub21 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast20
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.ptr.sub21, ptr %8, align 4
  call void @xdr_buf_from_iov(ptr noundef nonnull %iov, ptr noundef nonnull %verf_buf) #14
  %call22 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 4) #14
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end8.marshal_failed_crit_edge, label %if.end25

if.end8.marshal_failed_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %marshal_failed

if.end25:                                         ; preds = %if.end8
  %35 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %call22, align 4
  %add.ptr27 = getelementptr i32, ptr %call22, i32 2
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr27, ptr %5, align 4
  %gc_gss_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 5
  %37 = ptrtoint ptr %gc_gss_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gc_gss_ctx, align 4
  %call28 = call i32 @gss_get_mic(ptr noundef %38, ptr noundef nonnull %verf_buf, ptr noundef nonnull %mic) #14
  %39 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call28, label %bad_mic [
    i32 786432, label %if.end25.expired_crit_edge
    i32 0, label %if.end34
  ]

if.end25.expired_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %expired

if.end34:                                         ; preds = %if.end25
  %40 = ptrtoint ptr %mic to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mic, align 4
  %42 = add i32 %41, 7
  %add.i = and i32 %42, -4
  %call1.i = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #14
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end34.marshal_failed_crit_edge, label %xdr_stream_encode_opaque_inline.exit, !prof !196

if.end34.marshal_failed_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %marshal_failed

xdr_stream_encode_opaque_inline.exit:             ; preds = %if.end34
  %call5.i = call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i, ptr noundef null, i32 noundef %41) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp37 = icmp slt i32 %add.i, 0
  br i1 %cmp37, label %xdr_stream_encode_opaque_inline.exit.marshal_failed_crit_edge, label %xdr_stream_encode_opaque_inline.exit.out_crit_edge

xdr_stream_encode_opaque_inline.exit.out_crit_edge: ; preds = %xdr_stream_encode_opaque_inline.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

xdr_stream_encode_opaque_inline.exit.marshal_failed_crit_edge: ; preds = %xdr_stream_encode_opaque_inline.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %marshal_failed

out:                                              ; preds = %bad_mic, %marshal_failed, %expired, %xdr_stream_encode_opaque_inline.exit.out_crit_edge
  %status.0 = phi i32 [ -127, %expired ], [ -5, %bad_mic ], [ -90, %marshal_failed ], [ 0, %xdr_stream_encode_opaque_inline.exit.out_crit_edge ]
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #14
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 1, ptr elementtype(i32) %call) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_put_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %call, i32 noundef 3) #14
  br label %gss_put_ctx.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gc_rcu.i.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 10
  call void @call_rcu(ptr noundef %gc_rcu.i.i, ptr noundef nonnull @gss_free_ctx_callback) #14
  br label %gss_put_ctx.exit

gss_put_ctx.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %verf_buf) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #14
  ret i32 %status.0

expired:                                          ; preds = %if.end25.expired_crit_edge, %cond.end.expired_crit_edge
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %cr_flags) #14
  br label %out

marshal_failed:                                   ; preds = %xdr_stream_encode_opaque_inline.exit.marshal_failed_crit_edge, %if.end34.marshal_failed_crit_edge, %if.end8.marshal_failed_crit_edge, %entry.marshal_failed_crit_edge
  br label %out

bad_mic:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @trace_rpcgss_get_mic(ptr noundef %task, i32 noundef %call28)
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_refresh(ptr noundef %task) #2 align 64 {
entry:
  %acred.i = alloca %struct.auth_cred, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %cr_flags.i = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cr_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cr_flags.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %gc_upcall_timestamp.i = getelementptr inbounds %struct.gss_cred, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %gc_upcall_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gc_upcall_timestamp.i, align 4
  %sub.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then.i
  %10 = load i32, ptr @gss_expired_cred_retry_delay, align 4
  %mul.neg.i = mul i32 %10, -100
  %sub1.i = add i32 %mul.neg.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %cr_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cr_flags.i, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %13 = ptrtoint ptr %cr_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %cr_flags.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then6:                                         ; preds = %land.lhs.true
  %cr_auth.i = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %cr_auth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cr_auth.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acred.i) #14
  %18 = getelementptr inbounds %struct.auth_cred, ptr %acred.i, i32 0, i32 1
  %cr_cred.i = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %cr_cred.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cr_cred.i, align 4
  %21 = ptrtoint ptr %acred.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %acred.i, align 4
  %gc_principal.i = getelementptr inbounds %struct.gss_cred, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %gc_principal.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gc_principal.i, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %18, align 4
  %call.i.i = call ptr @rpcauth_lookup_credcache(ptr noundef %17, ptr noundef nonnull %acred.i, i32 noundef 1, i32 noundef 3136) #14
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %gss_renew_cred.exit, label %gss_renew_cred.exit.thread

gss_renew_cred.exit.thread:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred4.i = getelementptr inbounds %struct.rpc_rqst, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %rq_cred4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %rq_cred4.i, align 8
  call void @put_rpccred(ptr noundef %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acred.i) #14
  br label %if.end9

gss_renew_cred.exit:                              ; preds = %if.then6
  %28 = ptrtoint ptr %call.i.i to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acred.i) #14
  %cmp = icmp slt ptr %call.i.i, null
  br i1 %cmp, label %gss_renew_cred.exit.cleanup_crit_edge, label %gss_renew_cred.exit.if.end9_crit_edge

gss_renew_cred.exit.if.end9_crit_edge:            ; preds = %gss_renew_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

gss_renew_cred.exit.cleanup_crit_edge:            ; preds = %gss_renew_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %gss_renew_cred.exit.if.end9_crit_edge, %gss_renew_cred.exit.thread
  %retval.0.i44 = phi i32 [ 0, %gss_renew_cred.exit.thread ], [ %28, %gss_renew_cred.exit.if.end9_crit_edge ]
  %29 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred11 = getelementptr inbounds %struct.rpc_rqst, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %rq_cred11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rq_cred11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %cred.0 = phi ptr [ %3, %if.end.if.end12_crit_edge ], [ %3, %land.lhs.true.if.end12_crit_edge ], [ %32, %if.end9 ]
  %ret.0 = phi i32 [ 0, %if.end.if.end12_crit_edge ], [ 0, %land.lhs.true.if.end12_crit_edge ], [ %retval.0.i44, %if.end9 ]
  %cr_flags13 = getelementptr inbounds %struct.rpc_cred, ptr %cred.0, i32 0, i32 6
  %33 = ptrtoint ptr %cr_flags13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %cr_flags13, align 4
  %and1.i28 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i28)
  %tobool15.not = icmp eq i32 %and1.i28, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.then16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  %35 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred.i31 = getelementptr inbounds %struct.rpc_rqst, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %rq_cred.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rq_cred.i31, align 8
  %cr_auth.i32 = getelementptr inbounds %struct.rpc_cred, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cr_auth.i32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cr_auth.i32, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 -12
  %call.i = call fastcc ptr @gss_setup_upcall(ptr noundef %add.ptr.i, ptr noundef %38) #14
  %cmp.i33 = icmp eq ptr %call.i, inttoptr (i32 -11 to ptr)
  br i1 %cmp.i33, label %if.then.i34, label %if.end.i37

if.then.i34:                                      ; preds = %if.then16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %41 = load i32, ptr @rpc_debug, align 4
  %and.i.i = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i34.warn_gssd.exit.i_crit_edge, label %do.end.i.i, !prof !197

if.then.i34.warn_gssd.exit.i_crit_edge:           ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %warn_gssd.exit.i

do.end.i.i:                                       ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #21
  br label %warn_gssd.exit.i

warn_gssd.exit.i:                                 ; preds = %do.end.i.i, %if.then.i34.warn_gssd.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %42, 1500
  call void @rpc_sleep_on_timeout(ptr noundef nonnull @pipe_version_rpc_waitqueue, ptr noundef %task, ptr noundef null, i32 noundef %add.i) #14
  br label %gss_refresh_upcall.exit

if.end.i37:                                       ; preds = %if.then16
  %43 = ptrtoint ptr %call.i to i32
  %cmp.i.i36 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i36, label %if.end.i37.gss_refresh_upcall.exit_crit_edge, label %if.end8.i

if.end.i37.gss_refresh_upcall.exit_crit_edge:     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_refresh_upcall.exit

if.end8.i:                                        ; preds = %if.end.i37
  %pipe9.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call.i, i32 0, i32 6
  %44 = ptrtoint ptr %pipe9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pipe9.i, align 4
  %lock.i = getelementptr inbounds %struct.rpc_pipe, ptr %45, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %gc_upcall.i = getelementptr inbounds %struct.gss_cred, ptr %38, i32 0, i32 3
  %46 = ptrtoint ptr %gc_upcall.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gc_upcall.i, align 4
  %cmp10.not.i = icmp eq ptr %47, null
  br i1 %cmp10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %rpc_waitqueue.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %47, i32 0, i32 7
  call void @rpc_sleep_on(ptr noundef %rpc_waitqueue.i, ptr noundef %task, ptr noundef null) #14
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end8.i
  %ctx.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call.i, i32 0, i32 9
  %48 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx.i, align 4
  %cmp13.i = icmp eq ptr %49, null
  br i1 %cmp13.i, label %land.lhs.true.i38, label %if.else.i.if.else18.i_crit_edge

if.else.i.if.else18.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else18.i

land.lhs.true.i38:                                ; preds = %if.else.i
  %errno.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call.i, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %errno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp14.i = icmp sgt i32 %51, -1
  br i1 %cmp14.i, label %if.then15.i, label %land.lhs.true.i38.if.else18.i_crit_edge

land.lhs.true.i38.if.else18.i_crit_edge:          ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else18.i

if.then15.i:                                      ; preds = %land.lhs.true.i38
  %52 = ptrtoint ptr %gc_upcall.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %gc_upcall.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %call.i, i32 1, i32 3, i32 1) #14
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i, ptr %call.i, i32 1, ptr elementtype(i32) %call.i) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then15.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !196

if.then15.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then15.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %54 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !197

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then15.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then15.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %call.i, i32 noundef %.sink.i.i.i.i) #14
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %rpc_waitqueue17.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call.i, i32 0, i32 7
  call void @rpc_sleep_on(ptr noundef %rpc_waitqueue17.i, ptr noundef %task, ptr noundef nonnull @gss_upcall_callback) #14
  br label %if.end22.i

if.else18.i:                                      ; preds = %land.lhs.true.i38.if.else18.i_crit_edge, %if.else.i.if.else18.i_crit_edge
  %errno.i.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call.i, i32 0, i32 3, i32 4
  %55 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %errno.i.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %56, label %if.else18.i.gss_handle_downcall_result.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 -127, label %sw.bb3.i.i
  ]

if.else18.i.gss_handle_downcall_result.exit.i_crit_edge: ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_handle_downcall_result.exit.i

sw.bb.i.i:                                        ; preds = %if.else18.i
  br i1 %cmp13.i, label %sw.bb.i.i.gss_handle_downcall_result.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.i.gss_handle_downcall_result.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_handle_downcall_result.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags.i.i = getelementptr inbounds %struct.rpc_cred, ptr %38, i32 0, i32 6
  call void @_clear_bit(i32 noundef 3, ptr noundef %cr_flags.i.i) #14
  %58 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx.i, align 4
  call fastcc void @gss_cred_set_ctx(ptr noundef %38, ptr noundef %59) #14
  br label %gss_handle_downcall_result.exit.i

sw.bb3.i.i:                                       ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags5.i.i = getelementptr inbounds %struct.rpc_cred, ptr %38, i32 0, i32 6
  call void @_set_bit(i32 noundef 3, ptr noundef %cr_flags5.i.i) #14
  br label %gss_handle_downcall_result.exit.i

gss_handle_downcall_result.exit.i:                ; preds = %sw.bb3.i.i, %if.end.i.i, %sw.bb.i.i.gss_handle_downcall_result.exit.i_crit_edge, %if.else18.i.gss_handle_downcall_result.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %gc_upcall_timestamp.i.i = getelementptr inbounds %struct.gss_cred, ptr %38, i32 0, i32 5
  %61 = ptrtoint ptr %gc_upcall_timestamp.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %gc_upcall_timestamp.i.i, align 4
  %62 = ptrtoint ptr %gc_upcall.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %gc_upcall.i, align 4
  %rpc_waitqueue.i.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call.i, i32 0, i32 7
  %63 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %errno.i.i, align 4
  call void @rpc_wake_up_status(ptr noundef %rpc_waitqueue.i.i, i32 noundef %64) #14
  %65 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %errno.i.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %gss_handle_downcall_result.exit.i, %refcount_inc.exit.i, %if.then11.i
  %err.0.i = phi i32 [ 0, %if.then11.i ], [ 0, %refcount_inc.exit.i ], [ %66, %gss_handle_downcall_result.exit.i ]
  call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  call fastcc void @gss_release_msg(ptr noundef %call.i) #14
  br label %gss_refresh_upcall.exit

gss_refresh_upcall.exit:                          ; preds = %if.end22.i, %if.end.i37.gss_refresh_upcall.exit_crit_edge, %warn_gssd.exit.i
  %err.1.i = phi i32 [ -11, %warn_gssd.exit.i ], [ %err.0.i, %if.end22.i ], [ %43, %if.end.i37.gss_refresh_upcall.exit_crit_edge ]
  %cr_cred.i39 = getelementptr inbounds %struct.rpc_cred, ptr %38, i32 0, i32 8
  %67 = ptrtoint ptr %cr_cred.i39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cr_cred.i39, align 4
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack.i = load i32, ptr %fsuid.i, align 4
  %70 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call24.i = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %70) #14
  call fastcc void @trace_rpcgss_upcall_result(i32 noundef %call24.i, i32 noundef %err.1.i) #14
  br label %cleanup

cleanup:                                          ; preds = %gss_refresh_upcall.exit, %if.end12.cleanup_crit_edge, %gss_renew_cred.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.i, %gss_refresh_upcall.exit ], [ %ret.0, %if.end12.cleanup_crit_edge ], [ %28, %gss_renew_cred.exit.cleanup_crit_edge ], [ -127, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_validate(ptr noundef %task, ptr noundef %xdr) #2 align 64 {
entry:
  %iov = alloca %struct.kvec, align 4
  %verf_buf = alloca %struct.xdr_buf, align 4
  %mic = alloca %struct.xdr_netobj, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %call = tail call fastcc ptr @gss_cred_get_ctx(ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #14
  %4 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 4, !annotation !222
  %5 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %verf_buf) #14
  %7 = call ptr @memset(ptr %verf_buf, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #14
  %8 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mic, align 4, !annotation !222
  %9 = getelementptr inbounds %struct.xdr_netobj, ptr %mic, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !222
  %call1 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp.not = icmp eq i32 %12, 6
  br i1 %cmp.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end3:                                          ; preds = %if.end
  %incdec.ptr = getelementptr i32, ptr %call1, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %14)
  %cmp5 = icmp ugt i32 %14, 400
  br i1 %cmp5, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end7:                                          ; preds = %if.end3
  %call8 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %14) #14
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end11:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3136, i32 noundef 4) #17
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.end11.out_crit_edge, label %if.end15

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end15:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tk_rqstp, align 8
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rq_seqno, align 4
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call7.i, align 8
  %21 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i, ptr %iov, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %5, align 4
  call void @xdr_buf_from_iov(ptr noundef nonnull %iov, ptr noundef nonnull %verf_buf) #14
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8, ptr %9, align 4
  %24 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %mic, align 4
  %gc_gss_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 5
  %25 = ptrtoint ptr %gc_gss_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gc_gss_ctx, align 4
  %call18 = call i32 @gss_verify_mic(ptr noundef %26, ptr noundef nonnull %verf_buf, ptr noundef nonnull %mic) #14
  %27 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call18, label %if.end15.bad_mic_crit_edge [
    i32 786432, label %if.then20
    i32 0, label %if.end24
  ]

if.end15.bad_mic_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %bad_mic

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %cr_flags) #14
  br label %bad_mic

if.end24:                                         ; preds = %if.end15
  %cr_auth = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %cr_auth to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cr_auth, align 4
  %au_flags = getelementptr inbounds %struct.rpc_auth, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %au_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %au_flags, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool26.not = icmp eq i32 %32, 0
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.then27

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %add = add nuw nsw i32 %14, 3
  %shr = lshr i32 %add, 2
  %add28 = add nuw nsw i32 %shr, 2
  %au_verfsize = getelementptr inbounds %struct.rpc_auth, ptr %29, i32 0, i32 2
  %33 = ptrtoint ptr %au_verfsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add28, ptr %au_verfsize, align 4
  br label %out

out:                                              ; preds = %bad_mic, %if.then27, %if.end24.out_crit_edge, %if.end11.out_crit_edge, %if.end7.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %seq.0 = phi ptr [ %call7.i, %bad_mic ], [ %call7.i, %if.then27 ], [ %call7.i, %if.end24.out_crit_edge ], [ null, %if.end11.out_crit_edge ], [ null, %if.end7.out_crit_edge ], [ null, %if.end3.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %entry.out_crit_edge ]
  %status.0 = phi i32 [ -13, %bad_mic ], [ 0, %if.then27 ], [ 0, %if.end24.out_crit_edge ], [ -5, %if.end11.out_crit_edge ], [ -5, %if.end7.out_crit_edge ], [ -5, %if.end3.out_crit_edge ], [ -5, %if.end.out_crit_edge ], [ -5, %entry.out_crit_edge ]
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #14
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 1, ptr elementtype(i32) %call) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_put_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %call, i32 noundef 3) #14
  br label %gss_put_ctx.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gc_rcu.i.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 10
  call void @call_rcu(ptr noundef %gc_rcu.i.i, ptr noundef nonnull @gss_free_ctx_callback) #14
  br label %gss_put_ctx.exit

gss_put_ctx.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge
  call void @kfree(ptr noundef %seq.0) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %verf_buf) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #14
  ret i32 %status.0

bad_mic:                                          ; preds = %if.then20, %if.end15.bad_mic_crit_edge
  call fastcc void @trace_rpcgss_verify_mic(ptr noundef %task, i32 noundef %call18)
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_wrap_req(ptr noundef %task, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %call = tail call fastcc ptr @gss_cred_get_ctx(ptr noundef %3)
  %gc_proc = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %gc_proc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gc_proc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @rpcauth_wrap_req_encode(ptr noundef %task, ptr noundef %xdr) #14
  br label %out

if.end:                                           ; preds = %entry
  %gc_service = getelementptr inbounds %struct.gss_cred, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %gc_service to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gc_service, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %7, label %if.end.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @rpcauth_wrap_req_encode(ptr noundef %task, ptr noundef %xdr) #14
  br label %out

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call fastcc i32 @gss_wrap_req_integ(ptr noundef %3, ptr noundef %call, ptr noundef %task, ptr noundef %xdr)
  br label %out

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call fastcc i32 @gss_wrap_req_priv(ptr noundef %3, ptr noundef %call, ptr noundef %task, ptr noundef %xdr)
  br label %out

out:                                              ; preds = %sw.bb5, %sw.bb3, %sw.bb, %if.end.out_crit_edge, %if.then
  %status.0 = phi i32 [ %call1, %if.then ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ -5, %if.end.out_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 1, ptr elementtype(i32) %call) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_put_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %call, i32 noundef 3) #14
  br label %gss_put_ctx.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gc_rcu.i.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %gc_rcu.i.i, ptr noundef nonnull @gss_free_ctx_callback) #14
  br label %gss_put_ctx.exit

gss_put_ctx.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_unwrap_resp(ptr noundef %task, ptr noundef %xdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %call = tail call fastcc ptr @gss_cred_get_ctx(ptr noundef %3)
  %gc_proc = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %gc_proc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gc_proc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.out_decode_crit_edge

entry.out_decode_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_decode

if.end:                                           ; preds = %entry
  %gc_service = getelementptr inbounds %struct.gss_cred, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %gc_service to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gc_service, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %7, label %if.end.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.bb:                                            ; preds = %if.end
  %cr_auth.i.i = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %cr_auth.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cr_auth.i.i, align 4
  %au_flags.i.i = getelementptr inbounds %struct.rpc_auth, ptr %10, i32 0, i32 4
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %au_flags.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.out_decode_crit_edge, label %if.then.i.i

sw.bb.out_decode_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_decode

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %au_verfsize.i.i = getelementptr inbounds %struct.rpc_auth, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %au_verfsize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %au_verfsize.i.i, align 4
  %au_ralign.i.i = getelementptr inbounds %struct.rpc_auth, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %au_ralign.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %au_ralign.i.i, align 4
  %au_rslack.i.i = getelementptr inbounds %struct.rpc_auth, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %au_rslack.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %au_rslack.i.i, align 4
  tail call fastcc void @trace_rpcgss_update_slack(ptr noundef %task, ptr noundef %10) #14
  br label %out_decode

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call fastcc i32 @gss_unwrap_resp_integ(ptr noundef %task, ptr noundef %3, ptr noundef %call, ptr noundef %1, ptr noundef %xdr)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call fastcc i32 @gss_unwrap_resp_priv(ptr noundef %task, ptr noundef %3, ptr noundef %call, ptr noundef %1, ptr noundef %xdr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2
  %status.0 = phi i32 [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool.not = icmp eq i32 %status.0, 0
  br i1 %tobool.not, label %sw.epilog.out_decode_crit_edge, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.epilog.out_decode_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_decode

out_decode:                                       ; preds = %sw.epilog.out_decode_crit_edge, %if.then.i.i, %sw.bb.out_decode_crit_edge, %entry.out_decode_crit_edge
  %call8 = tail call i32 @rpcauth_unwrap_resp_decode(ptr noundef %task, ptr noundef %xdr) #14
  br label %out

out:                                              ; preds = %out_decode, %sw.epilog.out_crit_edge, %if.end.out_crit_edge
  %status.1 = phi i32 [ %call8, %out_decode ], [ %status.0, %sw.epilog.out_crit_edge ], [ -5, %if.end.out_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 1, ptr elementtype(i32) %call) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_put_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %call, i32 noundef 3) #14
  br label %gss_put_ctx.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gc_rcu.i.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %gc_rcu.i.i, ptr noundef nonnull @gss_free_ctx_callback) #14
  br label %gss_put_ctx.exit

gss_put_ctx.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gss_key_timeout(ptr noundef %rc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @gss_key_expire_timeo, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gc_ctx = getelementptr inbounds %struct.gss_cred, ptr %rc, i32 0, i32 2
  %6 = ptrtoint ptr %gc_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %gc_ctx, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @gss_key_timeout.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @gss_key_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1453, ptr noundef nonnull @.str.11) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.then11_crit_edge, label %lor.lhs.false

do.end8.if.then11_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

lor.lhs.false:                                    ; preds = %do.end8
  %gc_expiry = getelementptr inbounds %struct.gss_cl_ctx, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %gc_expiry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gc_expiry, align 4
  %mul.neg = mul i32 %1, -100
  %add.neg = sub i32 %mul.neg, %0
  %sub = add i32 %add.neg, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %do.end8.if.then11_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false.if.end12_crit_edge
  %ret.0 = phi i32 [ -13, %if.then11 ], [ 0, %lor.lhs.false.if.end12_crit_edge ]
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i15, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end12
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %10 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i22 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gss_stringify_acceptor(ptr noundef %cred) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gc_ctx = getelementptr inbounds %struct.gss_cred, ptr %cred, i32 0, i32 2
  %4 = ptrtoint ptr %gc_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gc_ctx, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @gss_stringify_acceptor.__warned, align 1
  br i1 %.b77, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @gss_stringify_acceptor.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1395, ptr noundef nonnull @.str.11) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.out_crit_edge, label %if.end12

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end12:                                         ; preds = %do.end8
  %gc_acceptor = getelementptr inbounds %struct.gss_cl_ctx, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %gc_acceptor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gc_acceptor, align 4
  %call.i90 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i90, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i93

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i93:                                ; preds = %if.end12
  %call1.i91 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %8 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i97 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i98, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i98, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %rcu_read_unlock.exit.if.end8.i_crit_edge

rcu_read_unlock.exit.if.end8.i_crit_edge:         ; preds = %rcu_read_unlock.exit
  br label %if.end8.i

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i:                                        ; preds = %rcu_read_unlock.exit109, %rcu_read_unlock.exit.if.end8.i_crit_edge
  %len.0 = phi i32 [ %19, %rcu_read_unlock.exit109 ], [ %7, %rcu_read_unlock.exit.if.end8.i_crit_edge ]
  %add = add i32 %len.0, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #19
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %if.end8.i.cleanup_crit_edge, label %if.end20

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end8.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i79 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %add.i.i.i81 = add i32 %15, 1
  store volatile i32 %add.i.i.i81, ptr %preempt_count.i.i.i.i80, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i82 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i82, label %if.end20.rcu_read_lock.exit89_crit_edge, label %land.lhs.true.i85

if.end20.rcu_read_lock.exit89_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit89

land.lhs.true.i85:                                ; preds = %if.end20
  %call1.i83 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i85.rcu_read_lock.exit89_crit_edge, label %land.lhs.true2.i87

land.lhs.true.i85.rcu_read_lock.exit89_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit89

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i85
  %.b4.i86 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i86, label %land.lhs.true2.i87.rcu_read_lock.exit89_crit_edge, label %if.then.i88

land.lhs.true2.i87.rcu_read_lock.exit89_crit_edge: ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit89

if.then.i88:                                      ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
  br label %rcu_read_lock.exit89

rcu_read_lock.exit89:                             ; preds = %if.then.i88, %land.lhs.true2.i87.rcu_read_lock.exit89_crit_edge, %land.lhs.true.i85.rcu_read_lock.exit89_crit_edge, %if.end20.rcu_read_lock.exit89_crit_edge
  %16 = ptrtoint ptr %gc_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %gc_ctx, align 4
  %call27 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %rcu_read_lock.exit89.do.end37_crit_edge

rcu_read_lock.exit89.do.end37_crit_edge:          ; preds = %rcu_read_lock.exit89
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

land.lhs.true29:                                  ; preds = %rcu_read_lock.exit89
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b7576 = load i1, ptr @gss_stringify_acceptor.__warned.32, align 1
  br i1 %.b7576, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @gss_stringify_acceptor.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1411, ptr noundef nonnull @.str.11) #14
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %rcu_read_lock.exit89.do.end37_crit_edge
  %tobool39.not = icmp eq ptr %17, null
  br i1 %tobool39.not, label %do.end37.if.then43_crit_edge, label %lor.lhs.false

do.end37.if.then43_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

lor.lhs.false:                                    ; preds = %do.end37
  %gc_acceptor40 = getelementptr inbounds %struct.gss_cl_ctx, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %gc_acceptor40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gc_acceptor40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool42.not = icmp eq i32 %19, 0
  br i1 %tobool42.not, label %lor.lhs.false.if.then43_crit_edge, label %if.end44

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %do.end37.if.then43_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %out

if.end44:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %19)
  %cmp = icmp ult i32 %len.0, %19
  br i1 %cmp, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  %call.i99 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i99, label %if.then47.rcu_read_unlock.exit109_crit_edge, label %land.lhs.true.i102

if.then47.rcu_read_unlock.exit109_crit_edge:      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit109

land.lhs.true.i102:                               ; preds = %if.then47
  %call1.i100 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool.not.i101 = icmp eq i32 %call1.i100, 0
  br i1 %tobool.not.i101, label %land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge: ; preds = %land.lhs.true.i102
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit109

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i102
  %.b4.i103 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103, label %land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge, label %if.then.i105

land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge: ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit109

if.then.i105:                                     ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit109

rcu_read_unlock.exit109:                          ; preds = %if.then.i105, %land.lhs.true2.i104.rcu_read_unlock.exit109_crit_edge, %land.lhs.true.i102.rcu_read_unlock.exit109_crit_edge, %if.then47.rcu_read_unlock.exit109_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %20 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i106 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i106 to ptr
  %preempt_count.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i107, align 4
  %sub.i.i.i108 = add i32 %23, -1
  store volatile i32 %sub.i.i.i108, ptr %preempt_count.i.i.i.i107, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %if.end8.i

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.gss_cl_ctx, ptr %17, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = call ptr @memcpy(ptr %call9.i, ptr %25, i32 %19)
  %27 = ptrtoint ptr %gc_acceptor40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gc_acceptor40, align 4
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx, align 1
  br label %out

out:                                              ; preds = %if.end49, %if.then43, %do.end8.out_crit_edge
  %string.0 = phi ptr [ %call9.i, %if.end49 ], [ null, %if.then43 ], [ null, %do.end8.out_crit_edge ]
  %call.i110 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i110, label %out.rcu_read_unlock.exit120_crit_edge, label %land.lhs.true.i113

out.rcu_read_unlock.exit120_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit120

land.lhs.true.i113:                               ; preds = %out
  %call1.i111 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.rcu_read_unlock.exit120_crit_edge, label %land.lhs.true2.i115

land.lhs.true.i113.rcu_read_unlock.exit120_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit120

land.lhs.true2.i115:                              ; preds = %land.lhs.true.i113
  %.b4.i114 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114, label %land.lhs.true2.i115.rcu_read_unlock.exit120_crit_edge, label %if.then.i116

land.lhs.true2.i115.rcu_read_unlock.exit120_crit_edge: ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit120

if.then.i116:                                     ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit120

rcu_read_unlock.exit120:                          ; preds = %if.then.i116, %land.lhs.true2.i115.rcu_read_unlock.exit120_crit_edge, %land.lhs.true.i113.rcu_read_unlock.exit120_crit_edge, %out.rcu_read_unlock.exit120_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %30 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i117 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i117 to ptr
  %preempt_count.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i118, align 4
  %sub.i.i.i119 = add i32 %33, -1
  store volatile i32 %sub.i.i.i119, ptr %preempt_count.i.i.i.i118, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit120, %if.end8.i.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %string.0, %rcu_read_unlock.exit120 ], [ null, %rcu_read_unlock.exit.cleanup_crit_edge ], [ null, %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gss_xmit_need_reencode(ptr noundef %task) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %call = tail call fastcc ptr @gss_cred_get_ctx(ptr noundef %3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_seqno, align 4
  %gc_seq = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %gc_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %gc_seq, align 4
  %sub.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.out_ctx_crit_edge, label %do.end6

if.end.out_ctx_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ctx

do.end6:                                          ; preds = %if.end
  %gc_seq_xmit = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %gc_seq_xmit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %gc_seq_xmit, align 4
  br label %while.cond

while.cond:                                       ; preds = %__cmpxchg.exit.while.cond_crit_edge, %do.end6
  %seq_xmit.0 = phi i32 [ %9, %do.end6 ], [ %asmresult1.i, %__cmpxchg.exit.while.cond_crit_edge ]
  %10 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_seqno, align 4
  %sub.i65 = sub i32 %11, %seq_xmit.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i65)
  %cmp.i66 = icmp sgt i32 %sub.i65, 0
  br i1 %cmp.i66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gc_seq_xmit, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !223
  %12 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_seqno, align 4
  tail call void @llvm.prefetch.p0(ptr %gc_seq_xmit, i32 1, i32 3, i32 1) #14
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.body
  %14 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %gc_seq_xmit, i32 %seq_xmit.0, i32 %13) #14, !srcloc !224
  %asmresult.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !225
  %cmp = icmp eq i32 %asmresult1.i, %seq_xmit.0
  br i1 %cmp, label %__cmpxchg.exit.out_ctx_crit_edge, label %__cmpxchg.exit.while.cond_crit_edge

__cmpxchg.exit.while.cond_crit_edge:              ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

__cmpxchg.exit.out_ctx_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ctx

while.end:                                        ; preds = %while.cond
  %gc_win = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %gc_win to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gc_win, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp34.not = icmp eq i32 %16, 0
  br i1 %cmp34.not, label %while.end.out_ctx_crit_edge, label %if.then35

while.end.out_ctx_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ctx

if.then35:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i67 = add i32 %sub.i65, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i67)
  %cmp.i68 = icmp slt i32 %sub.i67, 1
  %frombool = zext i1 %cmp.i68 to i8
  br label %out_ctx

out_ctx:                                          ; preds = %if.then35, %while.end.out_ctx_crit_edge, %__cmpxchg.exit.out_ctx_crit_edge, %if.end.out_ctx_crit_edge
  %ret.2 = phi i8 [ 1, %if.end.out_ctx_crit_edge ], [ %frombool, %if.then35 ], [ 1, %while.end.out_ctx_crit_edge ], [ 0, %__cmpxchg.exit.out_ctx_crit_edge ]
  %seq_xmit.1 = phi i32 [ 0, %if.end.out_ctx_crit_edge ], [ %seq_xmit.0, %if.then35 ], [ %seq_xmit.0, %while.end.out_ctx_crit_edge ], [ %seq_xmit.0, %__cmpxchg.exit.out_ctx_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_ctx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_put_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #14
  br label %gss_put_ctx.exit

if.then.i:                                        ; preds = %out_ctx
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gc_rcu.i.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %call, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %gc_rcu.i.i, ptr noundef nonnull @gss_free_ctx_callback) #14
  br label %gss_put_ctx.exit

gss_put_ctx.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.gss_put_ctx.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.2)
  %extract.t = icmp ne i8 %ret.2, 0
  br label %out

out:                                              ; preds = %gss_put_ctx.exit, %entry.out_crit_edge
  %ret.3.off0 = phi i1 [ %extract.t, %gss_put_ctx.exit ], [ true, %entry.out_crit_edge ]
  %seq_xmit.2 = phi i32 [ %seq_xmit.1, %gss_put_ctx.exit ], [ 0, %entry.out_crit_edge ]
  tail call fastcc void @trace_rpcgss_need_reencode(ptr noundef %task, i32 noundef %seq_xmit.2, i1 noundef zeroext %ret.3.off0)
  ret i1 %ret.3.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gss_setup_upcall(ptr noundef %gss_auth, ptr nocapture noundef readonly %cred) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_cred = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 8
  %0 = ptrtoint ptr %cr_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_cred, align 4
  %fsuid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %2)
  %uid.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %gc_principal = getelementptr inbounds %struct.gss_cred, ptr %cred, i32 0, i32 4
  %3 = ptrtoint ptr %gc_principal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gc_principal, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3392, i32 noundef 564) #17
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.err16.i_crit_edge, label %if.end.i

entry.err16.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err16.i

if.end.i:                                         ; preds = %entry
  %net.i = getelementptr inbounds %struct.gss_auth, ptr %gss_auth, i32 0, i32 6
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %8 = load i32, ptr @sunrpc_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %7, i32 noundef %8) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @pipe_version_lock) #14
  %pipe_version.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %pipe_version.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pipe_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.i = icmp sgt i32 %10, -1
  br i1 %cmp.i.i, label %get_pipe_version.exit.i, label %if.end.i.err_free_msg.sink.split.i_crit_edge

if.end.i.err_free_msg.sink.split.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_msg.sink.split.i

get_pipe_version.exit.i:                          ; preds = %if.end.i
  %pipe_users.i.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i.i, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pipe_users.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pipe_users.i.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pipe_users.i.i, ptr %pipe_users.i.i, i32 1, ptr elementtype(i32) %pipe_users.i.i) #14, !srcloc !220
  %12 = ptrtoint ptr %pipe_version.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pipe_version.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pipe_version_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.i = icmp slt i32 %13, 0
  br i1 %cmp2.i, label %get_pipe_version.exit.i.err_free_msg.i_crit_edge, label %if.end4.i

get_pipe_version.exit.i.err_free_msg.i_crit_edge: ; preds = %get_pipe_version.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_msg.i

if.end4.i:                                        ; preds = %get_pipe_version.exit.i
  %arrayidx.i = getelementptr %struct.gss_auth, ptr %gss_auth, i32 0, i32 7, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %pipe.i = getelementptr inbounds %struct.gss_pipe, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe.i, align 4
  %pipe5.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %pipe5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %pipe5.i, align 8
  %list.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list.i, ptr %prev.i.i, align 8
  %rpc_waitqueue.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @rpc_init_wait_queue(ptr noundef %rpc_waitqueue.i, ptr noundef nonnull @.str.28) #14
  %waitqueue.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %waitqueue.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @gss_alloc_msg.__key) #14
  %call.i.i.i38.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #14
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %uid6.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %uid6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %uid.sroa.0.0.copyload, ptr %uid6.i, align 4
  %auth.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %auth.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %gss_auth, ptr %auth.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gss_auth, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %gss_auth, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gss_auth, ptr %gss_auth, i32 1, ptr elementtype(i32) %gss_auth) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end4.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !196

if.end4.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end4.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !197

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end4.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end4.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %gss_auth, i32 noundef %.sink.i.i.i.i.i) #14
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %kref_get.exit.i.gss_alloc_msg.exit_crit_edge, label %if.then7.i

kref_get.exit.i.gss_alloc_msg.exit_crit_edge:     ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_alloc_msg.exit

if.then7.i:                                       ; preds = %kref_get.exit.i
  %call8.i = tail call ptr @kstrdup_const(ptr noundef nonnull %4, i32 noundef 3136) #14
  %service_name9.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %service_name9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i, ptr %service_name9.i, align 8
  %tobool11.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.then7.i.gss_alloc_msg.exit_crit_edge

if.then7.i.gss_alloc_msg.exit_crit_edge:          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_alloc_msg.exit

if.then12.i:                                      ; preds = %if.then7.i
  %27 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunrpc_net_id to i32))
  %29 = load i32, ptr @sunrpc_net_id, align 4
  %call.i39.i = tail call fastcc ptr @net_generic(ptr noundef %28, i32 noundef %29) #14
  %pipe_users.i40.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i39.i, i32 0, i32 19
  %call1.i.i = tail call i32 @_atomic_dec_and_lock(ptr noundef %pipe_users.i40.i, ptr noundef nonnull @pipe_version_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then12.i.err_free_msg.i_crit_edge, label %if.then.i42.i

if.then12.i.err_free_msg.i_crit_edge:             ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_msg.i

if.then.i42.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  %pipe_version.i41.i = getelementptr inbounds %struct.sunrpc_net, ptr %call.i39.i, i32 0, i32 18
  %30 = ptrtoint ptr %pipe_version.i41.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %pipe_version.i41.i, align 4
  br label %err_free_msg.sink.split.i

err_free_msg.sink.split.i:                        ; preds = %if.then.i42.i, %if.end.i.err_free_msg.sink.split.i_crit_edge
  %err.0.ph.i = phi i32 [ -12, %if.then.i42.i ], [ -11, %if.end.i.err_free_msg.sink.split.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pipe_version_lock) #14
  br label %err_free_msg.i

err_free_msg.i:                                   ; preds = %err_free_msg.sink.split.i, %if.then12.i.err_free_msg.i_crit_edge, %get_pipe_version.exit.i.err_free_msg.i_crit_edge
  %err.0.i = phi i32 [ %13, %get_pipe_version.exit.i.err_free_msg.i_crit_edge ], [ -12, %if.then12.i.err_free_msg.i_crit_edge ], [ %err.0.ph.i, %err_free_msg.sink.split.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %err16.i

err16.i:                                          ; preds = %err_free_msg.i, %entry.err16.i_crit_edge
  %err.1.i = phi i32 [ -12, %entry.err16.i_crit_edge ], [ %err.0.i, %err_free_msg.i ]
  %31 = inttoptr i32 %err.1.i to ptr
  br label %gss_alloc_msg.exit

gss_alloc_msg.exit:                               ; preds = %err16.i, %if.then7.i.gss_alloc_msg.exit_crit_edge, %kref_get.exit.i.gss_alloc_msg.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %err16.i ], [ %call7.i.i.i, %if.then7.i.gss_alloc_msg.exit_crit_edge ], [ %call7.i.i.i, %kref_get.exit.i.gss_alloc_msg.exit_crit_edge ]
  %cmp.i26 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %gss_alloc_msg.exit.cleanup_crit_edge, label %if.end

gss_alloc_msg.exit.cleanup_crit_edge:             ; preds = %gss_alloc_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %gss_alloc_msg.exit
  %pipe1.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %retval.0.i, i32 0, i32 6
  %32 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pipe1.i, align 4
  %lock.i = getelementptr inbounds %struct.rpc_pipe, ptr %33, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #14
  %uid.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %retval.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %in_downcall.i.i = getelementptr inbounds %struct.rpc_pipe, ptr %33, i32 0, i32 2
  %35 = ptrtoint ptr %in_downcall.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn23.i.i = load ptr, ptr %in_downcall.i.i, align 4
  %cmp.not24.i.i = icmp eq ptr %.pn23.i.i, %in_downcall.i.i
  br i1 %cmp.not24.i.i, label %if.end.if.then.i_crit_edge, label %for.body.lr.ph.i.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %auth.i27 = getelementptr inbounds %struct.gss_upcall_msg, ptr %retval.0.i, i32 0, i32 5
  %36 = ptrtoint ptr %auth.i27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %auth.i27, align 4
  %tobool.not.i.i28 = icmp eq ptr %37, null
  %service6.i.i = getelementptr inbounds %struct.gss_auth, ptr %37, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn25.i.i = phi ptr [ %.pn23.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %uid2.i.i = getelementptr i8, ptr %.pn25.i.i, i32 -32
  %38 = ptrtoint ptr %uid2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack.i.i = load i32, ptr %uid2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i.i, i32 %.unpack.i)
  %cmp.i.i.i = icmp eq i32 %.unpack.i.i, %.unpack.i
  br i1 %cmp.i.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  br i1 %tobool.not.i.i28, label %if.end.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %auth5.i.i = getelementptr i8, ptr %.pn25.i.i, i32 8
  %39 = ptrtoint ptr %auth5.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %auth5.i.i, align 4
  %service.i.i = getelementptr inbounds %struct.gss_auth, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %service.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %service.i.i, align 4
  %43 = ptrtoint ptr %service6.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %service6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp7.not.i.i = icmp eq i32 %42, %44
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i.if.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  %pos.0.le.i.i = getelementptr i8, ptr %.pn25.i.i, i32 -36
  %call.i.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pos.0.le.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pos.0.le.i.i, i32 1, i32 3, i32 1) #14
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pos.0.le.i.i, ptr %pos.0.le.i.i, i32 1, ptr elementtype(i32) %pos.0.le.i.i) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i30)
  %tobool1.not.i.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i30, 0
  br i1 %tobool1.not.i.i.i.i.i31, label %if.end9.i.i.if.end15.sink.split.i.i.i.i.i36_crit_edge, label %if.else.i.i.i.i.i34, !prof !196

if.end9.i.i.if.end15.sink.split.i.i.i.i.i36_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i36

if.else.i.i.i.i.i34:                              ; preds = %if.end9.i.i
  %add.i.i.i.i.i32 = add i32 %asmresult.i.i.i.i.i.i.i30, 1
  %46 = or i32 %add.i.i.i.i.i32, %asmresult.i.i.i.i.i.i.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i.i.i33 = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i.i.i33, label %if.else.i.i.i.i.i34.__gss_find_upcall.exit.i_crit_edge, label %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge, !prof !197

if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge: ; preds = %if.else.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i36

if.else.i.i.i.i.i34.__gss_find_upcall.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %__gss_find_upcall.exit.i

if.end15.sink.split.i.i.i.i.i36:                  ; preds = %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge, %if.end9.i.i.if.end15.sink.split.i.i.i.i.i36_crit_edge
  %.sink.i.i.i.i.i35 = phi i32 [ 2, %if.end9.i.i.if.end15.sink.split.i.i.i.i.i36_crit_edge ], [ 1, %if.else.i.i.i.i.i34.if.end15.sink.split.i.i.i.i.i36_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pos.0.le.i.i, i32 noundef %.sink.i.i.i.i.i35) #14
  br label %__gss_find_upcall.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %47 = ptrtoint ptr %.pn25.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i.i = load ptr, ptr %.pn25.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %in_downcall.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

__gss_find_upcall.exit.i:                         ; preds = %if.end15.sink.split.i.i.i.i.i36, %if.else.i.i.i.i.i34.__gss_find_upcall.exit.i_crit_edge
  %cmp.i37 = icmp eq ptr %pos.0.le.i.i, null
  br i1 %cmp.i37, label %__gss_find_upcall.exit.i.if.then.i_crit_edge, label %gss_add_msg.exit

__gss_find_upcall.exit.i.if.then.i_crit_edge:     ; preds = %__gss_find_upcall.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %__gss_find_upcall.exit.i.if.then.i_crit_edge, %for.inc.i.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %retval.0.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %retval.0.i, i32 1, i32 3, i32 1) #14
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %retval.0.i, ptr %retval.0.i, i32 1, ptr elementtype(i32) %retval.0.i) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !196

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %49 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !197

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %retval.0.i, i32 noundef %.sink.i.i.i.i) #14
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %list.i38 = getelementptr inbounds %struct.gss_upcall_msg, ptr %retval.0.i, i32 0, i32 4
  %50 = ptrtoint ptr %in_downcall.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %in_downcall.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i38, ptr noundef %in_downcall.i.i, ptr noundef %51) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %refcount_inc.exit.i.gss_add_msg.exit.thread_crit_edge

refcount_inc.exit.i.gss_add_msg.exit.thread_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_add_msg.exit.thread

if.end.i.i.i:                                     ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list.i38, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %list.i38 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %list.i38, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %retval.0.i, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %in_downcall.i.i, ptr %prev3.i.i.i, align 4
  %55 = ptrtoint ptr %in_downcall.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list.i38, ptr %in_downcall.i.i, align 4
  br label %gss_add_msg.exit.thread

gss_add_msg.exit.thread:                          ; preds = %if.end.i.i.i, %refcount_inc.exit.i.gss_add_msg.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  br label %if.then3

gss_add_msg.exit:                                 ; preds = %__gss_find_upcall.exit.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #14
  %cmp = icmp eq ptr %pos.0.le.i.i, %retval.0.i
  br i1 %cmp, label %gss_add_msg.exit.if.then3_crit_edge, label %if.else

gss_add_msg.exit.if.then3_crit_edge:              ; preds = %gss_add_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.then3:                                         ; preds = %gss_add_msg.exit.if.then3_crit_edge, %gss_add_msg.exit.thread
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %retval.0.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %retval.0.i, i32 1, i32 3, i32 1) #14
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %retval.0.i, ptr %retval.0.i, i32 1, ptr elementtype(i32) %retval.0.i) #14, !srcloc !195
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then3.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !196

if.then3.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then3
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %57 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !197

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %retval.0.i, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %58 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pipe1.i, align 4
  %msg = getelementptr inbounds %struct.gss_upcall_msg, ptr %retval.0.i, i32 0, i32 3
  %call4 = tail call i32 @rpc_queue_upcall(ptr noundef %59, ptr noundef %msg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %refcount_inc.exit.cleanup_crit_edge, label %if.then5

refcount_inc.exit.cleanup_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %refcount_inc.exit
  %60 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pipe1.i, align 4
  %list.i41 = getelementptr inbounds %struct.gss_upcall_msg, ptr %retval.0.i, i32 0, i32 4
  %62 = ptrtoint ptr %list.i41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %list.i41, align 4
  %cmp.i.not.i = icmp eq ptr %63, %list.i41
  br i1 %cmp.i.not.i, label %if.then5.gss_unhash_msg.exit_crit_edge, label %if.end.i43

if.then5.gss_unhash_msg.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_unhash_msg.exit

if.end.i43:                                       ; preds = %if.then5
  %lock.i42 = getelementptr inbounds %struct.rpc_pipe, ptr %61, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i42) #14
  %64 = ptrtoint ptr %list.i41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %list.i41, align 4
  %cmp.i12.not.i = icmp eq ptr %65, %list.i41
  br i1 %cmp.i12.not.i, label %if.end.i43.if.end6.i_crit_edge, label %if.then5.i

if.end.i43.if.end6.i_crit_edge:                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__gss_unhash_msg(ptr noundef %retval.0.i) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i43.if.end6.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i42) #14
  br label %gss_unhash_msg.exit

gss_unhash_msg.exit:                              ; preds = %if.end6.i, %if.then5.gss_unhash_msg.exit_crit_edge
  %call.i.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %retval.0.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %retval.0.i, i32 1, i32 3, i32 1) #14
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %retval.0.i, ptr %retval.0.i, i32 1, ptr elementtype(i32) %retval.0.i) #14, !srcloc !199
  %asmresult.i.i.i.i.i45 = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i45)
  %cmp.i.i46 = icmp slt i32 %asmresult.i.i.i.i.i45, 2
  br i1 %cmp.i.i46, label %if.then3.i.i, label %gss_unhash_msg.exit.refcount_dec.exit_crit_edge, !prof !196

gss_unhash_msg.exit.refcount_dec.exit_crit_edge:  ; preds = %gss_unhash_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %gss_unhash_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %retval.0.i, i32 noundef 4) #14
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %gss_unhash_msg.exit.refcount_dec.exit_crit_edge
  tail call fastcc void @gss_release_msg(ptr noundef %retval.0.i)
  %67 = inttoptr i32 %call4 to ptr
  br label %cleanup

if.else:                                          ; preds = %gss_add_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @gss_release_msg(ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %refcount_dec.exit, %refcount_inc.exit.cleanup_crit_edge, %gss_alloc_msg.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %gss_alloc_msg.exit.cleanup_crit_edge ], [ %pos.0.le.i.i, %if.else ], [ %67, %refcount_dec.exit ], [ %retval.0.i, %refcount_inc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_ctx_init(ptr noundef %gc) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_init, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_ctx_init, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !226
  %call42 = tail call i32 @__traceiter_rpcgss_ctx_init(ptr noundef null, ptr noundef %gc) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !227
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_init, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_init, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_ctx_init.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_ctx_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 172, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gss_cred_set_ctx(ptr noundef %cred, ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 6
  %0 = ptrtoint ptr %cr_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cr_flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ctx, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %ctx, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ctx, ptr %ctx, i32 1, ptr elementtype(i32) %ctx) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !196

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.gss_get_ctx.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !197

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.gss_get_ctx.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_get_ctx.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ctx, i32 noundef %.sink.i.i.i.i) #14
  br label %gss_get_ctx.exit

gss_get_ctx.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.gss_get_ctx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !228
  %gc_ctx23 = getelementptr inbounds %struct.gss_cred, ptr %cred, i32 0, i32 2
  %4 = ptrtoint ptr %gc_ctx23 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ctx, ptr %gc_ctx23, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cr_flags) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !229
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %cr_flags) #14
  br label %cleanup

cleanup:                                          ; preds = %gss_get_ctx.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_upcall_result(i32 noundef %uid, i32 noundef %result) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_result, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_upcall_result, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !230
  %call42 = tail call i32 @__traceiter_rpcgss_upcall_result(ptr noundef null, i32 noundef %uid, i32 noundef %result) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !231
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_result, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_result, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_upcall_result.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_upcall_result.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 570, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_queue_upcall(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_ctx_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_upcall_result(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_destroy_nullcred(ptr noundef %cred) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_auth = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 3
  %0 = ptrtoint ptr %cr_auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_auth, align 4
  %gc_ctx = getelementptr inbounds %struct.gss_cred, ptr %cred, i32 0, i32 2
  %2 = ptrtoint ptr %gc_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc_ctx, align 4
  store volatile ptr null, ptr %gc_ctx, align 4
  %cr_cred = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 8
  %4 = ptrtoint ptr %cr_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cr_cred, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %5) #14
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !196

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__invalid_creds(ptr noundef nonnull %5, ptr noundef nonnull @.str.30, i32 noundef 286) #14
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !233
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %5) #14
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  %cr_rcu = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %cr_rcu, ptr noundef nonnull @gss_free_cred_callback) #14
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %put_cred.exit.if.end_crit_edge, label %if.then

put_cred.exit.if.end_crit_edge:                   ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %put_cred.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #14, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !197

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %gc_rcu.i.i = getelementptr inbounds %struct.gss_cl_ctx, ptr %3, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %gc_rcu.i.i, ptr noundef nonnull @gss_free_ctx_callback) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %put_cred.exit.if.end_crit_edge
  %add.ptr3 = getelementptr i8, ptr %1, i32 -12
  tail call fastcc void @gss_put_auth(ptr noundef %add.ptr3)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_ctx_destroy(ptr noundef %gc) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_destroy, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_ctx_destroy, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !235
  %call42 = tail call i32 @__traceiter_rpcgss_ctx_destroy(ptr noundef null, ptr noundef %gc) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !236
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_destroy, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_destroy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_ctx_destroy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_ctx_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 173, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_call_null(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_rpccred(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gss_refresh_null(ptr nocapture noundef readnone %task) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_ctx_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_free_cred_callback(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gss_cred_get_ctx(ptr noundef %cred) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gc_ctx = getelementptr inbounds %struct.gss_cred, ptr %cred, i32 0, i32 2
  %4 = ptrtoint ptr %gc_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gc_ctx, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @gss_cred_get_ctx.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @gss_cred_get_ctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 136, ptr noundef nonnull @.str.11) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !196

if.then11.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end13_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !197

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end13_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef %.sink.i.i.i.i) #14
  br label %if.end13

if.end13:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end13_crit_edge, %do.end8.if.end13_crit_edge
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %8 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_seqno(ptr noundef %task) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_seqno, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_seqno, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !237
  %call42 = tail call i32 @__traceiter_rpcgss_seqno(ptr noundef null, ptr noundef %task) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !238
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_seqno, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_seqno, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_seqno.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_seqno.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 396, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_netobj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_buf_from_iov(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_get_mic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_get_mic(ptr noundef %task, i32 noundef %maj_stat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_get_mic, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_get_mic, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !239
  %call42 = tail call i32 @__traceiter_rpcgss_get_mic(ptr noundef null, ptr noundef %task, i32 noundef %maj_stat) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !240
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_get_mic, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_get_mic, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_get_mic.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_get_mic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 136, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_seqno(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_get_mic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on_timeout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gss_upcall_callback(ptr nocapture noundef %task) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %gc_upcall = getelementptr inbounds %struct.gss_cred, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %gc_upcall to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gc_upcall, align 4
  %pipe1 = getelementptr inbounds %struct.gss_upcall_msg, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe1, align 4
  %lock = getelementptr inbounds %struct.rpc_pipe, ptr %7, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %errno.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %5, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %errno.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %9, label %entry.gss_handle_downcall_result.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 -127, label %sw.bb3.i
  ]

entry.gss_handle_downcall_result.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_handle_downcall_result.exit

sw.bb.i:                                          ; preds = %entry
  %ctx.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx.i, align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %sw.bb.i.gss_handle_downcall_result.exit_crit_edge, label %if.end.i

sw.bb.i.gss_handle_downcall_result.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gss_handle_downcall_result.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags.i = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %cr_flags.i) #14
  %13 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx.i, align 4
  tail call fastcc void @gss_cred_set_ctx(ptr noundef %3, ptr noundef %14) #14
  br label %gss_handle_downcall_result.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags5.i = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cr_flags5.i) #14
  br label %gss_handle_downcall_result.exit

gss_handle_downcall_result.exit:                  ; preds = %sw.bb3.i, %if.end.i, %sw.bb.i.gss_handle_downcall_result.exit_crit_edge, %entry.gss_handle_downcall_result.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %gc_upcall_timestamp.i = getelementptr inbounds %struct.gss_cred, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %gc_upcall_timestamp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %gc_upcall_timestamp.i, align 4
  %17 = ptrtoint ptr %gc_upcall to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %gc_upcall, align 4
  %rpc_waitqueue.i = getelementptr inbounds %struct.gss_upcall_msg, ptr %5, i32 0, i32 7
  %18 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %errno.i, align 4
  tail call void @rpc_wake_up_status(ptr noundef %rpc_waitqueue.i, i32 noundef %19) #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %20 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %errno.i, align 4
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 1
  %22 = ptrtoint ptr %tk_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tk_status, align 4
  tail call fastcc void @gss_release_msg(ptr noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_verify_mic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_verify_mic(ptr noundef %task, i32 noundef %maj_stat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_verify_mic, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_verify_mic, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !241
  %call42 = tail call i32 @__traceiter_rpcgss_verify_mic(ptr noundef null, ptr noundef %task, i32 noundef %maj_stat) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !242
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_verify_mic, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_verify_mic, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_verify_mic.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_verify_mic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 137, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_verify_mic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_wrap_req_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_wrap_req_integ(ptr noundef %cred, ptr nocapture noundef readonly %ctx, ptr noundef %task, ptr noundef %xdr) unnamed_addr #12 align 64 {
entry:
  %integ_buf = alloca %struct.xdr_buf, align 4
  %mic = alloca %struct.xdr_netobj, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %integ_buf) #14
  %2 = call ptr @memset(ptr %integ_buf, i32 255, i32 44)
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #14
  %3 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mic, align 4, !annotation !222
  %4 = getelementptr inbounds %struct.xdr_netobj, ptr %mic, i32 0, i32 1
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.wrap_failed_crit_edge, label %if.end

entry.wrap_failed_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %wrap_failed

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rq_seqno, align 4
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %incdec.ptr, align 4
  %call1 = tail call i32 @rpcauth_wrap_req_encode(ptr noundef %task, ptr noundef %xdr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.wrap_failed_crit_edge

if.end.wrap_failed_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %wrap_failed

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %rq_snd_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_snd_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %sub = sub i32 %11, %sub.ptr.sub
  %call5 = call i32 @xdr_buf_subsegment(ptr noundef %rq_snd_buf, ptr noundef nonnull %integ_buf, i32 noundef %sub.ptr.sub, i32 noundef %sub) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.wrap_failed_crit_edge

if.end4.wrap_failed_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %wrap_failed

if.end8:                                          ; preds = %if.end4
  %len9 = getelementptr inbounds %struct.xdr_buf, ptr %integ_buf, i32 0, i32 8
  %12 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len9, align 4
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call, align 4
  %call10 = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 0) #14
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.wrap_failed_crit_edge, label %if.end13

if.end8.wrap_failed_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %wrap_failed

if.end13:                                         ; preds = %if.end8
  %add.ptr = getelementptr i32, ptr %call10, i32 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %4, align 4
  %gc_gss_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 5
  %16 = ptrtoint ptr %gc_gss_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gc_gss_ctx, align 4
  %call14 = call i32 @gss_get_mic(ptr noundef %17, ptr noundef nonnull %integ_buf, ptr noundef nonnull %mic) #14
  %18 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call14, label %bad_mic [
    i32 786432, label %if.then15
    i32 0, label %if.end13.if.end19_crit_edge
  ]

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %cr_flags) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %19 = ptrtoint ptr %mic to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mic, align 4
  %21 = add i32 %20, 7
  %add.i = and i32 %21, -4
  %call1.i = call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #14
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end19.wrap_failed_crit_edge, label %xdr_stream_encode_opaque_inline.exit, !prof !196

if.end19.wrap_failed_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %wrap_failed

xdr_stream_encode_opaque_inline.exit:             ; preds = %if.end19
  %call5.i = call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i, ptr noundef null, i32 noundef %20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp22 = icmp slt i32 %add.i, 0
  br i1 %cmp22, label %xdr_stream_encode_opaque_inline.exit.wrap_failed_crit_edge, label %xdr_stream_encode_opaque_inline.exit.cleanup_crit_edge

xdr_stream_encode_opaque_inline.exit.cleanup_crit_edge: ; preds = %xdr_stream_encode_opaque_inline.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

xdr_stream_encode_opaque_inline.exit.wrap_failed_crit_edge: ; preds = %xdr_stream_encode_opaque_inline.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %wrap_failed

wrap_failed:                                      ; preds = %xdr_stream_encode_opaque_inline.exit.wrap_failed_crit_edge, %if.end19.wrap_failed_crit_edge, %if.end8.wrap_failed_crit_edge, %if.end4.wrap_failed_crit_edge, %if.end.wrap_failed_crit_edge, %entry.wrap_failed_crit_edge
  br label %cleanup

bad_mic:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @trace_rpcgss_get_mic(ptr noundef %task, i32 noundef %call14)
  br label %cleanup

cleanup:                                          ; preds = %bad_mic, %wrap_failed, %xdr_stream_encode_opaque_inline.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %wrap_failed ], [ -5, %bad_mic ], [ 0, %xdr_stream_encode_opaque_inline.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %integ_buf) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_wrap_req_priv(ptr noundef %cred, ptr nocapture noundef readonly %ctx, ptr noundef %task, ptr noundef %xdr) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_seqno, align 4
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %incdec.ptr, align 4
  %call1 = tail call i32 @rpcauth_wrap_req_encode(ptr noundef %task, ptr noundef %xdr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rq_release_snd_buf.i = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %rq_release_snd_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq_release_snd_buf.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %if.then.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %6(ptr noundef %1) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %page_len.i = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %rq_enc_pages_num.i = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %rq_enc_pages_num.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rq_enc_pages_num.i, align 8
  br label %if.end10

if.end3.i:                                        ; preds = %if.end.i
  %page_base.i = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_base.i, align 4
  %shr.i = lshr i32 %11, 12
  %add.i = add i32 %8, -1
  %sub.i = add i32 %add.i, %11
  %shr6.i = lshr i32 %sub.i, 12
  %sub7.i = sub nsw i32 %shr6.i, %shr.i
  %add9.i = add nsw i32 %sub7.i, 2
  %rq_enc_pages_num10.i = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %rq_enc_pages_num10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add9.i, ptr %rq_enc_pages_num10.i, align 8
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add9.i, i32 4) #14
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !196

kmalloc_array.exit.thread.i:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %rq_enc_pages53.i = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %rq_enc_pages53.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rq_enc_pages53.i, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end3.i
  %16 = extractvalue { i32, i1 } %13, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3136) #19
  %rq_enc_pages.i = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %rq_enc_pages.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %rq_enc_pages.i, align 4
  %tobool13.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not.i, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %18 = ptrtoint ptr %rq_enc_pages_num10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rq_enc_pages_num10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1757.i = icmp sgt i32 %19, 0
  br i1 %cmp1757.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.058.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %20 = ptrtoint ptr %rq_enc_pages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq_enc_pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %i.058.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call38.i.i.i.i, ptr %arrayidx.i, align 4
  %23 = load ptr, ptr %rq_enc_pages.i, align 4
  %arrayidx21.i = getelementptr ptr, ptr %23, i32 %i.058.i
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx21.i, align 4
  %cmp22.i = icmp eq ptr %25, null
  br i1 %cmp22.i, label %out_free.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %26 = ptrtoint ptr %rq_enc_pages_num10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rq_enc_pages_num10.i, align 8
  %cmp17.i = icmp slt i32 %inc.i, %27
  br i1 %cmp17.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %28 = ptrtoint ptr %rq_release_snd_buf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @priv_release_snd_buf, ptr %rq_release_snd_buf.i, align 8
  br label %if.end10

out_free.i:                                       ; preds = %for.body.i
  %29 = ptrtoint ptr %rq_enc_pages_num10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.058.i, ptr %rq_enc_pages_num10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.058.i)
  %cmp7.i.not.i = icmp eq i32 %i.058.i, 0
  br i1 %cmp7.i.not.i, label %out_free.i.priv_release_snd_buf.exit.i_crit_edge, label %out_free.i.for.body.i.i_crit_edge

out_free.i.for.body.i.i_crit_edge:                ; preds = %out_free.i
  br label %for.body.i.i

out_free.i.priv_release_snd_buf.exit.i_crit_edge: ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %priv_release_snd_buf.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %out_free.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %out_free.i.for.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %rq_enc_pages.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rq_enc_pages.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %31, i32 %i.08.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @__free_pages(ptr noundef %33, i32 noundef 0) #14
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %34 = ptrtoint ptr %rq_enc_pages_num10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq_enc_pages_num10.i, align 8
  %cmp.i.i = icmp slt i32 %inc.i.i, %35
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.priv_release_snd_buf.exit.i_crit_edge

for.body.i.i.priv_release_snd_buf.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %priv_release_snd_buf.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

priv_release_snd_buf.exit.i:                      ; preds = %for.body.i.i.priv_release_snd_buf.exit.i_crit_edge, %out_free.i.priv_release_snd_buf.exit.i_crit_edge
  %36 = ptrtoint ptr %rq_enc_pages.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rq_enc_pages.i, align 4
  tail call void @kfree(ptr noundef %37) #14
  %38 = ptrtoint ptr %rq_release_snd_buf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rq_release_snd_buf.i, align 8
  br label %cleanup

if.end10:                                         ; preds = %for.end.i, %if.then2.i
  %page_base = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %page_base, align 4
  %shr = lshr i32 %40, 12
  %pages = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pages, align 4
  %add.ptr = getelementptr ptr, ptr %42, i32 %shr
  %rq_enc_pages = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %rq_enc_pages to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rq_enc_pages, align 4
  store ptr %44, ptr %pages, align 4
  %sub = and i32 %40, 4095
  store i32 %sub, ptr %page_base, align 4
  %45 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool13.not = icmp eq i32 %46, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end10.if.then15_crit_edge

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end10
  %iov_len = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool14.not = icmp eq i32 %48, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.end28_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end10.if.then15_crit_edge
  %rq_enc_pages_num = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %rq_enc_pages_num to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rq_enc_pages_num, align 8
  %sub17 = add i32 %50, -1
  %arrayidx18 = getelementptr ptr, ptr %44, i32 %sub17
  %51 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx18, align 4
  %call19 = tail call ptr @page_address(ptr noundef %52) #14
  %tail20 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %tail20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail20, align 4
  %iov_len24 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %iov_len24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iov_len24, align 4
  %57 = call ptr @memcpy(ptr %call19, ptr %54, i32 %56)
  store ptr %call19, ptr %tail20, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then15, %lor.lhs.false.if.end28_crit_edge
  %58 = ptrtoint ptr %rq_snd_buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rq_snd_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %59 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %gc_gss_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 5
  %60 = ptrtoint ptr %gc_gss_ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gc_gss_ctx, align 4
  %call31 = tail call i32 @gss_wrap(ptr noundef %61, i32 noundef %sub.ptr.sub, ptr noundef %rq_snd_buf, ptr noundef %add.ptr) #14
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 8
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %buflen = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 7
  %64 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp = icmp ugt i32 %63, %65
  br i1 %cmp, label %if.end28.cleanup_crit_edge, label %if.end39, !prof !196

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %66 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call31, label %bad_wrap [
    i32 786432, label %if.then41
    i32 0, label %if.end39.if.end45_crit_edge
  ]

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %cr_flags) #14
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end39.if.end45_crit_edge
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len, align 4
  %sub47 = sub i32 %68, %sub.ptr.sub
  %69 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub47, ptr %call, align 4
  %70 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool49.not = icmp eq i32 %71, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.end45.if.then55_crit_edge

if.end45.if.then55_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

lor.lhs.false50:                                  ; preds = %if.end45
  %iov_len53 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %iov_len53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iov_len53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool54.not = icmp eq i32 %73, 0
  br i1 %tobool54.not, label %lor.lhs.false50.if.end60_crit_edge, label %lor.lhs.false50.if.then55_crit_edge

lor.lhs.false50.if.then55_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

lor.lhs.false50.if.end60_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then55:                                        ; preds = %lor.lhs.false50.if.then55_crit_edge, %if.end45.if.then55_crit_edge
  %tail56 = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 1, i32 1
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %lor.lhs.false50.if.end60_crit_edge
  %iov.0 = phi ptr [ %tail56, %if.then55 ], [ %rq_snd_buf, %lor.lhs.false50.if.end60_crit_edge ]
  %74 = ptrtoint ptr %iov.0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iov.0, align 4
  %iov_len62 = getelementptr inbounds %struct.kvec, ptr %iov.0, i32 0, i32 1
  %76 = ptrtoint ptr %iov_len62 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iov_len62, align 4
  %add.ptr63 = getelementptr i8, ptr %75, i32 %77
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  %sub65 = sub i32 %79, %sub.ptr.sub
  %add.i.i = add i32 %sub65, 3
  %and.i.i = and i32 %add.i.i, -4
  %sub.i122 = sub i32 %and.i.i, %sub65
  %80 = call ptr @memset(ptr %add.ptr63, i32 0, i32 %sub.i122)
  %81 = load i32, ptr %iov_len62, align 4
  %add = add i32 %sub.i122, %81
  store i32 %add, ptr %iov_len62, align 4
  %82 = load i32, ptr %len, align 4
  %add69 = add i32 %82, %sub.i122
  store i32 %add69, ptr %len, align 4
  br label %cleanup

bad_wrap:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_rpcgss_wrap(ptr noundef %task, i32 noundef %call31)
  br label %cleanup

cleanup:                                          ; preds = %bad_wrap, %if.end60, %if.end28.cleanup_crit_edge, %priv_release_snd_buf.exit.i, %if.end7.i.i.cleanup_crit_edge, %kmalloc_array.exit.thread.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -5, %bad_wrap ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -11, %if.end7.i.i.cleanup_crit_edge ], [ -11, %priv_release_snd_buf.exit.i ], [ -11, %kmalloc_array.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_subsegment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_wrap(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_wrap(ptr noundef %task, i32 noundef %maj_stat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_wrap, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_wrap, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !243
  %call42 = tail call i32 @__traceiter_rpcgss_wrap(ptr noundef null, ptr noundef %task, i32 noundef %maj_stat) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !244
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_wrap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_wrap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_wrap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_wrap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 138, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @priv_release_snd_buf(ptr nocapture noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_enc_pages_num = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 8
  %0 = ptrtoint ptr %rq_enc_pages_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_enc_pages_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rq_enc_pages = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %rq_enc_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_enc_pages, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @__free_pages(ptr noundef %5, i32 noundef 0) #14
  %inc = add nuw nsw i32 %i.08, 1
  %6 = ptrtoint ptr %rq_enc_pages_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_enc_pages_num, align 8
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rq_enc_pages1 = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 9
  %8 = ptrtoint ptr %rq_enc_pages1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rq_enc_pages1, align 4
  tail call void @kfree(ptr noundef %9) #14
  %rq_release_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 10
  %10 = ptrtoint ptr %rq_release_snd_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rq_release_snd_buf, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_wrap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_unwrap_resp_integ(ptr noundef %task, ptr noundef %cred, ptr nocapture noundef readonly %ctx, ptr noundef %rqstp, ptr noundef %xdr) unnamed_addr #12 align 64 {
entry:
  %gss_data = alloca %struct.xdr_buf, align 4
  %len = alloca i32, align 4
  %mic = alloca %struct.xdr_netobj, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %gss_data) #14
  %0 = call ptr @memset(ptr %gss_data, i32 255, i32 44)
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #14
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mic) #14
  %2 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mic, align 4, !annotation !222
  %3 = getelementptr inbounds %struct.xdr_netobj, ptr %mic, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  %call.i = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.unwrap_failed_crit_edge, label %if.end, !prof !196

entry.unwrap_failed_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len, align 4
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.unwrap_failed_crit_edge

if.end.unwrap_failed_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end3:                                          ; preds = %if.end
  %len4 = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len4, align 4
  %nwords.i = getelementptr inbounds %struct.xdr_stream, ptr %xdr, i32 0, i32 6
  %10 = ptrtoint ptr %nwords.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nwords.i, align 4
  %shl.i.neg = mul i32 %11, -4
  %sub = add i32 %shl.i.neg, %9
  %call.i72 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 4) #14
  %tobool.not.i73 = icmp eq ptr %call.i72, null
  br i1 %tobool.not.i73, label %if.end3.unwrap_failed_crit_edge, label %if.end9, !prof !196

if.end3.unwrap_failed_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end9:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %call.i72 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i72, align 4
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 7
  %14 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rq_seqno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %if.end11, label %bad_seqno

if.end11:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %call12 = call i32 @xdr_buf_subsegment(ptr noundef %rq_rcv_buf, ptr noundef nonnull %gss_data, i32 noundef %sub, i32 noundef %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.unwrap_failed_crit_edge

if.end11.unwrap_failed_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end15:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add = add i32 %19, %sub
  %call16 = call i32 @xdr_decode_word(ptr noundef %rq_rcv_buf, i32 noundef %add, ptr noundef nonnull %len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.unwrap_failed_crit_edge

if.end15.unwrap_failed_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end19:                                         ; preds = %if.end15
  %add20 = add i32 %add, 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add21 = add i32 %21, %add20
  %22 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %23)
  %cmp23 = icmp ugt i32 %add21, %23
  br i1 %cmp23, label %if.end19.unwrap_failed_crit_edge, label %if.end25

if.end19.unwrap_failed_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end25:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %mic, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3136) #19
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i, ptr %3, align 4
  %tobool30.not = icmp eq ptr %call9.i, null
  br i1 %tobool30.not, label %if.end25.unwrap_failed_crit_edge, label %if.end32

if.end25.unwrap_failed_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end32:                                         ; preds = %if.end25
  %26 = ptrtoint ptr %mic to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mic, align 4
  %call35 = call i32 @read_bytes_from_xdr_buf(ptr noundef %rq_rcv_buf, i32 noundef %add20, ptr noundef nonnull %call9.i, i32 noundef %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.unwrap_failed_crit_edge

if.end32.unwrap_failed_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end38:                                         ; preds = %if.end32
  %gc_gss_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 5
  %28 = ptrtoint ptr %gc_gss_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gc_gss_ctx, align 4
  %call39 = call i32 @gss_verify_mic(ptr noundef %29, ptr noundef nonnull %gss_data, ptr noundef nonnull %mic) #14
  %30 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call39, label %if.end38.bad_mic_crit_edge [
    i32 786432, label %if.then41
    i32 0, label %if.end45
  ]

if.end38.bad_mic_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %bad_mic

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %cr_flags) #14
  br label %bad_mic

if.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %mic to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mic, align 4
  %add47 = add i32 %32, 3
  %shr = lshr i32 %add47, 2
  %add48 = add nuw nsw i32 %shr, 3
  call fastcc void @gss_update_rslack(ptr noundef %task, ptr noundef %cred, i32 noundef 2, i32 noundef %add48)
  br label %out

out:                                              ; preds = %bad_mic, %bad_seqno, %unwrap_failed, %if.end45
  %ret.0 = phi i32 [ -5, %unwrap_failed ], [ -5, %bad_seqno ], [ -5, %bad_mic ], [ 0, %if.end45 ]
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %34) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mic) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %gss_data) #14
  ret i32 %ret.0

unwrap_failed:                                    ; preds = %if.end32.unwrap_failed_crit_edge, %if.end25.unwrap_failed_crit_edge, %if.end19.unwrap_failed_crit_edge, %if.end15.unwrap_failed_crit_edge, %if.end11.unwrap_failed_crit_edge, %if.end3.unwrap_failed_crit_edge, %if.end.unwrap_failed_crit_edge, %entry.unwrap_failed_crit_edge
  call fastcc void @trace_rpcgss_unwrap_failed(ptr noundef %task)
  br label %out

bad_seqno:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_rpcgss_bad_seqno(ptr noundef %task, i32 noundef %15, i32 noundef %13)
  br label %out

bad_mic:                                          ; preds = %if.then41, %if.end38.bad_mic_crit_edge
  call fastcc void @trace_rpcgss_verify_mic(ptr noundef %task, i32 noundef %call39)
  br label %out
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gss_unwrap_resp_priv(ptr noundef %task, ptr noundef %cred, ptr nocapture noundef readonly %ctx, ptr noundef %rqstp, ptr noundef %xdr) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 2
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.unwrap_failed_crit_edge, label %if.end, !prof !196

entry.unwrap_failed_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = ptrtoint ptr %rq_rcv_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_rcv_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %1
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ugt i32 %add, %5
  br i1 %cmp, label %if.end.unwrap_failed_crit_edge, label %if.end8

if.end.unwrap_failed_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unwrap_failed

if.end8:                                          ; preds = %if.end
  %gc_gss_ctx = getelementptr inbounds %struct.gss_cl_ctx, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %gc_gss_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gc_gss_ctx, align 4
  %call10 = tail call i32 @gss_unwrap(ptr noundef %7, i32 noundef %sub.ptr.sub, i32 noundef %add, ptr noundef %rq_rcv_buf) #14
  %8 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call10, label %if.end8.bad_unwrap_crit_edge [
    i32 786432, label %if.then12
    i32 0, label %if.end16
  ]

if.end8.bad_unwrap_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %bad_unwrap

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %cr_flags) #14
  br label %bad_unwrap

if.end16:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr, align 4
  %rq_seqno = getelementptr inbounds %struct.rpc_rqst, ptr %rqstp, i32 0, i32 7
  %11 = ptrtoint ptr %rq_seqno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq_seqno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp19.not = icmp eq i32 %10, %12
  br i1 %cmp19.not, label %if.end21, label %bad_seqno

if.end21:                                         ; preds = %if.end16
  %incdec.ptr17 = getelementptr i32, ptr %call, i32 2
  tail call void @xdr_init_decode(ptr noundef %xdr, ptr noundef %rq_rcv_buf, ptr noundef %incdec.ptr17, ptr noundef %rqstp) #14
  %13 = ptrtoint ptr %gc_gss_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gc_gss_ctx, align 4
  %align = getelementptr inbounds %struct.gss_ctx, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %align, align 4
  %slack = getelementptr inbounds %struct.gss_ctx, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %slack to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slack, align 4
  %cr_auth.i = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 3
  %19 = ptrtoint ptr %cr_auth.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cr_auth.i, align 4
  %au_flags.i = getelementptr inbounds %struct.rpc_auth, ptr %20, i32 0, i32 4
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %au_flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end21.cleanup_crit_edge, label %if.then.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %au_verfsize.i = getelementptr inbounds %struct.rpc_auth, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %au_verfsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %au_verfsize.i, align 4
  %add23 = add i32 %22, 2
  %add.i = add i32 %add23, %16
  %au_ralign.i = getelementptr inbounds %struct.rpc_auth, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %au_ralign.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %au_ralign.i, align 4
  %add2.i = add i32 %add23, %18
  %au_rslack.i = getelementptr inbounds %struct.rpc_auth, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %au_rslack.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add2.i, ptr %au_rslack.i, align 4
  tail call fastcc void @trace_rpcgss_update_slack(ptr noundef %task, ptr noundef %20) #14
  br label %cleanup

unwrap_failed:                                    ; preds = %if.end.unwrap_failed_crit_edge, %entry.unwrap_failed_crit_edge
  tail call fastcc void @trace_rpcgss_unwrap_failed(ptr noundef %task)
  br label %cleanup

bad_seqno:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_rpcgss_bad_seqno(ptr noundef %task, i32 noundef %12, i32 noundef %10)
  br label %cleanup

bad_unwrap:                                       ; preds = %if.then12, %if.end8.bad_unwrap_crit_edge
  tail call fastcc void @trace_rpcgss_unwrap(ptr noundef %task, i32 noundef %call10)
  br label %cleanup

cleanup:                                          ; preds = %bad_unwrap, %bad_seqno, %unwrap_failed, %if.then.i, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %unwrap_failed ], [ -5, %bad_unwrap ], [ -5, %bad_seqno ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_unwrap_resp_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gss_update_rslack(ptr noundef %task, ptr nocapture noundef readonly %cred, i32 noundef %before, i32 noundef %after) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_auth = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 3
  %0 = ptrtoint ptr %cr_auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_auth, align 4
  %au_flags = getelementptr inbounds %struct.rpc_auth, ptr %1, i32 0, i32 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %au_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %au_verfsize = getelementptr inbounds %struct.rpc_auth, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %au_verfsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %au_verfsize, align 4
  %add = add i32 %3, %before
  %au_ralign = getelementptr inbounds %struct.rpc_auth, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %au_ralign to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %au_ralign, align 4
  %add2 = add i32 %3, %after
  %au_rslack = getelementptr inbounds %struct.rpc_auth, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %au_rslack to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add2, ptr %au_rslack, align 4
  tail call fastcc void @trace_rpcgss_update_slack(ptr noundef %task, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_update_slack(ptr noundef %task, ptr noundef %auth) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_update_slack, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_update_slack, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !245
  %call42 = tail call i32 @__traceiter_rpcgss_update_slack(ptr noundef null, ptr noundef %task, ptr noundef %auth) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !246
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_update_slack, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_update_slack, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_update_slack.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_update_slack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 465, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_update_slack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_decode_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_bytes_from_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_unwrap_failed(ptr noundef %task) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap_failed, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_unwrap_failed, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !247
  %call42 = tail call i32 @__traceiter_rpcgss_unwrap_failed(ptr noundef null, ptr noundef %task) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !248
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap_failed, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_unwrap_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_unwrap_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 339, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_bad_seqno(ptr noundef %task, i32 noundef %expected, i32 noundef %received) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_bad_seqno, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_bad_seqno, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !249
  %call42 = tail call i32 @__traceiter_rpcgss_bad_seqno(ptr noundef null, ptr noundef %task, i32 noundef %expected, i32 noundef %received) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !250
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_bad_seqno, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_bad_seqno, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_bad_seqno.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_bad_seqno.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 368, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_unwrap_failed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_bad_seqno(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_unwrap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_unwrap(ptr noundef %task, i32 noundef %maj_stat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_unwrap, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !251
  %call42 = tail call i32 @__traceiter_rpcgss_unwrap(ptr noundef null, ptr noundef %task, i32 noundef %maj_stat) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !252
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !197

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpcgss_unwrap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_unwrap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 139, ptr noundef nonnull @.str.11) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_unwrap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_need_reencode(ptr noundef %task, i32 noundef %seq_xmit, i1 noundef zeroext %ret) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_need_reencode, i32 0, i32 1), ptr blockaddress(@trace_rpcgss_need_reencode, %do.body)) #14
          to label %if.end49 [label %do.body], !srcloc !202

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !197

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !253
  %call43 = tail call i32 @__traceiter_rpcgss_need_reencode(ptr noundef null, ptr noundef %task, i32 noundef %seq_xmit, i1 noundef zeroext %ret) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !254
  %13 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !197

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_need_reencode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_need_reencode, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rpcgss_need_reencode.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_rpcgss_need_reencode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 430, ptr noundef nonnull @.str.11) #14
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %31 = tail call i32 @llvm.read_register.i32(metadata !185) #14
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_need_reencode(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_svc_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }
attributes #21 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !71, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !99, !100, !102, !103, !104, !105, !107, !109, !110, !112, !114, !116, !118, !119, !121, !122, !124, !125, !127, !129, !131, !133, !134, !136, !138, !140, !142, !144, !145, !147, !148, !150, !151, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !172, !174, !176, !177, !178, !180, !181, !183}
!llvm.named.register.sp = !{!185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__UNIQUE_ID_alias560, !1, !"__UNIQUE_ID_alias560", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2247, i32 1}
!2 = !{ptr @__UNIQUE_ID_file561, !3, !"__UNIQUE_ID_file561", i1 false, i1 false}
!3 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2248, i32 1}
!4 = !{ptr @__UNIQUE_ID_license562, !3, !"__UNIQUE_ID_license562", i1 false, i1 false}
!5 = !{ptr @__param_expired_cred_retry_delay, !6, !"__param_expired_cred_retry_delay", i1 false, i1 false}
!6 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2249, i32 1}
!7 = !{ptr @__UNIQUE_ID_expired_cred_retry_delaytype563, !6, !"__UNIQUE_ID_expired_cred_retry_delaytype563", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_expired_cred_retry_delay564, !9, !"__UNIQUE_ID_expired_cred_retry_delay564", i1 false, i1 false}
!9 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2252, i32 1}
!10 = !{ptr @__param_key_expire_timeo, !11, !"__param_key_expire_timeo", i1 false, i1 false}
!11 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2255, i32 1}
!12 = !{ptr @__UNIQUE_ID_key_expire_timeotype565, !11, !"__UNIQUE_ID_key_expire_timeotype565", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_key_expire_timeo566, !14, !"__UNIQUE_ID_key_expire_timeo566", i1 false, i1 false}
!14 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2258, i32 1}
!15 = !{ptr @__initcall__kmod_auth_rpcgss__567_2262_init_rpcsec_gss6, !16, !"__initcall__kmod_auth_rpcgss__567_2262_init_rpcsec_gss6", i1 false, i1 false}
!16 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2262, i32 1}
!17 = !{ptr @__exitcall_exit_rpcsec_gss, !18, !"__exitcall_exit_rpcsec_gss", i1 false, i1 false}
!18 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2263, i32 1}
!19 = !{ptr @rpcsec_gss_net_ops, !20, !"rpcsec_gss_net_ops", i1 false, i1 false}
!20 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2208, i32 33}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2145, i32 13}
!23 = !{ptr @authgss_ops, !24, !"authgss_ops", i1 false, i1 false}
!24 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2142, i32 33}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 58, i32 8}
!27 = !{ptr @gss_auth_hash_lock, !26, !"gss_auth_hash_lock", i1 false, i1 false}
!28 = !{ptr @gss_auth_hash_table, !29, !"gss_auth_hash_table", i1 false, i1 false}
!29 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 57, i32 8}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 1048, i32 32}
!32 = !{ptr @gss_pipe_dir_object_ops, !33, !"gss_pipe_dir_object_ops", i1 false, i1 false}
!33 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 879, i32 45}
!34 = !{ptr @gss_upcall_ops_v1, !35, !"gss_upcall_ops_v1", i1 false, i1 false}
!35 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2190, i32 34}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 424, i32 29}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 435, i32 30}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 455, i32 31}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 459, i32 6}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 468, i32 30}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 475, i32 29}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 482, i32 2}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/rpcgss.h", i32 532, i32 1}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 720, i32 18}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 758, i32 4}
!63 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gss_pipe_downcall._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @gss_pipe_downcall._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!68 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!73 = !{ptr @gss_alloc_context.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 152, i32 3}
!75 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/trace/events/rpcgss.h", i32 118, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/trace/events/rpcgss.h", i32 572, i32 1}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!84 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!87 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!91 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 87, i32 8}
!94 = !{ptr @pipe_version_lock, !93, !"pipe_version_lock", i1 false, i1 false}
!95 = !{ptr @pipe_version_rpc_waitqueue, !96, !"pipe_version_rpc_waitqueue", i1 false, i1 false}
!96 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 88, i32 30}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 89, i32 8}
!99 = !{ptr @pipe_version_waitqueue, !98, !"pipe_version_waitqueue", i1 false, i1 false}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 573, i32 2}
!102 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @warn_gssd._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @warn_gssd._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @gss_upcall_ops_v0, !106, !"gss_upcall_ops_v0", i1 false, i1 false}
!106 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2182, i32 34}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../include/trace/events/rpcgss.h", i32 623, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = !{ptr @.str.27, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2156, i32 14}
!112 = !{ptr @gss_credops, !113, !"gss_credops", i1 false, i1 false}
!113 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2155, i32 33}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 522, i32 47}
!116 = !{ptr @gss_alloc_msg.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 523, i32 2}
!118 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/trace/events/rpcgss.h", i32 172, i32 1}
!121 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../include/trace/events/rpcgss.h", i32 550, i32 1}
!124 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 1253, i32 27}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 1227, i32 4}
!129 = !{ptr @gss_nullops, !130, !"gss_nullops", i1 false, i1 false}
!130 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2170, i32 33}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/trace/events/rpcgss.h", i32 173, i32 1}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 1314, i32 27}
!136 = !{ptr @.str.30, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/cred.h", i32 286, i32 3}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 1472, i32 8}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 136, i32 8}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../include/trace/events/rpcgss.h", i32 370, i32 1}
!144 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../include/trace/events/rpcgss.h", i32 136, i32 1}
!147 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../include/trace/events/rpcgss.h", i32 137, i32 1}
!150 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!151 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../include/trace/events/rpcgss.h", i32 138, i32 1}
!155 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../include/trace/events/rpcgss.h", i32 432, i32 1}
!158 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../include/trace/events/rpcgss.h", i32 320, i32 1}
!161 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../include/trace/events/rpcgss.h", i32 341, i32 1}
!164 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../include/trace/events/rpcgss.h", i32 139, i32 1}
!167 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!168 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!169 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 1453, i32 8}
!170 = distinct !{null, !171, !"__warned", i1 false, i1 false}
!171 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 1395, i32 8}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 1411, i32 8}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../include/trace/events/rpcgss.h", i32 398, i32 1}
!176 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!177 = !{ptr @__param_str_expired_cred_retry_delay, !6, !"__param_str_expired_cred_retry_delay", i1 false, i1 false}
!178 = !{ptr @gss_expired_cred_retry_delay, !179, !"gss_expired_cred_retry_delay", i1 false, i1 false}
!179 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 43, i32 21}
!180 = !{ptr @__param_str_key_expire_timeo, !11, !"__param_str_key_expire_timeo", i1 false, i1 false}
!181 = !{ptr @gss_key_expire_timeo, !182, !"gss_key_expire_timeo", i1 false, i1 false}
!182 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 46, i32 21}
!183 = !{ptr @.str.33, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/sunrpc/auth_gss/auth_gss.c", i32 2229, i32 51}
!185 = !{!"sp"}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{i64 2148396795, i64 2148396827, i64 2148396856, i64 2148396890, i64 2148396921, i64 2148396944}
!196 = !{!"branch_weights", i32 1, i32 2000}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2148484820}
!199 = !{i64 2148399260, i64 2148399292, i64 2148399321, i64 2148399355, i64 2148399386, i64 2148399409}
!200 = !{i64 2149360934}
!201 = !{i64 879798, i64 879822, i64 879843, i64 879860, i64 879877}
!202 = !{i64 2149008642, i64 2149008647, i64 2149008660, i64 2149008704, i64 2149008738, i64 2149008759}
!203 = !{i64 2158042058}
!204 = !{i64 2158042281}
!205 = !{i64 2149419983}
!206 = !{i64 2149421019}
!207 = !{i64 2153098479, i64 2153098504}
!208 = !{i64 5594034}
!209 = !{i64 5594231}
!210 = !{i64 2153079464}
!211 = !{i64 2157986698}
!212 = !{i64 2157986901}
!213 = !{i64 2158095496, i64 2158095991, i64 2158095533, i64 2158095589, i64 2158095623, i64 2158095647, i64 2158095688, i64 2158095709, i64 2158095737, i64 2158095771}
!214 = !{i64 2157610488}
!215 = !{i64 2157610697}
!216 = !{i64 2158025240}
!217 = !{i64 2158025519}
!218 = !{i64 2149411424}
!219 = !{i64 2149411690}
!220 = !{i64 2148395265, i64 2148395291, i64 2148395320, i64 2148395354, i64 2148395385, i64 2148395408}
!221 = !{i64 2158169631}
!222 = !{!"auto-init"}
!223 = !{i64 2158227807}
!224 = !{i64 904757, i64 904778, i64 904801, i64 904820, i64 904839}
!225 = !{i64 2158228222}
!226 = !{i64 2157697757}
!227 = !{i64 2157697954}
!228 = !{i64 2158086063}
!229 = !{i64 2158088841}
!230 = !{i64 2158003078}
!231 = !{i64 2158003303}
!232 = !{i64 2148483741}
!233 = !{i64 2148398450, i64 2148398482, i64 2148398511, i64 2148398545, i64 2148398576, i64 2148398599}
!234 = !{i64 2148483970}
!235 = !{i64 2157714101}
!236 = !{i64 2157714304}
!237 = !{i64 2157880131}
!238 = !{i64 2157880326}
!239 = !{i64 2157627252}
!240 = !{i64 2157627471}
!241 = !{i64 2157644114}
!242 = !{i64 2157644339}
!243 = !{i64 2157660898}
!244 = !{i64 2157661111}
!245 = !{i64 2157914042}
!246 = !{i64 2157914263}
!247 = !{i64 2157842700}
!248 = !{i64 2157842911}
!249 = !{i64 2157859771}
!250 = !{i64 2157860014}
!251 = !{i64 2157681499}
!252 = !{i64 2157681716}
!253 = !{i64 2157896821}
!254 = !{i64 2157897062}
