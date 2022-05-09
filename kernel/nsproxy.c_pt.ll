; ModuleID = '/llk/IR_all_yes/kernel/nsproxy.c_pt.bc'
source_filename = "../kernel/nsproxy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.96, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.120, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.120 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.121, i32, %struct.spinlock }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.cgroup_namespace = type { %struct.ns_common, ptr, ptr, ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.23, %struct.trace_event, ptr, ptr, %union.anon.24, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.23 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.24 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.92, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.92 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.61 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.61 = type { %struct.callback_head }
%struct.nsset = type { i32, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.123, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.124, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.125, ptr, %struct.address_space, %struct.list_head, %union.anon.126, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.123 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.124 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.125 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.126 = type { ptr }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }

@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@init_net = external dso_local global %struct.net, align 128
@init_cgroup_ns = external dso_local global %struct.cgroup_namespace, align 4
@init_nsproxy = dso_local global { %struct.nsproxy, [60 x i8] } { %struct.nsproxy { %struct.atomic_t { i32 1 }, ptr @init_uts_ns, ptr @init_ipc_ns, ptr null, ptr @init_pid_ns, ptr @init_net, ptr null, ptr null, ptr @init_cgroup_ns }, [60 x i8] zeroinitializer }, align 32
@copy_namespaces.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/nsproxy.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nsproxy_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_setns\00", [16 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__setns = internal global %struct.syscall_metadata { ptr @.str.4, i32 -1, i32 2, ptr @types__setns, ptr @args__setns, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setns, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setns, i64 20) }, ptr @event_enter__setns, ptr @event_exit__setns }, align 4
@event_enter__setns = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.23 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.24 zeroinitializer, ptr @__syscall_meta__setns, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setns = internal global ptr @event_enter__setns, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_setns\00", [17 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__setns = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.23 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.24 zeroinitializer, ptr @__syscall_meta__setns, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setns = internal global ptr @event_exit__setns, section "_ftrace_events", align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_setns\00", [22 x i8] zeroinitializer }, align 32
@types__setns = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.9, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@args__setns = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.10, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setns = internal global ptr @__syscall_meta__setns, section "__syscalls_metadata", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nsproxy\00", [24 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@validate_nsset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"init_nsproxy\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 32, i32 16 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 154, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"nsproxy_cachep\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 30, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"event_enter__setns\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"event_exit__setns\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"types__setns\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"args__setns\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 571, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.66 = private constant [20 x i8] c"../kernel/nsproxy.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 527, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 286, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__event_enter__setns, ptr @__event_exit__setns, ptr @__p_syscall_meta__setns, ptr @__syscall_meta__setns, ptr @event_enter__setns, ptr @event_exit__setns, ptr @init_nsproxy, ptr @.str, ptr @.str.1, ptr @nsproxy_cachep, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @types__setns, ptr @args__setns, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_nsproxy to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsproxy_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setns to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setns to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_setns = dso_local alias i32 (i32, i32), ptr @__se_sys_setns

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_namespaces(i32 noundef %flags, ptr noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 110
  %0 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsproxy, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 98
  %6 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b53 = load i1, ptr @copy_namespaces.__warned, align 1
  br i1 %.b53, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @copy_namespaces.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 154, ptr noundef nonnull @.str.1) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %user_ns9 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns9, align 4
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i54, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %do.end7
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %10 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i61 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %and = and i32 %flags, 1845624960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then15, label %if.else, !prof !54

if.then15:                                        ; preds = %rcu_read_unlock.exit
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %time_ns_for_children to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %time_ns_for_children, align 4
  %time_ns = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %time_ns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %time_ns, align 4
  %cmp = icmp eq ptr %15, %17
  br i1 %cmp, label %if.then22, label %if.then15.if.end27_crit_edge, !prof !54

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #7
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #7, !srcloc !55
  br label %cleanup

