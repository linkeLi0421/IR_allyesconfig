; ModuleID = '/llk/IR_all_yes/fs/lockd/host.c_pt.bc'
source_filename = "../fs/lockd/host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nlm_lookup_host_info = type { i32, ptr, i32, i16, i32, ptr, i32, i32, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.64 }
%union.anon.64 = type { [4 x i32] }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lockd_net = type { i32, i32, i32, %struct.delayed_work, %struct.lock_manager, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lock_manager = type { %struct.list_head, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.83, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.83 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.71, i32, %struct.spinlock }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nsm_handle = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.__kernel_sockaddr_storage, i32, i8, %struct.nsm_private, [51 x i8] }
%struct.nsm_private = type { [16 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.32 }
%struct.kuid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.32 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.102, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.102 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.nlm_reboot = type { ptr, i32, i32, %struct.nsm_private }

@lockd_net_id = external dso_local local_unnamed_addr global i32, align 4
@nlm_debug = external dso_local local_unnamed_addr global i32, align 4
@nlmclnt_lookup_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lockd: %s(host='%s', vers=%u, proto=%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlmclnt_lookup_host\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/lockd/host.c\00", [16 x i8] zeroinitializer }, align 32
@nlmclnt_lookup_host._entry_ptr = internal global ptr @nlmclnt_lookup_host._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<none>\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udp\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@nlm_host_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nlm_host_mutex, i64 52), ptr getelementptr (i8, ptr @nlm_host_mutex, i64 52) }, ptr @nlm_host_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nlm_client_hosts = internal global { [32 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@nlmclnt_lookup_host._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lockd: %s found host %s (%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@nlmclnt_lookup_host._entry_ptr.8 = internal global ptr @nlmclnt_lookup_host._entry.6, section ".printk_index", align 4
@nrhosts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nlmclnt_lookup_host._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lockd: %s created host %s (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@nlmclnt_lookup_host._entry_ptr.11 = internal global ptr @nlmclnt_lookup_host._entry.9, section ".printk_index", align 4
@nlmclnt_release_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockd: release client host %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlmclnt_release_host\00", [43 x i8] zeroinitializer }, align 32
@nlmclnt_release_host._entry_ptr = internal global ptr @nlmclnt_release_host._entry, section ".printk_index", align 4
@nlmclnt_release_host.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlmclnt_release_host.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlmclnt_release_host.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlmclnt_release_host.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlmsvc_lookup_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lockd: %s(host='%.*s', vers=%u, proto=%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlmsvc_lookup_host\00", [45 x i8] zeroinitializer }, align 32
@nlmsvc_lookup_host._entry_ptr = internal global ptr @nlmsvc_lookup_host._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nlm_server_hosts = internal global { [32 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@nlmsvc_lookup_host._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.18, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nlmsvc_lookup_host._entry_ptr.20 = internal global ptr @nlmsvc_lookup_host._entry.19, section ".printk_index", align 4
@nlmsvc_lookup_host._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.18, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nlmsvc_lookup_host._entry_ptr.22 = internal global ptr @nlmsvc_lookup_host._entry.21, section ".printk_index", align 4
@nlmsvc_release_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lockd: release server host %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlmsvc_release_host\00", [44 x i8] zeroinitializer }, align 32
@nlmsvc_release_host._entry_ptr = internal global ptr @nlmsvc_release_host._entry, section ".printk_index", align 4
@nlmsvc_release_host.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nlm_bind_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lockd: nlm_bind_host %s (%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nlm_bind_host\00", [18 x i8] zeroinitializer }, align 32
@nlm_bind_host._entry_ptr = internal global ptr @nlm_bind_host._entry, section ".printk_index", align 4
@nlmsvc_timeout = external dso_local local_unnamed_addr global i32, align 4
@nlm_program = external dso_local constant %struct.rpc_program, align 4
@nlm_bind_host._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"lockd: couldn't create RPC handle for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@nlm_bind_host._entry_ptr.29 = internal global ptr @nlm_bind_host._entry.27, section ".printk_index", align 4
@nlm_get_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lockd: get host %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nlm_get_host\00", [19 x i8] zeroinitializer }, align 32
@nlm_get_host._entry_ptr = internal global ptr @nlm_get_host._entry, section ".printk_index", align 4
@nlm_shutdown_hosts_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lockd: nuking all hosts in net %x...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlm_shutdown_hosts_net\00", [41 x i8] zeroinitializer }, align 32
@nlm_shutdown_hosts_net._entry_ptr = internal global ptr @nlm_shutdown_hosts_net._entry, section ".printk_index", align 4
@nlm_shutdown_hosts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lockd: shutting down host module\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlm_shutdown_hosts\00", [45 x i8] zeroinitializer }, align 32
@nlm_shutdown_hosts._entry_ptr = internal global ptr @nlm_shutdown_hosts._entry, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nlm_host_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nlm_host_mutex\00", [17 x i8] zeroinitializer }, align 32
@nlm_alloc_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lockd: %s failed; no nsm handle\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nlm_alloc_host\00", [17 x i8] zeroinitializer }, align 32
@nlm_alloc_host._entry_ptr = internal global ptr @nlm_alloc_host._entry, section ".printk_index", align 4
@nlm_alloc_host._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lockd: %s failed; no memory\0A\00", [35 x i8] zeroinitializer }, align 32
@nlm_alloc_host._entry_ptr.47 = internal global ptr @nlm_alloc_host._entry.45, section ".printk_index", align 4
@nlm_alloc_host.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&host->h_gracewait\00", [45 x i8] zeroinitializer }, align 32
@nlm_alloc_host.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&host->h_rwsem\00", [17 x i8] zeroinitializer }, align 32
@nlm_alloc_host.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&host->h_mutex\00", [17 x i8] zeroinitializer }, align 32
@nlm_alloc_host.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&host->h_lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@nlm_destroy_host_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lockd: destroy host %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nlm_destroy_host_locked\00", [40 x i8] zeroinitializer }, align 32
@nlm_destroy_host_locked._entry_ptr = internal global ptr @nlm_destroy_host_locked._entry, section ".printk_index", align 4
@nlm_complain_hosts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014lockd: couldn't shutdown host module for net %x!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlm_complain_hosts\00", [45 x i8] zeroinitializer }, align 32
@nlm_complain_hosts._entry_ptr = internal global ptr @nlm_complain_hosts._entry, section ".printk_index", align 4
@nlm_complain_hosts._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lockd: %lu hosts left in net %x:\0A\00", [62 x i8] zeroinitializer }, align 32
@nlm_complain_hosts._entry_ptr.62 = internal global ptr @nlm_complain_hosts._entry.60, section ".printk_index", align 4
@nlm_complain_hosts._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014lockd: couldn't shutdown host module!\0A\00", [55 x i8] zeroinitializer }, align 32
@nlm_complain_hosts._entry_ptr.65 = internal global ptr @nlm_complain_hosts._entry.63, section ".printk_index", align 4
@nlm_complain_hosts._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lockd: %lu hosts left:\0A\00", [40 x i8] zeroinitializer }, align 32
@nlm_complain_hosts._entry_ptr.68 = internal global ptr @nlm_complain_hosts._entry.66, section ".printk_index", align 4
@nlm_complain_hosts._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"       %s (cnt %d use %d exp %ld net %x)\0A\00", [54 x i8] zeroinitializer }, align 32
@nlm_complain_hosts._entry_ptr.71 = internal global ptr @nlm_complain_hosts._entry.69, section ".printk_index", align 4
@nlm_gc_hosts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lockd: host garbage collection for net %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nlm_gc_hosts\00", [19 x i8] zeroinitializer }, align 32
@nlm_gc_hosts._entry_ptr = internal global ptr @nlm_gc_hosts._entry, section ".printk_index", align 4
@nlm_gc_hosts._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nlm_gc_hosts skipping %s (cnt %d use %d exp %ld net %x)\0A\00", [39 x i8] zeroinitializer }, align 32
@nlm_gc_hosts._entry_ptr.76 = internal global ptr @nlm_gc_hosts._entry.74, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 242, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"nlm_host_mutex\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"nlm_client_hosts\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 35, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 265, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [8 x i8] c"nrhosts\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 48, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 278, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 296, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 350, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"nlm_server_hosts\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 34, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 382, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 399, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 418, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 432, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 483, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 518, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 622, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 647, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 45, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 695, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 723, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 49, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 124, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 132, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 150, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 151, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 156, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 160, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 253, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 183, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 593, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 595, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 600, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 601, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 607, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 663, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [19 x i8] c"../fs/lockd/host.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 678, i32 4 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @nlm_alloc_host._entry, ptr @nlm_alloc_host._entry.45, ptr @nlm_alloc_host._entry_ptr, ptr @nlm_alloc_host._entry_ptr.47, ptr @nlm_bind_host._entry, ptr @nlm_bind_host._entry.27, ptr @nlm_bind_host._entry_ptr, ptr @nlm_bind_host._entry_ptr.29, ptr @nlm_complain_hosts._entry, ptr @nlm_complain_hosts._entry.60, ptr @nlm_complain_hosts._entry.63, ptr @nlm_complain_hosts._entry.66, ptr @nlm_complain_hosts._entry.69, ptr @nlm_complain_hosts._entry_ptr, ptr @nlm_complain_hosts._entry_ptr.62, ptr @nlm_complain_hosts._entry_ptr.65, ptr @nlm_complain_hosts._entry_ptr.68, ptr @nlm_complain_hosts._entry_ptr.71, ptr @nlm_destroy_host_locked._entry, ptr @nlm_destroy_host_locked._entry_ptr, ptr @nlm_gc_hosts._entry, ptr @nlm_gc_hosts._entry.74, ptr @nlm_gc_hosts._entry_ptr, ptr @nlm_gc_hosts._entry_ptr.76, ptr @nlm_get_host._entry, ptr @nlm_get_host._entry_ptr, ptr @nlm_shutdown_hosts._entry, ptr @nlm_shutdown_hosts._entry_ptr, ptr @nlm_shutdown_hosts_net._entry, ptr @nlm_shutdown_hosts_net._entry_ptr, ptr @nlmclnt_lookup_host._entry, ptr @nlmclnt_lookup_host._entry.6, ptr @nlmclnt_lookup_host._entry.9, ptr @nlmclnt_lookup_host._entry_ptr, ptr @nlmclnt_lookup_host._entry_ptr.11, ptr @nlmclnt_lookup_host._entry_ptr.8, ptr @nlmclnt_release_host._entry, ptr @nlmclnt_release_host._entry_ptr, ptr @nlmsvc_lookup_host._entry, ptr @nlmsvc_lookup_host._entry.19, ptr @nlmsvc_lookup_host._entry.21, ptr @nlmsvc_lookup_host._entry_ptr, ptr @nlmsvc_lookup_host._entry_ptr.20, ptr @nlmsvc_lookup_host._entry_ptr.22, ptr @nlmsvc_release_host._entry, ptr @nlmsvc_release_host._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nlm_host_mutex, ptr @nlm_client_hosts, ptr @.str.7, ptr @nrhosts, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @.str.18, ptr @nlm_server_hosts, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @nlm_alloc_host.__key, ptr @.str.48, ptr @nlm_alloc_host.__key.49, ptr @.str.50, ptr @nlm_alloc_host.__key.51, ptr @.str.52, ptr @nlm_alloc_host.__key.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_lookup_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_host_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_client_hosts to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_lookup_host._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nrhosts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_lookup_host._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmclnt_release_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lookup_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_server_hosts to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lookup_host._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_lookup_host._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsvc_release_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_bind_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_bind_host._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_get_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_shutdown_hosts_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_shutdown_hosts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_alloc_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_alloc_host._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_alloc_host.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_alloc_host.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_alloc_host.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_alloc_host.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_destroy_host_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_complain_hosts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_complain_hosts._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_complain_hosts._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_complain_hosts._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_complain_hosts._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_gc_hosts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_gc_hosts._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nlmclnt_lookup_host(ptr noundef %sap, i32 noundef %salen, i16 noundef zeroext %protocol, i32 noundef %version, ptr noundef %hostname, i32 noundef %noresvport, ptr noundef %net, ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  %ni = alloca %struct.nlm_lookup_host_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ni) #10
  %0 = getelementptr inbounds i8, ptr %ni, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !161
  %2 = ptrtoint ptr %ni to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ni, align 4
  %sap1 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 1
  %3 = ptrtoint ptr %sap1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sap, ptr %sap1, align 4
  %salen2 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 2
  %4 = ptrtoint ptr %salen2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %salen, ptr %salen2, align 4
  %protocol3 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 3
  %5 = ptrtoint ptr %protocol3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %protocol, ptr %protocol3, align 4
  %version4 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 4
  %6 = ptrtoint ptr %version4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %version, ptr %version4, align 4
  %hostname5 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 5
  %7 = ptrtoint ptr %hostname5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hostname, ptr %hostname5, align 4
  %hostname_len = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 6
  %call = tail call i32 @strlen(ptr noundef %hostname) #13
  %8 = ptrtoint ptr %hostname_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %hostname_len, align 4
  %noresvport6 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 7
  %9 = ptrtoint ptr %noresvport6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %noresvport, ptr %noresvport6, align 4
  %net7 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 8
  %10 = ptrtoint ptr %net7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %net, ptr %net7, align 4
  %cred8 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 9
  %11 = ptrtoint ptr %cred8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cred, ptr %cred8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockd_net_id to i32))
  %12 = load i32, ptr @lockd_net_id, align 4
  %call9 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %13 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end18_crit_edge, label %do.end, !prof !162

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tobool13.not = icmp eq ptr %hostname, null
  %spec.select = select i1 %tobool13.not, ptr @.str.3, ptr %hostname
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %protocol)
  %cmp = icmp eq i16 %protocol, 17
  %cond15 = select i1 %cmp, ptr @.str.4, ptr @.str.5
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %spec.select, i32 noundef %version, ptr noundef nonnull %cond15) #14
  br label %do.end18

do.end18:                                         ; preds = %do.end, %entry.do.end18_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlm_host_mutex, i32 noundef 0) #10
  %14 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sap, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %do.end18.nlm_hash_address.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

do.end18.nlm_hash_address.exit_crit_edge:         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_hash_address.exit

sw.bb.i:                                          ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  %17 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sin_addr.i.i, align 4
  %shr.i.i.i = lshr i32 %18, 16
  %xor.i.i.i = xor i32 %shr.i.i.i, %18
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 8
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  br label %nlm_hash_address.exit

sw.bb1.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  %19 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %addr.sroa.0.0.copyload.i.i = load i32, ptr %sin6_addr.i.i, align 4
  %addr.sroa.5.0.sin6_addr.sroa_idx.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %addr.sroa.5.0.sin6_addr.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %addr.sroa.5.0.copyload.i.i = load i32, ptr %addr.sroa.5.0.sin6_addr.sroa_idx.i.i, align 4
  %addr.sroa.7.0.sin6_addr.sroa_idx.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %addr.sroa.7.0.sin6_addr.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %addr.sroa.7.0.copyload.i.i = load i32, ptr %addr.sroa.7.0.sin6_addr.sroa_idx.i.i, align 4
  %addr.sroa.9.0.sin6_addr.sroa_idx.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %addr.sroa.9.0.sin6_addr.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %addr.sroa.9.0.copyload.i.i = load i32, ptr %addr.sroa.9.0.sin6_addr.sroa_idx.i.i, align 4
  %shr.i.i5.i = lshr i32 %addr.sroa.0.0.copyload.i.i, 16
  %xor.i.i6.i = xor i32 %shr.i.i5.i, %addr.sroa.0.0.copyload.i.i
  %shr1.i.i7.i = lshr i32 %xor.i.i6.i, 8
  %shr.i12.i.i = lshr i32 %addr.sroa.5.0.copyload.i.i, 16
  %xor.i13.i.i = xor i32 %shr.i12.i.i, %addr.sroa.5.0.copyload.i.i
  %shr1.i14.i.i = lshr i32 %xor.i13.i.i, 8
  %shr.i16.i.i = lshr i32 %addr.sroa.7.0.copyload.i.i, 16
  %xor.i17.i.i = xor i32 %shr.i16.i.i, %addr.sroa.7.0.copyload.i.i
  %shr1.i18.i.i = lshr i32 %xor.i17.i.i, 8
  %shr.i20.i.i = lshr i32 %addr.sroa.9.0.copyload.i.i, 16
  %xor.i21.i.i = xor i32 %shr.i20.i.i, %addr.sroa.9.0.copyload.i.i
  %shr1.i22.i.i = lshr i32 %xor.i21.i.i, 8
  %xor2.i23.i.i = xor i32 %shr1.i.i7.i, %xor.i.i6.i
  %xor2.i19.i.i = xor i32 %xor2.i23.i.i, %xor.i13.i.i
  %xor2.i15.i.i = xor i32 %xor2.i19.i.i, %shr1.i14.i.i
  %xor2.i.i8.i = xor i32 %xor2.i15.i.i, %xor.i17.i.i
  %xor.i.i = xor i32 %xor2.i.i8.i, %shr1.i18.i.i
  %xor7.i.i = xor i32 %xor.i.i, %xor.i21.i.i
  %xor11.i.i = xor i32 %xor7.i.i, %shr1.i22.i.i
  br label %nlm_hash_address.exit

nlm_hash_address.exit:                            ; preds = %sw.bb1.i, %sw.bb.i, %do.end18.nlm_hash_address.exit_crit_edge
  %hash.0.i = phi i32 [ %xor11.i.i, %sw.bb1.i ], [ %xor2.i.i.i, %sw.bb.i ], [ 0, %do.end18.nlm_hash_address.exit_crit_edge ]
  %and.i = and i32 %hash.0.i, 31
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @nlm_client_hosts, i32 0, i32 %and.i
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %host.0156 = load ptr, ptr %arrayidx, align 4
  %tobool27.not157 = icmp eq ptr %host.0156, null
  br i1 %tobool27.not157, label %nlm_hash_address.exit.for.end_crit_edge, label %for.body.lr.ph

nlm_hash_address.exit.for.end_crit_edge:          ; preds = %nlm_hash_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %nlm_hash_address.exit
  %sin6_addr1.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  %arrayidx6.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx11.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx17.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin6_scope_id5.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 4
  %sin_addr1.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %host.0161 = phi ptr [ %host.0156, %for.body.lr.ph ], [ %host.0, %for.inc.for.body_crit_edge ]
  %nsm.0158 = phi ptr [ null, %for.body.lr.ph ], [ %nsm.2, %for.inc.for.body_crit_edge ]
  %net28 = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 25
  %24 = ptrtoint ptr %net28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net28, align 4
  %cmp29.not = icmp eq ptr %25, %net
  br i1 %cmp29.not, label %if.end32, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %h_addr.i = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 1
  %26 = ptrtoint ptr %h_addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %h_addr.i, align 2
  %28 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sap, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp.i = icmp eq i16 %27, %29
  br i1 %cmp.i, label %if.then.i, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.end32
  %30 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %27, label %if.then.i.for.inc_crit_edge [
    i16 2, label %sw.bb.i146
    i16 10, label %sw.bb6.i
  ]

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb.i146:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i.i145 = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 1, i32 0, i32 1
  br label %rpc_cmp_addr.exit

sw.bb6.i:                                         ; preds = %if.then.i
  %sin6_addr.i.i147 = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 1, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %sin6_addr.i.i147 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sin6_addr.i.i147, align 4
  %33 = ptrtoint ptr %sin6_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sin6_addr1.i.i, align 4
  %xor.i.i.i148 = xor i32 %34, %32
  %arrayidx4.i.i.i = getelementptr %struct.nlm_host, ptr %host.0161, i32 0, i32 1, i32 0, i32 1, i32 8
  %35 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i.i.i, align 4
  %37 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %38, %36
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i148
  %arrayidx9.i.i.i = getelementptr %struct.nlm_host, ptr %host.0161, i32 0, i32 1, i32 0, i32 1, i32 12
  %39 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx9.i.i.i, align 4
  %41 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %42, %40
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.nlm_host, ptr %host.0161, i32 0, i32 1, i32 0, i32 1, i32 16
  %43 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx15.i.i.i, align 4
  %45 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %46, %44
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.else.i.i, label %sw.bb6.i.for.inc_crit_edge

sw.bb6.i.for.inc_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i.i:                                      ; preds = %sw.bb6.i
  %call.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i147) #10
  %and.i.i = and i32 %call.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.if.end36_crit_edge, label %if.then4.i.i

if.else.i.i.if.end36_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_scope_id.i.i = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 1, i32 0, i32 1, i32 20
  br label %rpc_cmp_addr.exit

rpc_cmp_addr.exit:                                ; preds = %if.then4.i.i, %sw.bb.i146
  %sin6_scope_id5.i.sink.i = phi ptr [ %sin6_scope_id5.i.i, %if.then4.i.i ], [ %sin_addr1.i.i, %sw.bb.i146 ]
  %.sink.in.i = phi ptr [ %sin6_scope_id.i.i, %if.then4.i.i ], [ %sin_addr.i.i145, %sw.bb.i146 ]
  %47 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %48 = ptrtoint ptr %sin6_scope_id5.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sin6_scope_id5.i.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i, i32 %49)
  %cmp.i13.i = icmp eq i32 %.sink.i, %49
  br i1 %cmp.i13.i, label %rpc_cmp_addr.exit.if.end36_crit_edge, label %rpc_cmp_addr.exit.for.inc_crit_edge

