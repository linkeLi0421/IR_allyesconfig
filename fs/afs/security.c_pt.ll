; ModuleID = '/llk/IR_all_yes/fs/afs/security.c_pt.bc'
source_filename = "../fs/afs/security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_type = type opaque
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.afs_cell = type { %union.anon.8, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.hlist_node, i64, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i16, i32, i32, %struct.rb_root, %struct.hlist_head, %struct.seqlock_t, %struct.rb_root, %struct.seqlock_t, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.rwlock_t, ptr, i8, ptr }
%union.anon.8 = type { %struct.rb_node }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.6, ptr }
%union.anon = type { %struct.rb_node }
%union.anon.2 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.6 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
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
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.afs_permits = type { %struct.callback_head, %struct.hlist_node, i32, %struct.refcount_struct, i16, i8, [0 x %struct.afs_permit] }
%struct.afs_permit = type { ptr, i32 }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.150, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.151, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.152, ptr, %struct.address_space, %struct.list_head, %union.anon.153, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.150 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.151 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.152 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.153 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.afs_volume = type { %union.anon.149, %struct.atomic_t, i64, ptr, %struct.rb_node, %struct.hlist_node, ptr, i32, ptr, ptr, %struct.rwlock_t, i32, i32, %struct.rwlock_t, i8, i8, i8, [65 x i8] }
%union.anon.149 = type { i64 }

@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_request_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s({%x})\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_request_key\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/afs/security.c\00", [46 x i8] zeroinitializer }, align 32
@afs_request_key._entry_ptr = internal global ptr @afs_request_key._entry, section ".printk_index", align 4
@afs_request_key._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%-6.6s]     key %s\0A\00", [43 x i8] zeroinitializer }, align 32
@afs_request_key._entry_ptr.5 = internal global ptr @afs_request_key._entry.3, section ".printk_index", align 4
@key_type_rxrpc = external dso_local global %struct.key_type, align 1
@afs_request_key._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@afs_request_key._entry_ptr.8 = internal global ptr @afs_request_key._entry.6, section ".printk_index", align 4
@afs_request_key._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = {%x} [anon]\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_request_key._entry_ptr.11 = internal global ptr @afs_request_key._entry.9, section ".printk_index", align 4
@afs_request_key._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = {%x} [auth]\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_request_key._entry_ptr.14 = internal global ptr @afs_request_key._entry.12, section ".printk_index", align 4
@afs_request_key_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_request_key_rcu\00", [44 x i8] zeroinitializer }, align 32
@afs_request_key_rcu._entry_ptr = internal global ptr @afs_request_key_rcu._entry, section ".printk_index", align 4
@afs_request_key_rcu._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.15, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_request_key_rcu._entry_ptr.17 = internal global ptr @afs_request_key_rcu._entry.16, section ".printk_index", align 4
@afs_request_key_rcu._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.15, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_request_key_rcu._entry_ptr.19 = internal global ptr @afs_request_key_rcu._entry.18, section ".printk_index", align 4
@afs_request_key_rcu._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.15, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_request_key_rcu._entry_ptr.21 = internal global ptr @afs_request_key_rcu._entry.20, section ".printk_index", align 4
@afs_request_key_rcu._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_request_key_rcu._entry_ptr.23 = internal global ptr @afs_request_key_rcu._entry.22, section ".printk_index", align 4
@afs_permits_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.56, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@afs_clear_permits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@afs_cache_permit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%x,%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_cache_permit\00", [47 x i8] zeroinitializer }, align 32
@afs_cache_permit._entry_ptr = internal global ptr @afs_cache_permit._entry, section ".printk_index", align 4
@afs_cache_permit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@afs_permits_cache = internal global { [1024 x %struct.hlist_head], [1024 x i8] } zeroinitializer, align 32
@afs_check_permit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s({%llx:%llu},%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_check_permit\00", [47 x i8] zeroinitializer }, align 32
@afs_check_permit._entry_ptr = internal global ptr @afs_check_permit._entry, section ".printk_index", align 4
@afs_check_permit._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s]     anon\0A\00", [45 x i8] zeroinitializer }, align 32
@afs_check_permit._entry_ptr.32 = internal global ptr @afs_check_permit._entry.30, section ".printk_index", align 4
@afs_check_permit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_check_permit._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     no valid permit\0A\00", [34 x i8] zeroinitializer }, align 32
@afs_check_permit._entry_ptr.35 = internal global ptr @afs_check_permit._entry.33, section ".printk_index", align 4
@afs_check_permit._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_check_permit._entry_ptr.38 = internal global ptr @afs_check_permit._entry.36, section ".printk_index", align 4
@afs_check_permit._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s] <== %s() = 0 [access %x]\0A\00", [61 x i8] zeroinitializer }, align 32
@afs_check_permit._entry_ptr.41 = internal global ptr @afs_check_permit._entry.39, section ".printk_index", align 4
@afs_permission._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%-6.6s] ==> %s({{%llx:%llu},%lx},%x,)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_permission\00", [17 x i8] zeroinitializer }, align 32
@afs_permission._entry_ptr = internal global ptr @afs_permission._entry, section ".printk_index", align 4
@afs_permission._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] <== %s() = %ld [key]\0A\00", [33 x i8] zeroinitializer }, align 32
@afs_permission._entry_ptr.46 = internal global ptr @afs_permission._entry.44, section ".printk_index", align 4
@afs_permission._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s]     REQ %x ACC %x on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_permission._entry_ptr.49 = internal global ptr @afs_permission._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@afs_permission._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.43, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_permission._entry_ptr.53 = internal global ptr @afs_permission._entry.52, section ".printk_index", align 4
@afs_permission._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.43, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_permission._entry_ptr.55 = internal global ptr @afs_permission._entry.54, section ".printk_index", align 4
@afs_clean_up_permit_cache.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"afs_permits_lock\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@afs_check_permit_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.60, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"afs_check_permit_rcu\00", [43 x i8] zeroinitializer }, align 32
@afs_check_permit_rcu._entry_ptr = internal global ptr @afs_check_permit_rcu._entry, section ".printk_index", align 4
@afs_check_permit_rcu._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = t [anon %x]\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_check_permit_rcu._entry_ptr.63 = internal global ptr @afs_check_permit_rcu._entry.61, section ".printk_index", align 4
@afs_check_permit_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_check_permit_rcu._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] <== %s() = %u [perm %x]\0A\00", [62 x i8] zeroinitializer }, align 32
@afs_check_permit_rcu._entry_ptr.66 = internal global ptr @afs_check_permit_rcu._entry.64, section ".printk_index", align 4
@afs_check_permit_rcu._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = f\0A\00", [41 x i8] zeroinitializer }, align 32
@afs_check_permit_rcu._entry_ptr.69 = internal global ptr @afs_check_permit_rcu._entry.67, section ".printk_index", align 4
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 27, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 29, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 34, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 39, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 43, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 55, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 57, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 63, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 68, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 72, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"afs_permits_lock\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 112, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 152, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 160, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"afs_permits_cache\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 17, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 350, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 355, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 380, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 385, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 390, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 407, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 422, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 437, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 470, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 477, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 18, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 695, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 723, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 310, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 316, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 329, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [21 x i8] c"../fs/afs/security.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 334, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @afs_cache_permit._entry, ptr @afs_cache_permit._entry_ptr, ptr @afs_check_permit._entry, ptr @afs_check_permit._entry.30, ptr @afs_check_permit._entry.33, ptr @afs_check_permit._entry.36, ptr @afs_check_permit._entry.39, ptr @afs_check_permit._entry_ptr, ptr @afs_check_permit._entry_ptr.32, ptr @afs_check_permit._entry_ptr.35, ptr @afs_check_permit._entry_ptr.38, ptr @afs_check_permit._entry_ptr.41, ptr @afs_check_permit_rcu._entry, ptr @afs_check_permit_rcu._entry.61, ptr @afs_check_permit_rcu._entry.64, ptr @afs_check_permit_rcu._entry.67, ptr @afs_check_permit_rcu._entry_ptr, ptr @afs_check_permit_rcu._entry_ptr.63, ptr @afs_check_permit_rcu._entry_ptr.66, ptr @afs_check_permit_rcu._entry_ptr.69, ptr @afs_clean_up_permit_cache, ptr @afs_permission._entry, ptr @afs_permission._entry.44, ptr @afs_permission._entry.47, ptr @afs_permission._entry.52, ptr @afs_permission._entry.54, ptr @afs_permission._entry_ptr, ptr @afs_permission._entry_ptr.46, ptr @afs_permission._entry_ptr.49, ptr @afs_permission._entry_ptr.53, ptr @afs_permission._entry_ptr.55, ptr @afs_request_key._entry, ptr @afs_request_key._entry.12, ptr @afs_request_key._entry.3, ptr @afs_request_key._entry.6, ptr @afs_request_key._entry.9, ptr @afs_request_key._entry_ptr, ptr @afs_request_key._entry_ptr.11, ptr @afs_request_key._entry_ptr.14, ptr @afs_request_key._entry_ptr.5, ptr @afs_request_key._entry_ptr.8, ptr @afs_request_key_rcu._entry, ptr @afs_request_key_rcu._entry.16, ptr @afs_request_key_rcu._entry.18, ptr @afs_request_key_rcu._entry.20, ptr @afs_request_key_rcu._entry.22, ptr @afs_request_key_rcu._entry_ptr, ptr @afs_request_key_rcu._entry_ptr.17, ptr @afs_request_key_rcu._entry_ptr.19, ptr @afs_request_key_rcu._entry_ptr.21, ptr @afs_request_key_rcu._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @afs_permits_lock, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @afs_permits_cache, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key_rcu._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key_rcu._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key_rcu._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_request_key_rcu._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_permits_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_cache_permit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_permits_cache to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_permission._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_permission._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_permission._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_permission._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_permission._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit_rcu._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit_rcu._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_check_permit_rcu._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_request_key(ptr nocapture noundef readonly %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end, !prof !135

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %anonymous_key = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 4
  %5 = ptrtoint ptr %anonymous_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %anonymous_key, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %8, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, i32 noundef %cond.i) #13
  br label %do.body8

do.body8:                                         ; preds = %key_serial.exit, %entry.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and9 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end30_crit_edge, label %do.end20, !prof !135

do.body8.do.end30_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end20:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i122 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i122 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task23, align 8
  %comm24 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %anonymous_key26 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 4
  %14 = ptrtoint ptr %anonymous_key26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %anonymous_key26, align 8
  %description = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 16, i32 0, i32 4
  %16 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %description, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm24, ptr noundef %17) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end20, %do.body8.do.end30_crit_edge
  %anonymous_key31 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 4
  %18 = ptrtoint ptr %anonymous_key31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %anonymous_key31, align 8
  %description32 = getelementptr inbounds %struct.key, ptr %19, i32 0, i32 16, i32 0, i32 4
  %20 = ptrtoint ptr %description32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %description32, align 8
  %net = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %key_domain = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %key_domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %key_domain, align 128
  %call34 = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_rxrpc, ptr noundef %21, ptr noundef %27, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %do.body89