if.else:                                          ; preds = %rcu_read_unlock.exit
  %call24 = tail call zeroext i1 @ns_capable(ptr noundef %9, i32 noundef 21) #7
  br i1 %call24, label %if.else.if.end27_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.then15.if.end27_crit_edge
  %and28 = and i32 %flags, 134479872
  call void @__sanitizer_cov_trace_const_cmp4(i32 134479872, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 134479872
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %fs = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 107
  %19 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fs, align 128
  %call32 = tail call fastcc ptr @create_new_namespaces(i32 noundef %flags, ptr noundef %tsk, ptr noundef %9, ptr noundef %20)
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %nsproxy to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call32, ptr %nsproxy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then34, %if.end27.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then22
  %retval.0 = phi i32 [ 0, %if.then22 ], [ %21, %if.then34 ], [ 0, %if.end36 ], [ -1, %if.else.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_new_namespaces(i32 noundef %flags, ptr nocapture noundef readonly %tsk, ptr noundef %user_ns, ptr noundef %new_fs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nsproxy_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call.i, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 110
  %2 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nsproxy, align 4
  %mnt_ns = getelementptr inbounds %struct.nsproxy, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mnt_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mnt_ns, align 4
  %call2 = tail call ptr @copy_mnt_ns(i32 noundef %flags, ptr noundef %5, ptr noundef %user_ns, ptr noundef %new_fs) #7
  %mnt_ns3 = getelementptr inbounds %struct.nsproxy, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_ns3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %mnt_ns3, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.out_ns_crit_edge, label %if.end9

if.end.out_ns_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ns

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsproxy, align 4
  %uts_ns = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %uts_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uts_ns, align 4
  %call11 = tail call ptr @copy_utsname(i32 noundef %flags, ptr noundef %user_ns, ptr noundef %10) #7
  %uts_ns12 = getelementptr inbounds %struct.nsproxy, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %uts_ns12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %uts_ns12, align 4
  %cmp.i147 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.end9.out_uts_crit_edge, label %if.end18

if.end9.out_uts_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_uts

if.end18:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipc_ns, align 4
  %call20 = tail call ptr @copy_ipcs(i32 noundef %flags, ptr noundef %user_ns, ptr noundef %15) #7
  %ipc_ns21 = getelementptr inbounds %struct.nsproxy, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %ipc_ns21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %ipc_ns21, align 8
  %cmp.i148 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.end18.out_ipc_crit_edge, label %if.end27

if.end18.out_ipc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ipc

if.end27:                                         ; preds = %if.end18
  %17 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nsproxy, align 4
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %pid_ns_for_children to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pid_ns_for_children, align 4
  %call29 = tail call ptr @copy_pid_ns(i32 noundef %flags, ptr noundef %user_ns, ptr noundef %20) #7
  %pid_ns_for_children30 = getelementptr inbounds %struct.nsproxy, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %pid_ns_for_children30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call29, ptr %pid_ns_for_children30, align 8
  %cmp.i149 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.end27.out_pid_crit_edge, label %if.end36

if.end27.out_pid_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_pid

if.end36:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nsproxy, align 4
  %cgroup_ns = getelementptr inbounds %struct.nsproxy, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %cgroup_ns to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cgroup_ns, align 4
  %call38 = tail call ptr @copy_cgroup_ns(i32 noundef %flags, ptr noundef %user_ns, ptr noundef %25) #7
  %cgroup_ns39 = getelementptr inbounds %struct.nsproxy, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %cgroup_ns39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call38, ptr %cgroup_ns39, align 8
  %cmp.i150 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.end36.out_cgroup_crit_edge, label %if.end45

if.end36.out_cgroup_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_cgroup

if.end45:                                         ; preds = %if.end36
  %27 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_ns, align 4
  %call47 = tail call ptr @copy_net_ns(i32 noundef %flags, ptr noundef %user_ns, ptr noundef %30) #7
  %net_ns48 = getelementptr inbounds %struct.nsproxy, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %net_ns48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call47, ptr %net_ns48, align 4
  %cmp.i151 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.end45.out_net_crit_edge, label %if.end54

if.end45.out_net_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_net

if.end54:                                         ; preds = %if.end45
  %32 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nsproxy, align 4
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %time_ns_for_children to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %time_ns_for_children, align 4
  %and.i = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i152 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i152, ptr %35, ptr inttoptr (i32 -22 to ptr)
  %time_ns_for_children57 = getelementptr inbounds %struct.nsproxy, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %time_ns_for_children57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %spec.select.i, ptr %time_ns_for_children57, align 4
  %cmp.i153 = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @put_net(ptr noundef %call47)
  br label %out_net

if.end63:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %time_ns66 = getelementptr inbounds %struct.nsproxy, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %time_ns66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %time_ns66, align 8
  br label %cleanup

out_net:                                          ; preds = %if.then60, %if.end45.out_net_crit_edge
  %err.0.in = phi ptr [ %spec.select.i, %if.then60 ], [ %call47, %if.end45.out_net_crit_edge ]
  %38 = ptrtoint ptr %cgroup_ns39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cgroup_ns39, align 8
  tail call fastcc void @put_cgroup_ns(ptr noundef %39)
  br label %out_cgroup

out_cgroup:                                       ; preds = %out_net, %if.end36.out_cgroup_crit_edge
  %err.1.in = phi ptr [ %err.0.in, %out_net ], [ %call38, %if.end36.out_cgroup_crit_edge ]
  %40 = ptrtoint ptr %pid_ns_for_children30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pid_ns_for_children30, align 8
  %tobool70.not = icmp eq ptr %41, null
  br i1 %tobool70.not, label %out_cgroup.out_pid_crit_edge, label %if.then71

out_cgroup.out_pid_crit_edge:                     ; preds = %out_cgroup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_pid

if.then71:                                        ; preds = %out_cgroup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_pid_ns(ptr noundef nonnull %41) #7
  br label %out_pid

out_pid:                                          ; preds = %if.then71, %out_cgroup.out_pid_crit_edge, %if.end27.out_pid_crit_edge
  %err.2.in = phi ptr [ %err.1.in, %if.then71 ], [ %err.1.in, %out_cgroup.out_pid_crit_edge ], [ %call29, %if.end27.out_pid_crit_edge ]
  %42 = ptrtoint ptr %ipc_ns21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ipc_ns21, align 8
  %tobool75.not = icmp eq ptr %43, null
  br i1 %tobool75.not, label %out_pid.out_ipc_crit_edge, label %if.then76

out_pid.out_ipc_crit_edge:                        ; preds = %out_pid
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ipc

if.then76:                                        ; preds = %out_pid
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_ipc_ns(ptr noundef nonnull %43) #7
  br label %out_ipc

out_ipc:                                          ; preds = %if.then76, %out_pid.out_ipc_crit_edge, %if.end18.out_ipc_crit_edge
  %err.3.in = phi ptr [ %err.2.in, %if.then76 ], [ %err.2.in, %out_pid.out_ipc_crit_edge ], [ %call20, %if.end18.out_ipc_crit_edge ]
  %44 = ptrtoint ptr %uts_ns12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uts_ns12, align 4
  %tobool80.not = icmp eq ptr %45, null
  br i1 %tobool80.not, label %out_ipc.out_uts_crit_edge, label %if.then81

out_ipc.out_uts_crit_edge:                        ; preds = %out_ipc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_uts

if.then81:                                        ; preds = %out_ipc
  %count.i = getelementptr inbounds %struct.uts_namespace, ptr %45, i32 0, i32 3, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i154, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_uts_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.out_uts_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_uts

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #7
  br label %out_uts

if.then.i154:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @free_uts_ns(ptr noundef nonnull %45) #7
  br label %out_uts

out_uts:                                          ; preds = %if.then.i154, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_uts_crit_edge, %out_ipc.out_uts_crit_edge, %if.end9.out_uts_crit_edge
  %err.4.in = phi ptr [ %err.3.in, %out_ipc.out_uts_crit_edge ], [ %err.3.in, %if.end5.i.i.i.i.out_uts_crit_edge ], [ %err.3.in, %if.then10.i.i.i.i ], [ %err.3.in, %if.then.i154 ], [ %call11, %if.end9.out_uts_crit_edge ]
  %47 = ptrtoint ptr %mnt_ns3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mnt_ns3, align 4
  %tobool85.not = icmp eq ptr %48, null
  br i1 %tobool85.not, label %out_uts.out_ns_crit_edge, label %if.then86

out_uts.out_ns_crit_edge:                         ; preds = %out_uts
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ns

if.then86:                                        ; preds = %out_uts
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_mnt_ns(ptr noundef nonnull %48) #7
  br label %out_ns

out_ns:                                           ; preds = %if.then86, %out_uts.out_ns_crit_edge, %if.end.out_ns_crit_edge
  %err.5.in = phi ptr [ %err.4.in, %if.then86 ], [ %err.4.in, %out_uts.out_ns_crit_edge ], [ %call2, %if.end.out_ns_crit_edge ]
  %49 = load ptr, ptr @nsproxy_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %49, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_ns, %if.end63, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.5.in, %out_ns ], [ %call.i, %if.end63 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_nsproxy(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_ns = getelementptr inbounds %struct.nsproxy, ptr %ns, i32 0, i32 3
  %0 = ptrtoint ptr %mnt_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_ns, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_mnt_ns(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %uts_ns = getelementptr inbounds %struct.nsproxy, ptr %ns, i32 0, i32 1
  %2 = ptrtoint ptr %uts_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uts_ns, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %count.i = getelementptr inbounds %struct.uts_namespace, ptr %3, i32 0, i32 3, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i.i, !prof !54

if.end5.i.i.i.i.if.end5_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #7
  br label %if.end5

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @free_uts_ns(ptr noundef nonnull %3) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %ns, i32 0, i32 2
  %5 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipc_ns, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_ipc_ns(ptr noundef nonnull %6) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %ns, i32 0, i32 4
  %7 = ptrtoint ptr %pid_ns_for_children to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pid_ns_for_children, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end9.if.end21_crit_edge, label %if.then11

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_pid_ns(ptr noundef nonnull %8) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then11, %if.end9.if.end21_crit_edge
  %cgroup_ns = getelementptr inbounds %struct.nsproxy, ptr %ns, i32 0, i32 8
  %9 = ptrtoint ptr %cgroup_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cgroup_ns, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end21.put_cgroup_ns.exit_crit_edge, label %land.lhs.true.i

if.end21.put_cgroup_ns.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cgroup_ns.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %count.i41 = getelementptr inbounds %struct.ns_common, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i41, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %count.i41, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i41, ptr %count.i41, i32 1, ptr elementtype(i32) %count.i41) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i.i43 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i43)
  %cmp.i.i.i.i44 = icmp eq i32 %asmresult.i.i.i.i.i.i.i43, 1
  br i1 %cmp.i.i.i.i44, label %if.then.i48, label %if.end5.i.i.i.i46

if.end5.i.i.i.i46:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i43)
  %.not.i.i.i.i45 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i43, 0
  br i1 %.not.i.i.i.i45, label %if.end5.i.i.i.i46.put_cgroup_ns.exit_crit_edge, label %if.then10.i.i.i.i47, !prof !54

if.end5.i.i.i.i46.put_cgroup_ns.exit_crit_edge:   ; preds = %if.end5.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cgroup_ns.exit

if.then10.i.i.i.i47:                              ; preds = %if.end5.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i41, i32 noundef 3) #7
  br label %put_cgroup_ns.exit

if.then.i48:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @free_cgroup_ns(ptr noundef nonnull %10) #7
  br label %put_cgroup_ns.exit

put_cgroup_ns.exit:                               ; preds = %if.then.i48, %if.then10.i.i.i.i47, %if.end5.i.i.i.i46.put_cgroup_ns.exit_crit_edge, %if.end21.put_cgroup_ns.exit_crit_edge
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %ns, i32 0, i32 5
  %12 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_ns, align 4
  %count.i49 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i49, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %count.i49, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i49, ptr %count.i49, i32 1, ptr elementtype(i32) %count.i49) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i51)
  %cmp.i.i.i.i52 = icmp eq i32 %asmresult.i.i.i.i.i.i.i51, 1
  br i1 %cmp.i.i.i.i52, label %if.then.i56, label %if.end5.i.i.i.i54

if.end5.i.i.i.i54:                                ; preds = %put_cgroup_ns.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i51)
  %.not.i.i.i.i53 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i51, 0
  br i1 %.not.i.i.i.i53, label %if.end5.i.i.i.i54.put_net.exit_crit_edge, label %if.then10.i.i.i.i55, !prof !54