rpc_cmp_addr.exit.for.inc_crit_edge:              ; preds = %rpc_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

rpc_cmp_addr.exit.if.end36_crit_edge:             ; preds = %rpc_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %rpc_cmp_addr.exit.if.end36_crit_edge, %if.else.i.i.if.end36_crit_edge
  %cmp37 = icmp eq ptr %nsm.0158, null
  br i1 %cmp37, label %if.then39, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %h_nsmhandle = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 23
  %50 = ptrtoint ptr %h_nsmhandle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %h_nsmhandle, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %nsm.1 = phi ptr [ %51, %if.then39 ], [ %nsm.0158, %if.end36.if.end40_crit_edge ]
  %h_proto = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 8
  %52 = ptrtoint ptr %h_proto to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %h_proto, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %protocol)
  %cmp43.not = icmp eq i16 %53, %protocol
  br i1 %cmp43.not, label %if.end46, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end46:                                         ; preds = %if.end40
  %h_version = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 7
  %54 = ptrtoint ptr %h_version to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %h_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %version)
  %cmp47.not = icmp eq i32 %55, %version
  br i1 %cmp47.not, label %do.body.i, label %if.end46.for.inc_crit_edge

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body.i:                                        ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %56 = load i32, ptr @nlm_debug, align 4
  %and.i149 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool1.not.i = icmp eq i32 %and.i149, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i, !prof !162

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %h_name.i = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 6
  %57 = ptrtoint ptr %h_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %h_name.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %58) #14
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %h_count.i = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %h_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %h_count.i, i32 1, i32 3, i32 1) #10
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %h_count.i, ptr %h_count.i, i32 1, ptr elementtype(i32) %h_count.i) #10, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end6.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %60 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i.i = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nlm_get_host.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !162

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nlm_get_host.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_get_host.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %h_count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %nlm_get_host.exit

nlm_get_host.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nlm_get_host.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %61, 30000
  %h_expires.i = getelementptr inbounds %struct.nlm_host, ptr %host.0161, i32 0, i32 18
  %62 = ptrtoint ptr %h_expires.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i, ptr %h_expires.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %63 = load i32, ptr @nlm_debug, align 4
  %and53 = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %nlm_get_host.exit.out_crit_edge, label %nlm_get_host.exit.out.sink.split_crit_edge, !prof !162

nlm_get_host.exit.out.sink.split_crit_edge:       ; preds = %nlm_get_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

nlm_get_host.exit.out_crit_edge:                  ; preds = %nlm_get_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %if.end46.for.inc_crit_edge, %if.end40.for.inc_crit_edge, %rpc_cmp_addr.exit.for.inc_crit_edge, %sw.bb6.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nsm.2 = phi ptr [ %nsm.0158, %for.body.for.inc_crit_edge ], [ %nsm.1, %if.end40.for.inc_crit_edge ], [ %nsm.1, %if.end46.for.inc_crit_edge ], [ %nsm.0158, %rpc_cmp_addr.exit.for.inc_crit_edge ], [ %nsm.0158, %if.then.i.for.inc_crit_edge ], [ %nsm.0158, %if.end32.for.inc_crit_edge ], [ %nsm.0158, %sw.bb6.i.for.inc_crit_edge ]
  %64 = ptrtoint ptr %host.0161 to i32
  call void @__asan_load4_noabort(i32 %64)
  %host.0 = load ptr, ptr %host.0161, align 4
  %tobool27.not = icmp eq ptr %host.0, null
  br i1 %tobool27.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nlm_hash_address.exit.for.end_crit_edge
  %nsm.0.lcssa = phi ptr [ null, %nlm_hash_address.exit.for.end_crit_edge ], [ %nsm.2, %for.inc.for.end_crit_edge ]
  %call80 = call fastcc ptr @nlm_alloc_host(ptr noundef nonnull %ni, ptr noundef %nsm.0.lcssa)
  %cmp81 = icmp eq ptr %call80, null
  br i1 %cmp81, label %for.end.out_crit_edge, label %if.end90, !prof !164

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end90:                                         ; preds = %for.end
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %67 = ptrtoint ptr %call80 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %call80, align 4
  %tobool.not.i150 = icmp eq ptr %66, null
  br i1 %tobool.not.i150, label %if.end90.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end90.hlist_add_head.exit_crit_edge:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call80, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end90.hlist_add_head.exit_crit_edge
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call80, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call80, i32 0, i32 1
  %70 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  %nrhosts = getelementptr inbounds %struct.lockd_net, ptr %call9, i32 0, i32 2
  %71 = ptrtoint ptr %nrhosts to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nrhosts, align 4
  %inc = add i32 %72, 1
  store i32 %inc, ptr %nrhosts, align 4
  %73 = load i32, ptr @nrhosts, align 4
  %inc92 = add i32 %73, 1
  store i32 %inc92, ptr @nrhosts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %74 = load i32, ptr @nlm_debug, align 4
  %and94 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %hlist_add_head.exit.out_crit_edge, label %hlist_add_head.exit.out.sink.split_crit_edge, !prof !162

hlist_add_head.exit.out.sink.split_crit_edge:     ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

hlist_add_head.exit.out_crit_edge:                ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.sink.split:                                   ; preds = %hlist_add_head.exit.out.sink.split_crit_edge, %nlm_get_host.exit.out.sink.split_crit_edge
  %call80.sink165 = phi ptr [ %host.0161, %nlm_get_host.exit.out.sink.split_crit_edge ], [ %call80, %hlist_add_head.exit.out.sink.split_crit_edge ]
  %.str.10.sink = phi ptr [ @.str.7, %nlm_get_host.exit.out.sink.split_crit_edge ], [ @.str.10, %hlist_add_head.exit.out.sink.split_crit_edge ]
  %h_name107 = getelementptr inbounds %struct.nlm_host, ptr %call80.sink165, i32 0, i32 6
  %75 = ptrtoint ptr %h_name107 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %h_name107, align 4
  %h_addrbuf108 = getelementptr inbounds %struct.nlm_host, ptr %call80.sink165, i32 0, i32 24
  %77 = ptrtoint ptr %h_addrbuf108 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %h_addrbuf108, align 4
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink, ptr noundef nonnull @.str.1, ptr noundef %76, ptr noundef %78) #14
  br label %out

