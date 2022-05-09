; ModuleID = '/llk/IR_all_yes/security/lsm_audit.c_pt.bc'
source_filename = "../security/lsm_audit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.common_audit_data = type { i8, %union.anon.149, %union.anon.154 }
%union.anon.149 = type { %struct.path }
%struct.path = type { ptr, ptr }
%union.anon.154 = type { ptr }
%struct.lsm_network_audit = type { i32, ptr, i16, i16, i16, %union.anon.150 }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.48 }
%union.anon.48 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.82, %struct.list_head, %struct.list_head, %union.anon.83 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.44, ptr }
%union.anon.44 = type { i64 }
%struct.lockref = type { %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { %struct.spinlock, i32 }
%union.anon.82 = type { %struct.list_head }
%union.anon.83 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.145, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.146, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.147, ptr, %struct.address_space, %struct.list_head, %union.anon.148, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.145 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.146 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.147 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.148 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.file = type { %union.anon.43, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.43 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.lsm_ioctlop_audit = type { %struct.path, i16 }
%struct.sock_common = type { %union.anon.98, %union.anon.100, %union.anon.101, i16, i8, i8, i32, %union.anon.103, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.106, [0 x i32], %union.anon.107, i16, i16, %union.anon.108, %struct.refcount_struct, [0 x i32], %union.anon.109 }
%union.anon.98 = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%struct.anon.99 = type { i32, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.110, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.111, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.112, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.110 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.111 = type { ptr }
%union.anon.112 = type { ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.22 }
%union.anon.22 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [60 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [100 x i8] }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scm_stat = type { %struct.atomic_t }
%struct.unix_address = type { %struct.refcount_struct, i32, [0 x %struct.sockaddr_un] }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.lsm_ibpkey_audit = type { i64, i16 }
%struct.lsm_ibendport_audit = type { ptr, i8 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" pid=%d comm=\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" ipc_key=%d \00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" capability=%d \00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" path=\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" dev=\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" ino=%lu\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" ioctlcmd=0x%hx\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" name=\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" opid=%d ocomm=\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"laddr\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lport\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"faddr\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fport\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"saddr\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"daddr\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dest\00", [27 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" netif=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" key_serial=%u\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" key_desc=\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" kmod=\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" pkey=0x%x subnet_prefix=%pI6c\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" device=%s port_num=%u\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" lockdown_reason=\22%s\22\00", [42 x i8] zeroinitializer }, align 32
@lockdown_reasons = external dso_local local_unnamed_addr constant [26 x ptr], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %s=%pI4\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %s=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %s=%pI6c\00", [22 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 17, i64 33, i64 132]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 17, i64 33, i64 132]
@__sancov_gen_cov_switch_values.31 = internal global [16 x i64] [i64 14, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 220, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 227, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 230, i32 24 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 235, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 239, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 241, i32 25 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 270, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 276, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 314, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 335, i32 7 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 335, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 338, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 338, i32 16 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 378, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 378, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 381, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 381, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 398, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 405, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 407, i32 25 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 413, i32 24 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 423, i32 24 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 428, i32 24 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 433, i32 24 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 695, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 723, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 198, i32 24 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 200, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [24 x i8] c"../security/lsm_audit.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 189, i32 24 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ipv4_skb_to_auditdata(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %ad, ptr noundef writeonly %proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

if.end:                                           ; preds = %entry
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saddr, align 4
  %u = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u, align 4
  %saddr1 = getelementptr inbounds %struct.lsm_network_audit, ptr %7, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %saddr1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %saddr1, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %daddr, align 4
  %11 = load ptr, ptr %u, align 4
  %fam3 = getelementptr inbounds %struct.lsm_network_audit, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %fam3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %fam3, align 4
  %tobool.not = icmp eq ptr %proto, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protocol, align 1
  %15 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %proto, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frag_off, align 2
  %18 = and i16 %17, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool7.not = icmp eq i16 %18, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup56_crit_edge

if.end6.cleanup56_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

if.end9:                                          ; preds = %if.end6
  %protocol10 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %protocol10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %protocol10, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %if.end9.cleanup56_crit_edge [
    i8 6, label %sw.bb
    i8 17, label %sw.bb19
    i8 33, label %sw.bb32
    i8 -124, label %sw.bb43
  ]

if.end9.cleanup56_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

sw.bb:                                            ; preds = %if.end9
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %24 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i86 = zext i16 %25 to i32
  %add.ptr.i.i87 = getelementptr i8, ptr %23, i32 %conv.i.i86
  %cmp13 = icmp eq ptr %add.ptr.i.i87, null
  br i1 %cmp13, label %sw.bb.cleanup56_crit_edge, label %if.end16

sw.bb.cleanup56_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

if.end16:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %add.ptr.i.i87 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i87, align 4
  %28 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %u, align 4
  %sport = getelementptr inbounds %struct.lsm_network_audit, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %27, ptr %sport, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i87, i32 0, i32 1
  br label %cleanup56.sink.split

sw.bb19:                                          ; preds = %if.end9
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i89 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %transport_header.i.i89, align 2
  %conv.i.i90 = zext i16 %34 to i32
  %add.ptr.i.i91 = getelementptr i8, ptr %32, i32 %conv.i.i90
  %cmp21 = icmp eq ptr %add.ptr.i.i91, null
  br i1 %cmp21, label %sw.bb19.cleanup56_crit_edge, label %if.end24

sw.bb19.cleanup56_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

if.end24:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %add.ptr.i.i91 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i91, align 2
  %37 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %u, align 4
  %sport27 = getelementptr inbounds %struct.lsm_network_audit, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %sport27 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %36, ptr %sport27, align 4
  %dest28 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i91, i32 0, i32 1
  br label %cleanup56.sink.split

sw.bb32:                                          ; preds = %if.end9
  %40 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i.i93 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %transport_header.i.i93, align 2
  %conv.i.i94 = zext i16 %43 to i32
  %add.ptr.i.i95 = getelementptr i8, ptr %41, i32 %conv.i.i94
  %cmp34 = icmp eq ptr %add.ptr.i.i95, null
  br i1 %cmp34, label %sw.bb32.cleanup56_crit_edge, label %if.end37

sw.bb32.cleanup56_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

if.end37:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %add.ptr.i.i95 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i.i95, align 2
  %46 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %u, align 4
  %sport39 = getelementptr inbounds %struct.lsm_network_audit, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %sport39 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %45, ptr %sport39, align 4
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i95, i32 0, i32 1
  br label %cleanup56.sink.split

sw.bb43:                                          ; preds = %if.end9
  %49 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %51 = ptrtoint ptr %transport_header.i.i97 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %transport_header.i.i97, align 2
  %conv.i.i98 = zext i16 %52 to i32
  %add.ptr.i.i99 = getelementptr i8, ptr %50, i32 %conv.i.i98
  %cmp45 = icmp eq ptr %add.ptr.i.i99, null
  br i1 %cmp45, label %sw.bb43.cleanup56_crit_edge, label %if.end48

sw.bb43.cleanup56_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

if.end48:                                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i.i99, align 4
  %55 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %u, align 4
  %sport51 = getelementptr inbounds %struct.lsm_network_audit, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %sport51 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %54, ptr %sport51, align 4
  %dest52 = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i99, i32 0, i32 1
  br label %cleanup56.sink.split

cleanup56.sink.split:                             ; preds = %if.end48, %if.end37, %if.end24, %if.end16
  %dest.sink = phi ptr [ %dest, %if.end16 ], [ %dest28, %if.end24 ], [ %dccph_dport, %if.end37 ], [ %dest52, %if.end48 ]
  %58 = ptrtoint ptr %dest.sink to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dest.sink, align 2
  %60 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %u, align 4
  %dport = getelementptr inbounds %struct.lsm_network_audit, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %59, ptr %dport, align 2
  br label %cleanup56

cleanup56:                                        ; preds = %cleanup56.sink.split, %sw.bb43.cleanup56_crit_edge, %sw.bb32.cleanup56_crit_edge, %sw.bb19.cleanup56_crit_edge, %sw.bb.cleanup56_crit_edge, %if.end9.cleanup56_crit_edge, %if.end6.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup56_crit_edge ], [ 0, %if.end6.cleanup56_crit_edge ], [ 0, %sw.bb.cleanup56_crit_edge ], [ 0, %sw.bb19.cleanup56_crit_edge ], [ 0, %sw.bb32.cleanup56_crit_edge ], [ 0, %sw.bb43.cleanup56_crit_edge ], [ -22, %if.end9.cleanup56_crit_edge ], [ 0, %cleanup56.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_skb_to_auditdata(ptr noundef %skb, ptr nocapture noundef readonly %ad, ptr noundef writeonly %proto) local_unnamed_addr #2 align 64 {
entry:
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  %_tcph = alloca %struct.tcphdr, align 4
  %_udph = alloca %struct.udphdr, align 8
  %_dccph = alloca %struct.dccp_hdr, align 2
  %_sctph = alloca %struct.sctphdr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #6
  %0 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %frag_off, align 2, !annotation !71
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.common_audit_data, ptr %ad, i32 0, i32 1
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %u, align 4
  %saddr = getelementptr inbounds %struct.lsm_network_audit, ptr %6, i32 0, i32 5, i32 0, i32 1
  %saddr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %7 = call ptr @memcpy(ptr %saddr, ptr %saddr1, i32 16)
  %8 = load ptr, ptr %u, align 4
  %fam3 = getelementptr inbounds %struct.lsm_network_audit, ptr %8, i32 0, i32 5
  %daddr4 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %9 = call ptr @memcpy(ptr %fam3, ptr %daddr4, i32 16)
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i101 = zext i16 %13 to i32
  %add.ptr.i.i102 = getelementptr i8, ptr %11, i32 %conv.i.i101
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i102 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 40, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  %nexthdr6 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %nexthdr6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nexthdr6, align 2
  %18 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %nexthdr, align 1
  %call7 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %add, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup61_crit_edge, label %if.end10

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end10:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %proto, null
  %19 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr = load i8, ptr %nexthdr, align 1
  br i1 %tobool.not, label %if.end10.if.end12_crit_edge, label %if.then11

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.pr, ptr %proto, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end10.if.end12_crit_edge
  %21 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %.pr, label %if.end12.cleanup61_crit_edge [
    i8 6, label %sw.bb
    i8 17, label %sw.bb21
    i8 33, label %sw.bb35
    i8 -124, label %sw.bb47
  ]

if.end12.cleanup61_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

sw.bb:                                            ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #6
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i, align 8
  %27 = add i32 %call7, %26
  %sub.i4.i = sub i32 %24, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !72

if.end.i.i:                                       ; preds = %sw.bb
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call7, ptr noundef nonnull %_tcph, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end17_crit_edge

lor.lhs.false.i.i.if.end17_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %sw.bb
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %29, i32 %call7
  %cmp14 = icmp eq ptr %add.ptr.i.i104, null
  br i1 %cmp14, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end17_crit_edge

skb_header_pointer.exit.if.end17_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %skb_header_pointer.exit.if.end17_crit_edge, %lor.lhs.false.i.i.if.end17_crit_edge
  %retval.0.i.i155 = phi ptr [ %add.ptr.i.i104, %skb_header_pointer.exit.if.end17_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end17_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i.i155 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %retval.0.i.i155, align 4
  %32 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %u, align 4
  %sport = getelementptr inbounds %struct.lsm_network_audit, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %31, ptr %sport, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i155, i32 0, i32 1
  %35 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dest, align 2
  %37 = load ptr, ptr %u, align 4
  %dport = getelementptr inbounds %struct.lsm_network_audit, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %36, ptr %dport, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #6
  br label %cleanup61

sw.bb21:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_udph) #6
  %len.i.i105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %_udph to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %_udph, align 8
  %40 = ptrtoint ptr %len.i.i105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i105, align 4
  %data_len.i.i106 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %42 = ptrtoint ptr %data_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i106, align 8
  %44 = add i32 %call7, %43
  %sub.i4.i107 = sub i32 %41, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i107)
  %cmp.not.i.i108 = icmp slt i32 %sub.i4.i107, 8
  br i1 %cmp.not.i.i108, label %if.end.i.i113, label %skb_header_pointer.exit119, !prof !72

if.end.i.i113:                                    ; preds = %sw.bb21
  %tobool2.not.i.i112 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i112, label %if.end.i.i113.cleanup33_crit_edge, label %lor.lhs.false.i.i117

if.end.i.i113.cleanup33_crit_edge:                ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

lor.lhs.false.i.i117:                             ; preds = %if.end.i.i113
  %call.i.i114 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call7, ptr noundef nonnull %_udph, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114)
  %cmp3.i.i115 = icmp slt i32 %call.i.i114, 0
  br i1 %cmp3.i.i115, label %lor.lhs.false.i.i117.cleanup33_crit_edge, label %lor.lhs.false.i.i117.if.end26_crit_edge

lor.lhs.false.i.i117.if.end26_crit_edge:          ; preds = %lor.lhs.false.i.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

lor.lhs.false.i.i117.cleanup33_crit_edge:         ; preds = %lor.lhs.false.i.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

skb_header_pointer.exit119:                       ; preds = %sw.bb21
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %46, i32 %call7
  %cmp23 = icmp eq ptr %add.ptr.i.i110, null
  br i1 %cmp23, label %skb_header_pointer.exit119.cleanup33_crit_edge, label %skb_header_pointer.exit119.if.end26_crit_edge

skb_header_pointer.exit119.if.end26_crit_edge:    ; preds = %skb_header_pointer.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

skb_header_pointer.exit119.cleanup33_crit_edge:   ; preds = %skb_header_pointer.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end26:                                         ; preds = %skb_header_pointer.exit119.if.end26_crit_edge, %lor.lhs.false.i.i117.if.end26_crit_edge
  %retval.0.i.i118162 = phi ptr [ %add.ptr.i.i110, %skb_header_pointer.exit119.if.end26_crit_edge ], [ %_udph, %lor.lhs.false.i.i117.if.end26_crit_edge ]
  %47 = ptrtoint ptr %retval.0.i.i118162 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %retval.0.i.i118162, align 2
  %49 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %u, align 4
  %sport29 = getelementptr inbounds %struct.lsm_network_audit, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %sport29 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %48, ptr %sport29, align 4
  %dest30 = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i118162, i32 0, i32 1
  %52 = ptrtoint ptr %dest30 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dest30, align 2
  %54 = load ptr, ptr %u, align 4
  %dport32 = getelementptr inbounds %struct.lsm_network_audit, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %dport32 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %53, ptr %dport32, align 2
  br label %cleanup33

cleanup33:                                        ; preds = %if.end26, %skb_header_pointer.exit119.cleanup33_crit_edge, %lor.lhs.false.i.i117.cleanup33_crit_edge, %if.end.i.i113.cleanup33_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_udph) #6
  br label %cleanup61

sw.bb35:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_dccph) #6
  %len.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = call ptr @memset(ptr %_dccph, i32 255, i32 12)
  %57 = ptrtoint ptr %len.i.i120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i120, align 4
  %data_len.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %59 = ptrtoint ptr %data_len.i.i121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_len.i.i121, align 8
  %61 = add i32 %call7, %60
  %sub.i4.i122 = sub i32 %58, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i122)
  %cmp.not.i.i123 = icmp slt i32 %sub.i4.i122, 12
  br i1 %cmp.not.i.i123, label %if.end.i.i128, label %skb_header_pointer.exit134, !prof !72