if.then36:                                        ; preds = %do.end30
  %28 = ptrtoint ptr %call34 to i32
  %cmp.not = icmp eq ptr %call34, inttoptr (i32 -126 to ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %29 = load i32, ptr @afs_debug, align 4
  %and64 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %cmp.not, label %do.body63, label %do.body39

do.body39:                                        ; preds = %if.then36
  br i1 %tobool65.not, label %do.body39.cleanup_crit_edge, label %do.end51, !prof !135

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end51:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %30 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i123 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i123 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 101
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm55, ptr noundef nonnull @.str.1, i32 noundef %28) #13
  br label %cleanup

do.body63:                                        ; preds = %if.then36
  br i1 %tobool65.not, label %do.body63.do.end86_crit_edge, label %do.end75, !prof !135

do.body63.do.end86_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86

do.end75:                                         ; preds = %do.body63
  %34 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i124 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i124 to ptr
  %task78 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task78, align 8
  %comm79 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 101
  %38 = ptrtoint ptr %anonymous_key31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %anonymous_key31, align 8
  %tobool.not.i125 = icmp eq ptr %39, null
  br i1 %tobool.not.i125, label %do.end75.key_serial.exit129_crit_edge, label %cond.true.i127

do.end75.key_serial.exit129_crit_edge:            ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit129

cond.true.i127:                                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i126 = getelementptr inbounds %struct.key, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %serial.i126 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %serial.i126, align 4
  br label %key_serial.exit129

key_serial.exit129:                               ; preds = %cond.true.i127, %do.end75.key_serial.exit129_crit_edge
  %cond.i128 = phi i32 [ %41, %cond.true.i127 ], [ 0, %do.end75.key_serial.exit129_crit_edge ]
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm79, ptr noundef nonnull @.str.1, i32 noundef %cond.i128) #13
  br label %do.end86

do.end86:                                         ; preds = %key_serial.exit129, %do.body63.do.end86_crit_edge
  %42 = ptrtoint ptr %anonymous_key31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %anonymous_key31, align 8
  %tobool.not.i130 = icmp eq ptr %43, null
  br i1 %tobool.not.i130, label %do.end86.cleanup_crit_edge, label %cond.true.i131

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true.i131:                                   ; preds = %do.end86
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %43, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 1, i32 3, i32 1) #10
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #10, !srcloc !136
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i131.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !137

cond.true.i131.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i131
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %45 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i.i = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i131.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i131.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cleanup

do.body89:                                        ; preds = %do.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %46 = load i32, ptr @afs_debug, align 4
  %and90 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.cleanup_crit_edge, label %do.end101, !prof !135

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end101:                                        ; preds = %do.body89
  %47 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i132 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i132 to ptr
  %task104 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task104, align 8
  %comm105 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 101
  %tobool.not.i133 = icmp eq ptr %call34, null
  br i1 %tobool.not.i133, label %do.end101.key_serial.exit137_crit_edge, label %cond.true.i135

do.end101.key_serial.exit137_crit_edge:           ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit137

cond.true.i135:                                   ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i134 = getelementptr inbounds %struct.key, ptr %call34, i32 0, i32 1
  %51 = ptrtoint ptr %serial.i134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %serial.i134, align 4
  br label %key_serial.exit137

key_serial.exit137:                               ; preds = %cond.true.i135, %do.end101.key_serial.exit137_crit_edge
  %cond.i136 = phi i32 [ %52, %cond.true.i135 ], [ 0, %do.end101.key_serial.exit137_crit_edge ]
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm105, ptr noundef nonnull @.str.1, i32 noundef %cond.i136) #13
  br label %cleanup

cleanup:                                          ; preds = %key_serial.exit137, %do.body89.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %do.end86.cleanup_crit_edge, %do.end51, %do.body39.cleanup_crit_edge
  %retval.0 = phi ptr [ %call34, %do.end51 ], [ %call34, %do.body39.cleanup_crit_edge ], [ %call34, %key_serial.exit137 ], [ %call34, %do.body89.cleanup_crit_edge ], [ null, %do.end86.cleanup_crit_edge ], [ %43, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %43, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @afs_request_key_rcu(ptr nocapture noundef readonly %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end, !prof !135

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %anonymous_key = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 4
  %5 = ptrtoint ptr %anonymous_key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %anonymous_key, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %8, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.15, i32 noundef %cond.i) #13
  br label %do.body8

do.body8:                                         ; preds = %key_serial.exit, %entry.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %9 = load i32, ptr @afs_debug, align 4
  %and9 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end30_crit_edge, label %do.end20, !prof !135

do.body8.do.end30_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end20:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i122 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i122 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task23, align 8
  %comm24 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %anonymous_key26 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 4
  %14 = ptrtoint ptr %anonymous_key26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %anonymous_key26, align 8
  %description = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 16, i32 0, i32 4
  %16 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %description, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm24, ptr noundef %17) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end20, %do.body8.do.end30_crit_edge
  %anonymous_key31 = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 4
  %18 = ptrtoint ptr %anonymous_key31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %anonymous_key31, align 8
  %description32 = getelementptr inbounds %struct.key, ptr %19, i32 0, i32 16, i32 0, i32 4
  %20 = ptrtoint ptr %description32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %description32, align 8
  %net = getelementptr inbounds %struct.afs_cell, ptr %cell, i32 0, i32 1
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %key_domain = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %key_domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %key_domain, align 128
  %call34 = tail call ptr @request_key_rcu(ptr noundef nonnull @key_type_rxrpc, ptr noundef %21, ptr noundef %27) #10
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %do.body89

if.then36:                                        ; preds = %do.end30
  %28 = ptrtoint ptr %call34 to i32
  %cmp.not = icmp eq ptr %call34, inttoptr (i32 -126 to ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %29 = load i32, ptr @afs_debug, align 4
  %and64 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %cmp.not, label %do.body63, label %do.body39

do.body39:                                        ; preds = %if.then36
  br i1 %tobool65.not, label %do.body39.cleanup_crit_edge, label %do.end51, !prof !135

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end51:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %30 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i123 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i123 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 101
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm55, ptr noundef nonnull @.str.15, i32 noundef %28) #13
  br label %cleanup

do.body63:                                        ; preds = %if.then36
  br i1 %tobool65.not, label %do.body63.do.end86_crit_edge, label %do.end75, !prof !135

do.body63.do.end86_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86

do.end75:                                         ; preds = %do.body63
  %34 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i124 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i124 to ptr
  %task78 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task78, align 8
  %comm79 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 101
  %38 = ptrtoint ptr %anonymous_key31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %anonymous_key31, align 8
  %tobool.not.i125 = icmp eq ptr %39, null
  br i1 %tobool.not.i125, label %do.end75.key_serial.exit129_crit_edge, label %cond.true.i127

do.end75.key_serial.exit129_crit_edge:            ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit129

cond.true.i127:                                   ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i126 = getelementptr inbounds %struct.key, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %serial.i126 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %serial.i126, align 4
  br label %key_serial.exit129

key_serial.exit129:                               ; preds = %cond.true.i127, %do.end75.key_serial.exit129_crit_edge
  %cond.i128 = phi i32 [ %41, %cond.true.i127 ], [ 0, %do.end75.key_serial.exit129_crit_edge ]
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm79, ptr noundef nonnull @.str.15, i32 noundef %cond.i128) #13
  br label %do.end86

do.end86:                                         ; preds = %key_serial.exit129, %do.body63.do.end86_crit_edge
  %42 = ptrtoint ptr %anonymous_key31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %anonymous_key31, align 8
  %tobool.not.i130 = icmp eq ptr %43, null
  br i1 %tobool.not.i130, label %do.end86.cleanup_crit_edge, label %cond.true.i131

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true.i131:                                   ; preds = %do.end86
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %43, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 1, i32 3, i32 1) #10
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #10, !srcloc !136
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i131.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !137

cond.true.i131.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i131
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %45 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i.i = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i131.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i131.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cleanup

do.body89:                                        ; preds = %do.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %46 = load i32, ptr @afs_debug, align 4
  %and90 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.cleanup_crit_edge, label %do.end101, !prof !135

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end101:                                        ; preds = %do.body89
  %47 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i132 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i132 to ptr
  %task104 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task104, align 8
  %comm105 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 101
  %tobool.not.i133 = icmp eq ptr %call34, null
  br i1 %tobool.not.i133, label %do.end101.key_serial.exit137_crit_edge, label %cond.true.i135

do.end101.key_serial.exit137_crit_edge:           ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit137

cond.true.i135:                                   ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i134 = getelementptr inbounds %struct.key, ptr %call34, i32 0, i32 1
  %51 = ptrtoint ptr %serial.i134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %serial.i134, align 4
  br label %key_serial.exit137

key_serial.exit137:                               ; preds = %cond.true.i135, %do.end101.key_serial.exit137_crit_edge
  %cond.i136 = phi i32 [ %52, %cond.true.i135 ], [ 0, %do.end101.key_serial.exit137_crit_edge ]
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm105, ptr noundef nonnull @.str.15, i32 noundef %cond.i136) #13
  br label %cleanup

cleanup:                                          ; preds = %key_serial.exit137, %do.body89.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %do.end86.cleanup_crit_edge, %do.end51, %do.body39.cleanup_crit_edge
  %retval.0 = phi ptr [ %call34, %do.end51 ], [ %call34, %do.body39.cleanup_crit_edge ], [ %call34, %key_serial.exit137 ], [ %call34, %do.body89.cleanup_crit_edge ], [ null, %do.end86.cleanup_crit_edge ], [ %43, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %43, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_put_permits(ptr noundef %permits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %permits, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %usage = getelementptr inbounds %struct.afs_permits, ptr %permits, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #10, !srcloc !139
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !135

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @_raw_spin_lock(ptr noundef nonnull @afs_permits_lock) #10
  %pprev.i.i.i = getelementptr inbounds %struct.afs_permits, ptr %permits, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.not.i.i, label %if.then.hash_del_rcu.exit_crit_edge, label %if.then.i.i

if.then.hash_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %if.then
  %hash_node = getelementptr inbounds %struct.afs_permits, ptr %permits, i32 0, i32 1
  %3 = ptrtoint ptr %hash_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hash_node, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %2, align 4
  %tobool.not.i7.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %if.then.hash_del_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @afs_permits_lock) #10
  tail call void @call_rcu(ptr noundef nonnull %permits, ptr noundef nonnull @afs_permits_rcu) #10
  br label %if.end

if.end:                                           ; preds = %hash_del_rcu.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_permits_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_permits = getelementptr inbounds %struct.afs_permits, ptr %rcu, i32 0, i32 4
  %0 = ptrtoint ptr %nr_permits to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nr_permits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp8.not = icmp eq i16 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.afs_permits, ptr %rcu, i32 0, i32 6, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @key_put(ptr noundef %3) #10
  %inc = add nuw nsw i32 %i.09, 1
  %4 = ptrtoint ptr %nr_permits to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nr_permits, align 4
  %conv = zext i16 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %rcu) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_clear_permits(ptr noundef %vnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %dep_map = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @afs_clear_permits.__warned, align 1
  br i1 %.b24, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_clear_permits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 113, ptr noundef nonnull @.str.24) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %permit_cache = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 6
  %0 = ptrtoint ptr %permit_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %permit_cache, align 4
  store volatile ptr null, ptr %permit_cache, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  tail call void @afs_put_permits(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_cache_permit(ptr noundef %vnode, ptr noundef %key, i32 noundef %cb_break, ptr nocapture noundef readonly %scb) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %caller_access1 = getelementptr inbounds %struct.afs_file_status, ptr %scb, i32 0, i32 7
  %0 = ptrtoint ptr %caller_access1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caller_access1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !135

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fid, align 8
  %vnode6 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %vnode6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vnode6, align 8
  %tobool.not.i408 = icmp eq ptr %key, null
  br i1 %tobool.not.i408, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %11 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %12, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm, ptr noundef nonnull @.str.26, i64 noundef %8, i64 noundef %10, i32 noundef %cond.i, i32 noundef %1) #13
  br label %do.end10

