; ModuleID = '/llk/IR_all_yes/fs/afs/proc.c_pt.bc'
source_filename = "../fs/afs/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.afs_sysnames = type { [16 x ptr], %struct.refcount_struct, i16, [1 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.afs_cell = type { %union.anon, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_net = type { ptr, %struct.afs_uuid, i8, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, ptr, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.rw_semaphore, %struct.mutex, %struct.mutex, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.seqlock_t, %struct.work_struct, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, %struct.rwlock_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.afs_uuid = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.150, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.151, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.152, ptr, %struct.address_space, %struct.list_head, %union.anon.153, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.150 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.151 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.152 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.153 = type { ptr }
%struct.afs_vl_seq_net_private = type { %struct.seq_net_private, ptr }
%struct.seq_net_private = type { ptr, ptr }
%struct.afs_vlserver_list = type <{ %struct.callback_head, %struct.atomic_t, i8, i8, i8, i16, [3 x i8], %struct.rwlock_t, [0 x %struct.afs_vlserver_entry] }>
%struct.afs_vlserver_entry = type { i16, i16, i16, ptr }
%struct.afs_vlserver = type { %struct.callback_head, ptr, i32, %struct.rwlock_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.146, i16, i16, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.146 = type { i32, i32, i16, i16 }
%struct.afs_addr_list = type { %struct.callback_head, %struct.refcount_struct, i32, i8, i8, i8, i8, i16, i32, i32, [0 x %struct.sockaddr_rxrpc] }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.143 }
%union.anon.143 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }

@afs_init_sysname = external dso_local constant [0 x i8], align 1
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_proc_cell_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] ==> %s(%p{%s},%p)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_proc_cell_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/afs/proc.c\00", [18 x i8] zeroinitializer }, align 32
@afs_proc_cell_setup._entry_ptr = internal global ptr @afs_proc_cell_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vlservers\00", [22 x i8] zeroinitializer }, align 32
@afs_proc_cell_vlservers_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @afs_proc_cell_vlservers_start, ptr @afs_proc_cell_vlservers_stop, ptr @afs_proc_cell_vlservers_next, ptr @afs_proc_cell_vlservers_show }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"volumes\00", [24 x i8] zeroinitializer }, align 32
@afs_proc_cell_volumes_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @afs_proc_cell_volumes_start, ptr @afs_proc_cell_volumes_stop, ptr @afs_proc_cell_volumes_next, ptr @afs_proc_cell_volumes_show }, [16 x i8] zeroinitializer }, align 32
@afs_proc_cell_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_proc_cell_setup._entry_ptr.7 = internal global ptr @afs_proc_cell_setup._entry.5, section ".printk_index", align 4
@afs_proc_cell_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -ENOMEM\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_proc_cell_setup._entry_ptr.10 = internal global ptr @afs_proc_cell_setup._entry.8, section ".printk_index", align 4
@afs_proc_cell_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_proc_cell_remove\00", [43 x i8] zeroinitializer }, align 32
@afs_proc_cell_remove._entry_ptr = internal global ptr @afs_proc_cell_remove._entry, section ".printk_index", align 4
@afs_proc_cell_remove._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_proc_cell_remove._entry_ptr.15 = internal global ptr @afs_proc_cell_remove._entry.13, section ".printk_index", align 4
@afs_proc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.16, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afs_proc_init\00", [18 x i8] zeroinitializer }, align 32
@afs_proc_init._entry_ptr = internal global ptr @afs_proc_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afs\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cells\00", [26 x i8] zeroinitializer }, align 32
@afs_proc_cells_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @afs_proc_cells_start, ptr @afs_proc_cells_stop, ptr @afs_proc_cells_next, ptr @afs_proc_cells_show }, [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rootcell\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"servers\00", [24 x i8] zeroinitializer }, align 32
@afs_proc_servers_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @afs_proc_servers_start, ptr @afs_proc_servers_stop, ptr @afs_proc_servers_next, ptr @afs_proc_servers_show }, [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sysname\00", [24 x i8] zeroinitializer }, align 32
@afs_proc_sysname_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @afs_proc_sysname_start, ptr @afs_proc_sysname_stop, ptr @afs_proc_sysname_next, ptr @afs_proc_sysname_show }, [16 x i8] zeroinitializer }, align 32
@afs_proc_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.16, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_proc_init._entry_ptr.24 = internal global ptr @afs_proc_init._entry.23, section ".printk_index", align 4
@afs_proc_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.16, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_proc_init._entry_ptr.26 = internal global ptr @afs_proc_init._entry.25, section ".printk_index", align 4
@afs_proc_cell_vlservers_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"# source %s, status %s\0A\00", [40 x i8] zeroinitializer }, align 32
@dns_record_sources = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], [36 x i8] zeroinitializer }, align 32
@dns_lookup_statuses = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.42], [60 x i8] zeroinitializer }, align 32
@afs_proc_cell_vlservers_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s [p=%hu w=%hu s=%s,%s]:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" %c %pISpc\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" info: fl=%lx rtt=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" probe: fl=%x e=%d ac=%d out=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unav\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AFSDB\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SRV\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nss\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[weird]\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no-lookup\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"good\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"good/bad\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bad\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not-found\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"local-failure\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp-failure\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ns-failure\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USE VID      TY NAME\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%3d %08llx %s %s\0A\00", [46 x i8] zeroinitializer }, align 32
@afs_vol_types = internal constant { [3 x [3 x i8]], [23 x i8] } { [3 x [3 x i8]] [[3 x i8] c"RW\00", [3 x i8] c"RO\00", [3 x i8] c"BK\00"], [23 x i8] zeroinitializer }, align 32
@afs_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USE ACT    TTL SV ST NAME\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_proc_cells_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%3u %3u %6lld %2u %2u %s\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_proc_cells_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s]     cmd=%s name=%s args=%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_proc_cells_write\00", [43 x i8] zeroinitializer }, align 32
@afs_proc_cells_write._entry_ptr = internal global ptr @afs_proc_cells_write._entry, section ".printk_index", align 4
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@afs_proc_cells_write._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_proc_cells_write._entry_ptr.61 = internal global ptr @afs_proc_cells_write._entry.59, section ".printk_index", align 4
@afs_proc_cells_write._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.57, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"kAFS: Invalid Command on /proc/fs/afs/cells file\0A\00", [46 x i8] zeroinitializer }, align 32
@afs_proc_cells_write._entry_ptr.64 = internal global ptr @afs_proc_cells_write._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@afs_proc_rootcell_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s]     rootcell=%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"afs_proc_rootcell_write\00", [40 x i8] zeroinitializer }, align 32
@afs_proc_rootcell_write._entry_ptr = internal global ptr @afs_proc_rootcell_write._entry, section ".printk_index", align 4
@afs_proc_rootcell_write._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.67, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_proc_rootcell_write._entry_ptr.69 = internal global ptr @afs_proc_rootcell_write._entry.68, section ".printk_index", align 4
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UUID                                 REF ACT\0A\00", [50 x i8] zeroinitializer }, align 32
@afs_proc_servers_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%pU %3d %3d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  - info: fl=%lx rtt=%u brk=%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  - probe: last=%d out=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"  - ALIST v=%u rsp=%lx f=%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"    [%x] %pISpc%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kAFS statistics\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"dir-mgmt: look=%u reval=%u inval=%u relpg=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dir-data: rdpg=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dir-edit: cr=%u rm=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"file-rd : n=%u nb=%lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"file-wr : n=%u nb=%lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" \09\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 617, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 623, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant [28 x i8] c"afs_proc_cell_vlservers_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 366, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 627, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"afs_proc_cell_volumes_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 250, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 633, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 639, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 650, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 652, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 662, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 664, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 668, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"afs_proc_cells_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 77, i32 36 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 673, i32 36 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 677, i32 7 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"afs_proc_servers_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 425, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 679, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 680, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant [21 x i8] c"afs_proc_sysname_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 480, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 688, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 694, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 330, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 695, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 723, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 292, i32 17 }
@___asan_gen_.191 = private unnamed_addr constant [19 x i8] c"dns_record_sources\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 257, i32 26 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"dns_lookup_statuses\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 267, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 302, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 308, i32 18 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 312, i32 16 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 313, i32 16 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 258, i32 29 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 259, i32 29 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 260, i32 29 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 261, i32 32 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 262, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 263, i32 27 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 264, i32 29 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 268, i32 27 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 269, i32 23 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 270, i32 31 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 271, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 272, i32 31 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 273, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 274, i32 34 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 275, i32 32 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 215, i32 15 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 219, i32 16 }
@___asan_gen_.260 = private unnamed_addr constant [14 x i8] c"afs_vol_types\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 200, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 45, i32 7 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 41, i32 15 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 49, i32 16 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 120, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 122, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 140, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 145, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 161, i32 17 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 191, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 196, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 383, i32 15 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 389, i32 16 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 393, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 395, i32 16 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 398, i32 16 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 401, i32 17 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 403, i32 31 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 403, i32 37 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 585, i32 14 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 587, i32 16 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 593, i32 16 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 596, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 600, i32 16 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 603, i32 16 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [17 x i8] c"../fs/afs/proc.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 505, i32 25 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @afs_proc_cell_remove._entry, ptr @afs_proc_cell_remove._entry.13, ptr @afs_proc_cell_remove._entry_ptr, ptr @afs_proc_cell_remove._entry_ptr.15, ptr @afs_proc_cell_setup._entry, ptr @afs_proc_cell_setup._entry.5, ptr @afs_proc_cell_setup._entry.8, ptr @afs_proc_cell_setup._entry_ptr, ptr @afs_proc_cell_setup._entry_ptr.10, ptr @afs_proc_cell_setup._entry_ptr.7, ptr @afs_proc_cells_write._entry, ptr @afs_proc_cells_write._entry.59, ptr @afs_proc_cells_write._entry.62, ptr @afs_proc_cells_write._entry_ptr, ptr @afs_proc_cells_write._entry_ptr.61, ptr @afs_proc_cells_write._entry_ptr.64, ptr @afs_proc_init._entry, ptr @afs_proc_init._entry.23, ptr @afs_proc_init._entry.25, ptr @afs_proc_init._entry_ptr, ptr @afs_proc_init._entry_ptr.24, ptr @afs_proc_init._entry_ptr.26, ptr @afs_proc_rootcell_write._entry, ptr @afs_proc_rootcell_write._entry.68, ptr @afs_proc_rootcell_write._entry_ptr, ptr @afs_proc_rootcell_write._entry_ptr.69, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @afs_proc_cell_vlservers_ops, ptr @.str.4, ptr @afs_proc_cell_volumes_ops, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @afs_proc_cells_ops, ptr @.str.19, ptr @.str.20, ptr @afs_proc_servers_ops, ptr @.str.21, ptr @.str.22, ptr @afs_proc_sysname_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @dns_record_sources, ptr @dns_lookup_statuses, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @afs_vol_types, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cell_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cell_vlservers_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cell_volumes_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cell_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cell_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cell_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cell_remove._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cells_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_servers_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_sysname_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_record_sources to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dns_lookup_statuses to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_vol_types to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cells_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cells_write._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_cells_write._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_rootcell_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_proc_rootcell_write._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_sysnames(ptr noundef %sysnames) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sysnames, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %usage = getelementptr inbounds %struct.afs_sysnames, ptr %sysnames, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !198
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end12_crit_edge, label %if.then10.i.i.i, !prof !199