if.end.i.i128:                                    ; preds = %sw.bb35
  %tobool2.not.i.i127 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i127, label %if.end.i.i128.cleanup45_crit_edge, label %lor.lhs.false.i.i132

if.end.i.i128.cleanup45_crit_edge:                ; preds = %if.end.i.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

lor.lhs.false.i.i132:                             ; preds = %if.end.i.i128
  %call.i.i129 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call7, ptr noundef nonnull %_dccph, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %cmp3.i.i130 = icmp slt i32 %call.i.i129, 0
  br i1 %cmp3.i.i130, label %lor.lhs.false.i.i132.cleanup45_crit_edge, label %lor.lhs.false.i.i132.if.end40_crit_edge

lor.lhs.false.i.i132.if.end40_crit_edge:          ; preds = %lor.lhs.false.i.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

lor.lhs.false.i.i132.cleanup45_crit_edge:         ; preds = %lor.lhs.false.i.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

skb_header_pointer.exit134:                       ; preds = %sw.bb35
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i125 = getelementptr i8, ptr %63, i32 %call7
  %cmp37 = icmp eq ptr %add.ptr.i.i125, null
  br i1 %cmp37, label %skb_header_pointer.exit134.cleanup45_crit_edge, label %skb_header_pointer.exit134.if.end40_crit_edge