do.end10:                                         ; preds = %key_serial.exit, %entry.do.end10_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %do.end10.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end10.rcu_read_lock.exit_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 696, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end10.rcu_read_lock.exit_crit_edge
  %permit_cache = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 6
  %17 = ptrtoint ptr %permit_cache to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %permit_cache, align 4
  %call16 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end25_crit_edge

rcu_read_lock.exit.do.end25_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b395 = load i1, ptr @afs_cache_permit.__warned, align 1
  br i1 %.b395, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_cache_permit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 160, ptr noundef nonnull @.str.27) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %rcu_read_lock.exit.do.end25_crit_edge
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %do.end25.if.end90_crit_edge, label %if.then28

do.end25.if.end90_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then28:                                        ; preds = %do.end25
  %invalidated = getelementptr inbounds %struct.afs_permits, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %invalidated to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %invalidated, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool29.not = icmp eq i8 %20, 0
  br i1 %tobool29.not, label %for.cond.preheader, label %if.then28.if.end54_crit_edge

if.then28.if.end54_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

for.cond.preheader:                               ; preds = %if.then28
  %nr_permits = getelementptr inbounds %struct.afs_permits, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %nr_permits to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nr_permits, align 4
  %conv = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp466.not = icmp eq i16 %22, 0
  br i1 %cmp466.not, label %for.cond.preheader.if.end54_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end54_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0467 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.afs_permits, ptr %18, i32 0, i32 6, i32 %i.0467
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %cmp34 = icmp ult ptr %24, %key
  br i1 %cmp34, label %for.inc, label %if.end37

if.end37:                                         ; preds = %for.body
  %cmp41 = icmp ugt ptr %24, %key
  br i1 %cmp41, label %if.end37.if.end54_crit_edge, label %if.end44

if.end37.if.end54_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end44:                                         ; preds = %if.end37
  %access = getelementptr %struct.afs_permits, ptr %18, i32 0, i32 6, i32 %i.0467, i32 1
  %25 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %access, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %1)
  %cmp47.not = icmp eq i32 %26, %1
  br i1 %cmp47.not, label %if.end50, label %if.end44.if.end54_crit_edge

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end50:                                         ; preds = %if.end44
  %cb_break1.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 28
  %27 = ptrtoint ptr %cb_break1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb_break1.i, align 4
  %volume.i = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %29 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %volume.i, align 8
  %cb_v_break.i = getelementptr inbounds %struct.afs_volume, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %cb_v_break.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cb_v_break.i, align 8
  %add.i = add i32 %32, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %cb_break)
  %cmp.i.not = icmp eq i32 %add.i, %cb_break
  br i1 %cmp.i.not, label %if.end53, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end53:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0467, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.if.end54_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end54_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end54:                                         ; preds = %for.inc.if.end54_crit_edge, %if.end50.if.end54_crit_edge, %if.end44.if.end54_crit_edge, %if.end37.if.end54_crit_edge, %for.cond.preheader.if.end54_crit_edge, %if.then28.if.end54_crit_edge
  %changed.0.off0 = phi i32 [ 0, %if.then28.if.end54_crit_edge ], [ 0, %if.end37.if.end54_crit_edge ], [ 1, %if.end44.if.end54_crit_edge ], [ 1, %if.end50.if.end54_crit_edge ], [ 0, %for.cond.preheader.if.end54_crit_edge ], [ 0, %for.inc.if.end54_crit_edge ]
  %33 = zext i8 %20 to i32
  %or = or i32 %changed.0.off0, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool60.not = icmp eq i32 %or, 0
  %nr_permits61 = getelementptr inbounds %struct.afs_permits, ptr %18, i32 0, i32 4
  %34 = ptrtoint ptr %nr_permits61 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nr_permits61, align 4
  %conv62 = zext i16 %35 to i32
  br i1 %tobool60.not, label %if.end54.if.end90_crit_edge, label %if.then64

if.end54.if.end90_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then64:                                        ; preds = %if.end54
  %lock = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %36 = ptrtoint ptr %permit_cache to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %permit_cache, align 4
  %cmp71.not = icmp eq ptr %18, %37
  br i1 %cmp71.not, label %do.body80, label %someone_else_changed_it_unlock

do.body80:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %permit_cache to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr null, ptr %permit_cache, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  tail call void @afs_put_permits(ptr noundef nonnull %18)
  br label %if.end90

if.end90:                                         ; preds = %do.body80, %if.end54.if.end90_crit_edge, %do.end25.if.end90_crit_edge
  %size.0 = phi i32 [ 0, %do.body80 ], [ %conv62, %if.end54.if.end90_crit_edge ], [ 0, %do.end25.if.end90_crit_edge ]
  %permits.0 = phi ptr [ null, %do.body80 ], [ %18, %if.end54.if.end90_crit_edge ], [ null, %do.end25.if.end90_crit_edge ]
  %cb_break1.i409 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 28
  %39 = ptrtoint ptr %cb_break1.i409 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cb_break1.i409, align 4
  %volume.i410 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %41 = ptrtoint ptr %volume.i410 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %volume.i410, align 8
  %cb_v_break.i411 = getelementptr inbounds %struct.afs_volume, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %cb_v_break.i411 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cb_v_break.i411, align 8
  %add.i412 = add i32 %44, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i412, i32 %cb_break)
  %cmp.i413.not = icmp eq i32 %add.i412, %cb_break
  br i1 %cmp.i413.not, label %if.end93, label %if.end90.someone_else_changed_it_crit_edge

if.end90.someone_else_changed_it_crit_edge:       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %someone_else_changed_it

if.end93:                                         ; preds = %if.end90
  %tobool94.not = icmp eq ptr %permits.0, null
  br i1 %tobool94.not, label %if.end93.if.end98_crit_edge, label %land.lhs.true95

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true95:                                  ; preds = %if.end93
  %usage = getelementptr inbounds %struct.afs_permits, ptr %permits.0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #10
  %45 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %usage, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true95
  %47 = phi i32 [ %46, %land.lhs.true95 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %48 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i414 = add i32 %47, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %49 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %51 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 %50, i32 %add.i.i.i414, ptr elementtype(i32) %usage) #10, !srcloc !143
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %50
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !135

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %52 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %53, 1
  %54 = or i32 %add5.i.i.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !135

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 0) #10
  %55 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %56 = phi i32 [ %53, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool12.i.i.i.not = icmp eq i32 %56, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.someone_else_changed_it_crit_edge, label %refcount_inc_not_zero.exit.if.end98_crit_edge

refcount_inc_not_zero.exit.if.end98_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

refcount_inc_not_zero.exit.someone_else_changed_it_crit_edge: ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %someone_else_changed_it

if.end98:                                         ; preds = %refcount_inc_not_zero.exit.if.end98_crit_edge, %if.end93.if.end98_crit_edge
  %call.i415 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i415, label %if.end98.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i418

if.end98.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i418:                               ; preds = %if.end98
  %call1.i416 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i416)
  %tobool.not.i417 = icmp eq i32 %call1.i416, 0
  br i1 %tobool.not.i417, label %land.lhs.true.i418.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i420

land.lhs.true.i418.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i418
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i420:                              ; preds = %land.lhs.true.i418
  %.b4.i419 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i419, label %land.lhs.true2.i420.rcu_read_unlock.exit_crit_edge, label %if.then.i421

land.lhs.true2.i420.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i420
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i421:                                     ; preds = %land.lhs.true2.i420
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 724, ptr noundef nonnull @.str.59) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i421, %land.lhs.true2.i420.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i418.rcu_read_unlock.exit_crit_edge, %if.end98.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %57 = call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i.i422 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i422 to ptr
  %preempt_count.i.i.i.i423 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i423 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i423, align 4
  %sub.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i423, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %inc99 = add nuw nsw i32 %size.0, 1
  %mul = shl nuw nsw i32 %inc99, 3
  %add = add nuw nsw i32 %mul, 28
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3392) #14
  %tobool101.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool101.not, label %rcu_read_unlock.exit.out_put_crit_edge, label %if.end103

rcu_read_unlock.exit.out_put_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.end103:                                        ; preds = %rcu_read_unlock.exit
  %usage104 = getelementptr inbounds %struct.afs_permits, ptr %call9.i.i, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage104, i32 noundef 4) #10
  %61 = ptrtoint ptr %usage104 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1, ptr %usage104, align 4
  %conv105 = trunc i32 %inc99 to i16
  %nr_permits106 = getelementptr inbounds %struct.afs_permits, ptr %call9.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %nr_permits106 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv105, ptr %nr_permits106, align 8
  br i1 %tobool94.not, label %if.end103.if.then151_crit_edge, label %for.cond109.preheader

if.end103.if.then151_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then151

for.cond109.preheader:                            ; preds = %if.end103
  %nr_permits110 = getelementptr inbounds %struct.afs_permits, ptr %permits.0, i32 0, i32 4
  %63 = ptrtoint ptr %nr_permits110 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %nr_permits110, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp112469.not = icmp eq i16 %64, 0
  br i1 %cmp112469.not, label %for.cond109.preheader.if.then151_crit_edge, label %for.cond109.preheader.for.body114_crit_edge

for.cond109.preheader.for.body114_crit_edge:      ; preds = %for.cond109.preheader
  br label %for.body114

for.cond109.preheader.if.then151_crit_edge:       ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then151

for.body114:                                      ; preds = %if.end131.for.body114_crit_edge, %for.cond109.preheader.for.body114_crit_edge
  %i.1471 = phi i32 [ %inc146, %if.end131.for.body114_crit_edge ], [ 0, %for.cond109.preheader.for.body114_crit_edge ]
  %j.0470 = phi i32 [ %inc144, %if.end131.for.body114_crit_edge ], [ 0, %for.cond109.preheader.for.body114_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0470, i32 %i.1471)
  %cmp115 = icmp eq i32 %j.0470, %i.1471
  br i1 %cmp115, label %land.lhs.true117, label %for.body114.if.end131_crit_edge

for.body114.if.end131_crit_edge:                  ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