if.end5.i.i.i.if.end12_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #10
  br label %if.end12

refcount_dec_and_test.exit:                       ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !200
  %nr = getelementptr inbounds %struct.afs_sysnames, ptr %sysnames, i32 0, i32 2
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp25.not = icmp eq i16 %2, 0
  br i1 %cmp25.not, label %refcount_dec_and_test.exit.for.end_crit_edge, label %for.body.lr.ph

refcount_dec_and_test.exit.for.end_crit_edge:     ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %refcount_dec_and_test.exit
  %blank = getelementptr inbounds %struct.afs_sysnames, ptr %sysnames, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %sysnames, i32 0, i32 %i.026
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp2.not = icmp eq ptr %4, @afs_init_sysname
  %cmp7.not = icmp eq ptr %4, %blank
  %or.cond = select i1 %cmp2.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %4) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nr, align 4
  %conv = zext i16 %6 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %refcount_dec_and_test.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %sysnames) #10
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_proc_cell_setup(ptr noundef %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !199

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %name = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %proc_afs = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %proc_afs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proc_afs, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %cell, ptr noundef %8, ptr noundef %10) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %name9 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %13 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name9, align 8
  %proc_afs10 = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %proc_afs10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proc_afs10, align 4
  %call.i = tail call ptr @_proc_mkdir(ptr noundef %14, i16 noundef zeroext 0, ptr noundef %16, ptr noundef %12, i1 noundef zeroext true) #10
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %do.end7.do.body46_crit_edge, label %if.end14

do.end7.do.body46_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body46

if.end14:                                         ; preds = %do.end7
  %call15 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @afs_proc_cell_vlservers_ops, i32 noundef 12, ptr noundef %cell) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.error_tree_crit_edge, label %lor.lhs.false

if.end14.error_tree_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_tree

lor.lhs.false:                                    ; preds = %if.end14
  %call17 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @afs_proc_cell_volumes_ops, i32 noundef 8, ptr noundef %cell) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %lor.lhs.false.error_tree_crit_edge, label %do.body21

lor.lhs.false.error_tree_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_tree

do.body21:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  %and22 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.cleanup_crit_edge, label %do.body21.cleanup.sink.split_crit_edge, !prof !199

do.body21.cleanup.sink.split_crit_edge:           ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_tree:                                       ; preds = %lor.lhs.false.error_tree_crit_edge, %if.end14.error_tree_crit_edge
  %18 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name9, align 8
  %20 = ptrtoint ptr %proc_afs10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %proc_afs10, align 4
  %call45 = tail call i32 @remove_proc_subtree(ptr noundef %19, ptr noundef %21) #10
  br label %do.body46

do.body46:                                        ; preds = %error_tree, %do.end7.do.body46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %22 = load i32, ptr @afs_debug, align 4
  %and47 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.cleanup_crit_edge, label %do.body46.cleanup.sink.split_crit_edge, !prof !199