skb_header_pointer.exit134.if.end40_crit_edge:    ; preds = %skb_header_pointer.exit134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

skb_header_pointer.exit134.cleanup45_crit_edge:   ; preds = %skb_header_pointer.exit134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

if.end40:                                         ; preds = %skb_header_pointer.exit134.if.end40_crit_edge, %lor.lhs.false.i.i132.if.end40_crit_edge
  %retval.0.i.i133169 = phi ptr [ %add.ptr.i.i125, %skb_header_pointer.exit134.if.end40_crit_edge ], [ %_dccph, %lor.lhs.false.i.i132.if.end40_crit_edge ]
  %64 = ptrtoint ptr %retval.0.i.i133169 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %retval.0.i.i133169, align 2
  %66 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %u, align 4
  %sport42 = getelementptr inbounds %struct.lsm_network_audit, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %sport42 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %65, ptr %sport42, align 4
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i133169, i32 0, i32 1
  %69 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %dccph_dport, align 2
  %71 = load ptr, ptr %u, align 4
  %dport44 = getelementptr inbounds %struct.lsm_network_audit, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %dport44 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %70, ptr %dport44, align 2
  br label %cleanup45

cleanup45:                                        ; preds = %if.end40, %skb_header_pointer.exit134.cleanup45_crit_edge, %lor.lhs.false.i.i132.cleanup45_crit_edge, %if.end.i.i128.cleanup45_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_dccph) #6
  br label %cleanup61

sw.bb47:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_sctph) #6
  %len.i.i135 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = call ptr @memset(ptr %_sctph, i32 255, i32 12)
  %74 = ptrtoint ptr %len.i.i135 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i.i135, align 4
  %data_len.i.i136 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %76 = ptrtoint ptr %data_len.i.i136 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i136, align 8
  %78 = add i32 %call7, %77
  %sub.i4.i137 = sub i32 %75, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i137)
  %cmp.not.i.i138 = icmp slt i32 %sub.i4.i137, 12
  br i1 %cmp.not.i.i138, label %if.end.i.i143, label %skb_header_pointer.exit149, !prof !72

if.end.i.i143:                                    ; preds = %sw.bb47
  %tobool2.not.i.i142 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i142, label %if.end.i.i143.cleanup59_crit_edge, label %lor.lhs.false.i.i147

if.end.i.i143.cleanup59_crit_edge:                ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

lor.lhs.false.i.i147:                             ; preds = %if.end.i.i143
  %call.i.i144 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %call7, ptr noundef nonnull %_sctph, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i144)
  %cmp3.i.i145 = icmp slt i32 %call.i.i144, 0
  br i1 %cmp3.i.i145, label %lor.lhs.false.i.i147.cleanup59_crit_edge, label %lor.lhs.false.i.i147.if.end52_crit_edge

lor.lhs.false.i.i147.if.end52_crit_edge:          ; preds = %lor.lhs.false.i.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

lor.lhs.false.i.i147.cleanup59_crit_edge:         ; preds = %lor.lhs.false.i.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

skb_header_pointer.exit149:                       ; preds = %sw.bb47
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i140 = getelementptr i8, ptr %80, i32 %call7
  %cmp49 = icmp eq ptr %add.ptr.i.i140, null
  br i1 %cmp49, label %skb_header_pointer.exit149.cleanup59_crit_edge, label %skb_header_pointer.exit149.if.end52_crit_edge

skb_header_pointer.exit149.if.end52_crit_edge:    ; preds = %skb_header_pointer.exit149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

skb_header_pointer.exit149.cleanup59_crit_edge:   ; preds = %skb_header_pointer.exit149
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end52:                                         ; preds = %skb_header_pointer.exit149.if.end52_crit_edge, %lor.lhs.false.i.i147.if.end52_crit_edge
  %retval.0.i.i148176 = phi ptr [ %add.ptr.i.i140, %skb_header_pointer.exit149.if.end52_crit_edge ], [ %_sctph, %lor.lhs.false.i.i147.if.end52_crit_edge ]
  %81 = ptrtoint ptr %retval.0.i.i148176 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %retval.0.i.i148176, align 4
  %83 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %u, align 4
  %sport55 = getelementptr inbounds %struct.lsm_network_audit, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %sport55 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %82, ptr %sport55, align 4
  %dest56 = getelementptr inbounds %struct.sctphdr, ptr %retval.0.i.i148176, i32 0, i32 1
  %86 = ptrtoint ptr %dest56 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %dest56, align 2
  %88 = load ptr, ptr %u, align 4
  %dport58 = getelementptr inbounds %struct.lsm_network_audit, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %dport58 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %87, ptr %dport58, align 2
  br label %cleanup59