land.lhs.true117:                                 ; preds = %for.body114
  %arrayidx119 = getelementptr %struct.afs_permits, ptr %permits.0, i32 0, i32 6, i32 %i.1471
  %65 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx119, align 4
  %cmp121 = icmp ugt ptr %66, %key
  br i1 %cmp121, label %if.then123, label %land.lhs.true117.if.end131_crit_edge

land.lhs.true117.if.end131_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then123:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx125 = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %i.1471
  %67 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %key, ptr %arrayidx125, align 4
  %access129 = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %i.1471, i32 1
  %68 = ptrtoint ptr %access129 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %1, ptr %access129, align 8
  %inc130 = add nuw i32 %i.1471, 1
  br label %if.end131

if.end131:                                        ; preds = %if.then123, %land.lhs.true117.if.end131_crit_edge, %for.body114.if.end131_crit_edge
  %j.1 = phi i32 [ %inc130, %if.then123 ], [ %i.1471, %land.lhs.true117.if.end131_crit_edge ], [ %j.0470, %for.body114.if.end131_crit_edge ]
  %arrayidx133 = getelementptr %struct.afs_permits, ptr %permits.0, i32 0, i32 6, i32 %i.1471
  %69 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx133, align 4
  %arrayidx136 = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %j.1
  %71 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %arrayidx136, align 4
  %access140 = getelementptr %struct.afs_permits, ptr %permits.0, i32 0, i32 6, i32 %i.1471, i32 1
  %72 = ptrtoint ptr %access140 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %access140, align 4
  %access143 = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %j.1, i32 1
  %74 = ptrtoint ptr %access143 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %access143, align 8
  %inc144 = add i32 %j.1, 1
  %inc146 = add nuw nsw i32 %i.1471, 1
  %75 = ptrtoint ptr %nr_permits110 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %nr_permits110, align 4
  %conv111 = zext i16 %76 to i32
  %cmp112 = icmp ult i32 %inc146, %conv111
  br i1 %cmp112, label %if.end131.for.body114_crit_edge, label %if.end148

if.end131.for.body114_crit_edge:                  ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body114

if.end148:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %i.1471)
  %cmp149 = icmp eq i32 %j.1, %i.1471
  br i1 %cmp149, label %if.end148.if.then151_crit_edge, label %if.end148.if.end158_crit_edge

if.end148.if.end158_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.end148.if.then151_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then151

if.then151:                                       ; preds = %if.end148.if.then151_crit_edge, %for.cond109.preheader.if.then151_crit_edge, %if.end103.if.then151_crit_edge
  %j.2460 = phi i32 [ %inc144, %if.end148.if.then151_crit_edge ], [ 0, %if.end103.if.then151_crit_edge ], [ 0, %for.cond109.preheader.if.then151_crit_edge ]
  %arrayidx153 = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %j.2460
  %77 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %key, ptr %arrayidx153, align 4
  %access157 = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %j.2460, i32 1
  %78 = ptrtoint ptr %access157 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %1, ptr %access157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.then151, %if.end148.if.end158_crit_edge
  %79 = ptrtoint ptr %nr_permits106 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %nr_permits106, align 8
  %conv.i = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp19.not.i = icmp eq i16 %80, 0
  br i1 %cmp19.not.i, label %if.end158.afs_hash_permits.exit_crit_edge, label %if.end158.for.body.i_crit_edge

if.end158.for.body.i_crit_edge:                   ; preds = %if.end158
  br label %for.body.i

if.end158.afs_hash_permits.exit_crit_edge:        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %afs_hash_permits.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end158.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end158.for.body.i_crit_edge ]
  %h.020.i = phi i32 [ %add7.i, %for.body.i.for.body.i_crit_edge ], [ %conv.i, %if.end158.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %i.021.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i, align 4
  %83 = ptrtoint ptr %82 to i32
  %div18.i = lshr i32 %83, 2
  %access.i = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %i.021.i, i32 1
  %84 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %access.i, align 8
  %add.i424 = add i32 %85, %h.020.i
  %add7.i = add i32 %add.i424, %div18.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.afs_hash_permits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.afs_hash_permits.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %afs_hash_permits.exit

afs_hash_permits.exit:                            ; preds = %for.body.i.afs_hash_permits.exit_crit_edge, %if.end158.afs_hash_permits.exit_crit_edge
  %h.0.lcssa.i = phi i32 [ 0, %if.end158.afs_hash_permits.exit_crit_edge ], [ %add7.i, %for.body.i.afs_hash_permits.exit_crit_edge ]
  %h8.i = getelementptr inbounds %struct.afs_permits, ptr %call9.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %h8.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %h.0.lcssa.i, ptr %h8.i, align 16
  call void @_raw_spin_lock(ptr noundef nonnull @afs_permits_lock) #10
  %87 = ptrtoint ptr %h8.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %h8.i, align 16
  %mul.i.i = mul i32 %88, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx160 = getelementptr [1024 x %struct.hlist_head], ptr @afs_permits_cache, i32 0, i32 %shr.i
  %89 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx160, align 4
  %tobool162.not = icmp eq ptr %90, null
  %add.ptr = getelementptr i8, ptr %90, i32 -8
  %tobool165.not474480 = icmp eq ptr %add.ptr, null
  %tobool165.not474 = or i1 %tobool162.not, %tobool165.not474480
  br i1 %tobool165.not474, label %afs_hash_permits.exit.for.end209_crit_edge, label %for.body166.lr.ph

afs_hash_permits.exit.for.end209_crit_edge:       ; preds = %afs_hash_permits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end209

for.body166.lr.ph:                                ; preds = %afs_hash_permits.exit
  %permits184 = getelementptr inbounds %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6
  br label %for.body166

for.body166:                                      ; preds = %for.inc198.for.body166_crit_edge, %for.body166.lr.ph
  %xpermits.0475 = phi ptr [ %add.ptr, %for.body166.lr.ph ], [ %add.ptr205, %for.inc198.for.body166_crit_edge ]
  %h167 = getelementptr inbounds %struct.afs_permits, ptr %xpermits.0475, i32 0, i32 2
  %91 = ptrtoint ptr %h167 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %h167, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %88)
  %cmp169.not = icmp eq i32 %92, %88
  br i1 %cmp169.not, label %lor.lhs.false, label %for.body166.for.inc198_crit_edge

for.body166.for.inc198_crit_edge:                 ; preds = %for.body166
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc198

lor.lhs.false:                                    ; preds = %for.body166
  %invalidated171 = getelementptr inbounds %struct.afs_permits, ptr %xpermits.0475, i32 0, i32 5
  %93 = ptrtoint ptr %invalidated171 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %invalidated171, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool172.not = icmp eq i8 %94, 0
  br i1 %tobool172.not, label %lor.lhs.false174, label %lor.lhs.false.for.inc198_crit_edge

lor.lhs.false.for.inc198_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc198

lor.lhs.false174:                                 ; preds = %lor.lhs.false
  %nr_permits175 = getelementptr inbounds %struct.afs_permits, ptr %xpermits.0475, i32 0, i32 4
  %95 = ptrtoint ptr %nr_permits175 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %nr_permits175, align 4
  %97 = ptrtoint ptr %nr_permits106 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %nr_permits106, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %98)
  %cmp179.not = icmp eq i16 %96, %98
  br i1 %cmp179.not, label %lor.lhs.false181, label %lor.lhs.false174.for.inc198_crit_edge

lor.lhs.false174.for.inc198_crit_edge:            ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc198

lor.lhs.false181:                                 ; preds = %lor.lhs.false174
  %conv178 = zext i16 %96 to i32
  %permits182 = getelementptr inbounds %struct.afs_permits, ptr %xpermits.0475, i32 0, i32 6
  %mul188 = shl nuw nsw i32 %conv178, 3
  %bcmp = call i32 @bcmp(ptr %permits182, ptr %permits184, i32 %mul188) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp190.not = icmp eq i32 %bcmp, 0
  br i1 %cmp190.not, label %if.end193, label %lor.lhs.false181.for.inc198_crit_edge

lor.lhs.false181.for.inc198_crit_edge:            ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc198

if.end193:                                        ; preds = %lor.lhs.false181
  %usage194 = getelementptr inbounds %struct.afs_permits, ptr %xpermits.0475, i32 0, i32 3
  %call195 = call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %usage194)
  br i1 %call195, label %if.end193.found_crit_edge, label %if.end193.for.end209_crit_edge

if.end193.for.end209_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end209

if.end193.found_crit_edge:                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc198:                                       ; preds = %lor.lhs.false181.for.inc198_crit_edge, %lor.lhs.false174.for.inc198_crit_edge, %lor.lhs.false.for.inc198_crit_edge, %for.body166.for.inc198_crit_edge
  %hash_node = getelementptr inbounds %struct.afs_permits, ptr %xpermits.0475, i32 0, i32 1
  %99 = ptrtoint ptr %hash_node to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hash_node, align 4
  %tobool201.not = icmp eq ptr %100, null
  %add.ptr205 = getelementptr i8, ptr %100, i32 -8
  %tobool165.not492 = icmp eq ptr %add.ptr205, null
  %tobool165.not = or i1 %tobool201.not, %tobool165.not492
  br i1 %tobool165.not, label %for.inc198.for.end209_crit_edge, label %for.inc198.for.body166_crit_edge

for.inc198.for.body166_crit_edge:                 ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body166

for.inc198.for.end209_crit_edge:                  ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end209

for.end209:                                       ; preds = %for.inc198.for.end209_crit_edge, %if.end193.for.end209_crit_edge, %afs_hash_permits.exit.for.end209_crit_edge
  %101 = ptrtoint ptr %nr_permits106 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %nr_permits106, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp213478.not = icmp eq i16 %102, 0
  br i1 %cmp213478.not, label %for.end209.for.end222_crit_edge, label %for.end209.for.body215_crit_edge

for.end209.for.body215_crit_edge:                 ; preds = %for.end209
  br label %for.body215

for.end209.for.end222_crit_edge:                  ; preds = %for.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end222

for.body215:                                      ; preds = %key_get.exit.for.body215_crit_edge, %for.end209.for.body215_crit_edge
  %i.3479 = phi i32 [ %inc221, %key_get.exit.for.body215_crit_edge ], [ 0, %for.end209.for.body215_crit_edge ]
  %arrayidx217 = getelementptr %struct.afs_permits, ptr %call9.i.i, i32 0, i32 6, i32 %i.3479
  %103 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx217, align 4
  %tobool.not.i425 = icmp eq ptr %104, null
  br i1 %tobool.not.i425, label %for.body215.key_get.exit_crit_edge, label %cond.true.i426

for.body215.key_get.exit_crit_edge:               ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_get.exit

cond.true.i426:                                   ; preds = %for.body215
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %104, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %104, i32 1, i32 3, i32 1) #10
  %105 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %104, ptr nonnull %104, i32 1, ptr nonnull elementtype(i32) %104) #10, !srcloc !136
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i426.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !137