do.body46.cleanup.sink.split_crit_edge:           ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body46.cleanup.sink.split_crit_edge, %do.body21.cleanup.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.6, %do.body21.cleanup.sink.split_crit_edge ], [ @.str.9, %do.body46.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.body21.cleanup.sink.split_crit_edge ], [ -12, %do.body46.cleanup.sink.split_crit_edge ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i81 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i81 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task61, align 8
  %comm62 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink, ptr noundef %comm62, ptr noundef nonnull @.str.1) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body46.cleanup_crit_edge, %do.body21.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body21.cleanup_crit_edge ], [ -12, %do.body46.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_proc_cell_remove(ptr nocapture noundef readonly %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !199

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm, ptr noundef nonnull @.str.12) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %name = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 28
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  %proc_afs = getelementptr inbounds %struct.afs_net, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %proc_afs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proc_afs, align 4
  %call8 = tail call i32 @remove_proc_subtree(ptr noundef %8, ptr noundef %10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and10 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end7.do.end30_crit_edge, label %do.end21, !prof !199

do.end7.do.end30_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end21:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i32 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i32 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task24, align 8
  %comm25 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %comm25, ptr noundef nonnull @.str.12) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end21, %do.end7.do.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_proc_init(ptr nocapture noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !199

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm, ptr noundef nonnull @.str.16) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  %proc_net = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_net, align 4
  %call.i = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str.17, i16 noundef zeroext 0, ptr noundef %8, ptr noundef %6, i1 noundef zeroext true) #10
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %do.end6.do.body50_crit_edge, label %if.end12

do.end6.do.body50_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body50

if.end12:                                         ; preds = %do.end6
  %call13 = tail call ptr @proc_create_net_data_write(ptr noundef nonnull @.str.18, i16 noundef zeroext 420, ptr noundef nonnull %call.i, ptr noundef nonnull @afs_proc_cells_ops, ptr noundef nonnull @afs_proc_cells_write, i32 noundef 8, ptr noundef null) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.error_tree_crit_edge, label %lor.lhs.false

if.end12.error_tree_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_tree

lor.lhs.false:                                    ; preds = %if.end12
  %call15 = tail call ptr @proc_create_net_single_write(ptr noundef nonnull @.str.19, i16 noundef zeroext 420, ptr noundef nonnull %call.i, ptr noundef nonnull @afs_proc_rootcell_show, ptr noundef nonnull @afs_proc_rootcell_write, ptr noundef null) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %lor.lhs.false.error_tree_crit_edge, label %lor.lhs.false17

lor.lhs.false.error_tree_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_tree

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %call18 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.20, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @afs_proc_servers_ops, i32 noundef 8, ptr noundef null) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %lor.lhs.false17.error_tree_crit_edge, label %lor.lhs.false20

lor.lhs.false17.error_tree_crit_edge:             ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_tree

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.21, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @afs_proc_stats_show, ptr noundef null) #10
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %lor.lhs.false20.error_tree_crit_edge, label %lor.lhs.false23

lor.lhs.false20.error_tree_crit_edge:             ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_tree

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = tail call ptr @proc_create_net_data_write(ptr noundef nonnull @.str.22, i16 noundef zeroext 420, ptr noundef nonnull %call.i, ptr noundef nonnull @afs_proc_sysname_ops, ptr noundef nonnull @afs_proc_sysname_write, i32 noundef 8, ptr noundef null) #10
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %lor.lhs.false23.error_tree_crit_edge, label %if.end27

lor.lhs.false23.error_tree_crit_edge:             ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_tree

if.end27:                                         ; preds = %lor.lhs.false23
  %proc_afs = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 33
  %9 = ptrtoint ptr %proc_afs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %proc_afs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %10 = load i32, ptr @afs_debug, align 4
  %and29 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end27.cleanup.sink.split_crit_edge, !prof !199

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_tree:                                       ; preds = %lor.lhs.false23.error_tree_crit_edge, %lor.lhs.false20.error_tree_crit_edge, %lor.lhs.false17.error_tree_crit_edge, %lor.lhs.false.error_tree_crit_edge, %if.end12.error_tree_crit_edge
  tail call void @proc_remove(ptr noundef nonnull %call.i) #10
  br label %do.body50

do.body50:                                        ; preds = %error_tree, %do.end6.do.body50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %11 = load i32, ptr @afs_debug, align 4
  %and51 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %do.body50.cleanup.sink.split_crit_edge, !prof !199

do.body50.cleanup.sink.split_crit_edge:           ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body50.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.6, %if.end27.cleanup.sink.split_crit_edge ], [ @.str.9, %do.body50.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end27.cleanup.sink.split_crit_edge ], [ -12, %do.body50.cleanup.sink.split_crit_edge ]
  %12 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i82 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i82 to ptr
  %task65 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task65, align 8
  %comm66 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink, ptr noundef %comm66, ptr noundef nonnull @.str.16) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body50.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27.cleanup_crit_edge ], [ -12, %do.body50.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data_write(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_cells_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %5) #10
  %call1 = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %size) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call ptr @strchr(ptr noundef %buf, i32 noundef 32)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.inval_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.inval_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %inval

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %name.0 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %call2, %if.end.do.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %name.0, i32 1
  %7 = ptrtoint ptr %name.0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %name.0, align 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %if.end9 [
    i8 32, label %do.body.do.body_crit_edge
    i8 0, label %do.body.inval_crit_edge
  ]

do.body.inval_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %inval

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end9:                                          ; preds = %do.body
  %call10 = tail call ptr @strchr(ptr noundef %incdec.ptr, i32 noundef 32)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.do.body24_crit_edge, label %if.end9.do.body13_crit_edge

if.end9.do.body13_crit_edge:                      ; preds = %if.end9
  br label %do.body13

if.end9.do.body24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

do.body13:                                        ; preds = %do.body13.do.body13_crit_edge, %if.end9.do.body13_crit_edge
  %args.0 = phi ptr [ %incdec.ptr14, %do.body13.do.body13_crit_edge ], [ %call10, %if.end9.do.body13_crit_edge ]
  %incdec.ptr14 = getelementptr i8, ptr %args.0, i32 1
  %11 = ptrtoint ptr %args.0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %args.0, align 1
  %12 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr14, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %13, label %do.body13.do.body24_crit_edge [
    i8 32, label %do.body13.do.body13_crit_edge
    i8 0, label %do.body13.inval_crit_edge
  ]

do.body13.inval_crit_edge:                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %inval

do.body13.do.body13_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

do.body13.do.body24_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

do.body24:                                        ; preds = %do.body13.do.body24_crit_edge, %if.end9.do.body24_crit_edge
  %args.1 = phi ptr [ null, %if.end9.do.body24_crit_edge ], [ %incdec.ptr14, %do.body13.do.body24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %15 = load i32, ptr @afs_debug, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.body24.do.end36_crit_edge, label %do.end31, !prof !199

do.body24.do.end36_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

do.end31:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %16 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %comm, ptr noundef %buf, ptr noundef %incdec.ptr, ptr noundef %args.1) #13
  br label %do.end36

do.end36:                                         ; preds = %do.end31, %do.body24.do.end36_crit_edge
  %call37 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %do.end36.inval_crit_edge