cleanup59:                                        ; preds = %if.end52, %skb_header_pointer.exit149.cleanup59_crit_edge, %lor.lhs.false.i.i147.cleanup59_crit_edge, %if.end.i.i143.cleanup59_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_sctph) #6
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup59, %cleanup45, %cleanup33, %cleanup, %if.end12.cleanup61_crit_edge, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup61_crit_edge ], [ 0, %if.end.cleanup61_crit_edge ], [ 0, %cleanup59 ], [ 0, %cleanup45 ], [ 0, %cleanup33 ], [ 0, %cleanup ], [ -22, %if.end12.cleanup61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @common_lsm_audit(ptr noundef %a, ptr noundef readonly %pre_audit, ptr noundef readonly %post_audit) local_unnamed_addr #2 align 64 {
entry:
  %addr.addr.i38 = alloca i32, align 4
  %addr.addr.i = alloca i32, align 4
  %addr.addr.i331.i = alloca i32, align 4
  %addr.addr.i.i = alloca i32, align 4
  %comm.i = alloca [16 x i8], align 1
  %comm82.i = alloca [16 x i8], align 1
  %sbn_pfx.i = alloca %struct.in6_addr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %a, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 10784, i32 noundef 1400) #6
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %pre_audit, null
  br i1 %tobool.not, label %if.end4.if.end6_crit_edge, label %if.then5

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %pre_audit(ptr noundef nonnull %call1, ptr noundef nonnull %a) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %comm.i) #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %tgid.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 69
  %4 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid.i.i, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str, i32 noundef %5) #6
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %comm4.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %8 = call ptr @memcpy(ptr %comm.i, ptr %comm4.i, i32 16)
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef nonnull %comm.i) #6
  %9 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %a, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %10, label %if.end6.dump_common_audit_data.exit_crit_edge [
    i8 15, label %sw.bb191.i
    i8 4, label %sw.bb6.i
    i8 3, label %sw.bb7.i
    i8 1, label %sw.bb9.i
    i8 12, label %sw.bb14.i
    i8 11, label %sw.bb26.i
    i8 10, label %sw.bb41.i
    i8 9, label %sw.bb57.i
    i8 5, label %sw.bb75.i
    i8 2, label %sw.bb88.i
    i8 6, label %sw.bb172.i
    i8 8, label %sw.bb180.i
    i8 13, label %sw.bb182.i
    i8 14, label %sw.bb187.i
  ]

if.end6.dump_common_audit_data.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

sw.bb6.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %u.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %12 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %u.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.1, i32 noundef %13) #6
  br label %dump_common_audit_data.exit

sw.bb7.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %u8.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %14 = ptrtoint ptr %u8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %u8.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.2, i32 noundef %15) #6
  br label %dump_common_audit_data.exit

sw.bb9.i:                                         ; preds = %if.end6
  %u10.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  call void @audit_log_d_path(ptr noundef nonnull %call1, ptr noundef nonnull @.str.3, ptr noundef %u10.i) #6
  %dentry.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %sw.bb9.i.dump_common_audit_data.exit_crit_edge, label %if.then.i

sw.bb9.i.dump_common_audit_data.exit_crit_edge:   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

if.then.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.4) #6
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 39
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %s_id.i) #6
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.5, i32 noundef %23) #6
  br label %dump_common_audit_data.exit

sw.bb14.i:                                        ; preds = %if.end6
  %u16.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %24 = ptrtoint ptr %u16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %u16.i, align 4
  %f_path.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 1
  call void @audit_log_d_path(ptr noundef nonnull %call1, ptr noundef nonnull @.str.3, ptr noundef %f_path.i) #6
  %26 = ptrtoint ptr %u16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %u16.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_inode.i.i, align 8
  %tobool19.not.i = icmp eq ptr %29, null
  br i1 %tobool19.not.i, label %sw.bb14.i.dump_common_audit_data.exit_crit_edge, label %if.then20.i

sw.bb14.i.dump_common_audit_data.exit_crit_edge:  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

if.then20.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.4) #6
  %i_sb21.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb21.i, align 4
  %s_id22.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 39
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %s_id22.i) #6
  %i_ino24.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino24.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino24.i, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.5, i32 noundef %33) #6
  br label %dump_common_audit_data.exit

sw.bb26.i:                                        ; preds = %if.end6
  %u28.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %34 = ptrtoint ptr %u28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %u28.i, align 4
  call void @audit_log_d_path(ptr noundef nonnull %call1, ptr noundef nonnull @.str.3, ptr noundef %35) #6
  %36 = ptrtoint ptr %u28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %u28.i, align 4
  %dentry31.i = getelementptr inbounds %struct.path, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dentry31.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dentry31.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_inode.i, align 8
  %tobool32.not.i = icmp eq ptr %41, null
  br i1 %tobool32.not.i, label %sw.bb26.i.if.end38.i_crit_edge, label %if.then33.i

sw.bb26.i.if.end38.i_crit_edge:                   ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then33.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.4) #6
  %i_sb34.i = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb34.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb34.i, align 4
  %s_id35.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 39
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %s_id35.i) #6
  %i_ino37.i = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 11
  %44 = ptrtoint ptr %i_ino37.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_ino37.i, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.5, i32 noundef %45) #6
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then33.i, %sw.bb26.i.if.end38.i_crit_edge
  %46 = ptrtoint ptr %u28.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %u28.i, align 4
  %cmd.i = getelementptr inbounds %struct.lsm_ioctlop_audit, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cmd.i, align 4
  %conv40.i = zext i16 %49 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.6, i32 noundef %conv40.i) #6
  br label %dump_common_audit_data.exit

sw.bb41.i:                                        ; preds = %if.end6
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.7) #6
  %u43.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %50 = ptrtoint ptr %u43.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %u43.i, align 4
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #6
  %52 = ptrtoint ptr %u43.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %u43.i, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name.i, align 8
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %55) #6
  %56 = ptrtoint ptr %u43.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %u43.i, align 4
  %d_lockref46.i = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 7
  call void @_raw_spin_unlock(ptr noundef %d_lockref46.i) #6
  %58 = ptrtoint ptr %u43.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %u43.i, align 4
  %d_inode.i318.i = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %d_inode.i318.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %d_inode.i318.i, align 8
  %tobool50.not.i = icmp eq ptr %61, null
  br i1 %tobool50.not.i, label %sw.bb41.i.dump_common_audit_data.exit_crit_edge, label %if.then51.i

sw.bb41.i.dump_common_audit_data.exit_crit_edge:  ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

if.then51.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.4) #6
  %i_sb52.i = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %i_sb52.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb52.i, align 4
  %s_id53.i = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 39
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %s_id53.i) #6
  %i_ino55.i = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 11
  %64 = ptrtoint ptr %i_ino55.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_ino55.i, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.5, i32 noundef %65) #6
  br label %dump_common_audit_data.exit