if.end5.i.i.i.i54.put_net.exit_crit_edge:         ; preds = %if.end5.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_net.exit

if.then10.i.i.i.i55:                              ; preds = %if.end5.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i49, i32 noundef 3) #7
  br label %put_net.exit

if.then.i56:                                      ; preds = %put_cgroup_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @__put_net(ptr noundef %13) #7
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i56, %if.then10.i.i.i.i55, %if.end5.i.i.i.i54.put_net.exit_crit_edge
  %15 = load ptr, ptr @nsproxy_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %ns) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mnt_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ipc_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_cgroup_ns(ptr noundef %ns) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !54

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @free_cgroup_ns(ptr noundef nonnull %ns) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_net(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %count = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !54

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @__put_net(ptr noundef %net) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unshare_nsproxy_namespaces(i32 noundef %unshare_flags, ptr nocapture noundef %new_nsp, ptr noundef readonly %new_cred, ptr noundef %new_fs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %unshare_flags, 1845624960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %new_cred, null
  br i1 %tobool1.not, label %do.end, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  br label %cond.end

cond.end:                                         ; preds = %do.end, %if.end.cond.end_crit_edge
  %new_cred.pn = phi ptr [ %5, %do.end ], [ %new_cred, %if.end.cond.end_crit_edge ]
  %cond.in = getelementptr inbounds %struct.cred, ptr %new_cred.pn, i32 0, i32 25
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load ptr, ptr %cond.in, align 4
  %call5 = tail call zeroext i1 @ns_capable(ptr noundef %cond, i32 noundef 21) #7
  br i1 %call5, label %if.end7, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %cond.end
  %7 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i29 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i29 to ptr
  %task9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task9, align 8
  %tobool10.not = icmp eq ptr %new_fs, null
  br i1 %tobool10.not, label %cond.false12, label %if.end7.cond.end15_crit_edge

if.end7.cond.end15_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end15

cond.false12:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %fs = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 107
  %11 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs, align 128
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false12, %if.end7.cond.end15_crit_edge
  %cond16 = phi ptr [ %12, %cond.false12 ], [ %new_fs, %if.end7.cond.end15_crit_edge ]
  %call17 = tail call fastcc ptr @create_new_namespaces(i32 noundef %unshare_flags, ptr noundef %10, ptr noundef %cond, ptr noundef %cond16)
  %13 = ptrtoint ptr %new_nsp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %new_nsp, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call17 to i32
  %spec.select = select i1 %cmp.i, i32 %14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %cond.end15, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %cond.end.cleanup_crit_edge ], [ %spec.select, %cond.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @switch_task_namespaces(ptr noundef %p, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 241) #7
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #7
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 110
  %0 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsproxy, align 4
  store ptr %new, ptr %nsproxy, align 4
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #7, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_nsproxy(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_task_namespaces(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @switch_task_namespaces(ptr noundef %p, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setns(i32 noundef %fd, i32 noundef %flags) #0 align 64 {
entry:
  %nsset.i = alloca %struct.nsset, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nsset.i) #7
  %0 = call ptr @memset(ptr %nsset.i, i32 0, i32 16)
  %call.i = tail call ptr @fget(i32 noundef %fd) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__do_sys_setns.exit_crit_edge, label %if.end.i

entry.__do_sys_setns.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_setns.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @proc_ns_file(ptr noundef nonnull %call.i) #7
  br i1 %call1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool4.not.i = icmp eq i32 %flags, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end15.thread85.i_crit_edge, label %land.lhs.true.i

if.then2.i.if.end15.thread85.i_crit_edge:         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.thread85.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %ops.i = getelementptr inbounds %struct.ns_common, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %type.i = getelementptr inbounds %struct.proc_ns_operations, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %flags)
  %cmp.not.i = icmp eq i32 %8, %flags
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end15.thread85.i_crit_edge, label %land.lhs.true.i.out.i_crit_edge

land.lhs.true.i.out.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

land.lhs.true.i.if.end15.thread85.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.thread85.i

if.else.i:                                        ; preds = %if.end.i
  %call9.i = tail call ptr @pidfd_pid(ptr noundef nonnull %call.i) #7
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else.i.out.i_crit_edge, label %if.then11.i

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i.i = icmp ne i32 %flags, 0
  %9 = and i32 %flags, -2114060289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %tobool.not.i.i, %10
  br i1 %11, label %if.then11.i.if.end18.i_crit_edge, label %if.then11.i.out.i_crit_edge

if.then11.i.out.i_crit_edge:                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end15.thread85.i:                              ; preds = %land.lhs.true.i.if.end15.thread85.i_crit_edge, %if.then2.i.if.end15.thread85.i_crit_edge
  %ops787.i = getelementptr inbounds %struct.ns_common, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %ops787.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops787.i, align 4
  %type888.i = getelementptr inbounds %struct.proc_ns_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %type888.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type888.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end15.thread85.i, %if.then11.i.if.end18.i_crit_edge
  %ns.082.i = phi ptr [ %4, %if.end15.thread85.i ], [ null, %if.then11.i.if.end18.i_crit_edge ]
  %flags.addr.081.i = phi i32 [ %15, %if.end15.thread85.i ], [ %flags, %if.then11.i.if.end18.i_crit_edge ]
  %16 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred.i.i, align 16
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_ns.i.i, align 4
  %fs.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 107
  %24 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fs.i.i, align 128
  %call4.i.i = tail call fastcc ptr @create_new_namespaces(i32 noundef 0, ptr noundef %19, ptr noundef %23, ptr noundef %25) #7
  %nsproxy.i.i = getelementptr inbounds %struct.nsset, ptr %nsset.i, i32 0, i32 1
  %26 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call4.i.i, ptr %nsproxy.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %prepare_nsset.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end18.i
  %and.i.i = and i32 %flags.addr.081.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i50.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i50.i, label %do.end14.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i = tail call ptr @prepare_creds() #7
  br label %if.end20.i.i

do.end14.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i, align 8
  %cred18.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 99
  %29 = ptrtoint ptr %cred18.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cred18.i.i, align 16
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end14.i.i, %if.then9.i.i
  %call10.sink.i.i = phi ptr [ %30, %do.end14.i.i ], [ %call10.i.i, %if.then9.i.i ]
  %31 = getelementptr inbounds %struct.nsset, ptr %nsset.i, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call10.sink.i.i, ptr %31, align 4
  %tobool22.not.i.i = icmp eq ptr %call10.sink.i.i, null
  br i1 %tobool22.not.i.i, label %if.end20.i.i.prepare_nsset.exit.thread92.i_crit_edge, label %if.end24.i.i

if.end20.i.i.prepare_nsset.exit.thread92.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %prepare_nsset.exit.thread92.i

if.end24.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %flags.addr.081.i)
  %cmp.i51.i = icmp eq i32 %flags.addr.081.i, 131072
  br i1 %cmp.i51.i, label %if.then25.i.i, label %if.else28.i.i

if.then25.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs.i.i, align 128
  %fs27.i.i = getelementptr inbounds %struct.nsset, ptr %nsset.i, i32 0, i32 2
  %35 = ptrtoint ptr %fs27.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %fs27.i.i, align 4
  br label %prepare_nsset.exit.thread.i

if.else28.i.i:                                    ; preds = %if.end24.i.i
  %and29.i.i = and i32 %flags.addr.081.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.else28.i.i.prepare_nsset.exit.thread.i_crit_edge, label %if.then31.i.i

if.else28.i.i.prepare_nsset.exit.thread.i_crit_edge: ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %prepare_nsset.exit.thread.i

if.then31.i.i:                                    ; preds = %if.else28.i.i
  %36 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fs.i.i, align 128
  %call33.i.i = tail call ptr @copy_fs_struct(ptr noundef %37) #7
  %fs34.i.i = getelementptr inbounds %struct.nsset, ptr %nsset.i, i32 0, i32 2
  %38 = ptrtoint ptr %fs34.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call33.i.i, ptr %fs34.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %call33.i.i, null
  br i1 %tobool36.not.i.i, label %if.then31.i.i.prepare_nsset.exit.thread92.i_crit_edge, label %if.then31.i.i.prepare_nsset.exit.thread.i_crit_edge