cond.true.i426.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i426
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i426
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %106 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %.not.i.i.i.i.i = icmp sgt i32 %106, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i426.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i426.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %104, i32 noundef %.sink.i.i.i.i.i) #10
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %for.body215.key_get.exit_crit_edge
  %inc221 = add nuw nsw i32 %i.3479, 1
  %107 = ptrtoint ptr %nr_permits106 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %nr_permits106, align 8
  %conv212 = zext i16 %108 to i32
  %cmp213 = icmp ult i32 %inc221, %conv212
  br i1 %cmp213, label %key_get.exit.for.body215_crit_edge, label %key_get.exit.for.end222_crit_edge

key_get.exit.for.end222_crit_edge:                ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end222

key_get.exit.for.body215_crit_edge:               ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body215

for.end222:                                       ; preds = %key_get.exit.for.end222_crit_edge, %for.end209.for.end222_crit_edge
  %hash_node223 = getelementptr inbounds %struct.afs_permits, ptr %call9.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %h8.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %h8.i, align 16
  %mul.i.i427 = mul i32 %110, 1640531527
  %shr.i428 = lshr i32 %mul.i.i427, 22
  %arrayidx226 = getelementptr [1024 x %struct.hlist_head], ptr @afs_permits_cache, i32 0, i32 %shr.i428
  %111 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx226, align 4
  %113 = ptrtoint ptr %hash_node223 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %hash_node223, align 8
  %pprev.i = getelementptr inbounds %struct.afs_permits, ptr %call9.i.i, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %arrayidx226, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  %115 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %hash_node223, ptr %arrayidx226, align 4
  %tobool.not.i429 = icmp eq ptr %112, null
  br i1 %tobool.not.i429, label %for.end222.found_crit_edge, label %do.body49.i

for.end222.found_crit_edge:                       ; preds = %for.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

do.body49.i:                                      ; preds = %for.end222
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %112, i32 0, i32 1
  %116 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %hash_node223, ptr %pprev51.i, align 4
  br label %found

found:                                            ; preds = %do.body49.i, %for.end222.found_crit_edge, %if.end193.found_crit_edge
  %new.0 = phi ptr [ %call9.i.i, %if.end193.found_crit_edge ], [ null, %for.end222.found_crit_edge ], [ null, %do.body49.i ]
  %replacement.0 = phi ptr [ %xpermits.0475, %if.end193.found_crit_edge ], [ %call9.i.i, %for.end222.found_crit_edge ], [ %call9.i.i, %do.body49.i ]
  call void @_raw_spin_unlock(ptr noundef nonnull @afs_permits_lock) #10
  call void @kfree(ptr noundef %new.0) #10
  %117 = call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i.i397 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i.i.i397 to ptr
  %preempt_count.i.i.i.i398 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %preempt_count.i.i.i.i398 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %preempt_count.i.i.i.i398, align 4
  %add.i.i.i399 = add i32 %120, 1
  store volatile i32 %add.i.i.i399, ptr %preempt_count.i.i.i.i398, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !141
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i400 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i400, label %found.rcu_read_lock.exit407_crit_edge, label %land.lhs.true.i403

found.rcu_read_lock.exit407_crit_edge:            ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit407

land.lhs.true.i403:                               ; preds = %found
  %call1.i401 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i401)
  %tobool.not.i402 = icmp eq i32 %call1.i401, 0
  br i1 %tobool.not.i402, label %land.lhs.true.i403.rcu_read_lock.exit407_crit_edge, label %land.lhs.true2.i405

land.lhs.true.i403.rcu_read_lock.exit407_crit_edge: ; preds = %land.lhs.true.i403
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit407

land.lhs.true2.i405:                              ; preds = %land.lhs.true.i403
  %.b4.i404 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i404, label %land.lhs.true2.i405.rcu_read_lock.exit407_crit_edge, label %if.then.i406

land.lhs.true2.i405.rcu_read_lock.exit407_crit_edge: ; preds = %land.lhs.true2.i405
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit407

if.then.i406:                                     ; preds = %land.lhs.true2.i405
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 696, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_lock.exit407

rcu_read_lock.exit407:                            ; preds = %if.then.i406, %land.lhs.true2.i405.rcu_read_lock.exit407_crit_edge, %land.lhs.true.i403.rcu_read_lock.exit407_crit_edge, %found.rcu_read_lock.exit407_crit_edge
  %lock227 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock227) #10
  %121 = ptrtoint ptr %permit_cache to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %permit_cache, align 4
  %123 = ptrtoint ptr %cb_break1.i409 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cb_break1.i409, align 4
  %125 = ptrtoint ptr %volume.i410 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %volume.i410, align 8
  %cb_v_break.i432 = getelementptr inbounds %struct.afs_volume, ptr %126, i32 0, i32 12
  %127 = ptrtoint ptr %cb_v_break.i432 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cb_v_break.i432, align 8
  %add.i433 = add i32 %128, %124
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i433, i32 %cb_break)
  %cmp.i434.not = icmp eq i32 %add.i433, %cb_break
  %cmp236 = icmp eq ptr %122, %permits.0
  %or.cond = select i1 %cmp.i434.not, i1 %cmp236, i1 false
  br i1 %or.cond, label %do.body239, label %rcu_read_lock.exit407.if.end280_crit_edge

rcu_read_lock.exit407.if.end280_crit_edge:        ; preds = %rcu_read_lock.exit407
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280

do.body239:                                       ; preds = %rcu_read_lock.exit407
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !146
  %129 = ptrtoint ptr %permit_cache to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %replacement.0, ptr %permit_cache, align 4
  br label %if.end280

if.end280:                                        ; preds = %do.body239, %rcu_read_lock.exit407.if.end280_crit_edge
  %zap.0 = phi ptr [ %permits.0, %do.body239 ], [ %replacement.0, %rcu_read_lock.exit407.if.end280_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock227) #10
  %call.i435 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i435, label %if.end280.rcu_read_unlock.exit445_crit_edge, label %land.lhs.true.i438

if.end280.rcu_read_unlock.exit445_crit_edge:      ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit445

land.lhs.true.i438:                               ; preds = %if.end280
  %call1.i436 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i436)
  %tobool.not.i437 = icmp eq i32 %call1.i436, 0
  br i1 %tobool.not.i437, label %land.lhs.true.i438.rcu_read_unlock.exit445_crit_edge, label %land.lhs.true2.i440

land.lhs.true.i438.rcu_read_unlock.exit445_crit_edge: ; preds = %land.lhs.true.i438
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit445

land.lhs.true2.i440:                              ; preds = %land.lhs.true.i438
  %.b4.i439 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i439, label %land.lhs.true2.i440.rcu_read_unlock.exit445_crit_edge, label %if.then.i441

land.lhs.true2.i440.rcu_read_unlock.exit445_crit_edge: ; preds = %land.lhs.true2.i440
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit445

if.then.i441:                                     ; preds = %land.lhs.true2.i440
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 724, ptr noundef nonnull @.str.59) #10
  br label %rcu_read_unlock.exit445

rcu_read_unlock.exit445:                          ; preds = %if.then.i441, %land.lhs.true2.i440.rcu_read_unlock.exit445_crit_edge, %land.lhs.true.i438.rcu_read_unlock.exit445_crit_edge, %if.end280.rcu_read_unlock.exit445_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %130 = call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i.i442 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i.i.i442 to ptr
  %preempt_count.i.i.i.i443 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %preempt_count.i.i.i.i443 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %preempt_count.i.i.i.i443, align 4
  %sub.i.i.i444 = add i32 %133, -1
  store volatile i32 %sub.i.i.i444, ptr %preempt_count.i.i.i.i443, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @afs_put_permits(ptr noundef %zap.0)
  br label %out_put

out_put:                                          ; preds = %rcu_read_unlock.exit445, %rcu_read_unlock.exit.out_put_crit_edge
  call void @afs_put_permits(ptr noundef %permits.0)
  br label %cleanup

someone_else_changed_it_unlock:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %someone_else_changed_it

someone_else_changed_it:                          ; preds = %someone_else_changed_it_unlock, %refcount_inc_not_zero.exit.someone_else_changed_it_crit_edge, %if.end90.someone_else_changed_it_crit_edge
  %call.i446 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i446, label %someone_else_changed_it.rcu_read_unlock.exit456_crit_edge, label %land.lhs.true.i449

someone_else_changed_it.rcu_read_unlock.exit456_crit_edge: ; preds = %someone_else_changed_it
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit456

land.lhs.true.i449:                               ; preds = %someone_else_changed_it
  %call1.i447 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i447)
  %tobool.not.i448 = icmp eq i32 %call1.i447, 0
  br i1 %tobool.not.i448, label %land.lhs.true.i449.rcu_read_unlock.exit456_crit_edge, label %land.lhs.true2.i451

land.lhs.true.i449.rcu_read_unlock.exit456_crit_edge: ; preds = %land.lhs.true.i449
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit456

land.lhs.true2.i451:                              ; preds = %land.lhs.true.i449
  %.b4.i450 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i450, label %land.lhs.true2.i451.rcu_read_unlock.exit456_crit_edge, label %if.then.i452

land.lhs.true2.i451.rcu_read_unlock.exit456_crit_edge: ; preds = %land.lhs.true2.i451
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit456

if.then.i452:                                     ; preds = %land.lhs.true2.i451
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 724, ptr noundef nonnull @.str.59) #10
  br label %rcu_read_unlock.exit456

rcu_read_unlock.exit456:                          ; preds = %if.then.i452, %land.lhs.true2.i451.rcu_read_unlock.exit456_crit_edge, %land.lhs.true.i449.rcu_read_unlock.exit456_crit_edge, %someone_else_changed_it.rcu_read_unlock.exit456_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %134 = call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i.i453 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i.i.i453 to ptr
  %preempt_count.i.i.i.i454 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %preempt_count.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %preempt_count.i.i.i.i454, align 4
  %sub.i.i.i455 = add i32 %137, -1
  store volatile i32 %sub.i.i.i455, ptr %preempt_count.i.i.i.i454, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit456, %out_put, %if.end53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 724, ptr noundef nonnull @.str.59) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %0 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %r) unnamed_addr #4 align 64 {
entry:
  %old.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i) #10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r, i32 noundef 4) #10
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %r, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end4.i.i_crit_edge, label %do.cond.i.i

do.body.i.i.if.end4.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add i32 %2, 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #10
  %call.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i, align 4
  call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %5, i32 %add.i.i, ptr elementtype(i32) %r) #10, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i:         ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, !prof !135

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, %do.body.i.i.if.end4.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i, align 4
  %add5.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i, label %if.end4.i.i.__refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i, !prof !135

if.end4.i.i.__refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__refcount_inc_not_zero.exit

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %r, i32 noundef 0) #10
  br label %__refcount_inc_not_zero.exit

__refcount_inc_not_zero.exit:                     ; preds = %if.then10.i.i, %if.end4.i.i.__refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i) #10
  ret i1 %tobool12.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_check_permit(ptr noundef %vnode, ptr noundef %key, ptr noundef %_access) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !135

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2
  %5 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fid, align 8
  %vnode5 = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %vnode5 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vnode5, align 8
  %tobool.not.i179 = icmp eq ptr %key, null
  br i1 %tobool.not.i179, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm, ptr noundef nonnull @.str.29, i64 noundef %6, i64 noundef %8, i32 noundef %cond.i) #13
  br label %do.end9