sw.bb57.i:                                        ; preds = %if.end6
  %66 = call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %69, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !73
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %sw.bb57.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb57.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb57.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb57.i.rcu_read_lock.exit.i_crit_edge
  %u60.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %70 = ptrtoint ptr %u60.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %u60.i, align 4
  %call61.i = call ptr @d_find_alias_rcu(ptr noundef %71) #6
  %tobool62.not.i = icmp eq ptr %call61.i, null
  br i1 %tobool62.not.i, label %rcu_read_lock.exit.i.if.end70.i_crit_edge, label %if.then63.i

rcu_read_lock.exit.i.if.end70.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then63.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.7) #6
  %d_lockref64.i = getelementptr inbounds %struct.dentry, ptr %call61.i, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref64.i) #6
  %name67.i = getelementptr inbounds %struct.dentry, ptr %call61.i, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %name67.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name67.i, align 8
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %73) #6
  call void @_raw_spin_unlock(ptr noundef %d_lockref64.i) #6
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then63.i, %rcu_read_lock.exit.i.if.end70.i_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.4) #6
  %i_sb71.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 8
  %74 = ptrtoint ptr %i_sb71.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb71.i, align 4
  %s_id72.i = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 39
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %s_id72.i) #6
  %i_ino74.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 11
  %76 = ptrtoint ptr %i_ino74.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_ino74.i, align 8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.5, i32 noundef %77) #6
  %call.i319.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i319.i, label %if.end70.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i322.i

if.end70.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i322.i:                             ; preds = %if.end70.i
  %call1.i320.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i320.i)
  %tobool.not.i321.i = icmp eq i32 %call1.i320.i, 0
  br i1 %tobool.not.i321.i, label %land.lhs.true.i322.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i324.i

land.lhs.true.i322.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i322.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i324.i:                            ; preds = %land.lhs.true.i322.i
  %.b4.i323.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i323.i, label %land.lhs.true2.i324.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i325.i

land.lhs.true2.i324.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i324.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i325.i:                                   ; preds = %land.lhs.true2.i324.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i325.i, %land.lhs.true2.i324.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i322.i.rcu_read_unlock.exit.i_crit_edge, %if.end70.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !74
  %78 = call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i.i326.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i326.i to ptr
  %preempt_count.i.i.i.i327.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i327.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i327.i, align 4
  %sub.i.i.i.i = add i32 %81, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i327.i, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %dump_common_audit_data.exit

sw.bb75.i:                                        ; preds = %if.end6
  %u76.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %82 = ptrtoint ptr %u76.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %u76.i, align 4
  %tobool77.not.i = icmp eq ptr %83, null
  br i1 %tobool77.not.i, label %sw.bb75.i.dump_common_audit_data.exit_crit_edge, label %if.then78.i

sw.bb75.i.dump_common_audit_data.exit_crit_edge:  ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

if.then78.i:                                      ; preds = %sw.bb75.i
  %tgid.i328.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 69
  %84 = ptrtoint ptr %tgid.i328.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tgid.i328.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool80.not.i = icmp eq i32 %85, 0
  br i1 %tobool80.not.i, label %if.then78.i.dump_common_audit_data.exit_crit_edge, label %if.then81.i

if.then78.i.dump_common_audit_data.exit_crit_edge: ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

if.then81.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %comm82.i) #6
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.8, i32 noundef %85) #6
  %comm84.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 101
  %86 = call ptr @memcpy(ptr %comm82.i, ptr %comm84.i, i32 16)
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef nonnull %comm82.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %comm82.i) #6
  br label %dump_common_audit_data.exit

sw.bb88.i:                                        ; preds = %if.end6
  %u89.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %87 = ptrtoint ptr %u89.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %u89.i, align 4
  %sk.i = getelementptr inbounds %struct.lsm_network_audit, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sk.i, align 4
  %tobool90.not.i = icmp eq ptr %90, null
  br i1 %tobool90.not.i, label %sw.bb88.i.if.end139.i_crit_edge, label %if.then91.i

sw.bb88.i.if.end139.i_crit_edge:                  ; preds = %sw.bb88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.i

if.then91.i:                                      ; preds = %sw.bb88.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %skc_family.i, align 8
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %92, label %if.then91.i.if.end139.i_crit_edge [
    i16 2, label %sw.bb97.i
    i16 10, label %sw.bb105.i
    i16 1, label %sw.bb114.i
  ]

if.then91.i.if.end139.i_crit_edge:                ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.i

sw.bb97.i:                                        ; preds = %if.then91.i
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon.99, ptr %90, i32 0, i32 1
  %94 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %skc_rcv_saddr.i, align 4
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %90, i32 0, i32 6
  %96 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %inet_sport.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i38)
  %98 = ptrtoint ptr %addr.addr.i38 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %addr.addr.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i39 = icmp eq i32 %95, 0
  br i1 %tobool.not.i39, label %sw.bb97.i.if.end.i42_crit_edge, label %if.then.i40

sw.bb97.i.if.end.i42_crit_edge:                   ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i42

if.then.i40:                                      ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.9, ptr noundef nonnull %addr.addr.i38) #6
  br label %if.end.i42

if.end.i42:                                       ; preds = %if.then.i40, %sw.bb97.i.if.end.i42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool1.not.i41 = icmp eq i16 %97, 0
  br i1 %tobool1.not.i41, label %if.end.i42.print_ipv4_addr.exit45_crit_edge, label %if.then2.i44

if.end.i42.print_ipv4_addr.exit45_crit_edge:      ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_ipv4_addr.exit45

if.then2.i44:                                     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i43 = zext i16 %97 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.10, i32 noundef %conv.i43) #6
  br label %print_ipv4_addr.exit45

print_ipv4_addr.exit45:                           ; preds = %if.then2.i44, %if.end.i42.print_ipv4_addr.exit45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i38)
  %99 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %90, align 8
  %101 = getelementptr inbounds %struct.sock_common, ptr %90, i32 0, i32 2
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %101, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i)
  %104 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %100, ptr %addr.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i34 = icmp eq i32 %100, 0
  br i1 %tobool.not.i34, label %print_ipv4_addr.exit45.if.end.i36_crit_edge, label %if.then.i35

print_ipv4_addr.exit45.if.end.i36_crit_edge:      ; preds = %print_ipv4_addr.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i36

if.then.i35:                                      ; preds = %print_ipv4_addr.exit45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.11, ptr noundef nonnull %addr.addr.i) #6
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.then.i35, %print_ipv4_addr.exit45.if.end.i36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool1.not.i = icmp eq i16 %103, 0
  br i1 %tobool1.not.i, label %if.end.i36.print_ipv4_addr.exit_crit_edge, label %if.then2.i

if.end.i36.print_ipv4_addr.exit_crit_edge:        ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_ipv4_addr.exit

if.then2.i:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i37 = zext i16 %103 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.12, i32 noundef %conv.i37) #6
  br label %print_ipv4_addr.exit