if.then31.i.i.prepare_nsset.exit.thread.i_crit_edge: ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %prepare_nsset.exit.thread.i

if.then31.i.i.prepare_nsset.exit.thread92.i_crit_edge: ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %prepare_nsset.exit.thread92.i

prepare_nsset.exit.thread.i:                      ; preds = %if.then31.i.i.prepare_nsset.exit.thread.i_crit_edge, %if.else28.i.i.prepare_nsset.exit.thread.i_crit_edge, %if.then25.i.i
  %39 = ptrtoint ptr %nsset.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %flags.addr.081.i, ptr %nsset.i, align 4
  %call23.i = tail call zeroext i1 @proc_ns_file(ptr noundef nonnull %call.i) #7
  br i1 %call23.i, label %if.then24.i, label %if.else26.i

prepare_nsset.exit.thread92.i:                    ; preds = %if.then31.i.i.prepare_nsset.exit.thread92.i_crit_edge, %if.end20.i.i.prepare_nsset.exit.thread92.i_crit_edge
  call fastcc void @put_nsset(ptr noundef nonnull %nsset.i) #7
  br label %out.i

prepare_nsset.exit.i:                             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call4.i.i to i32
  br label %out.i

if.then24.i:                                      ; preds = %prepare_nsset.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i.i = getelementptr inbounds %struct.ns_common, ptr %ns.082.i, i32 0, i32 1
  %41 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i, align 4
  %install.i.i = getelementptr inbounds %struct.proc_ns_operations, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %install.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %install.i.i, align 4
  %call.i.i = call i32 %44(ptr noundef nonnull %nsset.i, ptr noundef %ns.082.i) #7
  br label %if.end28.i

if.else26.i:                                      ; preds = %prepare_nsset.exit.thread.i
  %private_data.i = getelementptr inbounds %struct.file, ptr %call.i, i32 0, i32 16
  %45 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private_data.i, align 4
  %47 = ptrtoint ptr %nsset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nsset.i, align 4
  %49 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %if.else26.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else26.i.rcu_read_lock.exit.i.i_crit_edge:     ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else26.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.else26.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i53.i = tail call ptr @pid_task(ptr noundef %46, i32 noundef 0) #7
  %tobool.not.i54.i = icmp eq ptr %call.i53.i, null
  br i1 %tobool.not.i54.i, label %if.then.i55.i, label %if.end.i56.i

if.then.i55.i:                                    ; preds = %rcu_read_lock.exit.i.i
  %call.i155.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i155.i.i, label %if.then.i55.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i158.i.i

if.then.i55.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %if.then.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i158.i.i:                           ; preds = %if.then.i55.i
  %call1.i156.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156.i.i)
  %tobool.not.i157.i.i = icmp eq i32 %call1.i156.i.i, 0
  br i1 %tobool.not.i157.i.i, label %land.lhs.true.i158.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i160.i.i

land.lhs.true.i158.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i158.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i160.i.i:                          ; preds = %land.lhs.true.i158.i.i
  %.b4.i159.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i159.i.i, label %land.lhs.true2.i160.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i161.i.i

land.lhs.true2.i160.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i160.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

if.then.i161.i.i:                                 ; preds = %land.lhs.true2.i160.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i161.i.i, %land.lhs.true2.i160.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i158.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.then.i55.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %53 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i162.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i162.i.i to ptr
  %preempt_count.i.i.i.i163.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i163.i.i, align 4
  %sub.i.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i163.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end32.i

if.end.i56.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call.i53.i, i32 noundef 17) #7
  br i1 %call2.i.i, label %if.end4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i56.i
  %call.i164.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i164.i.i, label %if.then3.i.i.rcu_read_unlock.exit174.i.i_crit_edge, label %land.lhs.true.i167.i.i

if.then3.i.i.rcu_read_unlock.exit174.i.i_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit174.i.i

land.lhs.true.i167.i.i:                           ; preds = %if.then3.i.i
  %call1.i165.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i165.i.i)
  %tobool.not.i166.i.i = icmp eq i32 %call1.i165.i.i, 0
  br i1 %tobool.not.i166.i.i, label %land.lhs.true.i167.i.i.rcu_read_unlock.exit174.i.i_crit_edge, label %land.lhs.true2.i169.i.i

land.lhs.true.i167.i.i.rcu_read_unlock.exit174.i.i_crit_edge: ; preds = %land.lhs.true.i167.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit174.i.i

land.lhs.true2.i169.i.i:                          ; preds = %land.lhs.true.i167.i.i
  %.b4.i168.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i168.i.i, label %land.lhs.true2.i169.i.i.rcu_read_unlock.exit174.i.i_crit_edge, label %if.then.i170.i.i

land.lhs.true2.i169.i.i.rcu_read_unlock.exit174.i.i_crit_edge: ; preds = %land.lhs.true2.i169.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit174.i.i

if.then.i170.i.i:                                 ; preds = %land.lhs.true2.i169.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit174.i.i

rcu_read_unlock.exit174.i.i:                      ; preds = %if.then.i170.i.i, %land.lhs.true2.i169.i.i.rcu_read_unlock.exit174.i.i_crit_edge, %land.lhs.true.i167.i.i.rcu_read_unlock.exit174.i.i_crit_edge, %if.then3.i.i.rcu_read_unlock.exit174.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %57 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i171.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i171.i.i to ptr
  %preempt_count.i.i.i.i172.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i172.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i172.i.i, align 4
  %sub.i.i.i173.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i173.i.i, ptr %preempt_count.i.i.i.i172.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end32.i

if.end4.i.i:                                      ; preds = %if.end.i56.i
  %alloc_lock.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i53.i, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i.i) #7
  %nsproxy.i57.i = getelementptr inbounds %struct.task_struct, ptr %call.i53.i, i32 0, i32 110
  %61 = ptrtoint ptr %nsproxy.i57.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nsproxy.i57.i, align 4
  %tobool5.not.i.i = icmp eq ptr %62, null
  br i1 %tobool5.not.i.i, label %if.then9.critedge.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %62, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull %62, i32 1, i32 3, i32 1) #7
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %62, ptr nonnull %62, i32 1, ptr nonnull elementtype(i32) %62) #7, !srcloc !55
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i.i) #7
  %and.i58.i = and i32 %48, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i)
  %tobool11.not.i.i = icmp eq i32 %and.i58.i, 0
  br i1 %tobool11.not.i.i, label %if.then6.i.i.if.end21.i.i_crit_edge, label %if.then12.i.i

if.then6.i.i.if.end21.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.then9.critedge.i.i:                            ; preds = %if.end4.i.i
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i.i) #7
  %call.i177.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i177.i.i, label %if.then9.critedge.i.i.rcu_read_unlock.exit187.i.i_crit_edge, label %land.lhs.true.i180.i.i

if.then9.critedge.i.i.rcu_read_unlock.exit187.i.i_crit_edge: ; preds = %if.then9.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit187.i.i

land.lhs.true.i180.i.i:                           ; preds = %if.then9.critedge.i.i
  %call1.i178.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i178.i.i)
  %tobool.not.i179.i.i = icmp eq i32 %call1.i178.i.i, 0
  br i1 %tobool.not.i179.i.i, label %land.lhs.true.i180.i.i.rcu_read_unlock.exit187.i.i_crit_edge, label %land.lhs.true2.i182.i.i

land.lhs.true.i180.i.i.rcu_read_unlock.exit187.i.i_crit_edge: ; preds = %land.lhs.true.i180.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit187.i.i

land.lhs.true2.i182.i.i:                          ; preds = %land.lhs.true.i180.i.i
  %.b4.i181.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i181.i.i, label %land.lhs.true2.i182.i.i.rcu_read_unlock.exit187.i.i_crit_edge, label %if.then.i183.i.i

land.lhs.true2.i182.i.i.rcu_read_unlock.exit187.i.i_crit_edge: ; preds = %land.lhs.true2.i182.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit187.i.i

if.then.i183.i.i:                                 ; preds = %land.lhs.true2.i182.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit187.i.i