do.end9:                                          ; preds = %key_serial.exit, %entry.do.end9_crit_edge
  %volume = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 1
  %11 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %volume, align 8
  %cell = getelementptr inbounds %struct.afs_volume, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cell, align 8
  %anonymous_key = getelementptr inbounds %struct.afs_cell, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %anonymous_key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %anonymous_key, align 8
  %cmp = icmp eq ptr %16, %key
  br i1 %cmp, label %do.body11, label %if.else

do.body11:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %17 = load i32, ptr @afs_debug, align 4
  %and12 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end32_crit_edge, label %do.end23, !prof !135

do.body11.do.end32_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

do.end23:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i180 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i180 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task26, align 8
  %comm27 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm27) #13
  br label %do.end32

do.end32:                                         ; preds = %do.end23, %do.body11.do.end32_crit_edge
  %anon_access = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %anon_access to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %anon_access, align 4
  %24 = ptrtoint ptr %_access to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %_access, align 4
  br label %do.body125

if.else:                                          ; preds = %do.end9
  %25 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 696, ptr noundef nonnull @.str.58) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  %permit_cache = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 6
  %29 = ptrtoint ptr %permit_cache to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %permit_cache, align 4
  %call38 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end47_crit_edge

rcu_read_lock.exit.do.end47_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true.do.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true
  %.b176 = load i1, ptr @afs_check_permit.__warned, align 1
  br i1 %.b176, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_check_permit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 360, ptr noundef nonnull @.str.27) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true.do.end47_crit_edge, %rcu_read_lock.exit.do.end47_crit_edge
  %tobool49.not = icmp eq ptr %30, null
  br i1 %tobool49.not, label %do.body75.critedge178, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end47
  %nr_permits = getelementptr inbounds %struct.afs_permits, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %nr_permits to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nr_permits, align 4
  %conv = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp51227.not = icmp eq i16 %32, 0
  br i1 %cmp51227.not, label %for.cond.preheader.do.body75.critedge177_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body75.critedge177_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75.critedge177

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0228 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.afs_permits, ptr %30, i32 0, i32 6, i32 %i.0228
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %cmp55 = icmp ult ptr %34, %key
  br i1 %cmp55, label %for.inc, label %if.end58

if.end58:                                         ; preds = %for.body
  %cmp62 = icmp ugt ptr %34, %key
  br i1 %cmp62, label %do.body75.critedge, label %if.end65

if.end65:                                         ; preds = %if.end58
  %access = getelementptr %struct.afs_permits, ptr %30, i32 0, i32 6, i32 %i.0228, i32 1
  %35 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %access, align 4
  %37 = ptrtoint ptr %_access to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %_access, align 4
  %invalidated = getelementptr inbounds %struct.afs_permits, ptr %30, i32 0, i32 5
  %38 = ptrtoint ptr %invalidated to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %invalidated, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool68.not = icmp eq i8 %39, 0
  %call.i181 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i181, label %if.end65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i184

if.end65.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i184:                               ; preds = %if.end65
  %call1.i182 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i182)
  %tobool.not.i183 = icmp eq i32 %call1.i182, 0
  br i1 %tobool.not.i183, label %land.lhs.true.i184.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i186

land.lhs.true.i184.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i186:                              ; preds = %land.lhs.true.i184
  %.b4.i185 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i185, label %land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge, label %if.then.i187

land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i187:                                     ; preds = %land.lhs.true2.i186
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 724, ptr noundef nonnull @.str.59) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i187, %land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i184.rcu_read_unlock.exit_crit_edge, %if.end65.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  %40 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i.i188 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i188 to ptr
  %preempt_count.i.i.i.i189 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i189, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i189, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool68.not, label %rcu_read_unlock.exit.do.body125_crit_edge, label %rcu_read_unlock.exit.do.body75_crit_edge

rcu_read_unlock.exit.do.body75_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

rcu_read_unlock.exit.do.body125_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body125

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0228, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.do.body75.critedge177_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body75.critedge177_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75.critedge177

do.body75.critedge:                               ; preds = %if.end58
  %call.i190 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i190, label %do.body75.critedge.rcu_read_unlock.exit200_crit_edge, label %land.lhs.true.i193

do.body75.critedge.rcu_read_unlock.exit200_crit_edge: ; preds = %do.body75.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit200

land.lhs.true.i193:                               ; preds = %do.body75.critedge
  %call1.i191 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i191)
  %tobool.not.i192 = icmp eq i32 %call1.i191, 0
  br i1 %tobool.not.i192, label %land.lhs.true.i193.rcu_read_unlock.exit200_crit_edge, label %land.lhs.true2.i195

land.lhs.true.i193.rcu_read_unlock.exit200_crit_edge: ; preds = %land.lhs.true.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit200

land.lhs.true2.i195:                              ; preds = %land.lhs.true.i193
  %.b4.i194 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i194, label %land.lhs.true2.i195.rcu_read_unlock.exit200_crit_edge, label %if.then.i196

land.lhs.true2.i195.rcu_read_unlock.exit200_crit_edge: ; preds = %land.lhs.true2.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit200

if.then.i196:                                     ; preds = %land.lhs.true2.i195
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 724, ptr noundef nonnull @.str.59) #10
  br label %rcu_read_unlock.exit200

rcu_read_unlock.exit200:                          ; preds = %if.then.i196, %land.lhs.true2.i195.rcu_read_unlock.exit200_crit_edge, %land.lhs.true.i193.rcu_read_unlock.exit200_crit_edge, %do.body75.critedge.rcu_read_unlock.exit200_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  br label %do.body75.sink.split

do.body75.critedge177:                            ; preds = %for.inc.do.body75.critedge177_crit_edge, %for.cond.preheader.do.body75.critedge177_crit_edge
  %call.i201 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i201, label %do.body75.critedge177.rcu_read_unlock.exit211_crit_edge, label %land.lhs.true.i204

do.body75.critedge177.rcu_read_unlock.exit211_crit_edge: ; preds = %do.body75.critedge177
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit211

land.lhs.true.i204:                               ; preds = %do.body75.critedge177
  %call1.i202 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i202)
  %tobool.not.i203 = icmp eq i32 %call1.i202, 0
  br i1 %tobool.not.i203, label %land.lhs.true.i204.rcu_read_unlock.exit211_crit_edge, label %land.lhs.true2.i206

land.lhs.true.i204.rcu_read_unlock.exit211_crit_edge: ; preds = %land.lhs.true.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit211

land.lhs.true2.i206:                              ; preds = %land.lhs.true.i204
  %.b4.i205 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i205, label %land.lhs.true2.i206.rcu_read_unlock.exit211_crit_edge, label %if.then.i207

land.lhs.true2.i206.rcu_read_unlock.exit211_crit_edge: ; preds = %land.lhs.true2.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit211

if.then.i207:                                     ; preds = %land.lhs.true2.i206
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 724, ptr noundef nonnull @.str.59) #10
  br label %rcu_read_unlock.exit211

rcu_read_unlock.exit211:                          ; preds = %if.then.i207, %land.lhs.true2.i206.rcu_read_unlock.exit211_crit_edge, %land.lhs.true.i204.rcu_read_unlock.exit211_crit_edge, %do.body75.critedge177.rcu_read_unlock.exit211_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  br label %do.body75.sink.split

do.body75.critedge178:                            ; preds = %do.end47
  %call.i212 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i212, label %do.body75.critedge178.rcu_read_unlock.exit222_crit_edge, label %land.lhs.true.i215

do.body75.critedge178.rcu_read_unlock.exit222_crit_edge: ; preds = %do.body75.critedge178
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit222

land.lhs.true.i215:                               ; preds = %do.body75.critedge178
  %call1.i213 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i213)
  %tobool.not.i214 = icmp eq i32 %call1.i213, 0
  br i1 %tobool.not.i214, label %land.lhs.true.i215.rcu_read_unlock.exit222_crit_edge, label %land.lhs.true2.i217

land.lhs.true.i215.rcu_read_unlock.exit222_crit_edge: ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit222

land.lhs.true2.i217:                              ; preds = %land.lhs.true.i215
  %.b4.i216 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i216, label %land.lhs.true2.i217.rcu_read_unlock.exit222_crit_edge, label %if.then.i218

land.lhs.true2.i217.rcu_read_unlock.exit222_crit_edge: ; preds = %land.lhs.true2.i217
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit222

if.then.i218:                                     ; preds = %land.lhs.true2.i217
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 724, ptr noundef nonnull @.str.59) #10
  br label %rcu_read_unlock.exit222

rcu_read_unlock.exit222:                          ; preds = %if.then.i218, %land.lhs.true2.i217.rcu_read_unlock.exit222_crit_edge, %land.lhs.true.i215.rcu_read_unlock.exit222_crit_edge, %do.body75.critedge178.rcu_read_unlock.exit222_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !144
  br label %do.body75.sink.split

do.body75.sink.split:                             ; preds = %rcu_read_unlock.exit222, %rcu_read_unlock.exit211, %rcu_read_unlock.exit200
  %44 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i.i.i.i197 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i197 to ptr
  %preempt_count.i.i.i.i198 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i198, align 4
  %sub.i.i.i221 = add i32 %47, -1
  store volatile i32 %sub.i.i.i221, ptr %preempt_count.i.i.i.i198, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %do.body75

do.body75:                                        ; preds = %do.body75.sink.split, %rcu_read_unlock.exit.do.body75_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %48 = load i32, ptr @afs_debug, align 4
  %and76 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.body75.do.end96_crit_edge, label %do.end87, !prof !135

do.body75.do.end96_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end96

do.end87:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  %49 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i223 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i223 to ptr
  %task90 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task90, align 8
  %comm91 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %comm91) #13
  br label %do.end96

do.end96:                                         ; preds = %do.end87, %do.body75.do.end96_crit_edge
  %call97 = tail call i32 @afs_fetch_status(ptr noundef %vnode, ptr noundef %key, i1 noundef zeroext false, ptr noundef %_access) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then100, label %do.end96.do.body125_crit_edge

do.end96.do.body125_crit_edge:                    ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body125

if.then100:                                       ; preds = %do.end96
  %53 = ptrtoint ptr %_access to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %_access, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %54 = load i32, ptr @afs_debug, align 4
  %and102 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then100.cleanup_crit_edge, label %do.end113, !prof !135

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end113:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %55 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i224 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i224 to ptr
  %task116 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task116, align 8
  %comm117 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm117, ptr noundef nonnull @.str.29, i32 noundef %call97) #13
  br label %cleanup

do.body125:                                       ; preds = %do.end96.do.body125_crit_edge, %rcu_read_unlock.exit.do.body125_crit_edge, %do.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %59 = load i32, ptr @afs_debug, align 4
  %and126 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body125.cleanup_crit_edge, label %do.end137, !prof !135