print_ipv4_addr.exit:                             ; preds = %if.then2.i, %if.end.i36.print_ipv4_addr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i)
  br label %if.end139.i

sw.bb105.i:                                       ; preds = %if.then91.i
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %90, i32 0, i32 11
  %inet_sport109.i = getelementptr inbounds %struct.inet_sock, ptr %90, i32 0, i32 6
  %105 = ptrtoint ptr %inet_sport109.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %inet_sport109.i, align 8
  %107 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %skc_v6_rcv_saddr.i, align 4
  %arrayidx2.i.i21 = getelementptr %struct.sock_common, ptr %90, i32 0, i32 11, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx2.i.i21 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx2.i.i21, align 4
  %or.i.i22 = or i32 %110, %108
  %arrayidx4.i.i23 = getelementptr %struct.sock_common, ptr %90, i32 0, i32 11, i32 0, i32 0, i32 2
  %111 = ptrtoint ptr %arrayidx4.i.i23 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx4.i.i23, align 4
  %or5.i.i24 = or i32 %or.i.i22, %112
  %arrayidx7.i.i25 = getelementptr %struct.sock_common, ptr %90, i32 0, i32 11, i32 0, i32 0, i32 3
  %113 = ptrtoint ptr %arrayidx7.i.i25 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx7.i.i25, align 4
  %or8.i.i26 = or i32 %or5.i.i24, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i26)
  %cmp.i.i27 = icmp eq i32 %or8.i.i26, 0
  br i1 %cmp.i.i27, label %sw.bb105.i.if.end.i30_crit_edge, label %if.then.i28

sw.bb105.i.if.end.i30_crit_edge:                  ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i30

if.then.i28:                                      ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.9, ptr noundef %skc_v6_rcv_saddr.i) #6
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i28, %sw.bb105.i.if.end.i30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool.not.i29 = icmp eq i16 %106, 0
  br i1 %tobool.not.i29, label %if.end.i30.print_ipv6_addr.exit33_crit_edge, label %if.then1.i32

if.end.i30.print_ipv6_addr.exit33_crit_edge:      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_ipv6_addr.exit33

if.then1.i32:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i31 = zext i16 %106 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.10, i32 noundef %conv.i31) #6
  br label %print_ipv6_addr.exit33

print_ipv6_addr.exit33:                           ; preds = %if.then1.i32, %if.end.i30.print_ipv6_addr.exit33_crit_edge
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %90, i32 0, i32 10
  %115 = getelementptr inbounds %struct.sock_common, ptr %90, i32 0, i32 2
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %115, align 4
  %118 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %skc_v6_daddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %90, i32 0, i32 10, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %121, %119
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %90, i32 0, i32 10, i32 0, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %123
  %arrayidx7.i.i = getelementptr %struct.sock_common, ptr %90, i32 0, i32 10, i32 0, i32 0, i32 3
  %124 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i.i, label %print_ipv6_addr.exit33.if.end.i_crit_edge, label %if.then.i19

print_ipv6_addr.exit33.if.end.i_crit_edge:        ; preds = %print_ipv6_addr.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i19:                                      ; preds = %print_ipv6_addr.exit33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.11, ptr noundef %skc_v6_daddr.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i19, %print_ipv6_addr.exit33.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool.not.i20 = icmp eq i16 %117, 0
  br i1 %tobool.not.i20, label %if.end.i.if.end139.i_crit_edge, label %if.then1.i

if.end.i.if.end139.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %117 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.12, i32 noundef %conv.i) #6
  br label %if.end139.i

sw.bb114.i:                                       ; preds = %if.then91.i
  %addr119.i = getelementptr inbounds %struct.unix_sock, ptr %90, i32 0, i32 1
  %126 = ptrtoint ptr %addr119.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %addr119.i, align 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !75
  %tobool124.not.i = icmp eq ptr %127, null
  br i1 %tobool124.not.i, label %sw.bb114.i.if.end139.i_crit_edge, label %if.end126.i

sw.bb114.i.if.end139.i_crit_edge:                 ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.i

if.end126.i:                                      ; preds = %sw.bb114.i
  %dentry128.i = getelementptr inbounds %struct.unix_sock, ptr %90, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %dentry128.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dentry128.i, align 4
  %tobool129.not.i = icmp eq ptr %129, null
  br i1 %tobool129.not.i, label %if.end132.i, label %if.then130.i

if.then130.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #8
  %path127.i = getelementptr inbounds %struct.unix_sock, ptr %90, i32 0, i32 2
  call void @audit_log_d_path(ptr noundef nonnull %call1, ptr noundef nonnull @.str.3, ptr noundef %path127.i) #6
  br label %if.end139.i

if.end132.i:                                      ; preds = %if.end126.i
  %len133.i = getelementptr inbounds %struct.unix_address, ptr %127, i32 0, i32 1
  %130 = ptrtoint ptr %len133.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len133.i, align 4
  %name134.i = getelementptr inbounds %struct.unix_address, ptr %127, i32 0, i32 2
  %sun_path.i = getelementptr inbounds %struct.sockaddr_un, ptr %name134.i, i32 0, i32 1
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.3) #6
  %132 = ptrtoint ptr %sun_path.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %sun_path.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool136.not.i = icmp eq i8 %133, 0
  br i1 %tobool136.not.i, label %if.else.i, label %if.then137.i

if.then137.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %sun_path.i) #6
  br label %if.end139.i

if.else.i:                                        ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %131, -2
  call void @audit_log_n_hex(ptr noundef nonnull %call1, ptr noundef %sun_path.i, i32 noundef %sub.i) #6
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.else.i, %if.then137.i, %if.then130.i, %sw.bb114.i.if.end139.i_crit_edge, %if.then1.i, %if.end.i.if.end139.i_crit_edge, %print_ipv4_addr.exit, %if.then91.i.if.end139.i_crit_edge, %sw.bb88.i.if.end139.i_crit_edge
  %134 = ptrtoint ptr %u89.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %u89.i, align 4
  %family.i = getelementptr inbounds %struct.lsm_network_audit, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %family.i, align 4
  %138 = zext i16 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %137, label %if.end139.i.sw.epilog159.i_crit_edge [
    i16 2, label %sw.bb142.i
    i16 10, label %sw.bb148.i
  ]

if.end139.i.sw.epilog159.i_crit_edge:             ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog159.i

sw.bb142.i:                                       ; preds = %if.end139.i
  %saddr.i = getelementptr inbounds %struct.lsm_network_audit, ptr %135, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 1
  %139 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %saddr.i, align 4
  %sport.i = getelementptr inbounds %struct.lsm_network_audit, ptr %135, i32 0, i32 4
  %141 = ptrtoint ptr %sport.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %sport.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i.i) #6
  %143 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %140, ptr %addr.addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i329.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i329.i, label %sw.bb142.i.if.end.i.i_crit_edge, label %if.then.i330.i