rcu_read_unlock.exit187.i.i:                      ; preds = %if.then.i183.i.i, %land.lhs.true2.i182.i.i.rcu_read_unlock.exit187.i.i_crit_edge, %land.lhs.true.i180.i.i.rcu_read_unlock.exit187.i.i_crit_edge, %if.then9.critedge.i.i.rcu_read_unlock.exit187.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %64 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i184.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i184.i.i to ptr
  %preempt_count.i.i.i.i185.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i185.i.i, align 4
  %sub.i.i.i186.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i186.i.i, ptr %preempt_count.i.i.i.i185.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end32.i

if.then12.i.i:                                    ; preds = %if.then6.i.i
  %call13.i.i = tail call ptr @task_active_pid_ns(ptr noundef nonnull %call.i53.i) #7
  %tobool14.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool14.not.i.i, label %out.thread.i.i, label %if.end19.i.i, !prof !62

out.thread.i.i:                                   ; preds = %if.then12.i.i
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i1, label %out.thread.i.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

out.thread.i.i.rcu_read_unlock.exit_crit_edge:    ; preds = %out.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %out.thread.i.i
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i4
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %out.thread.i.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %68 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.then106.i.i

if.end19.i.i:                                     ; preds = %if.then12.i.i
  %cmp.not.i.i.i = icmp eq ptr %call13.i.i, @init_pid_ns
  br i1 %cmp.not.i.i.i, label %if.end19.i.i.if.end21.i.i_crit_edge, label %if.then.i188.i.i

if.end19.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.then.i188.i.i:                                 ; preds = %if.end19.i.i
  %count.i.i.i = getelementptr inbounds %struct.pid_namespace, ptr %call13.i.i, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #7
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #7, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i188.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !62

if.then.i188.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i188.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i188.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %73 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %.not.i.i.i.i.i.i = icmp sgt i32 %73, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end21.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end21.i.i_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i188.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i188.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #7
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end21.i.i_crit_edge, %if.end19.i.i.if.end21.i.i_crit_edge, %if.then6.i.i.if.end21.i.i_crit_edge
  %pid_ns.0.i.i = phi ptr [ null, %if.then6.i.i.if.end21.i.i_crit_edge ], [ @init_pid_ns, %if.end19.i.i.if.end21.i.i_crit_edge ], [ %call13.i.i, %if.else.i.i.i.i.i.i.if.end21.i.i_crit_edge ], [ %call13.i.i, %if.end15.sink.split.i.i.i.i.i.i ]
  %and22.i.i = and i32 %48, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end21.i.i.if.end39.i.i_crit_edge, label %if.then24.i.i

if.end21.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  %real_cred.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i53.i, i32 0, i32 98
  %74 = ptrtoint ptr %real_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %real_cred.i.i, align 4
  %call26.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true.i.i, label %if.then24.i.i.do.end35.i.i_crit_edge

if.then24.i.i.do.end35.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i.i

land.lhs.true.i.i:                                ; preds = %if.then24.i.i
  %call28.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %land.lhs.true.i.i.do.end35.i.i_crit_edge, label %land.lhs.true30.i.i

land.lhs.true.i.i.do.end35.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i.i

land.lhs.true30.i.i:                              ; preds = %land.lhs.true.i.i
  %.b154.i.i = load i1, ptr @validate_nsset.__warned, align 1
  br i1 %.b154.i.i, label %land.lhs.true30.i.i.do.end35.i.i_crit_edge, label %if.then32.i.i

land.lhs.true30.i.i.do.end35.i.i_crit_edge:       ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i.i

if.then32.i.i:                                    ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @validate_nsset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 402, ptr noundef nonnull @.str.1) #7
  br label %do.end35.i.i

do.end35.i.i:                                     ; preds = %if.then32.i.i, %land.lhs.true30.i.i.do.end35.i.i_crit_edge, %land.lhs.true.i.i.do.end35.i.i_crit_edge, %if.then24.i.i.do.end35.i.i_crit_edge
  %user_ns37.i.i = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 25
  %76 = ptrtoint ptr %user_ns37.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %user_ns37.i.i, align 4
  %tobool.not.i189.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i189.i.i, label %do.end35.i.i.if.end39.i.i_crit_edge, label %if.then.i194.i.i

do.end35.i.i.if.end39.i.i_crit_edge:              ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then.i194.i.i:                                 ; preds = %do.end35.i.i
  %count.i190.i.i = getelementptr inbounds %struct.user_namespace, ptr %77, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i191.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i190.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i190.i.i, i32 1, i32 3, i32 1) #7
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i190.i.i, ptr %count.i190.i.i, i32 1, ptr elementtype(i32) %count.i190.i.i) #7, !srcloc !63
  %asmresult.i.i.i.i.i.i192.i.i = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i192.i.i)
  %tobool1.not.i.i.i.i193.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i192.i.i, 0
  br i1 %tobool1.not.i.i.i.i193.i.i, label %if.then.i194.i.i.if.end15.sink.split.i.i.i.i199.i.i_crit_edge, label %if.else.i.i.i.i197.i.i, !prof !62

if.then.i194.i.i.if.end15.sink.split.i.i.i.i199.i.i_crit_edge: ; preds = %if.then.i194.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i199.i.i

if.else.i.i.i.i197.i.i:                           ; preds = %if.then.i194.i.i
  %add.i.i.i.i195.i.i = add i32 %asmresult.i.i.i.i.i.i192.i.i, 1
  %79 = or i32 %add.i.i.i.i195.i.i, %asmresult.i.i.i.i.i.i192.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %.not.i.i.i.i196.i.i = icmp sgt i32 %79, -1
  br i1 %.not.i.i.i.i196.i.i, label %if.else.i.i.i.i197.i.i.if.end39.i.i_crit_edge, label %if.else.i.i.i.i197.i.i.if.end15.sink.split.i.i.i.i199.i.i_crit_edge, !prof !54

if.else.i.i.i.i197.i.i.if.end15.sink.split.i.i.i.i199.i.i_crit_edge: ; preds = %if.else.i.i.i.i197.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i199.i.i

if.else.i.i.i.i197.i.i.if.end39.i.i_crit_edge:    ; preds = %if.else.i.i.i.i197.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.end15.sink.split.i.i.i.i199.i.i:               ; preds = %if.else.i.i.i.i197.i.i.if.end15.sink.split.i.i.i.i199.i.i_crit_edge, %if.then.i194.i.i.if.end15.sink.split.i.i.i.i199.i.i_crit_edge
  %.sink.i.i.i.i198.i.i = phi i32 [ 2, %if.then.i194.i.i.if.end15.sink.split.i.i.i.i199.i.i_crit_edge ], [ 1, %if.else.i.i.i.i197.i.i.if.end15.sink.split.i.i.i.i199.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i190.i.i, i32 noundef %.sink.i.i.i.i198.i.i) #7
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.end15.sink.split.i.i.i.i199.i.i, %if.else.i.i.i.i197.i.i.if.end39.i.i_crit_edge, %do.end35.i.i.if.end39.i.i_crit_edge, %if.end21.i.i.if.end39.i.i_crit_edge
  %user_ns.0.i.i = phi ptr [ null, %if.end21.i.i.if.end39.i.i_crit_edge ], [ null, %do.end35.i.i.if.end39.i.i_crit_edge ], [ %77, %if.else.i.i.i.i197.i.i.if.end39.i.i_crit_edge ], [ %77, %if.end15.sink.split.i.i.i.i199.i.i ]
  %call.i200.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i200.i.i, label %if.end39.i.i.rcu_read_unlock.exit210.i.i_crit_edge, label %land.lhs.true.i203.i.i

if.end39.i.i.rcu_read_unlock.exit210.i.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit210.i.i

land.lhs.true.i203.i.i:                           ; preds = %if.end39.i.i
  %call1.i201.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i201.i.i)
  %tobool.not.i202.i.i = icmp eq i32 %call1.i201.i.i, 0
  br i1 %tobool.not.i202.i.i, label %land.lhs.true.i203.i.i.rcu_read_unlock.exit210.i.i_crit_edge, label %land.lhs.true2.i205.i.i

land.lhs.true.i203.i.i.rcu_read_unlock.exit210.i.i_crit_edge: ; preds = %land.lhs.true.i203.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit210.i.i