out:                                              ; preds = %out.sink.split, %hlist_add_head.exit.out_crit_edge, %for.end.out_crit_edge, %nlm_get_host.exit.out_crit_edge
  %host.1 = phi ptr [ %host.0161, %nlm_get_host.exit.out_crit_edge ], [ null, %for.end.out_crit_edge ], [ %call80, %hlist_add_head.exit.out_crit_edge ], [ %call80.sink165, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ni) #10
  ret ptr %host.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !165
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 45, ptr noundef nonnull @.str.37) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !166
  %8 = tail call i32 @llvm.read_register.i32(metadata !151) #10
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nlm_get_host(ptr noundef returned %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %host, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end, !prof !162

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 6
  %1 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %h_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %2) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %h_count = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %h_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %h_count, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %h_count, ptr %h_count, i32 1, ptr elementtype(i32) %h_count) #10, !srcloc !163
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end6.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !164

do.end6.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end6
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !162

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end6.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end6.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %h_count, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 30000
  %h_expires = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 18
  %6 = ptrtoint ptr %h_expires to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %h_expires, align 4
  br label %if.end7

if.end7:                                          ; preds = %refcount_inc.exit, %entry.if.end7_crit_edge
  ret ptr %host
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nlm_alloc_host(ptr nocapture noundef readonly %ni, ptr noundef %nsm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %cmp.not = icmp eq ptr %nsm, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sm_count = getelementptr inbounds %struct.nsm_handle, ptr %nsm, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sm_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sm_count, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sm_count, ptr %sm_count, i32 1, ptr elementtype(i32) %sm_count) #10, !srcloc !163
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !164

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end17_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !162

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end17_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sm_count, i32 noundef %.sink.i.i.i) #10
  br label %if.end17

if.else:                                          ; preds = %entry
  %net = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 8
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %sap = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 1
  %5 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sap, align 4
  %salen = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 2
  %7 = ptrtoint ptr %salen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %salen, align 4
  %hostname = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 5
  %9 = ptrtoint ptr %hostname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostname, align 4
  %hostname_len = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 6
  %11 = ptrtoint ptr %hostname_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hostname_len, align 4
  %call = tail call ptr @nsm_get_handle(ptr noundef %4, ptr noundef %6, i32 noundef %8, ptr noundef %10, i32 noundef %12) #10
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %do.body, label %if.else.if.end17_crit_edge, !prof !164

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body:                                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %13 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.out_crit_edge, label %do.end, !prof !162

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #14
  br label %out

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end17_crit_edge
  %nsm.addr.0 = phi ptr [ %call, %if.else.if.end17_crit_edge ], [ %nsm, %if.else.i.i.i.if.end17_crit_edge ], [ %nsm, %if.end15.sink.split.i.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 708) #15
  %cmp19 = icmp eq ptr %call7.i, null
  br i1 %cmp19, label %do.body27, label %if.end45, !prof !164

do.body27:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %15 = load i32, ptr @nlm_debug, align 4
  %and28 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.do.end44_crit_edge, label %do.end39, !prof !162

do.body27.do.end44_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

do.end39:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44) #14
  br label %do.end44

do.end44:                                         ; preds = %do.end39, %do.body27.do.end44_crit_edge
  tail call void @nsm_release(ptr noundef nonnull %nsm.addr.0) #10
  br label %out

if.end45:                                         ; preds = %if.end17
  %h_addr.i = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 1
  %sap47 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 1
  %16 = ptrtoint ptr %sap47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sap47, align 4
  %salen48 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 2
  %18 = ptrtoint ptr %salen48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %salen48, align 4
  %20 = call ptr @memcpy(ptr %h_addr.i, ptr %17, i32 %19)
  %h_addrlen = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 2
  %21 = ptrtoint ptr %h_addrlen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %h_addrlen, align 8
  %22 = ptrtoint ptr %h_addr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %h_addr.i, align 8
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %23, label %if.end45.rpc_set_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.end45.rpc_set_port.exit_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpc_set_port.exit

sw.bb.i:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %h_addr.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %h_addr.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %25 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %sin6_port.sink.i, align 2
  br label %rpc_set_port.exit

rpc_set_port.exit:                                ; preds = %sw.epilog.sink.split.i, %if.end45.rpc_set_port.exit_crit_edge
  %h_srcaddrlen = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 4
  %26 = ptrtoint ptr %h_srcaddrlen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %h_srcaddrlen, align 4
  %h_rpcclnt = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 5
  %27 = ptrtoint ptr %h_rpcclnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %h_rpcclnt, align 8
  %sm_name = getelementptr inbounds %struct.nsm_handle, ptr %nsm.addr.0, i32 0, i32 3
  %28 = ptrtoint ptr %sm_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sm_name, align 4
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 6
  %30 = ptrtoint ptr %h_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %h_name, align 4
  %version = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 4
  %31 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version, align 4
  %h_version = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 7
  %33 = ptrtoint ptr %h_version to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %h_version, align 8
  %protocol = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 3
  %34 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %protocol, align 4
  %h_proto = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 8
  %36 = ptrtoint ptr %h_proto to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %h_proto, align 4
  %h_reclaiming = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 9
  %37 = ptrtoint ptr %h_reclaiming to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %h_reclaiming, align 2
  %38 = ptrtoint ptr %ni to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ni, align 4
  %40 = trunc i32 %39 to i8
  %bf.value = shl i8 %40, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear52 = and i8 %bf.load, 15
  %bf.set53 = or i8 %bf.shl, %bf.clear52
  %noresvport = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 7
  %41 = ptrtoint ptr %noresvport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %noresvport, align 4
  %43 = trunc i32 %42 to i8
  %bf.value56 = shl i8 %43, 5
  %bf.shl57 = and i8 %bf.value56, 32
  %bf.set59 = or i8 %bf.set53, %bf.shl57
  store i8 %bf.set59, ptr %h_reclaiming, align 2
  %h_gracewait = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %h_gracewait, ptr noundef nonnull @.str.48, ptr noundef nonnull @nlm_alloc_host.__key) #10
  %h_rwsem = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 11
  tail call void @__init_rwsem(ptr noundef %h_rwsem, ptr noundef nonnull @.str.50, ptr noundef nonnull @nlm_alloc_host.__key.49) #10
  %h_state = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 12
  %44 = ptrtoint ptr %h_state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %h_state, align 4
  %h_nsmstate = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 13
  %45 = ptrtoint ptr %h_nsmstate to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %h_nsmstate, align 8
  %h_pidcount = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 14
  %46 = ptrtoint ptr %h_pidcount to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %h_pidcount, align 4
  %h_count = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %h_count, i32 noundef 4) #10
  %47 = ptrtoint ptr %h_count to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %h_count, align 8
  %h_mutex = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %h_mutex, ptr noundef nonnull @.str.52, ptr noundef nonnull @nlm_alloc_host.__key.51) #10
  %add = add i32 %0, 6000
  %h_nextrebind = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 17
  %48 = ptrtoint ptr %h_nextrebind to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add, ptr %h_nextrebind, align 8
  %add73 = add i32 %0, 30000
  %h_expires = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 18
  %49 = ptrtoint ptr %h_expires to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add73, ptr %h_expires, align 4
  %h_lockowners = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 19
  %50 = ptrtoint ptr %h_lockowners to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %h_lockowners, ptr %h_lockowners, align 8
  %prev.i = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 19, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %h_lockowners, ptr %prev.i, align 4
  %h_lock = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %h_lock, ptr noundef nonnull @.str.54, ptr noundef nonnull @nlm_alloc_host.__key.53, i16 noundef signext 3) #10
  %h_granted = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 21
  %52 = ptrtoint ptr %h_granted to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %h_granted, ptr %h_granted, align 4
  %prev.i138 = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 21, i32 1
  %53 = ptrtoint ptr %prev.i138 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %h_granted, ptr %prev.i138, align 8
  %h_reclaim = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 22
  %54 = ptrtoint ptr %h_reclaim to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %h_reclaim, ptr %h_reclaim, align 4
  %prev.i139 = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 22, i32 1
  %55 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %h_reclaim, ptr %prev.i139, align 8
  %h_nsmhandle = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 23
  %56 = ptrtoint ptr %h_nsmhandle to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %nsm.addr.0, ptr %h_nsmhandle, align 4
  %sm_addrbuf = getelementptr inbounds %struct.nsm_handle, ptr %nsm.addr.0, i32 0, i32 8
  %h_addrbuf = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 24
  %57 = ptrtoint ptr %h_addrbuf to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sm_addrbuf, ptr %h_addrbuf, align 8
  %net78 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 8
  %58 = ptrtoint ptr %net78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net78, align 4
  %net79 = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 25
  %60 = ptrtoint ptr %net79 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %net79, align 4
  %cred = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 9
  %61 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cred, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %rpc_set_port.exit.get_cred.exit_crit_edge, label %do.body.i

rpc_set_port.exit.get_cred.exit_crit_edge:        ; preds = %rpc_set_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_cred.exit

do.body.i:                                        ; preds = %rpc_set_port.exit
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %62) #10
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !164

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__invalid_creds(ptr noundef nonnull %62, ptr noundef nonnull @.str.55, i32 noundef 253) #10
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %63 = getelementptr inbounds %struct.cred, ptr %62, i32 0, i32 28
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %63, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %62, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %62, i32 1, i32 3, i32 1) #10
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %62, ptr nonnull %62, i32 1, ptr nonnull elementtype(i32) %62) #10, !srcloc !167
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %rpc_set_port.exit.get_cred.exit_crit_edge
  %h_cred = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 26
  %66 = ptrtoint ptr %h_cred to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %62, ptr %h_cred, align 8
  %nodename = getelementptr inbounds %struct.nlm_host, ptr %call7.i, i32 0, i32 27
  %67 = tail call i32 @llvm.read_register.i32(metadata !151) #10
  %and.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 110
  %71 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %uts_ns.i, align 4
  %nodename83 = getelementptr inbounds %struct.new_utsname, ptr %74, i32 0, i32 1
  %call85 = tail call i32 @strlcpy(ptr noundef %nodename, ptr noundef %nodename83, i32 noundef 65) #10
  br label %out

out:                                              ; preds = %get_cred.exit, %do.end44, %do.end, %do.body.out_crit_edge
  %host.0 = phi ptr [ null, %do.end44 ], [ %call7.i, %get_cred.exit ], [ null, %do.end ], [ null, %do.body.out_crit_edge ]
  ret ptr %host.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmclnt_release_host(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %host, null
  br i1 %cmp, label %entry.if.end228_crit_edge, label %do.body

entry.if.end228_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end, !prof !162

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 6
  %1 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %h_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %2) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %h_server = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %h_server to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %h_server, align 2
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %do.end6.if.end47_crit_edge, label %land.rhs

do.end6.if.end47_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.rhs:                                         ; preds = %do.end6
  %.b250 = load i1, ptr @nlmclnt_release_host.__already_done, align 1
  br i1 %.b250, label %land.rhs.if.end47_crit_edge, label %if.then22, !prof !162

land.rhs.if.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nlmclnt_release_host.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 298, i32 noundef 9, ptr noundef null) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then22, %land.rhs.if.end47_crit_edge, %do.end6.if.end47_crit_edge
  %h_count = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 15
  %call55 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %h_count, ptr noundef nonnull @nlm_host_mutex) #10
  br i1 %call55, label %if.then56, label %if.end47.if.end228_crit_edge

if.end47.if.end228_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then56:                                        ; preds = %if.end47
  %h_lockowners = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 19
  %5 = ptrtoint ptr %h_lockowners to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %h_lockowners, align 4
  %cmp.i.not = icmp eq ptr %6, %h_lockowners
  br i1 %cmp.i.not, label %if.then56.if.end106_crit_edge, label %land.rhs68

if.then56.if.end106_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

land.rhs68:                                       ; preds = %if.then56
  %.b244249 = load i1, ptr @nlmclnt_release_host.__already_done.14, align 1
  br i1 %.b244249, label %land.rhs68.if.end106_crit_edge, label %if.then79, !prof !162

land.rhs68.if.end106_crit_edge:                   ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then79:                                        ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nlmclnt_release_host.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 301, i32 noundef 9, ptr noundef null) #10
  br label %if.end106

if.end106:                                        ; preds = %if.then79, %land.rhs68.if.end106_crit_edge, %if.then56.if.end106_crit_edge
  %h_granted = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 21
  %7 = ptrtoint ptr %h_granted to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %h_granted, align 4
  %cmp.i251.not = icmp eq ptr %8, %h_granted
  br i1 %cmp.i251.not, label %if.end106.if.end163_crit_edge, label %land.rhs125

if.end106.if.end163_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

land.rhs125:                                      ; preds = %if.end106
  %.b245248 = load i1, ptr @nlmclnt_release_host.__already_done.15, align 1
  br i1 %.b245248, label %land.rhs125.if.end163_crit_edge, label %if.then136, !prof !162

land.rhs125.if.end163_crit_edge:                  ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then136:                                       ; preds = %land.rhs125
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nlmclnt_release_host.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #10
  br label %if.end163

if.end163:                                        ; preds = %if.then136, %land.rhs125.if.end163_crit_edge, %if.end106.if.end163_crit_edge
  %h_reclaim = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 22
  %9 = ptrtoint ptr %h_reclaim to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %h_reclaim, align 4
  %cmp.i253.not = icmp eq ptr %10, %h_reclaim
  br i1 %cmp.i253.not, label %if.end163.if.end220_crit_edge, label %land.rhs182

if.end163.if.end220_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

land.rhs182:                                      ; preds = %if.end163
  %.b246247 = load i1, ptr @nlmclnt_release_host.__already_done.16, align 1
  br i1 %.b246247, label %land.rhs182.if.end220_crit_edge, label %if.then193, !prof !162

land.rhs182.if.end220_crit_edge:                  ; preds = %land.rhs182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