do.end36.inval_crit_edge:                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %inval

if.then40:                                        ; preds = %do.end36
  %call41 = tail call i32 @strlen(ptr noundef %incdec.ptr) #14
  %call42 = tail call ptr @afs_lookup_cell(ptr noundef %call1.i, ptr noundef %incdec.ptr, i32 noundef %call41, ptr noundef %args.1, i1 noundef zeroext true) #10
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end46

if.end46:                                         ; preds = %if.then40
  %flags = getelementptr inbounds %struct.afs_cell, ptr %call42, i32 0, i32 11
  %call47 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.do.body52_crit_edge, label %if.then49

if.end46.do.body52_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @afs_unuse_cell(ptr noundef %call1.i, ptr noundef %call42, i32 noundef 21) #10
  br label %do.body52

cleanup:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call42 to i32
  br label %do.body52

do.body52:                                        ; preds = %inval, %cleanup, %if.then49, %if.end46.do.body52_crit_edge
  %ret.1 = phi i32 [ %20, %cleanup ], [ -22, %inval ], [ 0, %if.then49 ], [ 0, %if.end46.do.body52_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %21 = load i32, ptr @afs_debug, align 4
  %and53 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.cleanup79_crit_edge, label %do.end64, !prof !199

do.body52.cleanup79_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

do.end64:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i106 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i106 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task67, align 8
  %comm68 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 101
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm68, ptr noundef nonnull @.str.57, i32 noundef %ret.1) #13
  br label %cleanup79

inval:                                            ; preds = %do.end36.inval_crit_edge, %do.body13.inval_crit_edge, %do.body.inval_crit_edge, %if.end.inval_crit_edge
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #13
  br label %do.body52

cleanup79:                                        ; preds = %do.end64, %do.body52.cleanup79_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single_write(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_rootcell_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %1) #10
  %cells_lock = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 14
  tail call void @down_read(ptr noundef %cells_lock) #10
  %ws_cell = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 10
  %2 = ptrtoint ptr %ws_cell to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ws_cell, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.afs_cell, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_read(ptr noundef %cells_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_rootcell_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i, align 8
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %3) #10
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %5)
  %cmp = icmp eq i8 %5, 46
  br i1 %cmp, label %entry.do.body20_crit_edge, label %if.end

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @memchr(ptr noundef %buf, i32 noundef 47, i32 noundef %size) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end4, label %if.end.do.body20_crit_edge

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %size) #14
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.do.body_crit_edge, label %if.then7

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call5, align 1
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.end4.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %7 = load i32, ptr @afs_debug, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.do.end18_crit_edge, label %do.end, !prof !199

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %comm, ptr noundef %buf) #13
  br label %do.end18

do.end18:                                         ; preds = %do.end, %do.body.do.end18_crit_edge
  %call19 = tail call i32 @afs_cell_init(ptr noundef %call1.i, ptr noundef %buf) #10
  br label %do.body20

do.body20:                                        ; preds = %do.end18, %if.end.do.body20_crit_edge, %entry.do.body20_crit_edge
  %ret.0 = phi i32 [ -22, %entry.do.body20_crit_edge ], [ -22, %if.end.do.body20_crit_edge ], [ %call19, %do.end18 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %12 = load i32, ptr @afs_debug, align 4
  %and21 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end41_crit_edge, label %do.end32, !prof !199

do.body20.do.end41_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

do.end32:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i49 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i49 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task35, align 8
  %comm36 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %comm36, ptr noundef nonnull @.str.67, i32 noundef %ret.0) #13
  br label %do.end41

do.end41:                                         ; preds = %do.end32, %do.body20.do.end41_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_stats_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %1) #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.78) #10
  %n_lookup = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_lookup, i32 noundef 4) #10
  %2 = ptrtoint ptr %n_lookup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %n_lookup, align 4
  %n_reval = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 37
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_reval, i32 noundef 4) #10
  %4 = ptrtoint ptr %n_reval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %n_reval, align 4
  %n_inval = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 38
  %call.i.i29 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_inval, i32 noundef 4) #10
  %6 = ptrtoint ptr %n_inval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %n_inval, align 4
  %n_relpg = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 39
  %call.i.i30 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_relpg, i32 noundef 4) #10
  %8 = ptrtoint ptr %n_relpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %n_relpg, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.79, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #10
  %n_read_dir = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 40
  %call.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_read_dir, i32 noundef 4) #10
  %10 = ptrtoint ptr %n_read_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %n_read_dir, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.80, i32 noundef %11) #10
  %n_dir_cr = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 41
  %call.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_dir_cr, i32 noundef 4) #10
  %12 = ptrtoint ptr %n_dir_cr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %n_dir_cr, align 4
  %n_dir_rm = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 42
  %call.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_dir_rm, i32 noundef 4) #10
  %14 = ptrtoint ptr %n_dir_rm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %n_dir_rm, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.81, i32 noundef %13, i32 noundef %15) #10
  %n_fetches = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 46
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_fetches, i32 noundef 4) #10
  %16 = ptrtoint ptr %n_fetches to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %n_fetches, align 4
  %n_fetch_bytes = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 45
  %call.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_fetch_bytes, i32 noundef 4) #10
  %18 = ptrtoint ptr %n_fetch_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %n_fetch_bytes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.82, i32 noundef %17, i32 noundef %19) #10
  %n_stores = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 43
  %call.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_stores, i32 noundef 4) #10
  %20 = ptrtoint ptr %n_stores to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %n_stores, align 4
  %n_store_bytes = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 44
  %call.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_store_bytes, i32 noundef 4) #10
  %22 = ptrtoint ptr %n_store_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %n_store_bytes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83, i32 noundef %21, i32 noundef %23) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_sysname_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 72) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %usage = getelementptr inbounds %struct.afs_sysnames, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  %7 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %usage, align 8
  %8 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %p, align 4
  %call2126 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.84) #10
  %tobool3.not127 = icmp eq ptr %call2126, null
  br i1 %tobool3.not127, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %nr = getelementptr inbounds %struct.afs_sysnames, ptr %call7.i.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call2128 = phi ptr [ %call2126, %while.body.lr.ph ], [ %call2, %while.cond.backedge.while.body_crit_edge ]
  %call4 = call i32 @strlen(ptr noundef nonnull %call2128) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %while.body.while.cond.backedge_crit_edge, label %if.end6

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end6:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call4)
  %cmp7 = icmp sgt i32 %call4, 255
  br i1 %cmp7, label %if.end6.out_crit_edge, label %if.end9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call4)
  %cmp10 = icmp sgt i32 %call4, 3
  br i1 %cmp10, label %land.lhs.true, label %if.end9.if.end33_crit_edge

if.end9.if.end33_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end9
  %sub11 = add nsw i32 %call4, -4
  %arrayidx = getelementptr i8, ptr %call2128, i32 %sub11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %10)
  %cmp12 = icmp eq i8 %10, 64
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true14:                                  ; preds = %land.lhs.true
  %sub15 = add nsw i32 %call4, -3
  %arrayidx16 = getelementptr i8, ptr %call2128, i32 %sub15
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %12)
  %cmp18 = icmp eq i8 %12, 115
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true14.if.end33_crit_edge