land.lhs.true2.i205.i.i:                          ; preds = %land.lhs.true.i203.i.i
  %.b4.i204.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i204.i.i, label %land.lhs.true2.i205.i.i.rcu_read_unlock.exit210.i.i_crit_edge, label %if.then.i206.i.i

land.lhs.true2.i205.i.i.rcu_read_unlock.exit210.i.i_crit_edge: ; preds = %land.lhs.true2.i205.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit210.i.i

if.then.i206.i.i:                                 ; preds = %land.lhs.true2.i205.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit210.i.i

rcu_read_unlock.exit210.i.i:                      ; preds = %if.then.i206.i.i, %land.lhs.true2.i205.i.i.rcu_read_unlock.exit210.i.i_crit_edge, %land.lhs.true.i203.i.i.rcu_read_unlock.exit210.i.i_crit_edge, %if.end39.i.i.rcu_read_unlock.exit210.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %80 = tail call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i207.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i207.i.i to ptr
  %preempt_count.i.i.i.i208.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i208.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i208.i.i, align 4
  %sub.i.i.i209.i.i = add i32 %83, -1
  store volatile i32 %sub.i.i.i209.i.i, ptr %preempt_count.i.i.i.i208.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %tobool23.not.i.i, label %rcu_read_unlock.exit210.i.i.if.end47.i.i_crit_edge, label %if.then42.i.i

rcu_read_unlock.exit210.i.i.if.end47.i.i_crit_edge: ; preds = %rcu_read_unlock.exit210.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i

if.then42.i.i:                                    ; preds = %rcu_read_unlock.exit210.i.i
  %ns.i.i = getelementptr inbounds %struct.user_namespace, ptr %user_ns.0.i.i, i32 0, i32 7
  %ops.i.i.i = getelementptr inbounds %struct.user_namespace, ptr %user_ns.0.i.i, i32 0, i32 7, i32 1
  %84 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i.i, align 4
  %install.i.i.i = getelementptr inbounds %struct.proc_ns_operations, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %install.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %install.i.i.i, align 4
  %call.i211.i.i = call i32 %87(ptr noundef nonnull %nsset.i, ptr noundef %ns.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211.i.i)
  %tobool44.not.i.i = icmp eq i32 %call.i211.i.i, 0
  br i1 %tobool44.not.i.i, label %if.then42.i.i.if.end47.i.i_crit_edge, label %if.then42.i.i.out.i59.i_crit_edge

if.then42.i.i.out.i59.i_crit_edge:                ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i59.i

if.then42.i.i.if.end47.i.i_crit_edge:             ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then42.i.i.if.end47.i.i_crit_edge, %rcu_read_unlock.exit210.i.i.if.end47.i.i_crit_edge
  %and48.i.i = and i32 %48, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end47.i.i.if.end56.i.i_crit_edge, label %if.then50.i.i

if.end47.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i

if.then50.i.i:                                    ; preds = %if.end47.i.i
  %mnt_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %62, i32 0, i32 3
  %88 = ptrtoint ptr %mnt_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mnt_ns.i.i, align 4
  %call51.i.i = call ptr @from_mnt_ns(ptr noundef %89) #7
  %ops.i212.i.i = getelementptr inbounds %struct.ns_common, ptr %call51.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %ops.i212.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i212.i.i, align 4
  %install.i213.i.i = getelementptr inbounds %struct.proc_ns_operations, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %install.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %install.i213.i.i, align 4
  %call.i214.i.i = call i32 %93(ptr noundef nonnull %nsset.i, ptr noundef %call51.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214.i.i)
  %tobool53.not.i.i = icmp eq i32 %call.i214.i.i, 0
  br i1 %tobool53.not.i.i, label %if.then50.i.i.if.end56.i.i_crit_edge, label %if.then50.i.i.out.i59.i_crit_edge

if.then50.i.i.out.i59.i_crit_edge:                ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i59.i

if.then50.i.i.if.end56.i.i_crit_edge:             ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then50.i.i.if.end56.i.i_crit_edge, %if.end47.i.i.if.end56.i.i_crit_edge
  %and57.i.i = and i32 %48, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  br i1 %tobool58.not.i.i, label %if.end56.i.i.if.end65.i.i_crit_edge, label %if.then59.i.i

if.end56.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i.i

if.then59.i.i:                                    ; preds = %if.end56.i.i
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %62, i32 0, i32 1
  %94 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %uts_ns.i.i, align 4
  %ns60.i.i = getelementptr inbounds %struct.uts_namespace, ptr %95, i32 0, i32 3
  %ops.i215.i.i = getelementptr inbounds %struct.uts_namespace, ptr %95, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %ops.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i215.i.i, align 4
  %install.i216.i.i = getelementptr inbounds %struct.proc_ns_operations, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %install.i216.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %install.i216.i.i, align 4
  %call.i217.i.i = call i32 %99(ptr noundef nonnull %nsset.i, ptr noundef %ns60.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217.i.i)
  %tobool62.not.i.i = icmp eq i32 %call.i217.i.i, 0
  br i1 %tobool62.not.i.i, label %if.then59.i.i.if.end65.i.i_crit_edge, label %if.then59.i.i.out.i59.i_crit_edge

if.then59.i.i.out.i59.i_crit_edge:                ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i59.i

if.then59.i.i.if.end65.i.i_crit_edge:             ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.then59.i.i.if.end65.i.i_crit_edge, %if.end56.i.i.if.end65.i.i_crit_edge
  %and66.i.i = and i32 %48, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i.i)
  %tobool67.not.i.i = icmp eq i32 %and66.i.i, 0
  br i1 %tobool67.not.i.i, label %if.end65.i.i.if.end74.i.i_crit_edge, label %if.then68.i.i

if.end65.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i.i

if.then68.i.i:                                    ; preds = %if.end65.i.i
  %ipc_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %62, i32 0, i32 2
  %100 = ptrtoint ptr %ipc_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ipc_ns.i.i, align 4
  %ns69.i.i = getelementptr inbounds %struct.ipc_namespace, ptr %101, i32 0, i32 24
  %ops.i218.i.i = getelementptr inbounds %struct.ipc_namespace, ptr %101, i32 0, i32 24, i32 1
  %102 = ptrtoint ptr %ops.i218.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops.i218.i.i, align 4
  %install.i219.i.i = getelementptr inbounds %struct.proc_ns_operations, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %install.i219.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %install.i219.i.i, align 4
  %call.i220.i.i = call i32 %105(ptr noundef nonnull %nsset.i, ptr noundef %ns69.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220.i.i)
  %tobool71.not.i.i = icmp eq i32 %call.i220.i.i, 0
  br i1 %tobool71.not.i.i, label %if.then68.i.i.if.end74.i.i_crit_edge, label %if.then68.i.i.out.i59.i_crit_edge

if.then68.i.i.out.i59.i_crit_edge:                ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i59.i

if.then68.i.i.if.end74.i.i_crit_edge:             ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then68.i.i.if.end74.i.i_crit_edge, %if.end65.i.i.if.end74.i.i_crit_edge
  br i1 %tobool11.not.i.i, label %if.end74.i.i.if.end83.i.i_crit_edge, label %if.then77.i.i

if.end74.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i.i

if.then77.i.i:                                    ; preds = %if.end74.i.i
  %ns78.i.i = getelementptr inbounds %struct.pid_namespace, ptr %pid_ns.0.i.i, i32 0, i32 11
  %ops.i221.i.i = getelementptr inbounds %struct.pid_namespace, ptr %pid_ns.0.i.i, i32 0, i32 11, i32 1
  %106 = ptrtoint ptr %ops.i221.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i221.i.i, align 4
  %install.i222.i.i = getelementptr inbounds %struct.proc_ns_operations, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %install.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %install.i222.i.i, align 4
  %call.i223.i.i = call i32 %109(ptr noundef nonnull %nsset.i, ptr noundef %ns78.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.i.i)
  %tobool80.not.i.i = icmp eq i32 %call.i223.i.i, 0
  br i1 %tobool80.not.i.i, label %if.then77.i.i.if.end83.i.i_crit_edge, label %if.then77.i.i.out.i59.i_crit_edge