if.then193:                                       ; preds = %land.rhs182
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nlmclnt_release_host.__already_done.16, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 303, i32 noundef 9, ptr noundef null) #10
  br label %if.end220

if.end220:                                        ; preds = %if.then193, %land.rhs182.if.end220_crit_edge, %if.end163.if.end220_crit_edge
  tail call fastcc void @nlm_destroy_host_locked(ptr noundef nonnull %host)
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  br label %if.end228

if.end228:                                        ; preds = %if.end220, %if.end47.if.end228_crit_edge, %entry.if.end228_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nlm_destroy_host_locked(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 25
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockd_net_id to i32))
  %2 = load i32, ptr @lockd_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %3 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !162

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 6
  %4 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %h_name, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %5) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %do.end6.hlist_del_init.exit_crit_edge, label %if.then.i

do.end6.hlist_del_init.exit_crit_edge:            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %do.end6
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %7, align 4
  %tobool.not.i3.i = icmp eq ptr %9, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %12 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %host, align 4
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %do.end6.hlist_del_init.exit_crit_edge
  tail call void @nsm_unmonitor(ptr noundef %host) #10
  %h_nsmhandle = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 23
  %14 = ptrtoint ptr %h_nsmhandle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %h_nsmhandle, align 4
  tail call void @nsm_release(ptr noundef %15) #10
  %h_rpcclnt = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 5
  %16 = ptrtoint ptr %h_rpcclnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %h_rpcclnt, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %hlist_del_init.exit.if.end8_crit_edge, label %if.then7

hlist_del_init.exit.if.end8_crit_edge:            ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpc_shutdown_client(ptr noundef nonnull %17) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %hlist_del_init.exit.if.end8_crit_edge
  %h_cred = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 26
  %18 = ptrtoint ptr %h_cred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %h_cred, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end8.put_cred.exit_crit_edge, label %do.body.i

if.end8.put_cred.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_cred.exit

do.body.i:                                        ; preds = %if.end8
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %19) #10
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !164

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__invalid_creds(ptr noundef nonnull %19, ptr noundef nonnull @.str.55, i32 noundef 286) #10
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %19, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #10, !srcloc !169
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_cred(ptr noundef nonnull %19) #10
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %if.end8.put_cred.exit_crit_edge
  tail call void @kfree(ptr noundef %host) #10
  %nrhosts = getelementptr inbounds %struct.lockd_net, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %nrhosts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nrhosts, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %nrhosts, align 4
  %23 = load i32, ptr @nrhosts, align 4
  %dec9 = add i32 %23, -1
  store i32 %dec9, ptr @nrhosts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nlmsvc_lookup_host(ptr noundef %rqstp, ptr noundef %hostname, i32 noundef %hostname_len) local_unnamed_addr #0 align 64 {
entry:
  %ni = alloca %struct.nlm_lookup_host_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_daddr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5
  %rq_daddrlen = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 6
  %0 = ptrtoint ptr %rq_daddrlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_daddrlen, align 8
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt, align 8
  %tobool.not = icmp eq ptr %3, null
  %xpt_net = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 19
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %cond.in = select i1 %tobool.not, ptr %rq_bc_net, ptr %xpt_net
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ni) #10
  %5 = getelementptr inbounds i8, ptr %ni, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !161
  %7 = ptrtoint ptr %ni to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ni, align 4
  %sap = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 1
  %rq_addr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %8 = ptrtoint ptr %sap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rq_addr.i, ptr %sap, align 4
  %salen = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 2
  %rq_addrlen = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 4
  %9 = ptrtoint ptr %rq_addrlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_addrlen, align 4
  %11 = ptrtoint ptr %salen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %salen, align 4
  %protocol = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 3
  %rq_prot = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 31
  %12 = ptrtoint ptr %rq_prot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_prot, align 4
  %conv = trunc i32 %13 to i16
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %protocol, align 4
  %version = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 4
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %15 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rq_vers, align 4
  %17 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %version, align 4
  %hostname3 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 5
  %18 = ptrtoint ptr %hostname3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hostname, ptr %hostname3, align 4
  %hostname_len4 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 6
  %19 = ptrtoint ptr %hostname_len4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %hostname_len, ptr %hostname_len4, align 4
  %noresvport = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 7
  %20 = ptrtoint ptr %noresvport to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %noresvport, align 4
  %net5 = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 8
  %21 = ptrtoint ptr %net5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond, ptr %net5, align 4
  %cred = getelementptr inbounds %struct.nlm_lookup_host_info, ptr %ni, i32 0, i32 9
  %22 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cred, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockd_net_id to i32))
  %23 = load i32, ptr @lockd_net_id, align 4
  %call6 = tail call fastcc ptr @net_generic(ptr noundef %cond, i32 noundef %23)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %24 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %entry.do.end17_crit_edge, label %do.end, !prof !162

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rq_vers, align 4
  %27 = ptrtoint ptr %rq_prot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rq_prot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %28)
  %cmp = icmp eq i32 %28, 17
  %cond14 = select i1 %cmp, ptr @.str.4, ptr @.str.5
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %hostname_len, ptr noundef %hostname, i32 noundef %26, ptr noundef nonnull %cond14) #14
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlm_host_mutex, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %next_gc = getelementptr inbounds %struct.lockd_net, ptr %call6, i32 0, i32 1
  %30 = ptrtoint ptr %next_gc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %next_gc, align 4
  %sub = sub i32 %29, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp18 = icmp sgt i32 %sub, -1
  br i1 %cmp18, label %if.then20, label %do.end17.if.end21_crit_edge

do.end17.if.end21_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nlm_gc_hosts(ptr noundef %cond)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end17.if.end21_crit_edge
  %32 = ptrtoint ptr %rq_addr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rq_addr.i, align 2
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %33, label %if.end21.nlm_hash_address.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.end21.nlm_hash_address.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_hash_address.exit

sw.bb.i:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sin_addr.i.i, align 4
  %shr.i.i.i = lshr i32 %36, 16
  %xor.i.i.i = xor i32 %shr.i.i.i, %36
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 8
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  br label %nlm_hash_address.exit

sw.bb1.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %sin6_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %addr.sroa.0.0.copyload.i.i = load i32, ptr %sin6_addr.i.i, align 4
  %addr.sroa.5.0.sin6_addr.sroa_idx.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 8
  %38 = ptrtoint ptr %addr.sroa.5.0.sin6_addr.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %addr.sroa.5.0.copyload.i.i = load i32, ptr %addr.sroa.5.0.sin6_addr.sroa_idx.i.i, align 4
  %addr.sroa.7.0.sin6_addr.sroa_idx.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 12
  %39 = ptrtoint ptr %addr.sroa.7.0.sin6_addr.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %addr.sroa.7.0.copyload.i.i = load i32, ptr %addr.sroa.7.0.sin6_addr.sroa_idx.i.i, align 4
  %addr.sroa.9.0.sin6_addr.sroa_idx.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 16
  %40 = ptrtoint ptr %addr.sroa.9.0.sin6_addr.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %addr.sroa.9.0.copyload.i.i = load i32, ptr %addr.sroa.9.0.sin6_addr.sroa_idx.i.i, align 4
  %shr.i.i5.i = lshr i32 %addr.sroa.0.0.copyload.i.i, 16
  %xor.i.i6.i = xor i32 %shr.i.i5.i, %addr.sroa.0.0.copyload.i.i
  %shr1.i.i7.i = lshr i32 %xor.i.i6.i, 8
  %shr.i12.i.i = lshr i32 %addr.sroa.5.0.copyload.i.i, 16
  %xor.i13.i.i = xor i32 %shr.i12.i.i, %addr.sroa.5.0.copyload.i.i
  %shr1.i14.i.i = lshr i32 %xor.i13.i.i, 8
  %shr.i16.i.i = lshr i32 %addr.sroa.7.0.copyload.i.i, 16
  %xor.i17.i.i = xor i32 %shr.i16.i.i, %addr.sroa.7.0.copyload.i.i
  %shr1.i18.i.i = lshr i32 %xor.i17.i.i, 8
  %shr.i20.i.i = lshr i32 %addr.sroa.9.0.copyload.i.i, 16
  %xor.i21.i.i = xor i32 %shr.i20.i.i, %addr.sroa.9.0.copyload.i.i
  %shr1.i22.i.i = lshr i32 %xor.i21.i.i, 8
  %xor2.i23.i.i = xor i32 %shr1.i.i7.i, %xor.i.i6.i
  %xor2.i19.i.i = xor i32 %xor2.i23.i.i, %xor.i13.i.i
  %xor2.i15.i.i = xor i32 %xor2.i19.i.i, %shr1.i14.i.i
  %xor2.i.i8.i = xor i32 %xor2.i15.i.i, %xor.i17.i.i
  %xor.i.i = xor i32 %xor2.i.i8.i, %shr1.i18.i.i
  %xor7.i.i = xor i32 %xor.i.i, %xor.i21.i.i
  %xor11.i.i = xor i32 %xor7.i.i, %shr1.i22.i.i
  br label %nlm_hash_address.exit

nlm_hash_address.exit:                            ; preds = %sw.bb1.i, %sw.bb.i, %if.end21.nlm_hash_address.exit_crit_edge
  %hash.0.i = phi i32 [ %xor11.i.i, %sw.bb1.i ], [ %xor2.i.i.i, %sw.bb.i ], [ 0, %if.end21.nlm_hash_address.exit_crit_edge ]
  %and.i = and i32 %hash.0.i, 31
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 0, i32 %and.i
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %host.0230 = load ptr, ptr %arrayidx, align 4
  %tobool31.not231 = icmp eq ptr %host.0230, null
  br i1 %tobool31.not231, label %nlm_hash_address.exit.for.end_crit_edge, label %for.body.lr.ph

nlm_hash_address.exit.for.end_crit_edge:          ; preds = %nlm_hash_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %nlm_hash_address.exit
  %sin6_addr1.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 4
  %arrayidx6.i.i.i = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 8
  %arrayidx11.i.i.i = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 12
  %arrayidx17.i.i.i = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 16
  %sin6_scope_id5.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1, i32 20
  %sin_addr1.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3, i32 0, i32 1
  %sin6_addr1.i.i183 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 4
  %arrayidx6.i.i.i186 = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 8
  %arrayidx11.i.i.i190 = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 12
  %arrayidx17.i.i.i194 = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 16
  %sin6_scope_id5.i.i204 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 20
  %sin_addr1.i.i180 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %host.0235 = phi ptr [ %host.0230, %for.body.lr.ph ], [ %host.0, %for.inc.for.body_crit_edge ]
  %nsm.0232 = phi ptr [ null, %for.body.lr.ph ], [ %nsm.2, %for.inc.for.body_crit_edge ]
  %net32 = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 25
  %42 = ptrtoint ptr %net32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net32, align 4
  %cmp33.not = icmp eq ptr %43, %cond
  br i1 %cmp33.not, label %if.end36, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end36:                                         ; preds = %for.body
  %h_addr.i = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 1
  %44 = ptrtoint ptr %h_addr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %h_addr.i, align 2
  %46 = ptrtoint ptr %rq_addr.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rq_addr.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp.i = icmp eq i16 %45, %47
  br i1 %cmp.i, label %if.then.i, label %if.end36.for.inc_crit_edge

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.end36
  %48 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %45, label %if.then.i.for.inc_crit_edge [
    i16 2, label %sw.bb.i174
    i16 10, label %sw.bb6.i
  ]

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb.i174:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i.i173 = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 1, i32 0, i32 1
  br label %rpc_cmp_addr.exit

sw.bb6.i:                                         ; preds = %if.then.i
  %sin6_addr.i.i175 = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 1, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %sin6_addr.i.i175 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sin6_addr.i.i175, align 4
  %51 = ptrtoint ptr %sin6_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sin6_addr1.i.i, align 4
  %xor.i.i.i176 = xor i32 %52, %50
  %arrayidx4.i.i.i = getelementptr %struct.nlm_host, ptr %host.0235, i32 0, i32 1, i32 0, i32 1, i32 8
  %53 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx4.i.i.i, align 4
  %55 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %56, %54
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i176
  %arrayidx9.i.i.i = getelementptr %struct.nlm_host, ptr %host.0235, i32 0, i32 1, i32 0, i32 1, i32 12
  %57 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx9.i.i.i, align 4
  %59 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %60, %58
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.nlm_host, ptr %host.0235, i32 0, i32 1, i32 0, i32 1, i32 16
  %61 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx15.i.i.i, align 4
  %63 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %64, %62
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.else.i.i, label %sw.bb6.i.for.inc_crit_edge

sw.bb6.i.for.inc_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i.i:                                      ; preds = %sw.bb6.i
  %call.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i175) #10
  %and.i.i = and i32 %call.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i.if.end41_crit_edge, label %if.then4.i.i

if.else.i.i.if.end41_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_scope_id.i.i = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 1, i32 0, i32 1, i32 20
  br label %rpc_cmp_addr.exit

rpc_cmp_addr.exit:                                ; preds = %if.then4.i.i, %sw.bb.i174
  %sin6_scope_id5.i.sink.i = phi ptr [ %sin6_scope_id5.i.i, %if.then4.i.i ], [ %sin_addr1.i.i, %sw.bb.i174 ]
  %.sink.in.i = phi ptr [ %sin6_scope_id.i.i, %if.then4.i.i ], [ %sin_addr.i.i173, %sw.bb.i174 ]
  %65 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %66 = ptrtoint ptr %sin6_scope_id5.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sin6_scope_id5.i.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i, i32 %67)
  %cmp.i13.i = icmp eq i32 %.sink.i, %67
  br i1 %cmp.i13.i, label %rpc_cmp_addr.exit.if.end41_crit_edge, label %rpc_cmp_addr.exit.for.inc_crit_edge

rpc_cmp_addr.exit.for.inc_crit_edge:              ; preds = %rpc_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