land.lhs.true14.if.end33_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true20:                                  ; preds = %land.lhs.true14
  %sub21 = add nsw i32 %call4, -2
  %arrayidx22 = getelementptr i8, ptr %call2128, i32 %sub21
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 121, i8 %14)
  %cmp24 = icmp eq i8 %14, 121
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true20.if.end33_crit_edge

land.lhs.true20.if.end33_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true26:                                  ; preds = %land.lhs.true20
  %sub27 = add nsw i32 %call4, -1
  %arrayidx28 = getelementptr i8, ptr %call2128, i32 %sub27
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %16)
  %cmp30 = icmp eq i8 %16, 115
  br i1 %cmp30, label %land.lhs.true26.out_crit_edge, label %land.lhs.true26.if.end33_crit_edge

land.lhs.true26.if.end33_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true26.out_crit_edge:                    ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end33:                                         ; preds = %land.lhs.true26.if.end33_crit_edge, %land.lhs.true20.if.end33_crit_edge, %land.lhs.true14.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.end9.if.end33_crit_edge
  %17 = ptrtoint ptr %call2128 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call2128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %18)
  %cmp36 = icmp eq i8 %18, 46
  br i1 %cmp36, label %land.lhs.true38, label %if.end33.if.end49_crit_edge

if.end33.if.end49_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true38:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp39 = icmp slt i32 %call4, 2
  br i1 %cmp39, label %land.lhs.true38.out_crit_edge, label %lor.lhs.false

land.lhs.true38.out_crit_edge:                    ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp41 = icmp eq i32 %call4, 2
  br i1 %cmp41, label %land.lhs.true43, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true43:                                  ; preds = %lor.lhs.false
  %arrayidx44 = getelementptr i8, ptr %call2128, i32 1
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %20)
  %cmp46 = icmp eq i8 %20, 46
  br i1 %cmp46, label %land.lhs.true43.out_crit_edge, label %land.lhs.true43.if.end49_crit_edge

land.lhs.true43.if.end49_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true43.out_crit_edge:                    ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end49:                                         ; preds = %land.lhs.true43.if.end49_crit_edge, %lor.lhs.false.if.end49_crit_edge, %if.end33.if.end49_crit_edge
  %call50 = call ptr @memchr(ptr noundef nonnull %call2128, i32 noundef 47, i32 noundef %call4) #14
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end53, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end53:                                         ; preds = %if.end49
  %21 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %22)
  %cmp55 = icmp ugt i16 %22, 15
  br i1 %cmp55, label %if.end53.out_crit_edge, label %if.end58

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end58:                                         ; preds = %if.end53
  %call59 = call i32 @strcmp(ptr noundef nonnull %call2128, ptr noundef nonnull @afs_init_sysname) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.end58.if.end67_crit_edge, label %if.else

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.else:                                          ; preds = %if.end58
  %add = add nsw i32 %call4, 1
  %call63 = call ptr @kmemdup(ptr noundef nonnull %call2128, i32 noundef %add, i32 noundef 3264) #10
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.else.out_crit_edge, label %if.else.if.end67_crit_edge

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end67:                                         ; preds = %if.else.if.end67_crit_edge, %if.end58.if.end67_crit_edge
  %sub.0 = phi ptr [ %call63, %if.else.if.end67_crit_edge ], [ @afs_init_sysname, %if.end58.if.end67_crit_edge ]
  %23 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nr, align 4
  %idxprom = zext i16 %24 to i32
  %arrayidx69 = getelementptr [16 x ptr], ptr %call7.i.i, i32 0, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sub.0, ptr %arrayidx69, align 4
  %26 = load i16, ptr %nr, align 4
  %inc = add i16 %26, 1
  store i16 %inc, ptr %nr, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end67, %while.body.while.cond.backedge_crit_edge
  %call2 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.84) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end.while.end_crit_edge
  %nr71 = getelementptr inbounds %struct.afs_sysnames, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %nr71 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nr71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp73 = icmp eq i16 %28, 0
  br i1 %cmp73, label %if.then75, label %while.end.if.end80_crit_edge

while.end.if.end80_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then75:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %blank = getelementptr inbounds %struct.afs_sysnames, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %blank, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %nr71 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %nr71, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %while.end.if.end80_crit_edge
  %sysnames_lock = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 35
  call void @_raw_write_lock(ptr noundef %sysnames_lock) #10
  %sysnames81 = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 34
  %31 = ptrtoint ptr %sysnames81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sysnames81, align 4
  store ptr %call7.i.i, ptr %sysnames81, align 4
  call void @_raw_write_unlock(ptr noundef %sysnames_lock) #10
  br label %out