if.then77.i.i.out.i59.i_crit_edge:                ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i59.i

if.then77.i.i.if.end83.i.i_crit_edge:             ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then77.i.i.if.end83.i.i_crit_edge, %if.end74.i.i.if.end83.i.i_crit_edge
  %and84.i.i = and i32 %48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i.i)
  %tobool85.not.i.i = icmp eq i32 %and84.i.i, 0
  br i1 %tobool85.not.i.i, label %if.end83.i.i.if.end92.i.i_crit_edge, label %if.then86.i.i

if.end83.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i.i

if.then86.i.i:                                    ; preds = %if.end83.i.i
  %cgroup_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %62, i32 0, i32 8
  %110 = ptrtoint ptr %cgroup_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cgroup_ns.i.i, align 4
  %ops.i224.i.i = getelementptr inbounds %struct.ns_common, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %ops.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i224.i.i, align 4
  %install.i225.i.i = getelementptr inbounds %struct.proc_ns_operations, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %install.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %install.i225.i.i, align 4
  %call.i226.i.i = call i32 %115(ptr noundef nonnull %nsset.i, ptr noundef %111) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226.i.i)
  %tobool89.not.i.i = icmp eq i32 %call.i226.i.i, 0
  br i1 %tobool89.not.i.i, label %if.then86.i.i.if.end92.i.i_crit_edge, label %if.then86.i.i.out.i59.i_crit_edge

if.then86.i.i.out.i59.i_crit_edge:                ; preds = %if.then86.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i59.i

if.then86.i.i.if.end92.i.i_crit_edge:             ; preds = %if.then86.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.then86.i.i.if.end92.i.i_crit_edge, %if.end83.i.i.if.end92.i.i_crit_edge
  %and93.i.i = and i32 %48, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i.i)
  %tobool94.not.i.i = icmp eq i32 %and93.i.i, 0
  br i1 %tobool94.not.i.i, label %if.end92.i.i.out.i59.i_crit_edge, label %if.then95.i.i

if.end92.i.i.out.i59.i_crit_edge:                 ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i59.i

if.then95.i.i:                                    ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %net_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %62, i32 0, i32 5
  %116 = ptrtoint ptr %net_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %net_ns.i.i, align 4
  %ns96.i.i = getelementptr inbounds %struct.net, ptr %117, i32 0, i32 14
  %ops.i227.i.i = getelementptr inbounds %struct.net, ptr %117, i32 0, i32 14, i32 1
  %118 = ptrtoint ptr %ops.i227.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i227.i.i, align 4
  %install.i228.i.i = getelementptr inbounds %struct.proc_ns_operations, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %install.i228.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %install.i228.i.i, align 4
  %call.i229.i.i = call i32 %121(ptr noundef nonnull %nsset.i, ptr noundef %ns96.i.i) #7
  br label %out.i59.i

out.i59.i:                                        ; preds = %if.then95.i.i, %if.end92.i.i.out.i59.i_crit_edge, %if.then86.i.i.out.i59.i_crit_edge, %if.then77.i.i.out.i59.i_crit_edge, %if.then68.i.i.out.i59.i_crit_edge, %if.then59.i.i.out.i59.i_crit_edge, %if.then50.i.i.out.i59.i_crit_edge, %if.then42.i.i.out.i59.i_crit_edge
  %ret.6.i.i = phi i32 [ %call.i211.i.i, %if.then42.i.i.out.i59.i_crit_edge ], [ %call.i214.i.i, %if.then50.i.i.out.i59.i_crit_edge ], [ %call.i217.i.i, %if.then59.i.i.out.i59.i_crit_edge ], [ %call.i220.i.i, %if.then68.i.i.out.i59.i_crit_edge ], [ %call.i223.i.i, %if.then77.i.i.out.i59.i_crit_edge ], [ %call.i226.i.i, %if.then86.i.i.out.i59.i_crit_edge ], [ %call.i229.i.i, %if.then95.i.i ], [ 0, %if.end92.i.i.out.i59.i_crit_edge ]
  %tobool102.not.i.i = icmp eq ptr %pid_ns.0.i.i, null
  br i1 %tobool102.not.i.i, label %out.i59.i.if.then106.i.i_crit_edge, label %if.then103.i.i

out.i59.i.if.then106.i.i_crit_edge:               ; preds = %out.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then106.i.i

if.then103.i.i:                                   ; preds = %out.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @put_pid_ns(ptr noundef nonnull %pid_ns.0.i.i) #7
  br label %if.then106.i.i

if.then106.i.i:                                   ; preds = %if.then103.i.i, %out.i59.i.if.then106.i.i_crit_edge, %rcu_read_unlock.exit
  %ret.6244.i.i = phi i32 [ -3, %rcu_read_unlock.exit ], [ %ret.6.i.i, %out.i59.i.if.then106.i.i_crit_edge ], [ %ret.6.i.i, %if.then103.i.i ]
  %user_ns.1243.i.i = phi ptr [ null, %rcu_read_unlock.exit ], [ %user_ns.0.i.i, %out.i59.i.if.then106.i.i_crit_edge ], [ %user_ns.0.i.i, %if.then103.i.i ]
  %call.i.i.i230.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %62, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @llvm.prefetch.p0(ptr nonnull %62, i32 1, i32 3, i32 1) #7
  %122 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %62, ptr nonnull %62, i32 1, ptr nonnull elementtype(i32) %62) #7, !srcloc !60
  %asmresult.i.i.i.i.i.i231.i.i = extractvalue { i32, i32 } %122, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i231.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i231.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i232.i.i, label %if.then106.i.i.put_nsproxy.exit.i.i_crit_edge

if.then106.i.i.put_nsproxy.exit.i.i_crit_edge:    ; preds = %if.then106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_nsproxy.exit.i.i

if.then.i232.i.i:                                 ; preds = %if.then106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @free_nsproxy(ptr noundef nonnull %62) #7
  br label %put_nsproxy.exit.i.i

put_nsproxy.exit.i.i:                             ; preds = %if.then.i232.i.i, %if.then106.i.i.put_nsproxy.exit.i.i_crit_edge
  %tobool.not.i233.i.i = icmp eq ptr %user_ns.1243.i.i, null
  br i1 %tobool.not.i233.i.i, label %put_nsproxy.exit.i.i.if.end28.i_crit_edge, label %land.lhs.true.i236.i.i

put_nsproxy.exit.i.i.if.end28.i_crit_edge:        ; preds = %put_nsproxy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

land.lhs.true.i236.i.i:                           ; preds = %put_nsproxy.exit.i.i
  %count.i234.i.i = getelementptr inbounds %struct.user_namespace, ptr %user_ns.1243.i.i, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i235.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i234.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @llvm.prefetch.p0(ptr %count.i234.i.i, i32 1, i32 3, i32 1) #7
  %123 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i234.i.i, ptr %count.i234.i.i, i32 1, ptr elementtype(i32) %count.i234.i.i) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i238.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i236.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i237.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i237.i.i, label %if.end5.i.i.i.i.i.i.if.end28.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !54

if.end5.i.i.i.i.i.i.if.end28.i_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %count.i234.i.i, i32 noundef 3) #7
  br label %if.end28.i