rpc_cmp_addr.exit.if.end41_crit_edge:             ; preds = %rpc_cmp_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %rpc_cmp_addr.exit.if.end41_crit_edge, %if.else.i.i.if.end41_crit_edge
  %cmp42 = icmp eq ptr %nsm.0232, null
  br i1 %cmp42, label %if.then44, label %if.end41.if.end45_crit_edge

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %h_nsmhandle = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 23
  %68 = ptrtoint ptr %h_nsmhandle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %h_nsmhandle, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41.if.end45_crit_edge
  %nsm.1 = phi ptr [ %69, %if.then44 ], [ %nsm.0232, %if.end41.if.end45_crit_edge ]
  %h_proto = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 8
  %70 = ptrtoint ptr %h_proto to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %h_proto, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %conv)
  %cmp49.not = icmp eq i16 %71, %conv
  br i1 %cmp49.not, label %if.end52, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end52:                                         ; preds = %if.end45
  %h_version = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 7
  %72 = ptrtoint ptr %h_version to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %h_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %16)
  %cmp54.not = icmp eq i32 %73, %16
  br i1 %cmp54.not, label %if.end57, label %if.end52.for.inc_crit_edge

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end57:                                         ; preds = %if.end52
  %h_srcaddr.i = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 3
  %74 = ptrtoint ptr %h_srcaddr.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %h_srcaddr.i, align 2
  %76 = ptrtoint ptr %rq_daddr.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %rq_daddr.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %77)
  %cmp.i177 = icmp eq i16 %75, %77
  br i1 %cmp.i177, label %if.then.i178, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i178:                                     ; preds = %if.end57
  %78 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %75, label %if.then.i178.for.inc_crit_edge [
    i16 2, label %sw.bb.i181
    i16 10, label %sw.bb6.i198
  ]

if.then.i178.for.inc_crit_edge:                   ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb.i181:                                       ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr.i.i179 = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 3, i32 0, i32 1
  br label %rpc_cmp_addr.exit212

sw.bb6.i198:                                      ; preds = %if.then.i178
  %sin6_addr.i.i182 = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 3, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %sin6_addr.i.i182 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sin6_addr.i.i182, align 4
  %81 = ptrtoint ptr %sin6_addr1.i.i183 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sin6_addr1.i.i183, align 4
  %xor.i.i.i184 = xor i32 %82, %80
  %arrayidx4.i.i.i185 = getelementptr %struct.nlm_host, ptr %host.0235, i32 0, i32 3, i32 0, i32 1, i32 8
  %83 = ptrtoint ptr %arrayidx4.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx4.i.i.i185, align 4
  %85 = ptrtoint ptr %arrayidx6.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx6.i.i.i186, align 4
  %xor7.i.i.i187 = xor i32 %86, %84
  %or.i.i.i188 = or i32 %xor7.i.i.i187, %xor.i.i.i184
  %arrayidx9.i.i.i189 = getelementptr %struct.nlm_host, ptr %host.0235, i32 0, i32 3, i32 0, i32 1, i32 12
  %87 = ptrtoint ptr %arrayidx9.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx9.i.i.i189, align 4
  %89 = ptrtoint ptr %arrayidx11.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx11.i.i.i190, align 4
  %xor12.i.i.i191 = xor i32 %90, %88
  %or13.i.i.i192 = or i32 %or.i.i.i188, %xor12.i.i.i191
  %arrayidx15.i.i.i193 = getelementptr %struct.nlm_host, ptr %host.0235, i32 0, i32 3, i32 0, i32 1, i32 16
  %91 = ptrtoint ptr %arrayidx15.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx15.i.i.i193, align 4
  %93 = ptrtoint ptr %arrayidx17.i.i.i194 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx17.i.i.i194, align 4
  %xor18.i.i.i195 = xor i32 %94, %92
  %or19.i.i.i196 = or i32 %or13.i.i.i192, %xor18.i.i.i195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i196)
  %cmp.i.i.i197 = icmp eq i32 %or19.i.i.i196, 0
  br i1 %cmp.i.i.i197, label %if.else.i.i202, label %sw.bb6.i198.for.inc_crit_edge

sw.bb6.i198.for.inc_crit_edge:                    ; preds = %sw.bb6.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.i.i202:                                   ; preds = %sw.bb6.i198
  %call.i.i.i199 = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i182) #10
  %and.i.i200 = and i32 %call.i.i.i199, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i200)
  %tobool.not.i.i201 = icmp eq i32 %and.i.i200, 0
  br i1 %tobool.not.i.i201, label %if.else.i.i202.if.end61_crit_edge, label %if.then4.i.i205

if.else.i.i202.if.end61_crit_edge:                ; preds = %if.else.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then4.i.i205:                                  ; preds = %if.else.i.i202
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_scope_id.i.i203 = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 3, i32 0, i32 1, i32 20
  br label %rpc_cmp_addr.exit212

rpc_cmp_addr.exit212:                             ; preds = %if.then4.i.i205, %sw.bb.i181
  %sin6_scope_id5.i.sink.i206 = phi ptr [ %sin6_scope_id5.i.i204, %if.then4.i.i205 ], [ %sin_addr1.i.i180, %sw.bb.i181 ]
  %.sink.in.i207 = phi ptr [ %sin6_scope_id.i.i203, %if.then4.i.i205 ], [ %sin_addr.i.i179, %sw.bb.i181 ]
  %95 = ptrtoint ptr %.sink.in.i207 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.sink.i208 = load i32, ptr %.sink.in.i207, align 4
  %96 = ptrtoint ptr %sin6_scope_id5.i.sink.i206 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sin6_scope_id5.i.sink.i206, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i208, i32 %97)
  %cmp.i13.i209 = icmp eq i32 %.sink.i208, %97
  br i1 %cmp.i13.i209, label %rpc_cmp_addr.exit212.if.end61_crit_edge, label %rpc_cmp_addr.exit212.for.inc_crit_edge

rpc_cmp_addr.exit212.for.inc_crit_edge:           ; preds = %rpc_cmp_addr.exit212
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

rpc_cmp_addr.exit212.if.end61_crit_edge:          ; preds = %rpc_cmp_addr.exit212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end61:                                         ; preds = %rpc_cmp_addr.exit212.if.end61_crit_edge, %if.else.i.i202.if.end61_crit_edge
  %98 = ptrtoint ptr %host.0235 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %host.0235, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %host.0235, i32 0, i32 1
  %100 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pprev2.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %99, ptr %101, align 4
  %tobool.not.i.i213 = icmp eq ptr %99, null
  br i1 %tobool.not.i.i213, label %if.end61.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end61.hlist_del.exit_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %99, i32 0, i32 1
  %103 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end61.hlist_del.exit_crit_edge
  %104 = ptrtoint ptr %host.0235 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 256 to ptr), ptr %host.0235, align 4
  %105 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx, align 4
  store volatile ptr %107, ptr %host.0235, align 4
  %tobool.not.i = icmp eq ptr %107, null
  br i1 %tobool.not.i, label %hlist_del.exit.do.body.i_crit_edge, label %do.body12.i

hlist_del.exit.do.body.i_crit_edge:               ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body12.i:                                      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %host.0235, ptr %pprev.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body12.i, %hlist_del.exit.do.body.i_crit_edge
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %host.0235, ptr %arrayidx, align 4
  %110 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %arrayidx, ptr %pprev2.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %111 = load i32, ptr @nlm_debug, align 4
  %and.i215 = and i32 %111, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool1.not.i = icmp eq i32 %and.i215, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i, !prof !162

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %h_name.i = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 6
  %112 = ptrtoint ptr %h_name.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %h_name.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %113) #14
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %h_count.i = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %h_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %h_count.i, i32 1, i32 3, i32 1) #10
  %114 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %h_count.i, ptr %h_count.i, i32 1, ptr elementtype(i32) %h_count.i) #10, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end6.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %115 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %.not.i.i.i.i = icmp sgt i32 %115, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nlm_get_host.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !162

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nlm_get_host.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_get_host.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %h_count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %nlm_get_host.exit

nlm_get_host.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nlm_get_host.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %116, 30000
  %h_expires.i = getelementptr inbounds %struct.nlm_host, ptr %host.0235, i32 0, i32 18
  %117 = ptrtoint ptr %h_expires.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add.i, ptr %h_expires.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %118 = load i32, ptr @nlm_debug, align 4
  %and65 = and i32 %118, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %nlm_get_host.exit.out_crit_edge, label %nlm_get_host.exit.out.sink.split_crit_edge, !prof !162

nlm_get_host.exit.out.sink.split_crit_edge:       ; preds = %nlm_get_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

nlm_get_host.exit.out_crit_edge:                  ; preds = %nlm_get_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %rpc_cmp_addr.exit212.for.inc_crit_edge, %sw.bb6.i198.for.inc_crit_edge, %if.then.i178.for.inc_crit_edge, %if.end57.for.inc_crit_edge, %if.end52.for.inc_crit_edge, %if.end45.for.inc_crit_edge, %rpc_cmp_addr.exit.for.inc_crit_edge, %sw.bb6.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %if.end36.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nsm.2 = phi ptr [ %nsm.0232, %for.body.for.inc_crit_edge ], [ %nsm.1, %if.end45.for.inc_crit_edge ], [ %nsm.1, %if.end52.for.inc_crit_edge ], [ %nsm.1, %rpc_cmp_addr.exit212.for.inc_crit_edge ], [ %nsm.0232, %rpc_cmp_addr.exit.for.inc_crit_edge ], [ %nsm.0232, %if.then.i.for.inc_crit_edge ], [ %nsm.0232, %if.end36.for.inc_crit_edge ], [ %nsm.0232, %sw.bb6.i.for.inc_crit_edge ], [ %nsm.1, %if.then.i178.for.inc_crit_edge ], [ %nsm.1, %if.end57.for.inc_crit_edge ], [ %nsm.1, %sw.bb6.i198.for.inc_crit_edge ]
  %119 = ptrtoint ptr %host.0235 to i32
  call void @__asan_load4_noabort(i32 %119)
  %host.0 = load ptr, ptr %host.0235, align 4
  %tobool31.not = icmp eq ptr %host.0, null
  br i1 %tobool31.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nlm_hash_address.exit.for.end_crit_edge
  %nsm.0.lcssa = phi ptr [ null, %nlm_hash_address.exit.for.end_crit_edge ], [ %nsm.2, %for.inc.for.end_crit_edge ]
  %call93 = call fastcc ptr @nlm_alloc_host(ptr noundef nonnull %ni, ptr noundef %nsm.0.lcssa)
  %cmp94 = icmp eq ptr %call93, null
  br i1 %cmp94, label %for.end.out_crit_edge, label %if.end103, !prof !164

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end103:                                        ; preds = %for.end
  %h_srcaddr.i216 = getelementptr inbounds %struct.nlm_host, ptr %call93, i32 0, i32 3
  %120 = call ptr @memcpy(ptr %h_srcaddr.i216, ptr %rq_daddr.i, i32 %1)
  %h_srcaddrlen = getelementptr inbounds %struct.nlm_host, ptr %call93, i32 0, i32 4
  %121 = ptrtoint ptr %h_srcaddrlen to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %1, ptr %h_srcaddrlen, align 4
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx, align 4
  %124 = ptrtoint ptr %call93 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %123, ptr %call93, align 4
  %tobool.not.i217 = icmp eq ptr %123, null
  br i1 %tobool.not.i217, label %if.end103.hlist_add_head.exit221_crit_edge, label %do.body12.i219

if.end103.hlist_add_head.exit221_crit_edge:       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit221

do.body12.i219:                                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i218 = getelementptr inbounds %struct.hlist_node, ptr %123, i32 0, i32 1
  %125 = ptrtoint ptr %pprev.i218 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %call93, ptr %pprev.i218, align 4
  br label %hlist_add_head.exit221

hlist_add_head.exit221:                           ; preds = %do.body12.i219, %if.end103.hlist_add_head.exit221_crit_edge
  %126 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %call93, ptr %arrayidx, align 4
  %pprev34.i220 = getelementptr inbounds %struct.hlist_node, ptr %call93, i32 0, i32 1
  %127 = ptrtoint ptr %pprev34.i220 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %arrayidx, ptr %pprev34.i220, align 4
  %nrhosts = getelementptr inbounds %struct.lockd_net, ptr %call6, i32 0, i32 2
  %128 = ptrtoint ptr %nrhosts to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nrhosts, align 4
  %inc = add i32 %129, 1
  store i32 %inc, ptr %nrhosts, align 4
  %130 = load i32, ptr @nrhosts, align 4
  %inc106 = add i32 %130, 1
  store i32 %inc106, ptr @nrhosts, align 4
  %h_count = getelementptr inbounds %struct.nlm_host, ptr %call93, i32 0, i32 15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %h_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %h_count, i32 1, i32 3, i32 1) #10
  %131 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %h_count, ptr %h_count, i32 1, ptr elementtype(i32) %h_count) #10, !srcloc !163
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %hlist_add_head.exit221.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !164

hlist_add_head.exit221.if.end15.sink.split.i.i.i_crit_edge: ; preds = %hlist_add_head.exit221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %hlist_add_head.exit221
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %132 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %132)
  %.not.i.i.i = icmp sgt i32 %132, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !162

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %hlist_add_head.exit221.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %hlist_add_head.exit221.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %h_count, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %133 = load i32, ptr @nlm_debug, align 4
  %and108 = and i32 %133, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %refcount_inc.exit.out_crit_edge, label %refcount_inc.exit.out.sink.split_crit_edge, !prof !162

refcount_inc.exit.out.sink.split_crit_edge:       ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