do.body125.cleanup_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end137:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  %60 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i225 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i225 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task140, align 8
  %comm141 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %64 = ptrtoint ptr %_access to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %_access, align 4
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm141, ptr noundef nonnull @.str.29, i32 noundef %65) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end137, %do.body125.cleanup_crit_edge, %do.end113, %if.then100.cleanup_crit_edge
  %retval.0 = phi i32 [ %call97, %do.end113 ], [ %call97, %if.then100.cleanup_crit_edge ], [ 0, %do.end137 ], [ 0, %do.body125.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_fetch_status(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_permission(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %access = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %access) #10
  %0 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %access, align 4, !annotation !147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !135

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2
  %6 = ptrtoint ptr %fid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fid, align 8
  %vnode6 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %vnode6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %vnode6, align 8
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 13
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %comm, ptr noundef nonnull @.str.43, i64 noundef %7, i64 noundef %9, i32 noundef %11, i32 noundef %mask) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %and10 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %volume21 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 1
  %12 = ptrtoint ptr %volume21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %volume21, align 8
  %cell22 = getelementptr inbounds %struct.afs_volume, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cell22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cell22, align 8
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end9
  %call13 = tail call ptr @afs_request_key_rcu(ptr noundef %15)
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12.cleanup_crit_edge, label %if.end16

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  %call17 = tail call zeroext i1 @afs_check_validity(ptr noundef %inode) #10
  br i1 %call17, label %lor.lhs.false, label %if.end16.error_crit_edge

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

lor.lhs.false:                                    ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %16 = load i32, ptr @afs_debug, align 4
  %and.i229 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i229)
  %tobool.not.i = icmp eq i32 %and.i229, 0
  br i1 %tobool.not.i, label %lor.lhs.false.do.end9.i_crit_edge, label %do.end.i, !prof !135

lor.lhs.false.do.end9.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

do.end.i:                                         ; preds = %lor.lhs.false
  %17 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %fid.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2
  %21 = ptrtoint ptr %fid.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fid.i, align 8
  %vnode5.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %vnode5.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %vnode5.i, align 8
  %tobool.not.i.i = icmp eq ptr %call13, null
  br i1 %tobool.not.i.i, label %do.end.i.key_serial.exit.i_crit_edge, label %cond.true.i.i

do.end.i.key_serial.exit.i_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %key_serial.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i.i = getelementptr inbounds %struct.key, ptr %call13, i32 0, i32 1
  %25 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %serial.i.i, align 4
  br label %key_serial.exit.i

key_serial.exit.i:                                ; preds = %cond.true.i.i, %do.end.i.key_serial.exit.i_crit_edge
  %cond.i.i = phi i32 [ %26, %cond.true.i.i ], [ 0, %do.end.i.key_serial.exit.i_crit_edge ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm.i, ptr noundef nonnull @.str.60, i64 noundef %22, i64 noundef %24, i32 noundef %cond.i.i) #13
  br label %do.end9.i

do.end9.i:                                        ; preds = %key_serial.exit.i, %lor.lhs.false.do.end9.i_crit_edge
  %27 = ptrtoint ptr %volume21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %volume21, align 8
  %cell.i = getelementptr inbounds %struct.afs_volume, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cell.i, align 8
  %anonymous_key.i = getelementptr inbounds %struct.afs_cell, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %anonymous_key.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %anonymous_key.i, align 8
  %cmp.i230 = icmp eq ptr %32, %call13
  br i1 %cmp.i230, label %if.then10.i, label %if.end33.i

if.then10.i:                                      ; preds = %do.end9.i
  %anon_access.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %anon_access.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %anon_access.i, align 4
  %35 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %access, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %36 = load i32, ptr @afs_debug, align 4
  %and12.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.then10.i.do.body59_crit_edge, label %do.end23.i, !prof !135

if.then10.i.do.body59_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

do.end23.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i144.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i144.i to ptr
  %task26.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task26.i, align 8
  %comm27.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %comm27.i, ptr noundef nonnull @.str.60, i32 noundef %34) #13
  br label %do.body59

if.end33.i:                                       ; preds = %do.end9.i
  %permit_cache.i = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 6
  %41 = ptrtoint ptr %permit_cache.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %permit_cache.i, align 4
  %call39.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i, label %if.end33.i.do.end48.i_crit_edge

if.end33.i.do.end48.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48.i

land.lhs.true.i:                                  ; preds = %if.end33.i
  %call41.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true.i.do.end48.i_crit_edge, label %land.lhs.true43.i

land.lhs.true.i.do.end48.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48.i

land.lhs.true43.i:                                ; preds = %land.lhs.true.i
  %.b143.i = load i1, ptr @afs_check_permit_rcu.__warned, align 1
  br i1 %.b143.i, label %land.lhs.true43.i.do.end48.i_crit_edge, label %if.then45.i

land.lhs.true43.i.do.end48.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48.i

if.then45.i:                                      ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_check_permit_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 320, ptr noundef nonnull @.str.27) #10
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then45.i, %land.lhs.true43.i.do.end48.i_crit_edge, %land.lhs.true.i.do.end48.i_crit_edge, %if.end33.i.do.end48.i_crit_edge
  %tobool50.not.i = icmp eq ptr %42, null
  br i1 %tobool50.not.i, label %do.end48.i.do.body99.i_crit_edge, label %for.cond.preheader.i

do.end48.i.do.body99.i_crit_edge:                 ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99.i

for.cond.preheader.i:                             ; preds = %do.end48.i
  %nr_permits.i = getelementptr inbounds %struct.afs_permits, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %nr_permits.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %nr_permits.i, align 4
  %conv.i = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp52148.not.i = icmp eq i16 %44, 0
  br i1 %cmp52148.not.i, label %for.cond.preheader.i.do.body99.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.body99.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0149.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.afs_permits, ptr %42, i32 0, i32 6, i32 %i.0149.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %cmp56.i = icmp ult ptr %46, %call13
  br i1 %cmp56.i, label %for.inc.i, label %if.end59.i

if.end59.i:                                       ; preds = %for.body.i
  %cmp63.i = icmp ugt ptr %46, %call13
  br i1 %cmp63.i, label %if.end59.i.do.body99.i_crit_edge, label %if.end66.i

if.end59.i.do.body99.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99.i

if.end66.i:                                       ; preds = %if.end59.i
  %access.i = getelementptr %struct.afs_permits, ptr %42, i32 0, i32 6, i32 %i.0149.i, i32 1
  %47 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %access.i, align 4
  %49 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %access, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %50 = load i32, ptr @afs_debug, align 4
  %and70.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.end66.i.afs_check_permit_rcu.exit_crit_edge, label %do.end81.i, !prof !135

if.end66.i.afs_check_permit_rcu.exit_crit_edge:   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %afs_check_permit_rcu.exit

do.end81.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i145.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i145.i to ptr
  %task84.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task84.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task84.i, align 8
  %comm85.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %invalidated.i = getelementptr inbounds %struct.afs_permits, ptr %42, i32 0, i32 5
  %55 = ptrtoint ptr %invalidated.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %invalidated.i, align 2, !range !142
  %57 = xor i8 %56, 1
  %58 = zext i8 %57 to i32
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %comm85.i, ptr noundef nonnull @.str.60, i32 noundef %58, i32 noundef %48) #13
  br label %afs_check_permit_rcu.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0149.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.do.body99.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.body99.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99.i

do.body99.i:                                      ; preds = %for.inc.i.do.body99.i_crit_edge, %if.end59.i.do.body99.i_crit_edge, %for.cond.preheader.i.do.body99.i_crit_edge, %do.end48.i.do.body99.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %59 = load i32, ptr @afs_debug, align 4
  %and100.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %do.body99.i.error_crit_edge, label %do.end111.i, !prof !135

do.body99.i.error_crit_edge:                      ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.end111.i:                                      ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i146.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i146.i to ptr
  %task114.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task114.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task114.i, align 8
  %comm115.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %call117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %comm115.i, ptr noundef nonnull @.str.60) #13
  br label %error

afs_check_permit_rcu.exit:                        ; preds = %do.end81.i, %if.end66.i.afs_check_permit_rcu.exit_crit_edge
  %invalidated94.i = getelementptr inbounds %struct.afs_permits, ptr %42, i32 0, i32 5
  %64 = ptrtoint ptr %invalidated94.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %invalidated94.i, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool95.not.i = icmp eq i8 %65, 0
  br i1 %tobool95.not.i, label %afs_check_permit_rcu.exit.do.body59_crit_edge, label %afs_check_permit_rcu.exit.error_crit_edge

afs_check_permit_rcu.exit.error_crit_edge:        ; preds = %afs_check_permit_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

afs_check_permit_rcu.exit.do.body59_crit_edge:    ; preds = %afs_check_permit_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

if.else:                                          ; preds = %do.end9
  %call23 = tail call ptr @afs_request_key(ptr noundef %15)
  %cmp.i231 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %do.body26, label %if.end50

do.body26:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %66 = load i32, ptr @afs_debug, align 4
  %and27 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.do.end48_crit_edge, label %do.end38, !prof !135

do.body26.do.end48_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = ptrtoint ptr %call23 to i32
  br label %cleanup

do.end38:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %67 = tail call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i232 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i232 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task41, align 8
  %comm42 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 101
  %71 = ptrtoint ptr %call23 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm42, ptr noundef nonnull @.str.43, i32 noundef %71) #13
  br label %cleanup

if.end50:                                         ; preds = %if.else
  %call51 = tail call i32 @afs_validate(ptr noundef %inode, ptr noundef %call23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %if.end50.error_crit_edge, label %if.end53

if.end50.error_crit_edge:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end53:                                         ; preds = %if.end50
  %call54 = call i32 @afs_check_permit(ptr noundef %inode, ptr noundef %call23, ptr noundef nonnull %access)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.error_crit_edge, label %if.end53.do.body59_crit_edge

if.end53.do.body59_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

if.end53.error_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.body59:                                        ; preds = %if.end53.do.body59_crit_edge, %afs_check_permit_rcu.exit.do.body59_crit_edge, %do.end23.i, %if.then10.i.do.body59_crit_edge
  %key.0 = phi ptr [ %call13, %afs_check_permit_rcu.exit.do.body59_crit_edge ], [ %call23, %if.end53.do.body59_crit_edge ], [ %call13, %do.end23.i ], [ %call13, %if.then10.i.do.body59_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %72 = load i32, ptr @afs_debug, align 4
  %and60 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.end83_crit_edge, label %do.end71, !prof !135

do.body59.do.end83_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end83

do.end71:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %73 = call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i233 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i233 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task74, align 8
  %comm75 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 101
  %77 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %access, align 4
  %79 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %inode, align 8
  %81 = and i16 %80, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %81)
  %cmp78 = icmp eq i16 %81, 16384
  %cond = select i1 %cmp78, ptr @.str.50, ptr @.str.51
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm75, i32 noundef %mask, i32 noundef %78, ptr noundef nonnull %cond) #13
  br label %do.end83

do.end83:                                         ; preds = %do.end71, %do.body59.do.end83_crit_edge
  %82 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %inode, align 8
  %conv85 = zext i16 %83 to i32
  %and86 = and i32 %conv85, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and86)
  %cmp87 = icmp eq i32 %and86, 16384
  br i1 %cmp87, label %if.then89, label %if.else106