if.then.i238.i.i:                                 ; preds = %land.lhs.true.i236.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @__put_user_ns(ptr noundef nonnull %user_ns.1243.i.i) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i238.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end28.i_crit_edge, %put_nsproxy.exit.i.i.if.end28.i_crit_edge, %if.then24.i
  %err.2.i = phi i32 [ %call.i.i, %if.then24.i ], [ %ret.6244.i.i, %put_nsproxy.exit.i.i.if.end28.i_crit_edge ], [ %ret.6244.i.i, %if.end5.i.i.i.i.i.i.if.end28.i_crit_edge ], [ %ret.6244.i.i, %if.then10.i.i.i.i.i.i ], [ %ret.6244.i.i, %if.then.i238.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool29.not.i = icmp eq i32 %err.2.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end28.i.if.end32.i_crit_edge

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end28.i
  %124 = ptrtoint ptr %nsset.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nsset.i, align 4
  %126 = call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i61.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i61.i to ptr
  %task.i62.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %task.i62.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task.i62.i, align 8
  %and.i63.i = and i32 %125, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.not.i64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.not.i64.i, label %if.then30.i.if.end.i66.i_crit_edge, label %nsset_cred.exit.i.i

if.then30.i.if.end.i66.i_crit_edge:               ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i66.i

nsset_cred.exit.i.i:                              ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %31, align 4
  %call3.i.i = call i32 @commit_creds(ptr noundef %131) #7
  %132 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %31, align 4
  br label %if.end.i66.i

if.end.i66.i:                                     ; preds = %nsset_cred.exit.i.i, %if.then30.i.if.end.i66.i_crit_edge
  %and4.i.i = and i32 %125, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i65.i = icmp eq i32 %and4.i.i, 0
  %and6.i.i = and i32 %125, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %or.cond.i.i = or i1 %tobool5.not.i65.i, %tobool7.not.i.i
  br i1 %or.cond.i.i, label %if.end.i66.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end.i66.i.if.end12.i.i_crit_edge:              ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #9
  %fs.i67.i = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 107
  %133 = ptrtoint ptr %fs.i67.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fs.i67.i, align 128
  %fs9.i.i = getelementptr inbounds %struct.nsset, ptr %nsset.i, i32 0, i32 2
  %135 = ptrtoint ptr %fs9.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fs9.i.i, align 4
  %root.i.i = getelementptr inbounds %struct.fs_struct, ptr %136, i32 0, i32 5
  call void @set_fs_root(ptr noundef %134, ptr noundef %root.i.i) #7
  %137 = ptrtoint ptr %fs.i67.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fs.i67.i, align 128
  %139 = ptrtoint ptr %fs9.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fs9.i.i, align 4
  %pwd.i.i = getelementptr inbounds %struct.fs_struct, ptr %140, i32 0, i32 6
  call void @set_fs_pwd(ptr noundef %138, ptr noundef %pwd.i.i) #7
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end.i66.i.if.end12.i.i_crit_edge
  %and13.i.i = and i32 %125, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i68.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i68.i, label %if.end12.i.i.commit_nsset.exit.i_crit_edge, label %if.then15.i.i

if.end12.i.i.commit_nsset.exit.i_crit_edge:       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %commit_nsset.exit.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @exit_sem(ptr noundef %129) #7
  br label %commit_nsset.exit.i

commit_nsset.exit.i:                              ; preds = %if.then15.i.i, %if.end12.i.i.commit_nsset.exit.i_crit_edge
  %141 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %nsproxy.i.i, align 4
  call void @switch_task_namespaces(ptr noundef %129, ptr noundef %142) #7
  %143 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %nsproxy.i.i, align 4
  %144 = call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i70.i = and i32 %144, -16384
  %145 = inttoptr i32 %and.i70.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %task.i, align 8
  call void @perf_event_namespaces(ptr noundef %147) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %commit_nsset.exit.i, %if.end28.i.if.end32.i_crit_edge, %rcu_read_unlock.exit187.i.i, %rcu_read_unlock.exit174.i.i, %rcu_read_unlock.exit.i.i
  %err.297.i = phi i32 [ 0, %commit_nsset.exit.i ], [ %err.2.i, %if.end28.i.if.end32.i_crit_edge ], [ -3, %rcu_read_unlock.exit.i.i ], [ -1, %rcu_read_unlock.exit174.i.i ], [ -3, %rcu_read_unlock.exit187.i.i ]
  call fastcc void @put_nsset(ptr noundef nonnull %nsset.i) #7
  br label %out.i

out.i:                                            ; preds = %if.end32.i, %prepare_nsset.exit.i, %prepare_nsset.exit.thread92.i, %if.then11.i.out.i_crit_edge, %if.else.i.out.i_crit_edge, %land.lhs.true.i.out.i_crit_edge
  %err.3.i = phi i32 [ %40, %prepare_nsset.exit.i ], [ %err.297.i, %if.end32.i ], [ -12, %prepare_nsset.exit.thread92.i ], [ -22, %if.then11.i.out.i_crit_edge ], [ -22, %if.else.i.out.i_crit_edge ], [ -22, %land.lhs.true.i.out.i_crit_edge ]
  call void @fput(ptr noundef nonnull %call.i) #7
  br label %__do_sys_setns.exit

__do_sys_setns.exit:                              ; preds = %out.i, %entry.__do_sys_setns.exit_crit_edge
  %retval.0.i = phi i32 [ %err.3.i, %out.i ], [ -9, %entry.__do_sys_setns.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nsset.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsproxy_cache_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 36, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #7
  store ptr %call, ptr @nsproxy_cachep, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_mnt_ns(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_utsname(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_ipcs(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_pid_ns(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_cgroup_ns(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_net_ns(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uts_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cgroup_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @proc_ns_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_namespaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_nsset(ptr nocapture noundef readonly %nsset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nsset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nsset, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %nsset_cred.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nsset_cred.exit:                                  ; preds = %entry
  %cred.i = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 3
  %2 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cred.i, align 4
  %tobool.not.i24 = icmp eq ptr %3, null
  br i1 %tobool.not.i24, label %nsset_cred.exit.if.end_crit_edge, label %do.body.i

nsset_cred.exit.if.end_crit_edge:                 ; preds = %nsset_cred.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i:                                        ; preds = %nsset_cred.exit
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %3) #7
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !62

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__invalid_creds(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, i32 noundef 286) #7
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #7, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.if.end_crit_edge

__validate_creds.exit.i.if.end_crit_edge:         ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_cred(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then1.i, %__validate_creds.exit.i.if.end_crit_edge, %nsset_cred.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %fs = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 2
  %5 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fs, align 4
  %tobool2.not = icmp eq ptr %6, null
  %and3 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool4.not
  %and6 = and i32 %1, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond23 = select i1 %or.cond, i1 true, i1 %tobool7.not
  br i1 %or.cond23, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_fs_struct(ptr noundef nonnull %6) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %nsproxy = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 1
  %7 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsproxy, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_nsproxy(ptr noundef nonnull %8)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_fs_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @from_mnt_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_sem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fs_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @init_nsproxy, !1, !"init_nsproxy", i1 false, i1 false}
!1 = !{!"../kernel/nsproxy.c", i32 32, i32 16}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../kernel/nsproxy.c", i32 154, i32 35}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../kernel/nsproxy.c", i32 222, i32 43}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/nsproxy.c", i32 527, i32 1}
!10 = !{ptr @event_enter__setns, !9, !"event_enter__setns", i1 false, i1 false}
!11 = !{ptr @__event_enter__setns, !9, !"__event_enter__setns", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @event_exit__setns, !9, !"event_exit__setns", i1 false, i1 false}
!14 = !{ptr @__event_exit__setns, !9, !"__event_exit__setns", i1 false, i1 false}
!15 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__syscall_meta__setns, !9, !"__syscall_meta__setns", i1 false, i1 false}
!17 = !{ptr @__p_syscall_meta__setns, !9, !"__p_syscall_meta__setns", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/nsproxy.c", i32 571, i32 19}
!20 = !{ptr @nsproxy_cachep, !21, !"nsproxy_cachep", i1 false, i1 false}
!21 = !{!"../kernel/nsproxy.c", i32 30, i32 27}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @types__setns, !9, !"types__setns", i1 false, i1 false}
!31 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @args__setns, !9, !"args__setns", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../kernel/nsproxy.c", i32 316, i32 48}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../kernel/nsproxy.c", i32 323, i32 17}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../kernel/nsproxy.c", i32 402, i32 25}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/cred.h", i32 286, i32 3}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2149928516}
!53 = !{i64 2149928782}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2148591645, i64 2148591671, i64 2148591700, i64 2148591734, i64 2148591765, i64 2148591788}
!56 = !{i64 2148681200}
!57 = !{i64 2148595640, i64 2148595672, i64 2148595701, i64 2148595735, i64 2148595766, i64 2148595789}
!58 = !{i64 2149878973}
!59 = !{i64 2148680121}
!60 = !{i64 2148594830, i64 2148594862, i64 2148594891, i64 2148594925, i64 2148594956, i64 2148594979}
!61 = !{i64 2148680350}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2148593175, i64 2148593207, i64 2148593236, i64 2148593270, i64 2148593301, i64 2148593324}