refcount_inc.exit.out_crit_edge:                  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.sink.split:                                   ; preds = %refcount_inc.exit.out.sink.split_crit_edge, %nlm_get_host.exit.out.sink.split_crit_edge
  %call93.sink239 = phi ptr [ %host.0235, %nlm_get_host.exit.out.sink.split_crit_edge ], [ %call93, %refcount_inc.exit.out.sink.split_crit_edge ]
  %.str.10.sink = phi ptr [ @.str.7, %nlm_get_host.exit.out.sink.split_crit_edge ], [ @.str.10, %refcount_inc.exit.out.sink.split_crit_edge ]
  %h_name121 = getelementptr inbounds %struct.nlm_host, ptr %call93.sink239, i32 0, i32 6
  %134 = ptrtoint ptr %h_name121 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %h_name121, align 4
  %h_addrbuf122 = getelementptr inbounds %struct.nlm_host, ptr %call93.sink239, i32 0, i32 24
  %136 = ptrtoint ptr %h_addrbuf122 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %h_addrbuf122, align 4
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink, ptr noundef nonnull @.str.18, ptr noundef %135, ptr noundef %137) #14
  br label %out

out:                                              ; preds = %out.sink.split, %refcount_inc.exit.out_crit_edge, %for.end.out_crit_edge, %nlm_get_host.exit.out_crit_edge
  %host.1 = phi ptr [ %host.0235, %nlm_get_host.exit.out_crit_edge ], [ null, %for.end.out_crit_edge ], [ %call93, %refcount_inc.exit.out_crit_edge ], [ %call93.sink239, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ni) #10
  ret ptr %host.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nlm_gc_hosts(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !162

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %net, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %inum = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %1 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %cond) #14
  br label %do.end6

do.end6:                                          ; preds = %cond.end, %entry.do.end6_crit_edge
  %tobool17.not = icmp eq ptr %net, null
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc33.for.cond14.preheader_crit_edge, %do.end6
  %chain.0163 = phi ptr [ @nlm_server_hosts, %do.end6 ], [ %incdec.ptr, %for.inc33.for.cond14.preheader_crit_edge ]
  %3 = ptrtoint ptr %chain.0163 to i32
  call void @__asan_load4_noabort(i32 %3)
  %host.0160 = load ptr, ptr %chain.0163, align 4
  %tobool15.not161 = icmp eq ptr %host.0160, null
  br i1 %tobool15.not161, label %for.cond14.preheader.for.inc33_crit_edge, label %for.cond14.preheader.for.body16_crit_edge

for.cond14.preheader.for.body16_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body16

for.cond14.preheader.for.inc33_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.cond14.preheader.for.body16_crit_edge
  %host.0162 = phi ptr [ %host.0, %for.inc.for.body16_crit_edge ], [ %host.0160, %for.cond14.preheader.for.body16_crit_edge ]
  br i1 %tobool17.not, label %for.body16.if.end21_crit_edge, label %land.lhs.true

for.body16.if.end21_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %for.body16
  %net18 = getelementptr inbounds %struct.nlm_host, ptr %host.0162, i32 0, i32 25
  %4 = ptrtoint ptr %net18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net18, align 4
  %cmp19.not = icmp eq ptr %5, %net
  br i1 %cmp19.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %for.body16.if.end21_crit_edge
  %h_inuse = getelementptr inbounds %struct.nlm_host, ptr %host.0162, i32 0, i32 9
  %6 = ptrtoint ptr %h_inuse to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %h_inuse, align 2
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %h_inuse, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %land.lhs.true.for.inc_crit_edge
  %7 = ptrtoint ptr %host.0162 to i32
  call void @__asan_load4_noabort(i32 %7)
  %host.0 = load ptr, ptr %host.0162, align 4
  %tobool15.not = icmp eq ptr %host.0, null
  br i1 %tobool15.not, label %for.inc.for.inc33_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.inc.for.inc33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33

for.inc33:                                        ; preds = %for.inc.for.inc33_crit_edge, %for.cond14.preheader.for.inc33_crit_edge
  %incdec.ptr = getelementptr %struct.hlist_head, ptr %chain.0163, i32 1
  %cmp = icmp ult ptr %incdec.ptr, getelementptr inbounds ([32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 1, i32 0)
  br i1 %cmp, label %for.inc33.for.cond14.preheader_crit_edge, label %for.end34

for.inc33.for.cond14.preheader_crit_edge:         ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond14.preheader

for.end34:                                        ; preds = %for.inc33
  tail call void @nlmsvc_mark_resources(ptr noundef %net) #10
  br label %for.body37

for.body37:                                       ; preds = %for.inc115.for.body37_crit_edge, %for.end34
  %chain.1167 = phi ptr [ @nlm_server_hosts, %for.end34 ], [ %incdec.ptr116, %for.inc115.for.body37_crit_edge ]
  %8 = ptrtoint ptr %chain.1167 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chain.1167, align 4
  %tobool50.not164 = icmp eq ptr %9, null
  br i1 %tobool50.not164, label %for.body37.for.inc115_crit_edge, label %for.body37.land.rhs_crit_edge

for.body37.land.rhs_crit_edge:                    ; preds = %for.body37
  br label %land.rhs

for.body37.for.inc115_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc115

land.rhs:                                         ; preds = %for.inc103.land.rhs_crit_edge, %for.body37.land.rhs_crit_edge
  %host.1165 = phi ptr [ %11, %for.inc103.land.rhs_crit_edge ], [ %9, %for.body37.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %host.1165 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.1165, align 4
  br i1 %tobool17.not, label %land.rhs.if.end61_crit_edge, label %land.lhs.true57

land.rhs.if.end61_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true57:                                  ; preds = %land.rhs
  %net58 = getelementptr inbounds %struct.nlm_host, ptr %host.1165, i32 0, i32 25
  %12 = ptrtoint ptr %net58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net58, align 4
  %cmp59.not = icmp eq ptr %13, %net
  br i1 %cmp59.not, label %land.lhs.true57.if.end61_crit_edge, label %land.lhs.true57.for.inc103_crit_edge

land.lhs.true57.for.inc103_crit_edge:             ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

land.lhs.true57.if.end61_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true57.if.end61_crit_edge, %land.rhs.if.end61_crit_edge
  %h_inuse62 = getelementptr inbounds %struct.nlm_host, ptr %host.1165, i32 0, i32 9
  %14 = ptrtoint ptr %h_inuse62 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load63 = load i8, ptr %h_inuse62, align 2
  %15 = and i8 %bf.load63, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool65.not = icmp eq i8 %15, 0
  br i1 %tobool65.not, label %lor.lhs.false, label %if.end61.do.body69_crit_edge

if.end61.do.body69_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

lor.lhs.false:                                    ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %h_expires = getelementptr inbounds %struct.nlm_host, ptr %host.1165, i32 0, i32 18
  %17 = ptrtoint ptr %h_expires to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h_expires, align 4
  %sub = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp66 = icmp slt i32 %sub, 0
  br i1 %cmp66, label %lor.lhs.false.do.body69_crit_edge, label %if.end98

lor.lhs.false.do.body69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

do.body69:                                        ; preds = %lor.lhs.false.do.body69_crit_edge, %if.end61.do.body69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %19 = load i32, ptr @nlm_debug, align 4
  %and70 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.for.inc103_crit_edge, label %do.end81, !prof !162

do.body69.for.inc103_crit_edge:                   ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

do.end81:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %host.1165, i32 0, i32 6
  %20 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %h_name, align 4
  %h_count = getelementptr inbounds %struct.nlm_host, ptr %host.1165, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %h_count, i32 noundef 4) #10
  %22 = ptrtoint ptr %h_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %h_count, align 4
  %24 = ptrtoint ptr %h_inuse62 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load85 = load i8, ptr %h_inuse62, align 2
  %bf.lshr86 = lshr i8 %bf.load85, 4
  %bf.clear87 = and i8 %bf.lshr86, 1
  %conv89 = zext i8 %bf.clear87 to i32
  %h_expires90 = getelementptr inbounds %struct.nlm_host, ptr %host.1165, i32 0, i32 18
  %25 = ptrtoint ptr %h_expires90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_expires90, align 4
  %net91 = getelementptr inbounds %struct.nlm_host, ptr %host.1165, i32 0, i32 25
  %27 = ptrtoint ptr %net91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net91, align 4
  %inum93 = getelementptr inbounds %struct.net, ptr %28, i32 0, i32 14, i32 2
  %29 = ptrtoint ptr %inum93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inum93, align 8
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %21, i32 noundef %23, i32 noundef %conv89, i32 noundef %26, i32 noundef %30) #14
  br label %for.inc103

if.end98:                                         ; preds = %lor.lhs.false
  %h_count99 = getelementptr inbounds %struct.nlm_host, ptr %host.1165, i32 0, i32 15
  %call100 = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %h_count99) #10
  br i1 %call100, label %if.then101, label %if.end98.for.inc103_crit_edge

if.end98.for.inc103_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nlm_destroy_host_locked(ptr noundef nonnull %host.1165)
  br label %for.inc103

for.inc103:                                       ; preds = %if.then101, %if.end98.for.inc103_crit_edge, %do.end81, %do.body69.for.inc103_crit_edge, %land.lhs.true57.for.inc103_crit_edge
  %tobool50.not = icmp eq ptr %11, null
  br i1 %tobool50.not, label %for.inc103.for.inc115_crit_edge, label %for.inc103.land.rhs_crit_edge

for.inc103.land.rhs_crit_edge:                    ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc103.for.inc115_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc115

for.inc115:                                       ; preds = %for.inc103.for.inc115_crit_edge, %for.body37.for.inc115_crit_edge
  %incdec.ptr116 = getelementptr %struct.hlist_head, ptr %chain.1167, i32 1
  %cmp36 = icmp ult ptr %incdec.ptr116, getelementptr inbounds ([32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 1, i32 0)
  br i1 %cmp36, label %for.inc115.for.body37_crit_edge, label %for.end117

for.inc115.for.body37_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37

for.end117:                                       ; preds = %for.inc115
  br i1 %tobool17.not, label %for.end117.if.end121_crit_edge, label %if.then119

for.end117.if.end121_crit_edge:                   ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then119:                                       ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockd_net_id to i32))
  %31 = load i32, ptr @lockd_net_id, align 4
  %call120 = tail call fastcc ptr @net_generic(ptr noundef nonnull %net, i32 noundef %31)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %32, 12000
  %next_gc = getelementptr inbounds %struct.lockd_net, ptr %call120, i32 0, i32 1
  %33 = ptrtoint ptr %next_gc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %next_gc, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %for.end117.if.end121_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlmsvc_release_host(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %host, null
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end, !prof !162

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 6
  %1 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %h_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %2) #14
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %h_server = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %h_server to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %h_server, align 2
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %land.rhs, label %do.end6.if.end49_crit_edge

do.end6.if.end49_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.rhs:                                         ; preds = %do.end6
  %.b62 = load i1, ptr @nlmsvc_release_host.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.end49_crit_edge, label %if.then24, !prof !162

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nlmsvc_release_host.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 420, i32 noundef 9, ptr noundef null) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then24, %land.rhs.if.end49_crit_edge, %do.end6.if.end49_crit_edge
  %h_count = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %h_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr %h_count, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %h_count, ptr %h_count, i32 1, ptr elementtype(i32) %h_count) #10, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end49.return_crit_edge, !prof !164

if.end49.return_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then3.i.i:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %h_count, i32 noundef 4) #10
  br label %return

return:                                           ; preds = %if.then3.i.i, %if.end49.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nlm_bind_host(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %timeparms = alloca %struct.rpc_timeout, align 4
  %args = alloca %struct.rpc_create_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !162

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %h_name = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 6
  %1 = ptrtoint ptr %h_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %h_name, align 4
  %h_addrbuf = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 24
  %3 = ptrtoint ptr %h_addrbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %h_addrbuf, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %2, ptr noundef %4) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %h_mutex = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %h_mutex, i32 noundef 0) #10
  %h_rpcclnt = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 5
  %5 = ptrtoint ptr %h_rpcclnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %h_rpcclnt, align 4
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end5
  %h_proto.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 8
  %7 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %h_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %8)
  %cmp.not.i = icmp eq i16 %8, 17
  br i1 %cmp.not.i, label %land.lhs.true.i, label %if.then6.if.end40_crit_edge

if.then6.if.end40_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

land.lhs.true.i:                                  ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %h_nextrebind.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 17
  %10 = ptrtoint ptr %h_nextrebind.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_nextrebind.i, align 4
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %if.then4.i, label %land.lhs.true.i.if.end40_crit_edge

land.lhs.true.i.if.end40_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpc_force_rebind(ptr noundef nonnull %6) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %12, 6000
  %13 = ptrtoint ptr %h_nextrebind.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %h_nextrebind.i, align 4
  br label %if.end40