out:                                              ; preds = %if.end80, %if.else.out_crit_edge, %if.end53.out_crit_edge, %if.end49.out_crit_edge, %land.lhs.true43.out_crit_edge, %land.lhs.true38.out_crit_edge, %land.lhs.true26.out_crit_edge, %if.end6.out_crit_edge
  %kill.0 = phi ptr [ %32, %if.end80 ], [ %call7.i.i, %if.end53.out_crit_edge ], [ %call7.i.i, %if.else.out_crit_edge ], [ %call7.i.i, %if.end6.out_crit_edge ], [ %call7.i.i, %if.end49.out_crit_edge ], [ %call7.i.i, %land.lhs.true38.out_crit_edge ], [ %call7.i.i, %land.lhs.true43.out_crit_edge ], [ %call7.i.i, %land.lhs.true26.out_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.end80 ], [ -22, %land.lhs.true26.out_crit_edge ], [ -22, %land.lhs.true43.out_crit_edge ], [ -22, %land.lhs.true38.out_crit_edge ], [ -22, %if.end49.out_crit_edge ], [ -36, %if.end6.out_crit_edge ], [ -12, %if.else.out_crit_edge ], [ -27, %if.end53.out_crit_edge ]
  call void @afs_put_sysnames(ptr noundef %kill.0)
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_proc_cleanup(ptr nocapture noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_afs = getelementptr inbounds %struct.afs_net, ptr %net, i32 0, i32 33
  %0 = ptrtoint ptr %proc_afs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_afs, align 4
  tail call void @proc_remove(ptr noundef %1) #10
  %2 = ptrtoint ptr %proc_afs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %proc_afs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_cell_vlservers_start(ptr nocapture noundef readonly %m, ptr nocapture noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_private.i, align 4
  %8 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %_pos, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vl_servers = getelementptr inbounds %struct.afs_cell, ptr %7, i32 0, i32 26
  %14 = ptrtoint ptr %vl_servers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %vl_servers, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @afs_proc_cell_vlservers_start.__warned, align 1
  br i1 %.b32, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_proc_cell_vlservers_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 330, ptr noundef nonnull @.str.27) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %vllist11 = getelementptr inbounds %struct.afs_vl_seq_net_private, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %vllist11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %vllist11, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %if.end13.thread, label %if.end13

if.end13.thread:                                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %_pos to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %_pos, align 8
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp14 = icmp eq i64 %9, 0
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %sub = add nsw i64 %9, -1
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp17.not = icmp ult i64 %sub, %conv
  br i1 %cmp17.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom = trunc i64 %sub to i32
  %arrayidx = getelementptr %struct.afs_vlserver_list, ptr %15, i32 0, i32 8, i32 %idxprom
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end13.thread
  %retval.0 = phi ptr [ %arrayidx, %if.end20 ], [ inttoptr (i32 1 to ptr), %if.end13.cleanup_crit_edge ], [ null, %if.end16.cleanup_crit_edge ], [ inttoptr (i32 1 to ptr), %if.end13.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_proc_cell_vlservers_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !202
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @afs_proc_cell_vlservers_next(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %_pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %vllist1 = getelementptr inbounds %struct.afs_vl_seq_net_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vllist1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vllist1, align 4
  %4 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %_pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %_pos, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp.not = icmp slt i64 %5, %conv
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom = trunc i64 %5 to i32
  %arrayidx = getelementptr %struct.afs_vlserver_list, ptr %3, i32 0, i32 8, i32 %idxprom
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_cell_vlservers_show(ptr noundef %m, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %vllist1 = getelementptr inbounds %struct.afs_vl_seq_net_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vllist1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vllist1, align 4
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.cond.end8_crit_edge, label %cond.true4

if.then.cond.end8_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end8

cond.true4:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %source = getelementptr inbounds %struct.afs_vlserver_list, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load = load i16, ptr %source, align 1
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  %arrayidx = getelementptr [7 x ptr], ptr @dns_record_sources, i32 0, i32 %bf.cast
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %bf.clear = and i16 %bf.load, 255
  %bf.cast6 = zext i16 %bf.clear to i32
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true4, %if.then.cond.end8_crit_edge
  %7 = phi ptr [ %6, %cond.true4 ], [ @.str.36, %if.then.cond.end8_crit_edge ]
  %cond9 = phi i32 [ %bf.cast6, %cond.true4 ], [ 0, %if.then.cond.end8_crit_edge ]
  %arrayidx10 = getelementptr [9 x ptr], ptr @dns_lookup_statuses, i32 0, i32 %cond9
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, ptr noundef %7, ptr noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.afs_vlserver_entry, ptr %v, i32 0, i32 3
  %10 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %server, align 4
  %addresses = getelementptr inbounds %struct.afs_vlserver, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %addresses, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end.do.end20_crit_edge

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

land.lhs.true:                                    ; preds = %if.end
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b105 = load i1, ptr @afs_proc_cell_vlservers_show.__warned, align 1
  br i1 %.b105, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_proc_cell_vlservers_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 300, ptr noundef nonnull @.str.27) #10
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %if.end.do.end20_crit_edge
  %name = getelementptr inbounds %struct.afs_vlserver, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %v, align 4
  %conv = zext i16 %15 to i32
  %weight = getelementptr inbounds %struct.afs_vlserver_entry, ptr %v, i32 0, i32 1
  %16 = ptrtoint ptr %weight to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %weight, align 2
  %conv22 = zext i16 %17 to i32
  %tobool23.not = icmp eq ptr %13, null
  %source25 = getelementptr inbounds %struct.afs_addr_list, ptr %13, i32 0, i32 7
  %source30 = getelementptr inbounds %struct.afs_vlserver_entry, ptr %v, i32 0, i32 2
  %cond35.in.in.in = select i1 %tobool23.not, ptr %source30, ptr %source25
  %18 = ptrtoint ptr %cond35.in.in.in to i32
  call void @__asan_load2_noabort(i32 %18)
  %cond35.in.in = load i16, ptr %cond35.in.in.in, align 4
  %cond35.in = lshr i16 %cond35.in.in, 8
  %cond35 = zext i16 %cond35.in to i32
  %arrayidx36 = getelementptr [7 x ptr], ptr @dns_record_sources, i32 0, i32 %cond35
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx36, align 4
  %cond49.in = and i16 %cond35.in.in, 255
  %cond49 = zext i16 %cond49.in to i32
  %arrayidx50 = getelementptr [9 x ptr], ptr @dns_lookup_statuses, i32 0, i32 %cond49
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx50, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %conv, i32 noundef %conv22, ptr noundef %20, ptr noundef %22) #10
  br i1 %tobool23.not, label %do.end20.if.end61_crit_edge, label %for.cond.preheader

do.end20.if.end61_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

for.cond.preheader:                               ; preds = %do.end20
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %13, i32 0, i32 4
  %23 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_addrs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp54109.not = icmp eq i8 %24, 0
  br i1 %cmp54109.not, label %for.cond.preheader.if.end61_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end61_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %preferred = getelementptr inbounds %struct.afs_addr_list, ptr %13, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %preferred, align 2
  %conv56 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0110, i32 %conv56)
  %cmp57 = icmp eq i32 %i.0110, %conv56
  %cond59 = select i1 %cmp57, i32 62, i32 45
  %transport = getelementptr %struct.afs_addr_list, ptr %13, i32 0, i32 10, i32 %i.0110, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %cond59, ptr noundef %transport) #10
  %inc = add nuw nsw i32 %i.0110, 1
  %27 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_addrs, align 1
  %conv53 = zext i8 %28 to i32
  %cmp54 = icmp ult i32 %inc, %conv53
  br i1 %cmp54, label %for.body.for.body_crit_edge, label %for.body.if.end61_crit_edge

for.body.if.end61_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end61:                                         ; preds = %for.body.if.end61_crit_edge, %for.cond.preheader.if.end61_crit_edge, %do.end20.if.end61_crit_edge
  %flags = getelementptr inbounds %struct.afs_vlserver, ptr %11, i32 0, i32 2
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %rtt = getelementptr inbounds %struct.afs_vlserver, ptr %11, i32 0, i32 5
  %31 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rtt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %30, i32 noundef %32) #10
  %flags62 = getelementptr inbounds %struct.afs_vlserver, ptr %11, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %flags62 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags62, align 2
  %conv63 = zext i16 %34 to i32
  %error = getelementptr inbounds %struct.afs_vlserver, ptr %11, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %error, align 4
  %conv65 = sext i16 %36 to i32
  %abort_code = getelementptr inbounds %struct.afs_vlserver, ptr %11, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %abort_code to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %abort_code, align 4
  %probe_outstanding = getelementptr inbounds %struct.afs_vlserver, ptr %11, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %probe_outstanding, i32 noundef 4) #10
  %39 = ptrtoint ptr %probe_outstanding to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %probe_outstanding, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %38, i32 noundef %40) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %cond.end8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_cell_volumes_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %proc_volumes = getelementptr inbounds %struct.afs_cell, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %_pos, align 8
  %call2 = tail call ptr @seq_hlist_start_head_rcu(ptr noundef %proc_volumes, i64 noundef %11) #10
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_proc_cell_volumes_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !202
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_cell_volumes_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %proc_volumes = getelementptr inbounds %struct.afs_cell, ptr %5, i32 0, i32 18
  %call2 = tail call ptr @seq_hlist_next_rcu(ptr noundef %v, ptr noundef %proc_volumes, ptr noundef %_pos) #10
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_cell_volumes_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.51) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %v, i32 -40
  %usage = getelementptr i8, ptr %v, i32 -32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usage, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  %type = getelementptr i8, ptr %v, i32 120
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [3 x [3 x i8]], ptr @afs_vol_types, i32 0, i32 %idxprom
  %name = getelementptr i8, ptr %v, i32 123
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, i32 noundef %1, i64 noundef %3, ptr noundef %arrayidx, ptr noundef %name) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_start_head_rcu(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_hlist_next_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_cells_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %4 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1.i2 = tail call fastcc ptr @afs_net(ptr noundef %7) #10
  %proc_cells = getelementptr inbounds %struct.afs_net, ptr %call1.i2, i32 0, i32 17
  %8 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %_pos, align 8
  %call1 = tail call ptr @seq_hlist_start_head_rcu(ptr noundef %proc_cells, i64 noundef %9) #10
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_proc_cells_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !202
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_cells_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %3) #10
  %proc_cells = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 17
  %call1 = tail call ptr @seq_hlist_next_rcu(ptr noundef %v, ptr noundef %proc_cells, ptr noundef %pos) #10
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_cells_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.54) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vl_servers = getelementptr i8, ptr %v, i32 376
  %0 = ptrtoint ptr %vl_servers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vl_servers, align 8
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end10_crit_edge

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @afs_proc_cells_show.__warned, align 1
  br i1 %.b25, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_proc_cells_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 46, ptr noundef nonnull @.str.27) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %ref = getelementptr i8, ptr %v, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #10
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref, align 4
  %active = getelementptr i8, ptr %v, i32 28
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #10
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %active, align 4
  %dns_expiry = getelementptr i8, ptr %v, i32 8
  %6 = ptrtoint ptr %dns_expiry to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dns_expiry, align 8
  %call14 = tail call i64 @ktime_get_real_seconds() #10
  %sub = sub i64 %7, %call14
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %do.end10.cond.end_crit_edge, label %cond.true