sw.bb142.i.if.end.i.i_crit_edge:                  ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i330.i:                                   ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.13, ptr noundef nonnull %addr.addr.i.i) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i330.i, %sw.bb142.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %tobool1.not.i.i = icmp eq i16 %142, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.print_ipv4_addr.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.print_ipv4_addr.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_ipv4_addr.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %142 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.14, i32 noundef %conv.i.i) #6
  br label %print_ipv4_addr.exit.i

print_ipv4_addr.exit.i:                           ; preds = %if.then2.i.i, %if.end.i.i.print_ipv4_addr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i.i) #6
  %144 = ptrtoint ptr %u89.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %u89.i, align 4
  %fam146.i = getelementptr inbounds %struct.lsm_network_audit, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %fam146.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %fam146.i, align 4
  %dport.i = getelementptr inbounds %struct.lsm_network_audit, ptr %145, i32 0, i32 3
  %148 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %dport.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i331.i) #6
  %150 = ptrtoint ptr %addr.addr.i331.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %147, ptr %addr.addr.i331.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i332.i = icmp eq i32 %147, 0
  br i1 %tobool.not.i332.i, label %print_ipv4_addr.exit.i.if.end.i335.i_crit_edge, label %if.then.i333.i

print_ipv4_addr.exit.i.if.end.i335.i_crit_edge:   ; preds = %print_ipv4_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i335.i

if.then.i333.i:                                   ; preds = %print_ipv4_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, ptr noundef nonnull %addr.addr.i331.i) #6
  br label %if.end.i335.i

if.end.i335.i:                                    ; preds = %if.then.i333.i, %print_ipv4_addr.exit.i.if.end.i335.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool1.not.i334.i = icmp eq i16 %149, 0
  br i1 %tobool1.not.i334.i, label %if.end.i335.i.print_ipv4_addr.exit338.i_crit_edge, label %if.then2.i337.i

if.end.i335.i.print_ipv4_addr.exit338.i_crit_edge: ; preds = %if.end.i335.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_ipv4_addr.exit338.i

if.then2.i337.i:                                  ; preds = %if.end.i335.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i336.i = zext i16 %149 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.16, i32 noundef %conv.i336.i) #6
  br label %print_ipv4_addr.exit338.i

print_ipv4_addr.exit338.i:                        ; preds = %if.then2.i337.i, %if.end.i335.i.print_ipv4_addr.exit338.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i331.i) #6
  br label %sw.epilog159.i

sw.bb148.i:                                       ; preds = %if.end139.i
  %saddr151.i = getelementptr inbounds %struct.lsm_network_audit, ptr %135, i32 0, i32 5, i32 0, i32 1
  %sport153.i = getelementptr inbounds %struct.lsm_network_audit, ptr %135, i32 0, i32 4
  %151 = ptrtoint ptr %sport153.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %sport153.i, align 4
  %153 = ptrtoint ptr %saddr151.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %saddr151.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.lsm_network_audit, ptr %135, i32 0, i32 5, i32 0, i32 1, i32 0, i32 0, i32 1
  %155 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %156, %154
  %arrayidx4.i.i.i = getelementptr %struct.lsm_network_audit, ptr %135, i32 0, i32 5, i32 0, i32 1, i32 0, i32 0, i32 2
  %157 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %158
  %arrayidx7.i.i.i = getelementptr %struct.lsm_network_audit, ptr %135, i32 0, i32 5, i32 0, i32 1, i32 0, i32 0, i32 3
  %159 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or8.i.i.i, 0
  br i1 %cmp.i.i.i, label %sw.bb148.i.if.end.i341.i_crit_edge, label %if.then.i339.i

sw.bb148.i.if.end.i341.i_crit_edge:               ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i341.i

if.then.i339.i:                                   ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.13, ptr noundef %saddr151.i) #6
  br label %if.end.i341.i

if.end.i341.i:                                    ; preds = %if.then.i339.i, %sw.bb148.i.if.end.i341.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool.not.i340.i = icmp eq i16 %152, 0
  br i1 %tobool.not.i340.i, label %if.end.i341.i.print_ipv6_addr.exit.i_crit_edge, label %if.then1.i.i

if.end.i341.i.print_ipv6_addr.exit.i_crit_edge:   ; preds = %if.end.i341.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_ipv6_addr.exit.i

if.then1.i.i:                                     ; preds = %if.end.i341.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i342.i = zext i16 %152 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.14, i32 noundef %conv.i342.i) #6
  br label %print_ipv6_addr.exit.i

print_ipv6_addr.exit.i:                           ; preds = %if.then1.i.i, %if.end.i341.i.print_ipv6_addr.exit.i_crit_edge
  %161 = ptrtoint ptr %u89.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %u89.i, align 4
  %fam155.i = getelementptr inbounds %struct.lsm_network_audit, ptr %162, i32 0, i32 5
  %dport158.i = getelementptr inbounds %struct.lsm_network_audit, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %dport158.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %dport158.i, align 2
  %165 = ptrtoint ptr %fam155.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fam155.i, align 4
  %arrayidx2.i.i343.i = getelementptr %struct.lsm_network_audit, ptr %162, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 1
  %167 = ptrtoint ptr %arrayidx2.i.i343.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx2.i.i343.i, align 4
  %or.i.i344.i = or i32 %168, %166
  %arrayidx4.i.i345.i = getelementptr %struct.lsm_network_audit, ptr %162, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 2
  %169 = ptrtoint ptr %arrayidx4.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx4.i.i345.i, align 4
  %or5.i.i346.i = or i32 %or.i.i344.i, %170
  %arrayidx7.i.i347.i = getelementptr %struct.lsm_network_audit, ptr %162, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 3
  %171 = ptrtoint ptr %arrayidx7.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx7.i.i347.i, align 4
  %or8.i.i348.i = or i32 %or5.i.i346.i, %172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i348.i)
  %cmp.i.i349.i = icmp eq i32 %or8.i.i348.i, 0
  br i1 %cmp.i.i349.i, label %print_ipv6_addr.exit.i.if.end.i352.i_crit_edge, label %if.then.i350.i

print_ipv6_addr.exit.i.if.end.i352.i_crit_edge:   ; preds = %print_ipv6_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i352.i

if.then.i350.i:                                   ; preds = %print_ipv6_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.15, ptr noundef %fam155.i) #6
  br label %if.end.i352.i

if.end.i352.i:                                    ; preds = %if.then.i350.i, %print_ipv6_addr.exit.i.if.end.i352.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool.not.i351.i = icmp eq i16 %164, 0
  br i1 %tobool.not.i351.i, label %if.end.i352.i.sw.epilog159.i_crit_edge, label %if.then1.i354.i

if.end.i352.i.sw.epilog159.i_crit_edge:           ; preds = %if.end.i352.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog159.i

if.then1.i354.i:                                  ; preds = %if.end.i352.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i353.i = zext i16 %164 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.16, i32 noundef %conv.i353.i) #6
  br label %sw.epilog159.i

sw.epilog159.i:                                   ; preds = %if.then1.i354.i, %if.end.i352.i.sw.epilog159.i_crit_edge, %print_ipv4_addr.exit338.i, %if.end139.i.sw.epilog159.i_crit_edge
  %173 = ptrtoint ptr %u89.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %u89.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i = icmp sgt i32 %176, 0
  br i1 %cmp.i, label %if.then162.i, label %sw.epilog159.i.dump_common_audit_data.exit_crit_edge