if.then89:                                        ; preds = %do.end83
  %and90 = and i32 %mask, 69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.then89.if.end97_crit_edge, label %if.then92

if.then89.if.end97_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then92:                                        ; preds = %if.then89
  %84 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %access, align 4
  %and93 = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.then92.error_crit_edge, label %if.then92.if.end97_crit_edge

if.then92.if.end97_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then92.error_crit_edge:                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end97:                                         ; preds = %if.then92.if.end97_crit_edge, %if.then89.if.end97_crit_edge
  %and98 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end148_crit_edge, label %if.then100

if.end97.if.end148_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then100:                                       ; preds = %if.end97
  %86 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %access, align 4
  %and101 = and i32 %87, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then100.error_crit_edge, label %if.then100.if.end148_crit_edge

if.then100.if.end148_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then100.error_crit_edge:                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else106:                                       ; preds = %do.end83
  %88 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %access, align 4
  %and107 = and i32 %89, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.else106.error_crit_edge, label %if.end110

if.else106.error_crit_edge:                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end110:                                        ; preds = %if.else106
  %and111 = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp ne i32 %and111, 0
  %and115 = and i32 %conv85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %or.cond = select i1 %tobool112.not, i1 %tobool116.not, i1 false
  br i1 %or.cond, label %if.end110.error_crit_edge, label %if.end118

if.end110.error_crit_edge:                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end118:                                        ; preds = %if.end110
  %and119 = and i32 %mask, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.else132, label %if.then121

if.then121:                                       ; preds = %if.end118
  %and122 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %90 = and i16 %83, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool129.not = icmp eq i16 %90, 0
  %or.cond240 = select i1 %tobool123.not, i1 true, i1 %tobool129.not
  br i1 %or.cond240, label %if.then121.error_crit_edge, label %if.then121.if.end148_crit_edge

if.then121.if.end148_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then121.error_crit_edge:                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else132:                                       ; preds = %if.end118
  %and133 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %if.else132.if.end148_crit_edge, label %if.then135

if.else132.if.end148_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then135:                                       ; preds = %if.else132
  %and136 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %91 = and i16 %83, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool143.not = icmp eq i16 %91, 0
  %or.cond241 = select i1 %tobool137.not, i1 true, i1 %tobool143.not
  br i1 %or.cond241, label %if.then135.error_crit_edge, label %if.then135.if.end148_crit_edge

if.then135.if.end148_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then135.error_crit_edge:                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end148:                                        ; preds = %if.then135.if.end148_crit_edge, %if.else132.if.end148_crit_edge, %if.then121.if.end148_crit_edge, %if.then100.if.end148_crit_edge, %if.end97.if.end148_crit_edge
  call void @key_put(ptr noundef %key.0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %92 = load i32, ptr @afs_debug, align 4
  %and150 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end148.cleanup_crit_edge, label %do.end161, !prof !135

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end161:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %93 = call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i234 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i234 to ptr
  %task164 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task164 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task164, align 8
  %comm165 = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 101
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm165, ptr noundef nonnull @.str.43, i32 noundef 0) #13
  br label %cleanup

error:                                            ; preds = %if.then135.error_crit_edge, %if.then121.error_crit_edge, %if.end110.error_crit_edge, %if.else106.error_crit_edge, %if.then100.error_crit_edge, %if.then92.error_crit_edge, %if.end53.error_crit_edge, %if.end50.error_crit_edge, %afs_check_permit_rcu.exit.error_crit_edge, %do.end111.i, %do.body99.i.error_crit_edge, %if.end16.error_crit_edge
  %ret.0 = phi i32 [ -10, %afs_check_permit_rcu.exit.error_crit_edge ], [ -10, %if.end16.error_crit_edge ], [ %call51, %if.end50.error_crit_edge ], [ %call54, %if.end53.error_crit_edge ], [ -13, %if.end110.error_crit_edge ], [ -13, %if.then135.error_crit_edge ], [ -13, %if.then121.error_crit_edge ], [ -13, %if.else106.error_crit_edge ], [ -13, %if.then100.error_crit_edge ], [ -13, %if.then92.error_crit_edge ], [ -10, %do.end111.i ], [ -10, %do.body99.i.error_crit_edge ]
  %key.1 = phi ptr [ %call13, %afs_check_permit_rcu.exit.error_crit_edge ], [ %call13, %if.end16.error_crit_edge ], [ %call23, %if.end50.error_crit_edge ], [ %call23, %if.end53.error_crit_edge ], [ %key.0, %if.end110.error_crit_edge ], [ %key.0, %if.then135.error_crit_edge ], [ %key.0, %if.then121.error_crit_edge ], [ %key.0, %if.else106.error_crit_edge ], [ %key.0, %if.then100.error_crit_edge ], [ %key.0, %if.then92.error_crit_edge ], [ %call13, %do.end111.i ], [ %call13, %do.body99.i.error_crit_edge ]
  call void @key_put(ptr noundef %key.1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %97 = load i32, ptr @afs_debug, align 4
  %and172 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %error.cleanup_crit_edge, label %do.end183, !prof !135

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end183:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  %98 = call i32 @llvm.read_register.i32(metadata !125) #10
  %and.i235 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i235 to ptr
  %task186 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task186 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task186, align 8
  %comm187 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 101
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %comm187, ptr noundef nonnull @.str.43, i32 noundef %ret.0) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end183, %error.cleanup_crit_edge, %do.end161, %if.end148.cleanup_crit_edge, %do.end38, %do.body26.do.end48_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %if.then12.cleanup_crit_edge ], [ 0, %do.end161 ], [ 0, %if.end148.cleanup_crit_edge ], [ %ret.0, %do.end183 ], [ %ret.0, %error.cleanup_crit_edge ], [ %.pre, %do.body26.do.end48_crit_edge ], [ %71, %do.end38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %access) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_check_validity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_validate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @afs_clean_up_permit_cache() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %if.end29.for.body_crit_edge ]
  %arrayidx = getelementptr [1024 x %struct.hlist_head], ptr @afs_permits_cache, i32 0, i32 %i.042
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %for.body.if.end29_crit_edge, label %land.rhs

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %for.body
  %.b41 = load i1, ptr @afs_clean_up_permit_cache.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !135

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @afs_clean_up_permit_cache.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 486, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %for.body.if.end29_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !92, !93, !95, !97, !98, !100, !101, !102, !104, !105, !107, !109, !110, !111, !113, !114, !115, !117, !119, !120, !121, !123, !124}
!llvm.named.register.sp = !{!125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/afs/security.c", i32 27, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @afs_request_key._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @afs_request_key._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/afs/security.c", i32 29, i32 2}
!8 = !{ptr @afs_request_key._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @afs_request_key._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/security.c", i32 34, i32 4}
!12 = !{ptr @afs_request_key._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_request_key._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/afs/security.c", i32 39, i32 3}
!16 = !{ptr @afs_request_key._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @afs_request_key._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/afs/security.c", i32 43, i32 3}
!20 = !{ptr @afs_request_key._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_request_key._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/security.c", i32 55, i32 2}
!24 = !{ptr @afs_request_key_rcu._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_request_key_rcu._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @afs_request_key_rcu._entry.16, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../fs/afs/security.c", i32 57, i32 2}
!28 = !{ptr @afs_request_key_rcu._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @afs_request_key_rcu._entry.18, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../fs/afs/security.c", i32 63, i32 4}
!31 = !{ptr @afs_request_key_rcu._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @afs_request_key_rcu._entry.20, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../fs/afs/security.c", i32 68, i32 3}
!34 = !{ptr @afs_request_key_rcu._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @afs_request_key_rcu._entry.22, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../fs/afs/security.c", i32 72, i32 3}
!37 = !{ptr @afs_request_key_rcu._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../fs/afs/security.c", i32 112, i32 12}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/afs/security.c", i32 152, i32 2}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @afs_cache_permit._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @afs_cache_permit._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../fs/afs/security.c", i32 160, i32 12}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/afs/security.c", i32 350, i32 2}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @afs_check_permit._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @afs_check_permit._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/afs/security.c", i32 355, i32 3}
!56 = !{ptr @afs_check_permit._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @afs_check_permit._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../fs/afs/security.c", i32 360, i32 13}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/afs/security.c", i32 380, i32 3}
!62 = !{ptr @afs_check_permit._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @afs_check_permit._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/afs/security.c", i32 385, i32 4}
!66 = !{ptr @afs_check_permit._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @afs_check_permit._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/afs/security.c", i32 390, i32 2}
!70 = !{ptr @afs_check_permit._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @afs_check_permit._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/afs/security.c", i32 407, i32 2}
!74 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @afs_permission._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @afs_permission._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/afs/security.c", i32 422, i32 4}
!79 = !{ptr @afs_permission._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @afs_permission._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/afs/security.c", i32 437, i32 2}
!83 = !{ptr @afs_permission._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @afs_permission._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @afs_permission._entry.52, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../fs/afs/security.c", i32 470, i32 2}
!89 = !{ptr @afs_permission._entry_ptr.53, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @afs_permission._entry.54, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../fs/afs/security.c", i32 477, i32 2}
!92 = !{ptr @afs_permission._entry_ptr.55, !91, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../fs/afs/security.c", i32 486, i32 3}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/afs/security.c", i32 18, i32 8}
!97 = !{ptr @afs_permits_lock, !96, !"afs_permits_lock", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!100 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!104 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @afs_permits_cache, !106, !"afs_permits_cache", i1 false, i1 false}
!106 = !{!"../fs/afs/security.c", i32 17, i32 8}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/afs/security.c", i32 310, i32 2}
!109 = !{ptr @afs_check_permit_rcu._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @afs_check_permit_rcu._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/afs/security.c", i32 316, i32 3}
!113 = !{ptr @afs_check_permit_rcu._entry.61, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @afs_check_permit_rcu._entry_ptr.63, !112, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../fs/afs/security.c", i32 320, i32 12}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/afs/security.c", i32 329, i32 4}
!119 = !{ptr @afs_check_permit_rcu._entry.64, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @afs_check_permit_rcu._entry_ptr.66, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/afs/security.c", i32 334, i32 2}
!123 = !{ptr @afs_check_permit_rcu._entry.67, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @afs_check_permit_rcu._entry_ptr.69, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{!"sp"}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i64 2148592037, i64 2148592069, i64 2148592098, i64 2148592132, i64 2148592163, i64 2148592186}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = !{i64 2148680062}
!139 = !{i64 2148594502, i64 2148594534, i64 2148594563, i64 2148594597, i64 2148594628, i64 2148594651}
!140 = !{i64 2149877835}
!141 = !{i64 2149927378}
!142 = !{i8 0, i8 2}
!143 = !{i64 1076020, i64 1076044, i64 1076065, i64 1076082, i64 1076099}
!144 = !{i64 2149927644}
!145 = !{i64 2151510290}
!146 = !{i64 2157853731}
!147 = !{!"auto-init"}