if.else:                                          ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlmsvc_timeout to i32))
  %14 = load i32, ptr @nlmsvc_timeout, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %timeparms) #10
  %15 = getelementptr inbounds i8, ptr %timeparms, i32 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4
  %17 = ptrtoint ptr %timeparms to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %timeparms, align 4
  %to_maxval = getelementptr inbounds %struct.rpc_timeout, ptr %timeparms, i32 0, i32 1
  %mul = mul i32 %14, 6
  %18 = ptrtoint ptr %to_maxval to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %to_maxval, align 4
  %to_increment = getelementptr inbounds %struct.rpc_timeout, ptr %timeparms, i32 0, i32 2
  %19 = ptrtoint ptr %to_increment to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %14, ptr %to_increment, align 4
  %to_retries = getelementptr inbounds %struct.rpc_timeout, ptr %timeparms, i32 0, i32 3
  %20 = ptrtoint ptr %to_retries to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %to_retries, align 4
  %to_exponential = getelementptr inbounds %struct.rpc_timeout, ptr %timeparms, i32 0, i32 4
  %21 = ptrtoint ptr %to_exponential to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %to_exponential, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #10
  %net7 = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 25
  %22 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net7, align 4
  %24 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %args, align 4
  %protocol = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 1
  %h_proto = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 8
  %25 = ptrtoint ptr %h_proto to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %h_proto, align 4
  %conv = zext i16 %26 to i32
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %protocol, align 4
  %address = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 2
  %h_addr.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 1
  %28 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %h_addr.i, ptr %address, align 4
  %addrsize = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 3
  %h_addrlen = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 2
  %29 = ptrtoint ptr %h_addrlen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %h_addrlen, align 4
  %31 = ptrtoint ptr %addrsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %addrsize, align 4
  %saddress = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 4
  %32 = ptrtoint ptr %saddress to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %saddress, align 4
  %timeout = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 5
  %33 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %timeparms, ptr %timeout, align 4
  %servername = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 6
  %h_name9 = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 6
  %34 = ptrtoint ptr %h_name9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %h_name9, align 4
  %36 = ptrtoint ptr %servername to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %servername, align 4
  %nodename = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 7
  %37 = ptrtoint ptr %nodename to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %nodename, align 4
  %program = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 8
  %38 = ptrtoint ptr %program to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @nlm_program, ptr %program, align 4
  %prognumber = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 9
  %39 = ptrtoint ptr %prognumber to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %prognumber, align 4
  %version = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 10
  %h_version = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 7
  %40 = ptrtoint ptr %h_version to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %h_version, align 4
  %42 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %version, align 4
  %authflavor = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 11
  %43 = ptrtoint ptr %authflavor to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %authflavor, align 4
  %nconnect = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 12
  %44 = ptrtoint ptr %nconnect to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %nconnect, align 4
  %flags = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 13
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2068, ptr %flags, align 4
  %client_name = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 14
  %46 = ptrtoint ptr %client_name to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %client_name, align 4
  %bc_xprt = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 15
  %47 = ptrtoint ptr %bc_xprt to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %bc_xprt, align 4
  %cred = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 16
  %h_cred = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 26
  %48 = ptrtoint ptr %h_cred to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %h_cred, align 4
  %50 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %cred, align 4
  %max_connect = getelementptr inbounds %struct.rpc_create_args, ptr %args, i32 0, i32 17
  %51 = ptrtoint ptr %max_connect to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %max_connect, align 4
  %h_server = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 9
  %52 = ptrtoint ptr %h_server to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %h_server, align 2
  %53 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool10.not = icmp eq i8 %53, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2069, ptr %flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else.if.end13_crit_edge
  %55 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool18.not = icmp eq i8 %55, 0
  br i1 %tobool18.not, label %if.end13.if.end22_crit_edge, label %if.then19

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %or21 = or i32 %57, 8
  store i32 %or21, ptr %flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end13.if.end22_crit_edge
  %h_srcaddrlen = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 4
  %58 = ptrtoint ptr %h_srcaddrlen to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %h_srcaddrlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool23.not = icmp eq i32 %59, 0
  br i1 %tobool23.not, label %if.end22.if.end27_crit_edge, label %if.then24

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %h_srcaddr.i = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 3
  %60 = ptrtoint ptr %saddress to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %h_srcaddr.i, ptr %saddress, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  %call28 = call ptr @rpc_create(ptr noundef nonnull %args) #10
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end35, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %h_rpcclnt to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call28, ptr %h_rpcclnt, align 4
  br label %if.end39

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %h_name9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %h_name9, align 4
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %63) #14
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %if.then30
  %clnt.0 = phi ptr [ null, %do.end35 ], [ %call28, %if.then30 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timeparms) #10
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then4.i, %land.lhs.true.i.if.end40_crit_edge, %if.then6.if.end40_crit_edge
  %clnt.1 = phi ptr [ %clnt.0, %if.end39 ], [ %6, %if.then6.if.end40_crit_edge ], [ %6, %land.lhs.true.i.if.end40_crit_edge ], [ %6, %if.then4.i ]
  call void @mutex_unlock(ptr noundef %h_mutex) #10
  ret ptr %clnt.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlm_rebind_host(ptr nocapture noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %h_proto = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %h_proto to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %h_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %1)
  %cmp.not = icmp eq i16 %1, 17
  br i1 %cmp.not, label %if.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end:                                           ; preds = %entry
  %h_rpcclnt = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 5
  %2 = ptrtoint ptr %h_rpcclnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h_rpcclnt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %h_nextrebind = getelementptr inbounds %struct.nlm_host, ptr %host, i32 0, i32 17
  %5 = ptrtoint ptr %h_nextrebind to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_nextrebind, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp2 = icmp sgt i32 %sub, -1
  br i1 %cmp2, label %if.then4, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpc_force_rebind(ptr noundef nonnull %3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 6000
  %8 = ptrtoint ptr %h_nextrebind to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %h_nextrebind, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_force_rebind(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlm_host_rebooted(ptr noundef %net, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nsm_reboot_lookup(ptr noundef %net, ptr noundef %info) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader, !prof !164

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call218 = tail call fastcc ptr @next_host_state(ptr noundef nonnull @nlm_server_hosts, ptr noundef nonnull %call, ptr noundef %info)
  %cmp3.not19 = icmp eq ptr %call218, null
  br i1 %cmp3.not19, label %while.cond.preheader.while.cond4.preheader_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.cond4.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %while.body.while.cond4.preheader_crit_edge, %while.cond.preheader.while.cond4.preheader_crit_edge
  %call521 = tail call fastcc ptr @next_host_state(ptr noundef nonnull @nlm_client_hosts, ptr noundef nonnull %call, ptr noundef %info)
  %cmp6.not22 = icmp eq ptr %call521, null
  br i1 %cmp6.not22, label %while.cond4.preheader.while.end8_crit_edge, label %while.cond4.preheader.while.body7_crit_edge

while.cond4.preheader.while.body7_crit_edge:      ; preds = %while.cond4.preheader
  br label %while.body7

while.cond4.preheader.while.end8_crit_edge:       ; preds = %while.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end8

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call220 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call218, %while.cond.preheader.while.body_crit_edge ]
  tail call void @nlmsvc_free_host_resources(ptr noundef nonnull %call220) #10
  tail call void @nlmsvc_release_host(ptr noundef nonnull %call220)
  %call2 = tail call fastcc ptr @next_host_state(ptr noundef nonnull @nlm_server_hosts, ptr noundef nonnull %call, ptr noundef %info)
  %cmp3.not = icmp eq ptr %call2, null
  br i1 %cmp3.not, label %while.body.while.cond4.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.cond4.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

while.body7:                                      ; preds = %while.body7.while.body7_crit_edge, %while.cond4.preheader.while.body7_crit_edge
  %call523 = phi ptr [ %call5, %while.body7.while.body7_crit_edge ], [ %call521, %while.cond4.preheader.while.body7_crit_edge ]
  tail call void @nlmclnt_recovery(ptr noundef nonnull %call523) #10
  tail call void @nlmclnt_release_host(ptr noundef nonnull %call523)
  %call5 = tail call fastcc ptr @next_host_state(ptr noundef nonnull @nlm_client_hosts, ptr noundef nonnull %call, ptr noundef %info)
  %cmp6.not = icmp eq ptr %call5, null
  br i1 %cmp6.not, label %while.body7.while.end8_crit_edge, label %while.body7.while.body7_crit_edge

while.body7.while.body7_crit_edge:                ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body7

while.body7.while.end8_crit_edge:                 ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end8

while.end8:                                       ; preds = %while.body7.while.end8_crit_edge, %while.cond4.preheader.while.end8_crit_edge
  tail call void @nsm_release(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nsm_reboot_lookup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @next_host_state(ptr noundef readonly %cache, ptr noundef readnone %nsm, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlm_host_mutex, i32 noundef 0) #10
  %add.ptr = getelementptr %struct.hlist_head, ptr %cache, i32 32
  %cmp44 = icmp ugt ptr %add.ptr, %cache
  br i1 %cmp44, label %for.cond3.preheader.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %state = getelementptr inbounds %struct.nlm_reboot, ptr %info, i32 0, i32 2
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc20.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %chain.045 = phi ptr [ %cache, %for.cond3.preheader.lr.ph ], [ %incdec.ptr, %for.inc20.for.cond3.preheader_crit_edge ]
  %0 = ptrtoint ptr %chain.045 to i32
  call void @__asan_load4_noabort(i32 %0)
  %host.040 = load ptr, ptr %chain.045, align 4
  %tobool4.not41 = icmp eq ptr %host.040, null
  br i1 %tobool4.not41, label %for.cond3.preheader.for.inc20_crit_edge, label %for.cond3.preheader.for.body5_crit_edge

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.cond3.preheader.for.inc20_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %host.042 = phi ptr [ %host.0, %for.inc.for.body5_crit_edge ], [ %host.040, %for.cond3.preheader.for.body5_crit_edge ]
  %h_nsmhandle = getelementptr inbounds %struct.nlm_host, ptr %host.042, i32 0, i32 23
  %1 = ptrtoint ptr %h_nsmhandle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %h_nsmhandle, align 4
  %cmp6 = icmp eq ptr %2, %nsm
  br i1 %cmp6, label %land.lhs.true, label %for.body5.for.inc_crit_edge

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body5
  %h_nsmstate = getelementptr inbounds %struct.nlm_host, ptr %host.042, i32 0, i32 13
  %3 = ptrtoint ptr %h_nsmstate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %h_nsmstate, align 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp7.not = icmp eq i32 %4, %6
  br i1 %cmp7.not, label %land.lhs.true.for.inc_crit_edge, label %do.body.i

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body.i:                                        ; preds = %land.lhs.true
  %h_nsmstate.le = getelementptr inbounds %struct.nlm_host, ptr %host.042, i32 0, i32 13
  %7 = ptrtoint ptr %h_nsmstate.le to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %h_nsmstate.le, align 4
  %h_state = getelementptr inbounds %struct.nlm_host, ptr %host.042, i32 0, i32 12
  %8 = ptrtoint ptr %h_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_state, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %h_state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %10 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i, !prof !162

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %h_name.i = getelementptr inbounds %struct.nlm_host, ptr %host.042, i32 0, i32 6
  %11 = ptrtoint ptr %h_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %h_name.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %12) #14
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  %h_count.i = getelementptr inbounds %struct.nlm_host, ptr %host.042, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %h_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %h_count.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %h_count.i, ptr %h_count.i, i32 1, ptr elementtype(i32) %h_count.i) #10, !srcloc !163
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !164

do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end6.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.nlm_get_host.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !162

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.nlm_get_host.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_get_host.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end6.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %h_count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %nlm_get_host.exit

nlm_get_host.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.nlm_get_host.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %15, 30000
  %h_expires.i = getelementptr inbounds %struct.nlm_host, ptr %host.042, i32 0, i32 18
  %16 = ptrtoint ptr %h_expires.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %h_expires.i, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body5.for.inc_crit_edge
  %17 = ptrtoint ptr %host.042 to i32
  call void @__asan_load4_noabort(i32 %17)
  %host.0 = load ptr, ptr %host.042, align 4
  %tobool4.not = icmp eq ptr %host.0, null
  br i1 %tobool4.not, label %for.inc.for.inc20_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.inc.for.inc20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20

for.inc20:                                        ; preds = %for.inc.for.inc20_crit_edge, %for.cond3.preheader.for.inc20_crit_edge
  %incdec.ptr = getelementptr %struct.hlist_head, ptr %chain.045, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc20.for.cond3.preheader_crit_edge, label %for.inc20.cleanup_crit_edge

for.inc20.cleanup_crit_edge:                      ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc20.for.cond3.preheader_crit_edge:          ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader

cleanup:                                          ; preds = %for.inc20.cleanup_crit_edge, %nlm_get_host.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %host.042, %nlm_get_host.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc20.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_free_host_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_recovery(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsm_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlm_shutdown_hosts_net(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nlm_host_mutex, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !162

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %net, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %inum = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %1 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %cond) #14
  br label %do.end6

do.end6:                                          ; preds = %cond.end, %entry.do.end6_crit_edge
  %tobool17.not = icmp eq ptr %net, null
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc37.for.cond14.preheader_crit_edge, %do.end6
  %chain.060 = phi ptr [ @nlm_server_hosts, %do.end6 ], [ %incdec.ptr, %for.inc37.for.cond14.preheader_crit_edge ]
  %3 = ptrtoint ptr %chain.060 to i32
  call void @__asan_load4_noabort(i32 %3)
  %host.057 = load ptr, ptr %chain.060, align 4
  %tobool15.not58 = icmp eq ptr %host.057, null
  br i1 %tobool15.not58, label %for.cond14.preheader.for.inc37_crit_edge, label %for.cond14.preheader.for.body16_crit_edge

for.cond14.preheader.for.body16_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body16

for.cond14.preheader.for.inc37_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc37

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.cond14.preheader.for.body16_crit_edge
  %host.059 = phi ptr [ %host.0, %for.inc.for.body16_crit_edge ], [ %host.057, %for.cond14.preheader.for.body16_crit_edge ]
  br i1 %tobool17.not, label %for.body16.if.end21_crit_edge, label %land.lhs.true

for.body16.if.end21_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %for.body16
  %net18 = getelementptr inbounds %struct.nlm_host, ptr %host.059, i32 0, i32 25
  %4 = ptrtoint ptr %net18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net18, align 4
  %cmp19.not = icmp eq ptr %5, %net
  br i1 %cmp19.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %for.body16.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %6, -1
  %h_expires = getelementptr inbounds %struct.nlm_host, ptr %host.059, i32 0, i32 18
  %7 = ptrtoint ptr %h_expires to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %h_expires, align 4
  %h_rpcclnt = getelementptr inbounds %struct.nlm_host, ptr %host.059, i32 0, i32 5
  %8 = ptrtoint ptr %h_rpcclnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %h_rpcclnt, align 4
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %if.end21.for.inc_crit_edge, label %if.then23

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpc_shutdown_client(ptr noundef nonnull %9) #10
  %10 = ptrtoint ptr %h_rpcclnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %h_rpcclnt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %if.end21.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %11 = ptrtoint ptr %host.059 to i32
  call void @__asan_load4_noabort(i32 %11)
  %host.0 = load ptr, ptr %host.059, align 4
  %tobool15.not = icmp eq ptr %host.0, null
  br i1 %tobool15.not, label %for.inc.for.inc37_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.inc.for.inc37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc37

for.inc37:                                        ; preds = %for.inc.for.inc37_crit_edge, %for.cond14.preheader.for.inc37_crit_edge
  %incdec.ptr = getelementptr %struct.hlist_head, ptr %chain.060, i32 1
  %cmp = icmp ult ptr %incdec.ptr, getelementptr inbounds ([32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 1, i32 0)
  br i1 %cmp, label %for.inc37.for.cond14.preheader_crit_edge, label %for.end38

for.inc37.for.cond14.preheader_crit_edge:         ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond14.preheader

for.end38:                                        ; preds = %for.inc37
  tail call fastcc void @nlm_gc_hosts(ptr noundef %net)
  br i1 %tobool17.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockd_net_id to i32))
  %12 = load i32, ptr @lockd_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef nonnull %net, i32 noundef %12) #10
  %nrhosts.i = getelementptr inbounds %struct.lockd_net, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %nrhosts.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nrhosts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i.nlm_complain_hosts.exit_crit_edge, label %do.end.i