do.end10.cond.end_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %nr_servers = getelementptr inbounds %struct.afs_vlserver_list, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %nr_servers to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_servers, align 4
  %conv = zext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end10.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %do.end10.cond.end_crit_edge ]
  %state = getelementptr i8, ptr %v, i32 36
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %name = getelementptr i8, ptr %v, i32 384
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %3, i32 noundef %5, i64 noundef %sub, i32 noundef %cond, i32 noundef %11, ptr noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @afs_net(ptr noundef %net) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_net_id to i32))
  %0 = load i32, ptr @afs_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 45, ptr noundef nonnull @.str.27) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #10
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !202
  %9 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_lookup_cell(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_unuse_cell(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_cell_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_servers_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %4 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1.i2 = tail call fastcc ptr @afs_net(ptr noundef %7) #10
  %fs_proc = getelementptr inbounds %struct.afs_net, ptr %call1.i2, i32 0, i32 22
  %8 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %_pos, align 8
  %call1 = tail call ptr @seq_hlist_start_head_rcu(ptr noundef %fs_proc, i64 noundef %9) #10
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_proc_servers_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !202
  %0 = tail call i32 @llvm.read_register.i32(metadata !187) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_servers_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %3) #10
  %fs_proc = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 22
  %call1 = tail call ptr @seq_hlist_next_rcu(ptr noundef %v, ptr noundef %fs_proc, ptr noundef %_pos) #10
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_servers_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.70) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %addresses = getelementptr i8, ptr %v, i32 -52
  %0 = ptrtoint ptr %addresses to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %addresses, align 8
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end10_crit_edge

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true5

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @afs_proc_servers_show.__warned, align 1
  br i1 %.b45, label %land.lhs.true5.do.end10_crit_edge, label %if.then7