sw.epilog159.i.dump_common_audit_data.exit_crit_edge: ; preds = %sw.epilog159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

if.then162.i:                                     ; preds = %sw.epilog159.i
  %call165.i = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %176) #6
  %tobool166.not.i = icmp eq ptr %call165.i, null
  br i1 %tobool166.not.i, label %if.then162.i.dump_common_audit_data.exit_crit_edge, label %do.body1.i.i

if.then162.i.dump_common_audit_data.exit_crit_edge: ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

do.body1.i.i:                                     ; preds = %if.then162.i
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.17, ptr noundef nonnull %call165.i) #6
  %177 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !76
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call165.i, i32 0, i32 118
  %178 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %180 = ptrtoint ptr %179 to i32
  %181 = call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %184
  %185 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %186, %180
  %187 = inttoptr i32 %add.i.i to ptr
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %add13.i.i = add i32 %189, -1
  store i32 %add13.i.i, ptr %187, align 4
  %190 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !77
  %and.i.i.i.i = and i32 %190, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !72

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %177) #6, !srcloc !78
  br label %dump_common_audit_data.exit

sw.bb172.i:                                       ; preds = %if.end6
  %u173.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %191 = ptrtoint ptr %u173.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %u173.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.18, i32 noundef %192) #6
  %key_desc.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1, i32 0, i32 1
  %193 = ptrtoint ptr %key_desc.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %key_desc.i, align 4
  %tobool175.not.i = icmp eq ptr %194, null
  br i1 %tobool175.not.i, label %sw.bb172.i.dump_common_audit_data.exit_crit_edge, label %if.then176.i

sw.bb172.i.dump_common_audit_data.exit_crit_edge: ; preds = %sw.bb172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_common_audit_data.exit

if.then176.i:                                     ; preds = %sw.bb172.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.19) #6
  %195 = ptrtoint ptr %key_desc.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %key_desc.i, align 4
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %196) #6
  br label %dump_common_audit_data.exit

sw.bb180.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.20) #6
  %u181.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %197 = ptrtoint ptr %u181.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %u181.i, align 4
  call void @audit_log_untrustedstring(ptr noundef nonnull %call1, ptr noundef %198) #6
  br label %dump_common_audit_data.exit

sw.bb182.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sbn_pfx.i) #6
  %199 = getelementptr inbounds i8, ptr %sbn_pfx.i, i32 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 0, ptr %199, align 8
  %u184.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %201 = ptrtoint ptr %u184.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %u184.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %202, align 8
  %205 = ptrtoint ptr %sbn_pfx.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %sbn_pfx.i, align 8
  %pkey.i = getelementptr inbounds %struct.lsm_ibpkey_audit, ptr %202, i32 0, i32 1
  %206 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %pkey.i, align 8
  %conv186.i = zext i16 %207 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.21, i32 noundef %conv186.i, ptr noundef nonnull %sbn_pfx.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sbn_pfx.i) #6
  br label %dump_common_audit_data.exit

sw.bb187.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %u188.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %208 = ptrtoint ptr %u188.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %u188.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %port.i = getelementptr inbounds %struct.lsm_ibendport_audit, ptr %209, i32 0, i32 1
  %212 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %port.i, align 4
  %conv190.i = zext i8 %213 to i32
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.22, ptr noundef %211, i32 noundef %conv190.i) #6
  br label %dump_common_audit_data.exit

sw.bb191.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %u192.i = getelementptr inbounds %struct.common_audit_data, ptr %a, i32 0, i32 1
  %214 = ptrtoint ptr %u192.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %u192.i, align 4
  %arrayidx193.i = getelementptr [26 x ptr], ptr @lockdown_reasons, i32 0, i32 %215
  %216 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx193.i, align 4
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.23, ptr noundef %217) #6
  br label %dump_common_audit_data.exit

dump_common_audit_data.exit:                      ; preds = %sw.bb191.i, %sw.bb187.i, %sw.bb182.i, %sw.bb180.i, %if.then176.i, %sw.bb172.i.dump_common_audit_data.exit_crit_edge, %dev_put.exit.i, %if.then162.i.dump_common_audit_data.exit_crit_edge, %sw.epilog159.i.dump_common_audit_data.exit_crit_edge, %if.then81.i, %if.then78.i.dump_common_audit_data.exit_crit_edge, %sw.bb75.i.dump_common_audit_data.exit_crit_edge, %rcu_read_unlock.exit.i, %if.then51.i, %sw.bb41.i.dump_common_audit_data.exit_crit_edge, %if.end38.i, %if.then20.i, %sw.bb14.i.dump_common_audit_data.exit_crit_edge, %if.then.i, %sw.bb9.i.dump_common_audit_data.exit_crit_edge, %sw.bb7.i, %sw.bb6.i, %if.end6.dump_common_audit_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %comm.i) #6
  %tobool7.not = icmp eq ptr %post_audit, null
  br i1 %tobool7.not, label %dump_common_audit_data.exit.if.end9_crit_edge, label %if.then8

dump_common_audit_data.exit.if.end9_crit_edge:    ; preds = %dump_common_audit_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %dump_common_audit_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void %post_audit(ptr noundef nonnull %call1, ptr noundef nonnull %a) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %dump_common_audit_data.exit.if.end9_crit_edge
  call void @audit_log_end(ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_d_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_n_hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !55, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/lsm_audit.c", i32 220, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/lsm_audit.c", i32 227, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/lsm_audit.c", i32 230, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/lsm_audit.c", i32 235, i32 24}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/lsm_audit.c", i32 239, i32 25}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/lsm_audit.c", i32 241, i32 25}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/lsm_audit.c", i32 270, i32 24}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/lsm_audit.c", i32 276, i32 24}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/lsm_audit.c", i32 314, i32 26}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/lsm_audit.c", i32 335, i32 7}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/lsm_audit.c", i32 335, i32 16}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/lsm_audit.c", i32 338, i32 7}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/lsm_audit.c", i32 338, i32 16}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/lsm_audit.c", i32 378, i32 6}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/lsm_audit.c", i32 378, i32 15}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/lsm_audit.c", i32 381, i32 6}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/lsm_audit.c", i32 381, i32 15}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/lsm_audit.c", i32 398, i32 26}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../security/lsm_audit.c", i32 405, i32 24}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/lsm_audit.c", i32 407, i32 25}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/lsm_audit.c", i32 413, i32 24}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/lsm_audit.c", i32 423, i32 24}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/lsm_audit.c", i32 428, i32 24}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/lsm_audit.c", i32 433, i32 24}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/lsm_audit.c", i32 198, i32 24}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/lsm_audit.c", i32 200, i32 24}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../security/lsm_audit.c", i32 189, i32 24}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2149902556}
!74 = !{i64 2149902822}
!75 = !{i64 2157956316}
!76 = !{i64 611383, i64 611444}
!77 = !{i64 614115}
!78 = !{i64 614400}