if.then.i.nlm_complain_hosts.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_complain_hosts.exit

do.end.i:                                         ; preds = %if.then.i
  %inum.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 14, i32 2
  %15 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inum.i, align 8
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %16) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %17 = load i32, ptr @nlm_debug, align 4
  %and.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.end.i.for.cond50.preheader.i.preheader_crit_edge, label %do.end10.i, !prof !162

do.end.i.for.cond50.preheader.i.preheader_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond50.preheader.i.preheader

do.end10.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %nrhosts.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nrhosts.i, align 4
  %20 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inum.i, align 8
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %19, i32 noundef %21) #14
  br label %for.cond50.preheader.i.preheader

if.else.i:                                        ; preds = %for.end38
  %22 = load i32, ptr @nrhosts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp19.i = icmp eq i32 %22, 0
  br i1 %cmp19.i, label %if.else.i.nlm_complain_hosts.exit_crit_edge, label %do.end24.i

if.else.i.nlm_complain_hosts.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_complain_hosts.exit

do.end24.i:                                       ; preds = %if.else.i
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %23 = load i32, ptr @nlm_debug, align 4
  %and28.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.end24.i.for.cond50.preheader.i.preheader_crit_edge, label %do.end39.i, !prof !162

do.end24.i.for.cond50.preheader.i.preheader_crit_edge: ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond50.preheader.i.preheader

do.end39.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = load i32, ptr @nrhosts, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %24) #14
  br label %for.cond50.preheader.i.preheader

for.cond50.preheader.i.preheader:                 ; preds = %do.end39.i, %do.end24.i.for.cond50.preheader.i.preheader_crit_edge, %do.end10.i, %do.end.i.for.cond50.preheader.i.preheader_crit_edge
  br label %for.cond50.preheader.i

for.cond50.preheader.i:                           ; preds = %for.inc90.i.for.cond50.preheader.i_crit_edge, %for.cond50.preheader.i.preheader
  %chain.0120.i = phi ptr [ %incdec.ptr.i, %for.inc90.i.for.cond50.preheader.i_crit_edge ], [ @nlm_server_hosts, %for.cond50.preheader.i.preheader ]
  %25 = ptrtoint ptr %chain.0120.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %host.0117.i = load ptr, ptr %chain.0120.i, align 4
  %tobool51.not118.i = icmp eq ptr %host.0117.i, null
  br i1 %tobool51.not118.i, label %for.cond50.preheader.i.for.inc90.i_crit_edge, label %for.cond50.preheader.i.for.body52.i_crit_edge

for.cond50.preheader.i.for.body52.i_crit_edge:    ; preds = %for.cond50.preheader.i
  br label %for.body52.i

for.cond50.preheader.i.for.inc90.i_crit_edge:     ; preds = %for.cond50.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc90.i

for.body52.i:                                     ; preds = %for.inc.i.for.body52.i_crit_edge, %for.cond50.preheader.i.for.body52.i_crit_edge
  %host.0119.i = phi ptr [ %host.0.i, %for.inc.i.for.body52.i_crit_edge ], [ %host.0117.i, %for.cond50.preheader.i.for.body52.i_crit_edge ]
  br i1 %tobool17.not, label %for.body52.i.do.body58.i_crit_edge, label %land.lhs.true.i

for.body52.i.do.body58.i_crit_edge:               ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58.i

land.lhs.true.i:                                  ; preds = %for.body52.i
  %net54.i = getelementptr inbounds %struct.nlm_host, ptr %host.0119.i, i32 0, i32 25
  %26 = ptrtoint ptr %net54.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net54.i, align 4
  %cmp55.not.i = icmp eq ptr %27, %net
  br i1 %cmp55.not.i, label %land.lhs.true.i.do.body58.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.do.body58.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58.i

do.body58.i:                                      ; preds = %land.lhs.true.i.do.body58.i_crit_edge, %for.body52.i.do.body58.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %28 = load i32, ptr @nlm_debug, align 4
  %and59.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %do.body58.i.for.inc.i_crit_edge, label %do.end70.i, !prof !162

do.body58.i.for.inc.i_crit_edge:                  ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end70.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #12
  %h_name.i = getelementptr inbounds %struct.nlm_host, ptr %host.0119.i, i32 0, i32 6
  %29 = ptrtoint ptr %h_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %h_name.i, align 4
  %h_count.i = getelementptr inbounds %struct.nlm_host, ptr %host.0119.i, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %h_count.i, i32 noundef 4) #10
  %31 = ptrtoint ptr %h_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %h_count.i, align 4
  %h_inuse.i = getelementptr inbounds %struct.nlm_host, ptr %host.0119.i, i32 0, i32 9
  %33 = ptrtoint ptr %h_inuse.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %h_inuse.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %conv.i = zext i8 %bf.clear.i to i32
  %h_expires.i = getelementptr inbounds %struct.nlm_host, ptr %host.0119.i, i32 0, i32 18
  %34 = ptrtoint ptr %h_expires.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %h_expires.i, align 4
  %net73.i = getelementptr inbounds %struct.nlm_host, ptr %host.0119.i, i32 0, i32 25
  %36 = ptrtoint ptr %net73.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net73.i, align 4
  %inum75.i = getelementptr inbounds %struct.net, ptr %37, i32 0, i32 14, i32 2
  %38 = ptrtoint ptr %inum75.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inum75.i, align 8
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %30, i32 noundef %32, i32 noundef %conv.i, i32 noundef %35, i32 noundef %39) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end70.i, %do.body58.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %40 = ptrtoint ptr %host.0119.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %host.0.i = load ptr, ptr %host.0119.i, align 4
  %tobool51.not.i = icmp eq ptr %host.0.i, null
  br i1 %tobool51.not.i, label %for.inc.i.for.inc90.i_crit_edge, label %for.inc.i.for.body52.i_crit_edge

for.inc.i.for.body52.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body52.i

for.inc.i.for.inc90.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc90.i

for.inc90.i:                                      ; preds = %for.inc.i.for.inc90.i_crit_edge, %for.cond50.preheader.i.for.inc90.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.hlist_head, ptr %chain.0120.i, i32 1
  %cmp46.i = icmp ult ptr %incdec.ptr.i, getelementptr inbounds ([32 x %struct.hlist_head], ptr @nlm_server_hosts, i32 1, i32 0)
  br i1 %cmp46.i, label %for.inc90.i.for.cond50.preheader.i_crit_edge, label %for.inc90.i.nlm_complain_hosts.exit_crit_edge

for.inc90.i.nlm_complain_hosts.exit_crit_edge:    ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlm_complain_hosts.exit

for.inc90.i.for.cond50.preheader.i_crit_edge:     ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond50.preheader.i

nlm_complain_hosts.exit:                          ; preds = %for.inc90.i.nlm_complain_hosts.exit_crit_edge, %if.else.i.nlm_complain_hosts.exit_crit_edge, %if.then.i.nlm_complain_hosts.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_host_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nlm_shutdown_hosts() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nlm_debug to i32))
  %0 = load i32, ptr @nlm_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !162

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  tail call void @nlm_shutdown_hosts_net(ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nsm_get_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsm_unmonitor(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_mark_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150}
!llvm.named.register.sp = !{!151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/lockd/host.c", i32 242, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nlmclnt_lookup_host._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nlmclnt_lookup_host._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/lockd/host.c", i32 265, i32 3}
!11 = !{ptr @nlmclnt_lookup_host._entry.6, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @nlmclnt_lookup_host._entry_ptr.8, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/lockd/host.c", i32 278, i32 2}
!15 = !{ptr @nlmclnt_lookup_host._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nlmclnt_lookup_host._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/lockd/host.c", i32 296, i32 2}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nlmclnt_release_host._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @nlmclnt_release_host._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/lockd/host.c", i32 298, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../fs/lockd/host.c", i32 301, i32 3}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/lockd/host.c", i32 302, i32 3}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/lockd/host.c", i32 303, i32 3}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/lockd/host.c", i32 350, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nlmsvc_lookup_host._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @nlmsvc_lookup_host._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @nlmsvc_lookup_host._entry.19, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../fs/lockd/host.c", i32 382, i32 3}
!37 = !{ptr @nlmsvc_lookup_host._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @nlmsvc_lookup_host._entry.21, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../fs/lockd/host.c", i32 399, i32 2}
!40 = !{ptr @nlmsvc_lookup_host._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/lockd/host.c", i32 418, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nlmsvc_release_host._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @nlmsvc_release_host._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/lockd/host.c", i32 420, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/lockd/host.c", i32 432, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nlm_bind_host._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nlm_bind_host._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/lockd/host.c", i32 483, i32 4}
!55 = !{ptr @nlm_bind_host._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nlm_bind_host._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/lockd/host.c", i32 518, i32 3}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nlm_get_host._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nlm_get_host._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/lockd/host.c", i32 622, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nlm_shutdown_hosts_net._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @nlm_shutdown_hosts_net._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/lockd/host.c", i32 647, i32 2}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nlm_shutdown_hosts._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @nlm_shutdown_hosts._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @nlm_server_hosts, !73, !"nlm_server_hosts", i1 false, i1 false}
!73 = !{!"../fs/lockd/host.c", i32 34, i32 26}
!74 = !{ptr @nlm_client_hosts, !75, !"nlm_client_hosts", i1 false, i1 false}
!75 = !{!"../fs/lockd/host.c", i32 35, i32 26}
!76 = !{ptr @nrhosts, !77, !"nrhosts", i1 false, i1 false}
!77 = !{!"../fs/lockd/host.c", i32 48, i32 23}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/lockd/host.c", i32 49, i32 8}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @nlm_host_mutex, !90, !"nlm_host_mutex", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/lockd/host.c", i32 124, i32 4}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @nlm_alloc_host._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @nlm_alloc_host._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/lockd/host.c", i32 132, i32 3}
!100 = !{ptr @nlm_alloc_host._entry.45, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @nlm_alloc_host._entry_ptr.47, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @nlm_alloc_host.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../fs/lockd/host.c", i32 150, i32 2}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @nlm_alloc_host.__key.49, !106, !"__key", i1 false, i1 false}
!106 = !{!"../fs/lockd/host.c", i32 151, i32 2}
!107 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @nlm_alloc_host.__key.51, !109, !"__key", i1 false, i1 false}
!109 = !{!"../fs/lockd/host.c", i32 156, i32 2}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @nlm_alloc_host.__key.53, !112, !"__key", i1 false, i1 false}
!112 = !{!"../fs/lockd/host.c", i32 160, i32 2}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/cred.h", i32 253, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/lockd/host.c", i32 183, i32 2}
!118 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @nlm_destroy_host_locked._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @nlm_destroy_host_locked._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/lockd/host.c", i32 593, i32 3}
!123 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @nlm_complain_hosts._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @nlm_complain_hosts._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/lockd/host.c", i32 595, i32 3}
!128 = !{ptr @nlm_complain_hosts._entry.60, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @nlm_complain_hosts._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/lockd/host.c", i32 600, i32 3}
!132 = !{ptr @nlm_complain_hosts._entry.63, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @nlm_complain_hosts._entry_ptr.65, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/lockd/host.c", i32 601, i32 3}
!136 = !{ptr @nlm_complain_hosts._entry.66, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @nlm_complain_hosts._entry_ptr.68, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/lockd/host.c", i32 607, i32 3}
!140 = !{ptr @nlm_complain_hosts._entry.69, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @nlm_complain_hosts._entry_ptr.71, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/lockd/host.c", i32 663, i32 2}
!144 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @nlm_gc_hosts._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @nlm_gc_hosts._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/lockd/host.c", i32 678, i32 4}
!149 = !{ptr @nlm_gc_hosts._entry.74, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @nlm_gc_hosts._entry_ptr.76, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{!"sp"}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{!"auto-init"}
!162 = !{!"branch_weights", i32 2000, i32 1}
!163 = !{i64 2148598041, i64 2148598073, i64 2148598102, i64 2148598136, i64 2148598167, i64 2148598190}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i64 2149933382}
!166 = !{i64 2149933648}
!167 = !{i64 2148596511, i64 2148596537, i64 2148596566, i64 2148596600, i64 2148596631, i64 2148596654}
!168 = !{i64 2148684987}
!169 = !{i64 2148599696, i64 2148599728, i64 2148599757, i64 2148599791, i64 2148599822, i64 2148599845}
!170 = !{i64 2148685216}
!171 = !{i64 2148686066}
!172 = !{i64 2148600506, i64 2148600538, i64 2148600567, i64 2148600601, i64 2148600632, i64 2148600655}