land.lhs.true5.do.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_proc_servers_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 388, ptr noundef nonnull @.str.27) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %land.lhs.true5.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %2 = getelementptr i8, ptr %v, i32 -68
  %ref = getelementptr i8, ptr %v, i32 72
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #10
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ref, align 4
  %active = getelementptr i8, ptr %v, i32 76
  %call.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #10
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %active, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef %2, i32 noundef %4, i32 noundef %6) #10
  %flags = getelementptr i8, ptr %v, i32 68
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %rtt = getelementptr i8, ptr %v, i32 84
  %9 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rtt, align 8
  %cb_s_break = getelementptr i8, ptr %v, i32 136
  %11 = ptrtoint ptr %cb_s_break to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb_s_break, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %8, i32 noundef %10, i32 noundef %12) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %probed_at = getelementptr i8, ptr %v, i32 140
  %14 = ptrtoint ptr %probed_at to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %probed_at, align 8
  %sub = sub i32 %13, %15
  %div = sdiv i32 %sub, 100
  %probe_outstanding = getelementptr i8, ptr %v, i32 196
  %call.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef %probe_outstanding, i32 noundef 4) #10
  %16 = ptrtoint ptr %probe_outstanding to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %probe_outstanding, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, i32 noundef %div, i32 noundef %17) #10
  %version = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version, align 4
  %responded = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %responded to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %responded, align 4
  %failed = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %failed, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, i32 noundef %19, i32 noundef %21, i32 noundef %23) #10
  %nr_addrs = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nr_addrs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp1549.not = icmp eq i8 %25, 0
  br i1 %cmp1549.not, label %do.end10.cleanup_crit_edge, label %for.body.lr.ph

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end10
  %preferred = getelementptr inbounds %struct.afs_addr_list, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %transport = getelementptr %struct.afs_addr_list, ptr %1, i32 0, i32 10, i32 %i.050, i32 4
  %26 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %preferred, align 2
  %conv17 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.050, i32 %conv17)
  %cmp18 = icmp eq i32 %i.050, %conv17
  %cond = select i1 %cmp18, ptr @.str.76, ptr @.str.77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef %i.050, ptr noundef %transport, ptr noundef nonnull %cond) #10
  %inc = add nuw nsw i32 %i.050, 1
  %28 = ptrtoint ptr %nr_addrs to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_addrs, align 1
  %conv = zext i8 %29 to i32
  %cmp15 = icmp ult i32 %inc, %conv
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_sysname_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %3) #10
  %sysnames_lock = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 35
  tail call void @_raw_read_lock(ptr noundef %sysnames_lock) #10
  %sysnames = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 34
  %4 = ptrtoint ptr %sysnames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysnames, align 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %nr = getelementptr inbounds %struct.afs_sysnames, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr, align 4
  %conv = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp.not = icmp slt i64 %7, %conv
  %10 = trunc i64 %7 to i32
  %conv2 = add i32 %10, 1
  %11 = inttoptr i32 %conv2 to ptr
  %retval.0 = select i1 %cmp.not, ptr %11, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_proc_sysname_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %3) #10
  %sysnames_lock = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 35
  tail call void @_raw_read_unlock(ptr noundef %sysnames_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afs_proc_sysname_next(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %3) #10
  %sysnames = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 34
  %4 = ptrtoint ptr %sysnames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysnames, align 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %add = add i64 %7, 1
  store i64 %add, ptr %pos, align 8
  %nr = getelementptr inbounds %struct.afs_sysnames, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr, align 4
  %conv = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp.not = icmp slt i64 %add, %conv
  %10 = trunc i64 %7 to i32
  %conv3 = add i32 %10, 2
  %11 = inttoptr i32 %conv3 to ptr
  %retval.0 = select i1 %cmp.not, ptr %11, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_proc_sysname_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1.i = tail call fastcc ptr @afs_net(ptr noundef %3) #10
  %sysnames1 = getelementptr inbounds %struct.afs_net, ptr %call1.i, i32 0, i32 34
  %4 = ptrtoint ptr %sysnames1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysnames1, align 4
  %6 = ptrtoint ptr %v to i32
  %sub = add i32 %6, -1
  %nr = getelementptr inbounds %struct.afs_sysnames, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nr, align 4
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp ult i32 %sub, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [16 x ptr], ptr %5, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef %10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !49, !51, !53, !54, !56, !57, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !122, !124, !126, !128, !129, !130, !131, !133, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !148, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185}
!llvm.named.register.sp = !{!187}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/proc.c", i32 617, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_proc_cell_setup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_proc_cell_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/proc.c", i32 623, i32 28}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/afs/proc.c", i32 627, i32 28}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/proc.c", i32 633, i32 2}
!12 = !{ptr @afs_proc_cell_setup._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_proc_cell_setup._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/proc.c", i32 639, i32 2}
!16 = !{ptr @afs_proc_cell_setup._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_proc_cell_setup._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/proc.c", i32 650, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @afs_proc_cell_remove._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @afs_proc_cell_remove._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/afs/proc.c", i32 652, i32 2}
!25 = !{ptr @afs_proc_cell_remove._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @afs_proc_cell_remove._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/afs/proc.c", i32 662, i32 2}
!29 = !{ptr @afs_proc_init._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @afs_proc_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/afs/proc.c", i32 664, i32 31}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/afs/proc.c", i32 668, i32 34}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/afs/proc.c", i32 673, i32 36}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/afs/proc.c", i32 677, i32 7}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/afs/proc.c", i32 679, i32 30}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/afs/proc.c", i32 680, i32 34}
!43 = !{ptr @afs_proc_init._entry.23, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../fs/afs/proc.c", i32 688, i32 2}
!45 = !{ptr @afs_proc_init._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @afs_proc_init._entry.25, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../fs/afs/proc.c", i32 694, i32 2}
!48 = !{ptr @afs_proc_init._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @afs_proc_cell_vlservers_ops, !50, !"afs_proc_cell_vlservers_ops", i1 false, i1 false}
!50 = !{!"../fs/afs/proc.c", i32 366, i32 36}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../fs/afs/proc.c", i32 330, i32 11}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/afs/proc.c", i32 292, i32 17}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../fs/afs/proc.c", i32 300, i32 10}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/afs/proc.c", i32 302, i32 16}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/afs/proc.c", i32 308, i32 18}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/afs/proc.c", i32 312, i32 16}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/afs/proc.c", i32 313, i32 16}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/afs/proc.c", i32 258, i32 29}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/afs/proc.c", i32 259, i32 29}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/proc.c", i32 260, i32 29}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/afs/proc.c", i32 261, i32 32}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/proc.c", i32 262, i32 30}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/afs/proc.c", i32 263, i32 27}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/afs/proc.c", i32 264, i32 29}
!87 = !{ptr @dns_record_sources, !88, !"dns_record_sources", i1 false, i1 false}
!88 = !{!"../fs/afs/proc.c", i32 257, i32 26}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/afs/proc.c", i32 268, i32 27}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/afs/proc.c", i32 269, i32 23}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/afs/proc.c", i32 270, i32 31}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/afs/proc.c", i32 271, i32 22}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/afs/proc.c", i32 272, i32 31}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/afs/proc.c", i32 273, i32 35}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/afs/proc.c", i32 274, i32 34}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/afs/proc.c", i32 275, i32 32}
!105 = !{ptr @dns_lookup_statuses, !106, !"dns_lookup_statuses", i1 false, i1 false}
!106 = !{!"../fs/afs/proc.c", i32 267, i32 26}
!107 = !{ptr @afs_proc_cell_volumes_ops, !108, !"afs_proc_cell_volumes_ops", i1 false, i1 false}
!108 = !{!"../fs/afs/proc.c", i32 250, i32 36}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/afs/proc.c", i32 215, i32 15}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/afs/proc.c", i32 219, i32 16}
!113 = !{ptr @afs_vol_types, !114, !"afs_vol_types", i1 false, i1 false}
!114 = !{!"../fs/afs/proc.c", i32 200, i32 19}
!115 = !{ptr @afs_proc_cells_ops, !116, !"afs_proc_cells_ops", i1 false, i1 false}
!116 = !{!"../fs/afs/proc.c", i32 77, i32 36}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!119 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/afs/proc.c", i32 41, i32 15}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../fs/afs/proc.c", i32 46, i32 11}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/afs/proc.c", i32 49, i32 16}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/afs/proc.c", i32 120, i32 2}
!128 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @afs_proc_cells_write._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @afs_proc_cells_write._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/afs/proc.c", i32 122, i32 18}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/afs/proc.c", i32 140, i32 2}
!135 = !{ptr @afs_proc_cells_write._entry.59, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @afs_proc_cells_write._entry_ptr.61, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/afs/proc.c", i32 145, i32 2}
!139 = !{ptr @afs_proc_cells_write._entry.62, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @afs_proc_cells_write._entry_ptr.64, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/afs/proc.c", i32 161, i32 17}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/afs/proc.c", i32 191, i32 2}
!145 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @afs_proc_rootcell_write._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @afs_proc_rootcell_write._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @afs_proc_rootcell_write._entry.68, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../fs/afs/proc.c", i32 196, i32 2}
!150 = !{ptr @afs_proc_rootcell_write._entry_ptr.69, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @afs_proc_servers_ops, !152, !"afs_proc_servers_ops", i1 false, i1 false}
!152 = !{!"../fs/afs/proc.c", i32 425, i32 36}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/afs/proc.c", i32 383, i32 15}
!155 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!156 = !{!"../fs/afs/proc.c", i32 388, i32 10}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/afs/proc.c", i32 389, i32 16}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/afs/proc.c", i32 393, i32 16}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/afs/proc.c", i32 395, i32 16}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/afs/proc.c", i32 398, i32 16}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/afs/proc.c", i32 401, i32 17}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/afs/proc.c", i32 403, i32 31}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/afs/proc.c", i32 403, i32 37}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/afs/proc.c", i32 585, i32 14}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/afs/proc.c", i32 587, i32 16}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/afs/proc.c", i32 593, i32 16}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/afs/proc.c", i32 596, i32 16}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/afs/proc.c", i32 600, i32 16}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/afs/proc.c", i32 603, i32 16}
!183 = !{ptr @afs_proc_sysname_ops, !184, !"afs_proc_sysname_ops", i1 false, i1 false}
!184 = !{!"../fs/afs/proc.c", i32 480, i32 36}
!185 = !{ptr @.str.84, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/afs/proc.c", i32 505, i32 25}
!187 = !{!"sp"}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{i64 2148684804}
!198 = !{i64 2148599244, i64 2148599276, i64 2148599305, i64 2148599339, i64 2148599370, i64 2148599393}
!199 = !{!"branch_weights", i32 2000, i32 1}
!200 = !{i64 2149882577}
!201 = !{i64 2149932120}
!202 = !{i64 2149932386}
